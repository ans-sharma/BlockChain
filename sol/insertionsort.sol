pragma solidity ^0.8.15;

contract sortVar {
    uint[] public arr = [3, 2, 1];
    function insertionSort() public returns (uint[] memory){
        for (uint i = 1; i < arr.length; i++){
            uint key = arr[i];
            int j = int(i - 1);
            while ( j >= 0 && arr[uint(j)] > key){
                arr[uint(j)+1] = arr[uint(j)];
                j = j - 1;
            }
            j = j + 1;
            arr[uint(j)] = key;
        }
        return arr;
    }
}
// This code is contributed by Anshuman Kumar Sharma

