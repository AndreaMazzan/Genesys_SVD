import os
import json
import pandas as pd
import numpy as np
from genesys2_class import *



def to_unsigned_32bit(value):
    if value < 0:
        return (1 << 32) + value
    return value

def to_unsigned_16bit(value):
    if value < 0:
        return (1 << 16) + value
    return value



# Function to read a CSV file into a NumPy array
def read_csv_as_numpy(csv_file):
    df = pd.read_csv(csv_file, header=None)  # No header in the CSV
    return df.to_numpy()

# Function to perform an operation on the NumPy array
def perform_operation_on_array(array,size,mult):
    input_matrix=np.round(array.flatten()*mult).astype(int)
    #input_matrix[input_matrix < 0] = 0
    vectorized_func = np.vectorize(to_unsigned_32bit) 
    input_matrix_with_negatives = vectorized_func(input_matrix)    
    #print(f'INPUT MATRIX = {input_matrix}\n\ntype = {type(input_matrix)}')
    initial_U_T=initialize_identity_matrix(size, mult)
    my_memory.write_block(list(input_matrix_with_negatives), 'input_ram')
    my_memory.write_block(initial_U_T, 'U_T_ram')
    my_memory.write_reg(0,'reset_reg')
	#while my_memory.read_reg('done_reg')==0:
	#	time.sleep(.00001)
    time.sleep(.1)
    temp_SIGMA = np.array(my_memory.read_block('input_ram')[:size*size])
    SIGMA = decode_array_twos_complement(temp_SIGMA, n_bits=32).reshape(size,size)
    temp_U_T = np.array(my_memory.read_block('U_T_ram')[:size*size])
    U_T = decode_array_twos_complement(temp_U_T, n_bits=32).reshape(size,size)

    U_np, S_np, Vt_np = np.linalg.svd(np.array(input_matrix).reshape(size,size))
    my_memory.write_reg(1,'reset_reg')
    
    #print('\nSingular values from firmware\n')
    #print(np.diag(SIGMA))
    #print('\nSingular values from Numpy\n')
    #print(S_np.astype(int))
    print('\nfirmware vector\n')
    print(U_T.transpose()[:,-1])
    print('\nNumpy vector\n')
    print((U_np*mult).astype(int)[:,0])

    return U_T.transpose()[:,-1], U_T.transpose()[:,::-1]

# Function to process all CSV files in a folder
def process_all_csv_in_folder(input_folder):
    # Get a list of all CSV files in the folder
    csv_files = [f for f in os.listdir(input_folder) if f.endswith('.csv')]
    
    results = {}  # Dictionary to store the result for each CSV file
    results_U_matrix = {}
    for csv_file in csv_files:
        # Full path to the CSV file
        input_csv = os.path.join(input_folder, csv_file)
        
        # Read the CSV file as a NumPy array
        array = read_csv_as_numpy(input_csv)
        size = len(array)
        
        if size >= 2 and size <= 4:
            mult = 2**15
        elif size >= 5 and size <= 16:
            mult = 2**14
        elif size >= 17 and size <= 64:
            mult = 2**13
        else:
            mult = 2**12
        
        # Perform the custom operation on the array
        print('\n',csv_file,'\n')
        processed_array, U_matrix = perform_operation_on_array(array, size,mult)
        
        # Optionally, store the result in the dictionary
        results[csv_file[:-4]] = processed_array.tolist() if isinstance(processed_array, np.ndarray) else processed_array
    	# Optionally, store the result in the dictionary
        results_U_matrix[csv_file[:-4]] = U_matrix.tolist() if isinstance(U_matrix, np.ndarray) else U_matrix
    
    # Optionally, return the results dictionary if needed
    return results, results_U_matrix

address_file = "file://address_file.xml"
my_memory = Memory(address_file)
my_memory.write_reg(1,'reset_reg')

selection=12
input_folder = f"/home/andrea/Documents/Genesys2_SVD_IPbus_ToBeDeleted/software/Bridge_Data_Processed_CSVs_{selection}"  # Replace with the folder containing the CSV files\

# Call the function to process all CSV files in the folder
processed_data, processed_U_matrix = process_all_csv_in_folder(input_folder)
#print(processed_data)
# Save the dictionary to a JSON file
with open(f"bridge_data_{selection}.json", "w") as json_file:
    json.dump(processed_data, json_file, indent=4)  # 'indent=4' makes it pretty-printed
with open(f"bridge_data_U_matrix_{selection}.json", "w") as json_file:
    json.dump(processed_U_matrix, json_file, indent=4)  # 'indent=4' makes it pretty-printed




