# EAST-Text-Detector
This Project is to show detection of tect in a static image

# Virtual Environment Installation

Before Installing venv we should have  pip installed
pip is the reference Python package manager. It’s used to install and update packages. You’ll need to make sure you have the latest version of pip installed.

**To install pip use command below:**
py -m pip install --upgrade pip

**To install venv use command below:**
py -m pip install --user virtualenv

# Creating virtual Environment

**Command**
py -m venv env

**Activaing the Environment**

.\env\Scripts\activate

# Installing Packages in virtual environment with requirement.txt file

**Command**
py -m pip install -r requirements.txt

# Source Code Execution in a virtual environment

** you may execute the following command in your terminal (taking note of the two command line arguments)**

python east_text_detection.py --image images/lebron_james.jpg \ --east frozen_east_text_detection.pb

# Task 2

#Packaging of the Project

**Creating a project.toml file**
1. You need to install setuptools build package in your virtual environment:
pip install build

You can create a file manually and edit it with this content

[build-system]
requires = ["setuptools>=42"]
build-backend = "setuptools.build_meta"

Then go to the Project Folder location on CMD

**You can build the package of the project byu entering the commands Below:**

py -m build

**Install a Package**


Use command pip install EAST-TEXT-DETECTOR-nkumar5-0.0.1.tar.gz to install package

After installation, you can change directory to src and run python east_text_detection.py

# Styling

**To Install black, flake8 and isort use commands**
pip install black
pip install isort
pip install flake8

**For pre-commit:** pip install pre-commit


You can configure all the module i.e. black, isort and flake8 in the pre-commit-config.yaml
You also have separate configurations for black - black.toml
for flake8 - tox.ini
and isort will be inside the pyproject.toml


For pre-commit you should be in github directory
then use **pre-commit install** and **pre-commit run -a**
![image](https://user-images.githubusercontent.com/22669538/170728551-3b436d45-9902-4ea7-b63f-900bb6f65cc2.png)

If you are failing in black execution while pre-commiting you might have to upgrade your click

for that use **pip install --upgrade click==8.0.2**


**For pytest install pytest by using command**

pip install pytest

To use pytest in your local machine you have to install the tar.gz file locted in /dist folder in the repo
and type demo to run the script

# To setup a CI Pipeline on github
 
 
CI has already been set up. It will run the tests and style checks and will build a new version of the package every time you push a new commit on any branch or make a pull request. Do not forget to pull the repository after a package is successfully built since it will differ from the one you commited.
 
To prevent a branch from being merged to master with failed tests, go to your repository, then Settings->Branches->Add rule. The most important setting to turn on is Require status checks to pass before merging. 
 
Requirements for this is to create a workflow on github for which you can go to Actions -> New Workflow and select Docker Image workflow.
 
You also need to set up a Dockerfile and .Dcokerignore file.
For this project it is set up but failing for creating a docker image as the dist folder which has the .whl file is ignored in the .Dockerignore file which is the location for the copy.
 
# Task 3. Web-Demo
To set up a webdemo you need to install the streamlit package with the command :
 
pip install steamlit
 
To run a web demo :
change to the directory where streamlit is located for example cd streamlit and then run command:
Streamlit run app.py
 
For this you have to create a python file app.py which includes a file uploader and a call for running the demo





