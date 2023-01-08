// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Counter {
    
    int public count = 0;

    function increment() external {
        count += 1;
    }
    function decrement() external {
        count -= 1;
    }
} 