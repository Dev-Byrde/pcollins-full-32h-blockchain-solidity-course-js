//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Lesson2_SimpleStorage.sol";

contract StorageFactory{
    StorageType[] public StorageArray;
    
    function createSimpleStorageContract() public {
        StorageType storageContract = new SimpleStorage();
        simpleStorageArray.push(storageContract);
    }
    
    function sfStore(uint256 _storageIndex, uint256 _storageNumber) public {
        // Address 
        // ABI 
        // SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
        storageArray[_storageIndex].store(_storageNumber);
    }
}