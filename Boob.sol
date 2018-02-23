pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Boob is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Boob(address _owner)  UpgradeableToken(_owner) {
    name = "Boob";
    symbol = "Boob";
    totalSupply = 1000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}