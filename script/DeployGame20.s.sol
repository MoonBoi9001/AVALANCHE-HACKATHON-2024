// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/Game20.sol";

contract DeployGame20 is Script {
    function run() external {
        vm.startBroadcast();
        new Game20();
        vm.stopBroadcast();
    }
}
