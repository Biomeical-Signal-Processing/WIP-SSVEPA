from SSVEPA import logger
from SSVEPA.pipeline.stage_01_data_ingestion import DataIngestionTrainingPipeline
from SSVEPA.pipeline.stage_02_data_validation import DataValidationTrainingPipeline
from SSVEPA.pipeline.stage_03_data_transformation import DataTransformationTrainingPipeline
from SSVEPA.pipeline.stage_04_model_trainer import ModelTrainerTrainingPipeline


logger.info("Welcome to SSVEPA Project")

STAGE_NAME = "Data Ingestion"
try:
    logger.info(f">>>>>> Stage Name: {STAGE_NAME} Started <<<<<<\n")
    data_ingestion = DataIngestionTrainingPipeline()
    data_ingestion.main()
    logger.info(f">>>>>> Stage Name: {STAGE_NAME} Completed <<<<<<<\n")
except Exception as e:
    logger.exception(e)
    raise e


STAGE_NAME = "Data Validation"

try:
    logger.info(f">>>>>> Stage {STAGE_NAME} Started")
    data_validation = DataValidationTrainingPipeline()
    data_validation.main()
    logger.info(f">>>>>> Stage {STAGE_NAME} Finished")

except Exception as e:
    logger.error(f"An error occurred during {STAGE_NAME} Stage!", exc_info=True)
    logger.exception(e)
    raise e

STAGE_NAME = "Data Transformation"

try:
    logger.info(f">>>>>> Stage {STAGE_NAME} Started")
    data_transformation = DataTransformationTrainingPipeline()
    data_transformation.main()
    logger.info(f">>>>>> Stage {STAGE_NAME} Finished")

except Exception as e:
    logger.error(f"An error occurred during {STAGE_NAME} Stage!", exc_info=True)
    logger.exception(e)
    raise e

STAGE_NAME = "Model Trainer"

try:
    logger.info(f">>>>>> stage {STAGE_NAME} started <<<<<<")
    model_trainer = ModelTrainerTrainingPipeline()
    model_trainer.main()
    logger.info(f">>>>>> stage {STAGE_NAME} completed <<<<<<\n\nx==========x")
except Exception as e:
    logger.exception(e)
    raise e