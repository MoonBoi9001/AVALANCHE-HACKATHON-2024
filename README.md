# Avalanche Hackathon 2024

This repository contains our Hackathon project for Avalanche Hackathon 2024.

## Prerequisites Installation on Windows with Python 3.12

Before setting up the Python environment, ensure the following tools are installed:

1. CMake:
   - Download the latest version of CMake from [CMake.org](https://cmake.org/download/).
   - Choose the Windows x64 Installer.
   - Make sure to add CMake to the system PATH.

2. Microsoft Visual C++ Build Tools:
   - Download the Build Tools for Visual Studio from [Visual Studio downloads](https://visualstudio.microsoft.com/visual-cpp-build-tools/).
   - Choose "Desktop development with C++".

3. Foundry:
   ```sh
   curl -L https://foundry.paradigm.xyz | bash
   foundryup
   ```

## Setup Python Environment

1. Clone this repository:
   ```sh
   git clone https://github.com/MoonBoi9001/AVALANCHE-HACKATHON-2024.git
   cd AVALANCHE-HACKATHON-2024
   ```

2. Create and activate a virtual environment:
   ```sh
   python -m venv venv
   source venv/bin/activate  # On Windows, use `venv\Scripts\activate`
   ```
   Note: If activation fails, run `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser` to allow running scripts created locally.

3. Install the required packages:
   ```sh
   python -m pip install --upgrade pip setuptools wheel
   pip install -r requirements.txt
   ```

## Foundry Usage

1. Compile the contracts:
   ```sh
   forge build
   ```

2. Deploy the contracts:
   ```sh
   forge script script/DeployGame20.s.sol --fork-url $RPC_URL --broadcast
   ```
   Note: Ensure that the `.env` file contains the `RPC_URL` and `PRIVATE_KEY`.

## Custom L1 Blockchain

This project uses a custom L1 blockchain built on Avalanche with the following specifications:
- Chain ID: 777777
- RPC URL: Defined in the `.env` file

Ensure that your deployment account has sufficient funds on this custom chain to cover gas fees.

## Project Structure 

- `src/`: Contains the Solidity contracts.
  - `src/Game20.sol`: Contains the Game20 token contract.
- `script/`: Contains the deployment scripts.
  - `script/DeployGame20.s.sol`: Contains the deployment script for the Game20 token.
- `test/`: Contains the test files.
  - `test/Game20.t.sol`: Contains the test for the Game20 token.
- `requirements.txt`: List of Python package dependencies.
- `README.md`: This file, containing project information and instructions.
- `.gitattributes`: Git attributes file.
- `.env`: Environment file for storing sensitive information (not tracked by git).