// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract sortQuickSort {
    function quicksort(uint[] memory _arr, uint _start, uint _end) public returns(uint[] memory){
        if(_start < _end){
            uint ptrIndex = partition(_arr, _start, _end);
            quicksort(_arr, _start, ptrIndex-1);
            quicksort(_arr, ptrIndex+1, _end);
        }
        return(_arr);
    }

    function partition(uint[] memory _arr, uint _start, uint _end)private pure returns (uint) {
        uint pivot = _arr[_end];
        uint ptrIndex = _start;
        for(uint i=_start; i<_end; i++){
            if(_arr[i] <= pivot){
                uint temp = _arr[i];
                _arr[i] = _arr[ptrIndex];
                _arr[ptrIndex] = temp;
                ptrIndex += 1;
            }
        }
        uint temp1 = _arr[ptrIndex];
        _arr[ptrIndex] = _arr[_end];
        _arr[_end] = temp1;
        return(ptrIndex);
    }
}