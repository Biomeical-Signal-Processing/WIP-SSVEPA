from SSVEPA import logger
from SSVEPA.pipeline.stage_01_data_ingestion import DataIngestionTrainingPipeline


logger.info("Welcome to SSVEPA Project")

STAGE_NAME = "Data Ingestion Stage"
try:
    logger.info(f">>>>>> Stage Name: {STAGE_NAME} Started <<<<<<\n")
    data_ingestion = DataIngestionTrainingPipeline()
    data_ingestion.main()
    logger.info(f">>>>>> Stage Name: {STAGE_NAME} Completed <<<<<<<\n")
except Exception as e:
    logger.exception(e)
    raise e