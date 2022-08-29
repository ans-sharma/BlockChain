// SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.7;

contract calfactorial {
    function fact(uint _range) public pure returns(uint) {
        uint factorial = multiply(_range);
        return factorial;
    }
    function multiply(uint _num) private pure returns(uint) {
        if(_num >= 1){
            return _num * multiply(_num-1);
        }
        else{
            return 1;
        }
    }
}