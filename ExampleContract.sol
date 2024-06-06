// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract ExampleContract {
  uint public result;


  function isEven(uint num) public {
    assert(num % 2 == 0);
    result += 1;
  }


  function dangerousDivide(uint _divisor) public {
    require(_divisor != 0, "Cannot divide by zero");
    result += 1;
  }


  function isValid(uint one, uint two) public {
    if(one != two){
        revert("Operation not valid.");
    }
    result += 1;
  }
}
