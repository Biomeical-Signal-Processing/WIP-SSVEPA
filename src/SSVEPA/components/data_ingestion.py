import os
import urllib.request as request
import zipfile
from SSVEPA import logger
from pathlib import Path
from SSVEPA.utils.common import get_size
from SSVEPA.config.configuration import DataIngestionConfig


class DataIngestion:
    def __init__(self, config: DataIngestionConfig):
        self.config = config

    def download_file(self):
        if not os.path.exists(self.config.local_data_file):
            try:
                filename, headers = request.urlretrieve(
                    url=self.config.source_URL,
                    filename=self.config.local_data_file
                )
                logger.info(f"{filename} downloaded! with following info: \n{headers}")
                # Verify the file type and size
                if zipfile.is_zipfile(self.config.local_data_file):
                    logger.info("Downloaded file is a valid zip file.")
                else:
                    logger.warning("Downloaded file is not a valid zip file.")
            except Exception as e:
                logger.error(f"Failed to download the file due to: {e}")
                raise RuntimeError(f"Failed to download the file due to: {e}")
        else:
            file_size = get_size(Path(self.config.local_data_file))
            logger.info(f"File already exists of size: {file_size}")

    def extract_zip_file(self):
        """
        zip_file_path: str
        Extracts the zip file into the data directory
        Function returns None
        """
        unzip_path = self.config.unzip_dir
        os.makedirs(unzip_path, exist_ok=True)
        with zipfile.ZipFile(self.config.local_data_file, 'r') as zip_ref:
            zip_ref.extractall(unzip_path)
            logger.info(f"Files extracted to {unzip_path}")