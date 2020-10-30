Numéro de contrat: 0xb958C989c5808293d6099375E02d32f909aEDfeD

// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract CalcRestricted {
address private owner;

    constructor() public  {
        owner = msg.sender;

    }

    modifier onlyOwner()  { // Modifier
        require(
            msg.sender == owner,
            "Only seller can call this."
        );
        _;
    }

     function doAddMod(uint x, uint y) public view onlyOwner returns(uint z){
         x != 0;
         y != 0;
      return z=x+y;

}
function DoMulMod(uint x, uint y) public view onlyOwner returns(uint z){
x != 0;
y != 0;
return z=x\*y;

}

    function doSubMod(uint x, uint y) public view onlyOwner returns(uint z){

x != 0;
y != 0;
return z=x-y;
}

    function doDivMod(uint x, uint y) public view onlyOwner returns(uint z){

x != 0;
y != 0;
return z=x/y;
}
}