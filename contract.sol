// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SmartWallet {

    address private owner;
    uint private balance;
    mapping(address => bool) authorized;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "Only owner is allowed.");
        _;
    }

    modifier onlyAuthorized {
        require(authorized[msg.sender] == true || msg.sender == owner, "Only authorized person has access");
        _;
    }

    //this function allows adding funds to wallet
    function addFunds(uint amount) public onlyAuthorized {
        require(balance + amount <= 10000, "Wallet balance cannot exceed 10000");
        balance += amount;
    }

    //this function allows spending an amount to the account that has been granted access by Gavin
    function spendFunds(uint amount) public onlyAuthorized { 
        require(balance - amount >= 0, "Invalid amount");
        balance -= amount;
    }

    //this function grants access to an account and can only be accessed by Gavin
    function addAccess(address x) public onlyOwner { 
        authorized[x] = true;
    }

    //this function revokes access to an account and can only be accessed by Gavin
    function revokeAccess(address x) public onlyOwner {
        authorized[x] = false;
    }

    //this function returns the current balance of the wallet
    function viewBalance() public view onlyAuthorized returns(uint) {
        return balance;
    }
}
