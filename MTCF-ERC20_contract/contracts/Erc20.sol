// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Tokens is ERC20, Ownable {
    constructor(uint256 initialSupply) ERC20("Xcel", "XL") Ownable(msg.sender) {
        _mint(msg.sender, initialSupply);
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function burn(address from, uint256 amount) external  {
        _burn(from, amount);
    }

    function transfer_(address to, uint256 value) external {
        _transfer(msg.sender, to, value);
        emit Transfer(msg.sender,  to,  value);

    }
}