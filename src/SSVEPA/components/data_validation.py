import pandas as pd
from SSVEPA.entity.config_entity import DataValidationConfig

class DataValiadtion:
    def __init__(self, config: DataValidationConfig):
        self.config = config

    def validate_all_columns(self) -> bool:
        try:
            data = pd.read_csv(self.config.unzip_data_dir)
            data_schema = {
                col: str(dtype) for col, dtype in zip(data.columns, data.dtypes)
            }

            all_schema = self.config.all_schema

            validation_status = True
            for col, dtype in data_schema.items():
                if col not in all_schema or dtype != all_schema[col]:
                    validation_status = False
                    with open(self.config.STATUS_FILE, "w") as f:
                        f.write(f"Validation status: {validation_status}\n")
                        f.write(
                            f"Mismatch found - Column: {col}, Data Type: {dtype}, Expected: {all_schema.get(col)}\n"
                        )
                    return validation_status

            with open(self.config.STATUS_FILE, "w") as f:
                f.write(f"Validation status: {validation_status}")

            return validation_status

        except Exception as e:
            raise e
