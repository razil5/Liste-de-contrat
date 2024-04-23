// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.2/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.2/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@5.0.2/access/Ownable.sol";
import "@openzeppelin/contracts@5.0.2/token/ERC20/extensions/ERC20Permit.sol";

contract Raziel is ERC20, ERC20Burnable, Ownable, ERC20Permit {
    constructor(address initialOwner)
        ERC20("Raziel", "Raz")
        Ownable(initialOwner)
        ERC20Permit("Raziel")
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}

(Note: Contrat avec fonction Burn et mint. Remplacer Raziel par votre nom de token et Raz par son symbole.)