// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/Game20.sol";

contract DeployGame20 is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        address deployerAddress = vm.addr(deployerPrivateKey);
        
        console.log("Deployer address:", deployerAddress);
        console.log("Deployer balance:", address(deployerAddress).balance);

        vm.startBroadcast(deployerPrivateKey);
        
        try new Game20() returns (Game20 game20) {
            console.log("Game20 deployed at:", address(game20));
        } catch Error(string memory reason) {
            console.log("Deployment failed. Reason:", reason);
        } catch (bytes memory lowLevelData) {
            console.log("Deployment failed due to low-level error");
        }
        
        vm.stopBroadcast();
    }
}
