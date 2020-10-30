numéro de contract:

0x1100A0FdE4C9370eF60a932576A557826892b84f

// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract CalcRestricted {

/// @title CalcRestricted
/// @author Dragon-S20
/// @notice You can calc only if your are the owner of the contract
/// @dev Rectrictions of Calc, function calc active when your are the owner of the contract

address private owner;

    constructor() public  {
        owner = msg.sender;

    }
     function doAddMod(uint x, uint y) public pure returns(uint z){
         x != 0;
         y != 0;
      return z=x+y;

}

    function DoMulMod(uint x, uint y) public pure returns(uint z){
         x != 0;
         y != 0;
      return  z=x*y;

}

function doSubMod(uint x, uint y) public pure returns(uint z){
x != 0;
y != 0;
return z=x-y;
}

function doDivMod(uint x, uint y) public pure returns(uint z){
x != 0;
y != 0;
return z=x/y;
}
}