# Avalanche Hackathon 2024

This repository contains our Hackathon project for Avalanche Hackathon 2024.

## Prerequisites Installation on Windows with python 3.12

Before setting up the Python environment, ensure the following tools are installed:

1. CMake:
   - Download latest version of CMake from [CMake.org](https://cmake.org/download/).
   - Choose the Windows x64 Installer.
   - Make sure to add CMake to the system PATH.

2. Microsoft Visual C++ Build Tools:
   - Download the Build Tools for Visual Studio from [Visual Studio downloads](https://visualstudio.microsoft.com/visual-cpp-build-tools/).
   - Choose "Desktop development with C++".


## Setup Python Environment

1. Clone this repository:

- `git clone https://github.com/MoonBoi9001/AVALANCHE-HACKATHON-2024.git`
- `cd AVALANCHE-HACKATHON-2024`

2. Create and activate a virtual environment:

- `python -m venv venv`
- If the below doesn't work then first do `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser` to allow running scripts created locally.
- `source venv/bin/activate` # On Windows, use `venv\Scripts\activate`


3. Install the required packages:

- Upgrade `pip`, `setuptools` and `wheel` using the following command:

- `python -m pip install --upgrade pip setuptools wheel`

- Then, install the dependencies from the requirements.txt file: 

- `pip install -r requirements.txt`

## Project Structure 

- `requirements.txt`: List of Python package dependencies
- `README.md`: This file, containing project information and instructions
- `.gitattributes`: Git attributes file