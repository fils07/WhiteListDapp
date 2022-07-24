//SPDX-License-Identifier: Unlicense
pragma solidity 0.8.9;

contract Whitelist{
    uint8 public maxWhitelistedAdresses;
    mapping(address=>bool) public whitelistedAdrresses;
    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAdresses){
        maxWhitelistedAdresses=_maxWhitelistedAdresses;
    }

    function addAddressToWhitelist() public{
        require(!whitelistedAdrresses[msg.sender],"address already add to whitelist");
        require(numAddressesWhitelisted<maxWhitelistedAdresses,"limit reached, no more address can be add ");
        whitelistedAdrresses[msg.sender]=true;
        numAddressesWhitelisted+=1;
    }



}