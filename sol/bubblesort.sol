// SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.7;
contract sortbubblesort {
    function bubblesort(int[] memory _arr) public pure returns(int[] memory) {
        uint arrLength = _arr.length;
        int temp = 0;
        for(uint i=0; i<arrLength; i++){
            for(uint j=1; j<arrLength-i; j++){
                if(_arr[j-1]>_arr[j]){
                    temp = _arr[j-1];
                    _arr[j-1] = _arr[j];
                    _arr[j] = temp;
                }
            }
        }
        return _arr;
    }
}