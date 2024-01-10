import torch


def cuda_test():
	cuda_is_available = torch.cuda.is_available()
	print(f"Cuda is available: {cuda_is_available}")
	return cuda_is_available


if __name__ == "__main__":
	print("Environment test:")
	cuda_test()
	print("Hello Pytorch!")
	data = [[1, 2], [3, 4]]
	x_data = torch.tensor(data)
	x_rand = torch.rand_like(x_data, dtype=torch.float) # overrides the datatype of x_data
	print(f"Random Tensor: \n {x_rand} \n")
