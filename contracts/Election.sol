pragma solidity  ^0.4.2;

contract Election{
    string public candidateName;

    function Election () public {
        candidateName = "candidate 1";
    }

    function setCandidate(string _name) public{
        candidateName = _name;
    }
}