// SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.7;
contract horshodno {
    function horshod(uint _num) public pure returns(uint) {
        uint num = _num;
        uint count = 0;
        while(num!=0){
            count =  count + num%10;
            num /= 10;
        }
        // return count;
        if(_num % count == 0){
            return 1;
        }else{
            return 0;
        }
    }
}