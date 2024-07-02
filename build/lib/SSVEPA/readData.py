import os

import h5py
import numpy as np

# Note: .h5 dataSets are stored using the name /eeg_dataset
# Print directory to verify the script's run location

print("Working Directory:", os.getcwd())

# Adjust the path to the .h5 file according to your project structure
# file_path = 'data/S1.h5'

for i in range(1, 36):
    file_path = f'data/S{i}.h5'  # Dynamically create the filename
    # Open the HDF5 file and read the dataset to check its dimensions
    try:
        with h5py.File(file_path, 'r') as file:
            # Adjust the dataset name to match the actual name in your file
            dataset_name = '/eeg_dataset'
            if dataset_name in file:
                EEGdata = file[dataset_name][:]
                # print("Dataset shape:", EEGdata.shape)
            else:
                print(f"Dataset '{dataset_name}' not found in the file.")
    except OSError as e:
        print(f"Error opening file: {e}")

    # Using np.transpose to reorder the dimensions of the imported data from MATLAB
    EEGdata_transposed = np.transpose(EEGdata, axes=(2, 1, 0))

    # Print to verify the new shape
    print("Dataset shape:", EEGdata_transposed.shape)
    filename = f'data/transposed_S{i}.h5'
    with h5py.File(filename, 'w') as file:
        # Create a dataset within the file
        # '/transposed_dataset' is the name/path of the dataset within the HDF5 file
        # The shape and dtype (data type) are inferred from transposed_array
        file.create_dataset('eeg_dataset', data=EEGdata_transposed, dtype='float64')
