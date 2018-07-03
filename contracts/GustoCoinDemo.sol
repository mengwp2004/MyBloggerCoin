pragma solidity ^0.4.18;
import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract GustoCoinDemo is StandardToken {
  string public name = "GustoCoin Demo";
  string public symbol = "GDM";
  uint8 public decimals = 18;
  uint256 public INITIAL_SUPPLY = 1000000000;
  function GustoCoin() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
}


