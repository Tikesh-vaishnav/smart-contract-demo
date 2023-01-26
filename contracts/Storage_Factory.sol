
pragma solidity ^0.8.0;
import "./Simple_Storage.sol";

    contract StorageFactory{
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint _simpleStorageIndex, uint _simpleStorageNumber) public{
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        simpleStorage.Store(_simpleStorageNumber);

    }

    function sfGet(uint _simpleStorageIndex) public view returns(uint){
        return simpleStorageArray[_simpleStorageIndex].retrieve();
        
    }

}