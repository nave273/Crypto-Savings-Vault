// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SavingsVault {

    // Deposit ETH into the vault
    function deposit() public payable {}

    // Withdraw ETH from the vault
    function withdraw(uint256 amount) public {
        require(address(this).balance >= amount, "Insufficient balance");
        payable(msg.sender).transfer(amount);
    }

    // Get the contract's balance
    function getVaultBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

