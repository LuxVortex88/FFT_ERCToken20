// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract FullFeatureToken {
    string public name = "Full Feature Token";
    string public symbol = "FFT";
    uint8 public decimals = 18;
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;
    
    uint256 public interestRate = 5;  // Interest rate of 5%
    uint256 private constant SECONDS_IN_A_YEAR = 31536000;
    mapping(address => uint256) public lastUpdated;

    address public owner;
    string private internalInfo;

    constructor(uint256 _initialSupply, string memory _privateInfo) {
        totalSupply = _initialSupply * (10 ** uint256(decimals));
        balanceOf[msg.sender] = totalSupply;
        owner = msg.sender;
        internalInfo = _privateInfo;
    }
}





