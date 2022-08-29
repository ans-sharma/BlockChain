// SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.7;
contract uglynumber {
    function maxDiv(uint num) private pure returns(uint){
        if(num == 1)
            return 1;
        if(num <= 0)
            return 0;
        if(num%2==0)
            return maxDiv(num/2);
        if(num%3==0)
            return maxDiv(num/3);
        if(num%5==0)
            return maxDiv(num/5);
        return 0;
    }
    function ugly(uint _num) public pure returns(uint) {
        if(maxDiv(_num) == 1){
            return 1;
        }
        else{
            return 0;
        }
    }
}