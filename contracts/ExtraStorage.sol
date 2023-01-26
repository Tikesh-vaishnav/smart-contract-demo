
pragma solidity ^0.8.0;
import "./Simple_Storage.sol";
    
    contract ExtraStorage is SimpleStorage{
        // orvide and virtual 
        // put overide on new function and virtual on inheritaed function 

        //for storing the 5 greater values.

        function Store(uint _favoriteNumber) public override {
            favoriteNumber = _favoriteNumber + 5;
        }
}