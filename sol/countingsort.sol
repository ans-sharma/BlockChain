// SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.7;
contract sortCounting {
    function countingsort(int[] memory _arr, uint _maxRange) public pure returns(uint[] memory){
        uint[] memory countArr = new uint[](_maxRange+1);
        for(uint i=0; i< _arr.length; i++){
            countArr[uint(_arr[i])] += 1;
        }
        // for(uint i=1; i< _arr.length; i++){
        //     countArr[i] = countArr[i-1] + countArr[i];
        // }
        // for(uint i= _arr.length-1; i>0; i--){
        //     countArr[i] = countArr[i-1];
        // }
        // countArr[0] = 0;
        // uint[] memory tempArr = new uint[](_arr.length);
        // for(uint i=0; i<_arr.length; i++){
        //     tempArr[countArr[uint(_arr[i])]] = uint(_arr[i]);
        //     countArr[uint(_arr[i])] += 1;
        // }
        return ;
    }
}