pragma solidity ^0.4.26; 

import "./Storage.sol";

contract Proxy is Storage {

  address currentAddress;

  constructor(address _currentAddress) public {
    owner = msg.sender;
    currentAddress = _currentAddress;
  }
  function upgrade(address _newAddress) public {
    require(msg.sender == owner);
    currentAddress = _newAddress;
  }

  }

