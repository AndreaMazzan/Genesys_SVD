import time
import random
import uhal
import numpy as np



def normalized_gaussian_2D(x_axis, y_axis, mu_x, mu_y, sigma):

    X, Y = np.meshgrid(x_axis, y_axis)
    Z = (1 / (2 * np.pi * sigma ** 2)) * np.exp(-((X-mu_x) ** 2 + (Y-mu_y) ** 2) / (2 * sigma ** 2))
    Z /= np.sum(Z)
    return X,Y,Z

def integrate_over_squares(Z,num_squares_per_side,grid_size,mu_x,mu_y, x_axis,y_axis ):

    max_center_x=(num_squares_per_side-1)/2*grid_size+mu_y
    max_center_y=(num_squares_per_side-1)/2*grid_size+mu_y
    square_centers_x = np.linspace(-max_center_x, max_center_x, num_squares_per_side)
    square_centers_y = np.linspace(-max_center_y, max_center_y, num_squares_per_side)

    integrals = []
    for center_x in square_centers_x:
        for center_y in square_centers_y:
            xmin = center_x - grid_size/2
            xmax = center_x + grid_size/2
            ymin = center_y - grid_size/2
            ymax = center_y + grid_size/2

            x_indices = np.logical_and(x_axis >= xmin, x_axis <= xmax)
            y_indices = np.logical_and(y_axis >= ymin, y_axis <= ymax)

            integral = np.sum(Z[x_indices, :][:, y_indices])
            integrals.append(integral)
    return integrals,square_centers_x,square_centers_y






# import matplotlib.pyplot as plt

def choose_from_menu(menu):
    """Prompt the user to choose an operation"""
    print("Select an operation:")
    for num, operation in enumerate(menu, start=1):
        print(f"{num}. {operation}")
    # Get user input and validate it
    while True:
        try:
            ext_in = int(input("Select number: "))
            if 1 <= ext_in <= len(menu):
                break
            else:
                print(f"Invalid selection. Please enter a number between 1 and {len(menu)}.")
        except ValueError:
            print("Invalid input. Please enter a number.")
    return menu[ext_in - 1]

def initialize_identity_matrix(n, scale):
    """
    Initializes a flattened identity matrix of size n x n.
    
    Parameters:
    n (int): The size of the matrix (n x n).
    
    Returns:
    np.ndarray: A 1D array representing the identity matrix, stored row by row.
    """
    # Create an n x n identity matrix
    identity_matrix = np.eye(n, dtype=int)*scale
    
    # Flatten the matrix to simulate storing it in consecutive rows in RAM
    ram_array = identity_matrix.flatten()
    
    return list(ram_array)

def initialize_matrix(n, value_min, value_max):
    """
    Initializes a matrix of size n x n with integer values in the range [value_min, value_max].
    
    Parameters:
    n (int): The size of the matrix (n x n).
    value_min (int): The minimum possible value in the matrix.
    value_max (int): The maximum possible value in the matrix.
    
    Returns:
    np.ndarray: A 1D array representing the matrix, stored row by row.
    """
    # Ensure value_min is less than or equal to value_max
    if value_min > value_max:
        raise ValueError("value_min should be less than or equal to value_max.")
    
    # Create an n x n matrix with random integer values in the specified range
    np.random.seed(50)
    matrix = np.random.randint(value_min, value_max, size=(n, n))
    
    # Flatten the matrix to simulate storing it in consecutive rows in RAM
    ram_array = matrix.flatten()
    
    return list(ram_array)


def decode_twos_complement(n, n_bits):
    """
    Decodes an integer n into its signed integer representation using n_bits bits
    and two's complement.

    Parameters:
    n (int): The integer to decode.
    n_bits (int): The number of bits to represent n.

    Returns:
    int: The signed integer representation of n using two's complement.
    """
    if n >= 2**n_bits or n < 0:
        raise ValueError(f"n should be in the range [0, {2**n_bits - 1}] for {n_bits} bits.")
    
    if n & (1 << (n_bits - 1)):
        n_signed = n - (1 << n_bits)
    else:
        n_signed = n
    
    return n_signed

def decode_array_twos_complement(arr, n_bits):
    """
    Applies the decode_twos_complement function to all elements in a numpy array.

    Parameters:
    arr (np.ndarray): The input array of integers.
    n_bits (int): The number of bits to represent each element.

    Returns:
    np.ndarray: The array with decoded signed integers using two's complement.
    """
    # Vectorize the decode_twos_complement function
    vectorized_decode = np.vectorize(decode_twos_complement)
    
    # Apply the vectorized function to the array
    decoded_array = vectorized_decode(arr, n_bits)
    
    return decoded_array

class Memory:
    def __init__(self, slaves_addresses_file):
        self.board = 'fpga'
        self.board_address = 'ipbusudp-2.0://136.186.241.78:50001'
        self.register_file_path = slaves_addresses_file
        self.device = uhal.getDevice(self.board, self.board_address, self.register_file_path)

    def write_reg(self, data_in, register_name):
        """write a register in the FPGA whose address is specified in the xml file. register name is the node id,
        data_in is an integer storable in 32 bits (dat_in<2**32). After writing, it reads, and returns True if
        the written data corresponds to the read one"""
        node = self.device.getNode(register_name)
        data_in_int = int(data_in)
        node.write(data_in_int)
        self.device.dispatch()
        data_stored_int = self.read_reg(register_name)
        if data_stored_int != data_in_int:
            print(f'tried to write {data_in_int} nut read {data_stored_int} in register {register_name}')
        return data_stored_int == data_in_int

    def write_block(self, block_in_int, block_name):
        """write a block in the FPGA whose address is specified in the xml file. After writing, it reads, and returns
        True if the written data corresponds to the read one"""
        node = self.device.getNode(block_name)
        node.writeBlock(block_in_int)
        self.device.dispatch()
        block_stored_int = self.read_block(block_name)
        if not block_stored_int == block_in_int:
            print(f'succeeded to write in block {block_name}')
        return block_stored_int == block_in_int

    def read_reg(self, register_name):
        """read a register in the FPGA whose address is specified in the xml file. Register name is the node id.
        returns the value written in the register as an integer."""
        node = self.device.getNode(register_name)
        response = node.read()
        self.device.dispatch()
        return int(response)

    def read_block(self, register_name):
        """read a block in the FPGA whose address is specified in the xml file. Returns a list of integers."""
        node = self.device.getNode(register_name)
        node_size = node.getSize()
        response = node.readBlock(node_size)
        self.device.dispatch()
        return response.value()



if __name__ == "__main__":

	size=16
	if size >=2 and size <=4:
		mult=2**15
	elif size >4 and size <=16:
		mult=2**14
	elif size >17 and size <=64:
		mult=2**13
	else:
		mult=2**12
	

	std_dev=1
	num_squares_per_side=size
	grid_size=0.5
	x = np.linspace(-2, 2, 201)
	y = np.linspace(-2, 2, 201)
	X,Y,Z=normalized_gaussian_2D(x, y, 0, 0, std_dev)
	integrals,square_centers_x,square_centers_y=integrate_over_squares(Z,num_squares_per_side, grid_size, 0, 0,x,y)
	integrals_matrix = np.array(integrals).reshape(num_squares_per_side, num_squares_per_side)
	integrals_matrix=integrals_matrix/np.max(integrals_matrix)
	input_matrix=(integrals_matrix*mult).astype(np.int32)
	input_matrix=list(input_matrix.flatten())



	address_file = "file://address_file.xml"
	my_memory = Memory(address_file)
	my_memory.write_reg(1,'reset_reg')
	input_matrix=initialize_matrix(size, 0, mult)
	initial_U_T=initialize_identity_matrix(size, mult)
	my_memory.write_block(input_matrix, 'input_ram')
	my_memory.write_block(initial_U_T, 'U_T_ram')
	my_memory.write_reg(0,'reset_reg')
	#while my_memory.read_reg('done_reg')==0:
	#	time.sleep(.00001)
	time.sleep(3)
	temp_SIGMA = np.array(my_memory.read_block('input_ram')[:size*size])
	SIGMA = decode_array_twos_complement(temp_SIGMA, n_bits=32).reshape(size,size)
	temp_U_T = np.array(my_memory.read_block('U_T_ram')[:size*size])
	U_T = decode_array_twos_complement(temp_U_T, n_bits=32).reshape(size,size)
	
	U_np, S_np, Vt_np = np.linalg.svd(np.array(input_matrix).reshape(size,size))
	my_memory.write_reg(1,'reset_reg')

	print('Input matrix\n',np.array(input_matrix).reshape(size,size))
	print('\nOutput matrix\n',SIGMA)
	
	print('\nSingular values from firmware\n', np.diag(SIGMA))
	print('\nSingular values from Numpy\n',S_np.astype(int))
	#print('\nOrthonormal basis from firmware\n')
	#print(U_T.transpose())
	#print('\nOrthonormal basis from Numpy\n')
	#print((U_np*mult).astype(int))
	
