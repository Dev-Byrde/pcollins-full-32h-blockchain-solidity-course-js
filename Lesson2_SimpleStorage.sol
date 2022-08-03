// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;  //Initiate the solidy version,  ^ stands for newer version

contract SimpleStorage{
    bool hasFavoriteNumber = true; // set a boolean variable hasFavoriteNumber to true
    uint public favoriteNumber = 123; // set a uint variable
    string numberInText= "one hundred and twenty three";
    int256 favoriteInt= -5; 
    address myAddress = 0x147850Ae94D07B1a22Bb7ccb791eAd3aC61cd68d; // set a variable to a public address
    bytes32 favoriteByte = "cat";
    // variables can only be accessed by elements in the same {}
    
    People[] public people; 
    
    People public person = People({favoriteNumber: 2, name: "Patrick"});
    
    mapping(string => uint256) public nameToFavoritNumber;

    struct People{
        uint256 favoriteNumber;
        string name;
    }
    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    // view function allows to read the the blockchain
    // pure function allows to make calculation that don't modify the blockchain

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber,_name));
        nameToFavoritNumber[_name]= _favoriteNumber;
    }

    // calldata are temporary variables that can't be modified
    // memmory are temporary variables that can be modified
    // storage are permanent variables
}
