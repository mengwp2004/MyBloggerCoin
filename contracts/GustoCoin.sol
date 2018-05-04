pragma solidity ^0.4.18;
import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract GustoCoin is StandardToken {
  string public name = "GustoCoin";
  string public symbol = "Gusto";
  uint8 public decimals = 3;
  uint256 public INITIAL_SUPPLY = 1000000000000;
  function GustoCoin() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
}


