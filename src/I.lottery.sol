// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


interface ILottery {
    function setVrfConsumer(address _vrfconsumer) external;
    function setTokenManager(address _tokenManager) external;
    function joinLottery() payable external;
    function selectWinner(uint256 _randomWords) external;
    function returnWinner() external returns(address);
    function resetLottery() external;
}

