from SSVEPA.config.configuration import ConfigurationManager
from SSVEPA.components.data_transformation import DataTransformation
from SSVEPA import logger
from pathlib import Path

STAGE_NAME = "Data Transformation"

class DataTransformationTrainingPipeline:
    def __init__(self):
        pass
    def main(self):
        try:
            with open(Path("artifacts/data_validation/status.txt"), "r") as f:
                status =f.read().split(" ")[-1]
            if status == "True":
                config = ConfigurationManager()
                data_transformation_config = config.get_data_transformation_config()
                data_transformation = DataTransformation(config=data_transformation_config)
                data_transformation.train_test_spliting()
            else:
                raise   Exception("Data Validation Status is not True")
        except Exception as e:
            print(e)

if __name__ == "__main__":
    try:
        logger.info(f">>>>>> Stage {STAGE_NAME} Started")
        dataTransformationBlob = DataTransformationTrainingPipeline()
        dataTransformationBlob.main()
        logger.info(f">>>>>> Stage {STAGE_NAME} Finished")

    except Exception as e:
        logger.error(f"An error occurred during {STAGE_NAME} Stage!", exc_info=True)
        logger.exception(e)
        raise e