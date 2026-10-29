//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/GodwinNft.sol";

contract MintGodwinNft is Script {
    function run() external {
        vm.startBroadcast();
        GodwinNft nft = GodwinNft(0xeAC230016966f8d908c883e119238C480164e064);
        nft.mint(0x8695DD1e96060E3D3A9ac57Ba43Ac7e67fcD9481);
        vm.stopBroadcast();
    }
}