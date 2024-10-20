// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/Game20.sol";

contract Game20Test is Test {
    Game20 public game20;

    function setUp() public {
        game20 = new Game20();
    }

    function testInitialSupply() public {
        uint256 expectedSupply = 1_000_000 * 10 ** game20.decimals();
        assertEq(game20.totalSupply(), expectedSupply, "Initial supply should be 1,000,000 tokens");
    }

    function testTokenName() public {
        assertEq(game20.name(), "Game20", "Token name should be Game20");
    }

    function testTokenSymbol() public {
        assertEq(game20.symbol(), "GME", "Token symbol should be GME");
    }
}
