// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract Calculator {
    function add(uint a, uint b) external pure returns (uint c) {
        c = a + b;
    }

    function subtract(uint a, uint b) external pure   returns (uint c) {
        c = a - b;
    }

    function multiply(uint a, uint b) external pure returns (uint c) {
        c  = a * b;
    }

    function divide(uint a, uint b) external pure returns (uint c) {
        if (b == 0) revert("divisor cannot be zero");
        c = a / b;
    }
}