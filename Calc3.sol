Numéro de contrat: 0xb958C989c5808293d6099375E02d32f909aEDfeD

// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0; // Version pragma qui lit toutes les versions 0.6
pragma experimental ABIEncoderV2; // Experimental pragma

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

        /// @notice retourne un calcul uniquement si on est le propriétaire du contract
        /// @dev
    }

     function doAddMod(uint x, uint y) public pure returns(uint z){
         x != 0;
         y != 0;
      return z=x+y;

      /// @notice retourne une addition soustraction
      /// @dev

}

    function DoMulMod(uint x, uint y) public pure returns(uint z){
         x != 0;
         y != 0;
      return  z=x*y;

      /// @notice retourne une multiplication
     /// @dev

}

function doSubMod(uint x, uint y) public pure returns(uint z){
x != 0;
y != 0;
return z=x-y;

/// @notice retourne une soustraction
/// @dev
}

function doDivMod(uint x, uint y) public pure returns(uint z){
x != 0;
y != 0;
return z=x/y;

/// @notice retourne une division
/// @dev

}
}