// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract Calculator {
    function addNumbers(uint a, uint b) external pure returns (uint c) {
        c = a + b;
    }

    function subtractTwoNumbers(uint a, uint b) external pure   returns (uint c) {
        c = a - b;
    }

    function multiplyTwoNumbers(uint a, uint b) external pure returns (uint c) {
        c  = a * b;
    }

    function divideTwoNumbers(uint a, uint b) external pure returns (uint c) {
        if (b == 0) revert("divisor cannot be zero");
        c = a / b;
    }
}