// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import OpenZeppelin's ERC20 and Ownable contracts directly from GitHub
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title Game20 Token
 * @dev ERC20 Token with name "Game20", symbol "GME", 1,000,000 total supply, and 6 decimals.
 * Inherits standard ERC20 functionality from OpenZeppelin.
 */
contract Game20 is ERC20, Ownable {
    uint8 private constant CUSTOM_DECIMALS = 6;
    uint256 private constant INITIAL_SUPPLY = 1_000_000 * (10 ** uint256(CUSTOM_DECIMALS));

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor() ERC20("Game20", "GME") {
        _mint(msg.sender, INITIAL_SUPPLY);
    }

    /**
     * @dev Overrides the decimals function to return 6 instead of the default 18.
     */
    function decimals() public view virtual override returns (uint8) {
        return CUSTOM_DECIMALS;
    }

    /**
     * @dev Function to mint new tokens.
     * Can only be called by the contract owner.
     * @param to The address that will receive the minted tokens.
     * @param amount The number of tokens to mint (in smallest unit).
     */
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    /**
     * @dev Function to burn tokens from the caller's account.
     * @param amount The number of tokens to burn (in smallest unit).
     */
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
