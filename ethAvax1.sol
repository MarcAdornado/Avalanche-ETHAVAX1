//202110010@fit.edu.ph


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract storeInventory {

    uint public totalApples = 10; 
    uint public totalBanana = 10; 

    
    function buyApples(uint apples) public {
        require(apples > 0 && apples <= 10, "You can by 1 - 10 apples");

        if(totalApples < apples){
        revert("Not enough apples in stock.");
        }

        totalApples -= apples; 
    }

    function buyBanana(uint banana) public {
        require(banana > 0 && banana <= 10, "You can buy 1 - 10 banana");

        if(totalBanana < banana){
        revert("Not enough banana in stock.");
        }

        totalBanana -= banana; 
    }

    function restockApples(uint apples) public {
        totalApples += apples;
        assert(totalApples >= 0);
    }

    function restockBanana(uint banana) public {
        totalBanana += banana;
        assert(totalBanana >= 0);
    }

}
