import h5py
import os
print("Working Directory:", os.getcwd())
for i in range(1, 36):
    file_path = f'data/transposed_S{i}.h5'  # Dynamically create the filename
    # Open the HDF5 file and read the dataset to check its dimensions
    try:
        with h5py.File(file_path, 'r') as file:
            # Adjust the dataset name to match the actual name in your file
            dataset_name = '/eeg_dataset'
            if dataset_name in file:
                EEGdata = file[dataset_name][:]
                print("Dataset shape:", EEGdata.shape)
            else:
                print(f"Dataset '{dataset_name}' not found in the file.")
    except OSError as e:
        print(f"Error opening file: {e}")
