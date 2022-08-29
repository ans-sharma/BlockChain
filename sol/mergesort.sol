// SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.7;
contract sortMergeSort{
    function merge(int[] memory _arr, int _l, int _m, int _r) private pure{
        int n1 = _m -_l +1;
        int n2 = _r - _m;

        int[] memory L = new int[](uint(n1));
        int[] memory R = new int[](uint(n2));

        for(int i=0; i<n1; i++){
            L[uint(i)] = _arr[uint(_l+i)];
        }
        for(int j=0; j<n2; j++){
            R[uint(j)] = _arr[uint(_m + 1 + j)];
        }

        int i = 0;
        int j = 0;
        int k = _l;

        while(i < n1 && j < n2){
            if(L[uint(i)] <= R[uint(j)]) {
                _arr[uint(k)] = L[uint(i)];
                i++;
            }
            else {
                _arr[uint(k)] = R[uint(j)];
                j++;
            }
            k += 1;
        }
        while (i < n1){
            _arr[uint(k)] = L[uint(i)];
            i++;
            k++;
        }
        while(j < n2){
            _arr[uint(k)] = R[uint(j)];
            j++;
            k++;
        }
    }

    function mergesort(int[] memory _arr, int _l, int _r) public pure returns(int[] memory){
        if(_l < _r){
            int m = _l + (_r - _l)/2;
            mergesort(_arr, _l, m);
            mergesort(_arr, m+1, _r);
            merge(_arr, _l, m, _r);
        }
        return(_arr);
    }
}