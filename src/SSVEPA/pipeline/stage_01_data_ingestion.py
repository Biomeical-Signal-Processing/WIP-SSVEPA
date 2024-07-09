from SSVEPA.config.configuration import ConfigurationManager
from SSVEPA.components.data_ingestion import DataIngestion
from SSVEPA import logger

STAGE_NAME = "Data Ingestion"


class DataIngestionTrainingPipeline:
    def __init__(self):
        pass

    def main(self):
        config = ConfigurationManager()
        data_ingestion_config = config.get_data_ingestion_config()
        data_ingestion = DataIngestion(config=data_ingestion_config)
        data_ingestion.download_file()
        data_ingestion.extract_zip_file()


if __name__ == "__main__":
    try:
        logger.info(f">>>>>> Stage {STAGE_NAME} Started")
        dataIngestionBlob = DataIngestionTrainingPipeline()
        dataIngestionBlob.main()
        logger.info(f">>>>>> Stage {STAGE_NAME} Finished")

    except Exception as e:
        logger.error("An error occurred during data ingestion Stage!", exc_info=True)
        logger.exception(e)
        raise e