//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/GodwinNft.sol";

contract DeployGodwinNft is Script {
    function run() external {
        vm.startBroadcast();
        new GodwinNft("ipfs://bafybeidq74ptqgqa2pi3ozalxkes35btr7npzczzqnwid4noz4hqtpljjy/1.json");
        vm.stopBroadcast();
    }
}