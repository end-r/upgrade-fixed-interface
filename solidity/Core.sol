pragma solidity 0.4.19;

import "./Interface.sol";
import "./Ownable.sol";


contract Core is Interface, Ownable {

    Interface public implementation;

    function setImplementation(address _impl) external onlyOwner {
        implementation = _impl;
    }

    function add(uint a, uint b) public returns (uint) {
        return implementation.add(a, b);
    }

    function sub(uint a, uint b) public returns (uint) {
        return implementation.sub(a, b);
    }

    function mul(uint a, uint b) public returns (uint) {
        return implementation.mul(a, b);
    }

    function div(uint a, uint b) public returns (uint) {
        return implementation.div(a, b);
    }


}
