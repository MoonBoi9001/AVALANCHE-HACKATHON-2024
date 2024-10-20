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

- Foundry:

  ```sh
  curl -L https://foundry.paradigm.xyz | bash
  foundryup


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

## Foundary usage

1. To compile the contracts:

- `forge build`

2. To deploy the contracts:

- `forge script script/DeployGame20.s.sol --broadcast --private-key <YOUR_PRIVATE_KEY>`


## Project Structure 

- `src/`: Contains the Solidity contracts.
- - `src/Game.sol`: Contains the Game20 token contract.
- `script/`: Contains the deployment scripts.
- `script/DeployGame20.s.sol`: Contains the deployment script for the Game20 token.
- `test/`: Contains the test files.
- - `test/Game20.t.sol`: Contains the test for the Game20 token.
- `requirements.txt`: List of Python package dependencies
- `README.md`: This file, containing project information and instructions
- `.gitattributes`: Git attributes file