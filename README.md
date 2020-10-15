# alyra-solidity

## ex01:

Numéro de contract: 0xD857A8A4f34fe4A6684cebFBA332B0b3Aa975eA4

// SPDX-License-Identifier: MIT // SPDX Licence Identifier
pragma solidity ^0.6.0; // Version pragma qui lit toutes les versions 0.6
pragma experimental ABIEncoderV2; // Experimental pragma

import './Logger.sol' as logger; // import de ./Logger.sol

/// @title SolidityCourse
/// @author Dragon-S20
/// @notice You can use this contract for test your code
/// @dev

contract SolidityCourse is logger.Logger { // Declaration du contract

@notice Try to understand a contract with solidity
/// @dev
/// @param
/// @return
address private owner;

    constructor() public {
        owner = msg.sender;
    }

    function whoIsOwner() public returns(address) {
        log();
        return owner;
    }

    /// @notice retourne l'adresse de celui qui a démarré le contrat
    /// @dev

    function getLastVisitor() public returns(address) {
        address lastVisitor = getLast();
        log();
        return lastVisitor;
    }

      /// @notice retourne l'adresse de la dernière personne qui a démarré le contrat
    /// @dev

    function getNthVisitor(uint _pos) public returns(address) {
        address nthVisitor = getVisitorByPosition(_pos);
        log();
        return nthVisitor;
    }

      /// @notice retourne la position d'une personne qui a démarré le contrat
    /// @dev

    function getAllVisitors() public view returns(address[] memory) {
        require(owner == msg.sender, 'Only owner can use this function.');

        return getAll();
    }

      /// @notice retourne tous les visiteurs qui ont démarré le contrat
    /// @dev

}

## ex02:

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

## ex03:

Le view est gratuit et permet de lire simplement le contrat. Il s'applique à une fonction

Le pure empêche toute modification ou lecture du state. Il s'applique à une fonction.

## ex04:

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

## ex05:

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

## ex06:
