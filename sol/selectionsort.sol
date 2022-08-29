// SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.7;

contract sortselectionsort {
    function selectionsort(int[] memory _arr) public pure returns(int[] memory) {
        for(uint i = 0; i < _arr.length-1; i++) {
            uint index = i;
            for(uint j=i+1; j<_arr.length; j++){
                if(_arr[j] < _arr[index]){
                    index = j;
                }
            }
            int smallestNo = _arr[index];
            _arr[index] = _arr[i];
            _arr[i] = smallestNo;
        }
        return _arr;
    }
}