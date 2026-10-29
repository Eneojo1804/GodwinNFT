//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/GodwinNft.sol";

contract GodwinNftTest is Test {
    GodwinNft nft;
    address user = address(1);

    function setUp() public {
        nft = new GodwinNft("ipfs://test/");

    }
    function testMintNft() public {
        nft.mint(user);
        assertEq(nft.ownerOf(1), user);

    }
    function onlyOwnerCanMint() public {
        vm.prank(user);
        vm.expectRevert();
        nft.mint(user);
    }
}