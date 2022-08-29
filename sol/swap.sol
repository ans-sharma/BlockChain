pragma solidity ^0.8.7;

contract swapVar {
    int public a = 5;
    int public b = 6;

    function swap() public returns(int, int){
        // uint temp = a;
        // a = b;
        // b = temp;
        a = a + b;
        b = a - b;
        a = a - b;

        return(a,b);
    }
}