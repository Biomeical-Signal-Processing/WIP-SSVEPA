from SSVEPA.config.configuration import ConfigurationManager
from SSVEPA.components.data_validation import DataValiadtion
from SSVEPA import logger

STAGE_NAME = "Data Validation"

class DataValidationTrainingPipeline:
    def __init__(self):
        pass
    def main(self):
        config = ConfigurationManager()
        data_validation_config = config.get_data_validation_config()
        data_validation = DataValiadtion(config=data_validation_config)
        data_validation.validate_all_columns()


if __name__ == "__main__":
    try:
        logger.info(f">>>>>> Stage {STAGE_NAME} Started")
        dataValidationBlob = DataValidationTrainingPipeline()
        dataValidationBlob.main()
        logger.info(f">>>>>> Stage {STAGE_NAME} Finished")

    except Exception as e:
        logger.error(f"An error occurred during {STAGE_NAME} Stage!", exc_info=True)
        logger.exception(e)
        raise e

