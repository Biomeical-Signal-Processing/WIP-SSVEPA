import setuptools

with open("README.md", "r", encoding="utf-8") as f:
    long_description = f.read()

__version__ = "0.0.1"

REPO_NAME = "WIP-SSVEPA"
AUTHOR_USER_NAME = "HesamJafarian"
SRC_REPO = "SSVEPA"
AUTHOR_EMAIL = "hesamjafarian@gmail.com"

setuptools.setup(
    name=SRC_REPO,
    version=__version__,
    author=AUTHOR_USER_NAME,
    author_email=AUTHOR_EMAIL,
    description="A dedicated python package for Steady State Visually Evoked Pontential Analysis",
    long_description=long_description,
    long_description_content="text/markdown",
    url=f"https://github.com/{AUTHOR_USER_NAME}/{REPO_NAME}",
    project_urls={
        "Bug Tracker": f"https://github.com/{AUTHOR_USER_NAME}/{REPO_NAME}/issues",
    },
    package_dir={"": "src"},
    packages=setuptools.find_packages(where="src"),
    license="MIT",
    install_requires=[
        "pandas",
        "numpy",
        "scikit-learn",
        "matplotlib",
        "seaborn",
        "qiskit",
        "h5py",
        "mlflow==2.2.2",
        "notebook",
        "python-box==6.0.2",
        "pyYAML",
        "tqdm",
        "ensure==1.0.2",
        "joblib",
        "types-PyYAML",
        "Flask",
        "Flask-Cors",
    ],
)
