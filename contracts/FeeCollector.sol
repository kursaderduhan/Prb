//SPDX-License-Idefntifier: MIT

pragma solidity ^0.8.15;

contract FeeCollector {

    address public owner; //contract address 0x74409fEA964CB14FfB1aA7E545454864A9134622
    uint256 public balance;
    constructor() {
        owner = msg.sender;
    }

    receive() payable external {
        balance += msg.value;
    }

    function withdraw(uint amount, address payable destAddr) public {
        require(msg.sender == owner, "Only owner can withdraw");
        require(amount <= balance, "Insufficient funds");
        destAddr.transfer(amount);
        balance -= amount; 
    }
}