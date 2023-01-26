
pragma solidity ^0.8.0;

contract SimpleStorage{
    
    uint favoriteNumber;

    mapping (string => uint) public NameToFavoriteNumber;

    struct People{
        uint favoriteNumber;
        string name;
    }

    People[] public people;


    function Store(uint _favoriteNumber) public virtual{
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() view public returns(uint){
        return favoriteNumber;
    }

    //calldata memory storage
    function addPerson(string memory _name, uint _favoriteNumber) public{
        people.push(People(_favoriteNumber, _name));
        NameToFavoriteNumber[_name] = _favoriteNumber; 
    } 


}