// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract NumberValidator {
    
    function checkMultiple(int num) public pure returns (string memory) {
        require( num > 0, "Input must be positive number");
        
        if (num % 5 != 0) {
            revert("The number is not a multiple of 5");
        }
        
        assert( num % 5 == 0);
        
        return "The number is a multiple of 5";
    }
}
