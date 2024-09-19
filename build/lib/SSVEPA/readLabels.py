import os

import h5py
import numpy as np

print("Working Directory:", os.getcwd())
file_path = f'data/labels.h5'  # Dynamically create the filename
# Open the HDF5 file and read the dataset to check its dimensions
try:
    with h5py.File(file_path, 'r') as file:
        # Adjust the dataset name to match the actual name in your file
        dataset_name = '/labels'
        if dataset_name in file:
            EEGdata = file[dataset_name][:]
            print("Dataset shape:", EEGdata.shape)
        else:
            print(f"Dataset '{dataset_name}' not found in the file.")
except OSError as e:
    print(f"Error opening file: {e}")

# Transpose Labels
EEGdata_transposed = np.transpose(EEGdata, axes=(1, 0))
# Print to verify the new shape
print("Dataset shape:", EEGdata_transposed.shape)
filename = f'transposed_labels.h5'
with h5py.File(filename, 'w') as file:
    # Create a dataset within the file
    # '/transposed_dataset' is the name/path of the dataset within the HDF5 file
    # The shape and dtype (data type) are inferred from transposed_array
    file.create_dataset('labels', data=EEGdata_transposed, dtype='float64')
