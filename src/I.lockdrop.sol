// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

interface ILockDrop {
    function owner() external;
    function deposit() external payable;
    function withdraw() external;
}

