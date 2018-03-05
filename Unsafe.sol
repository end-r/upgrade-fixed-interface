pragma solidity 0.4.19;

import "./Interface.sol";


contract Unsafe is Interface {

    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    function sub(uint a, uint b) public pure returns (uint) {
        return a - b;
    }

    function mul(uint a, uint b) public pure returns (uint) {
        return a * b;
    }

    function div(uint a, uint b) public pure returns (uint) {
        return a / b;
    }

}
