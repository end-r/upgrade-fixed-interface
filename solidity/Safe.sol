pragma solidity 0.4.19;

import "./Interface.sol";


contract Safe is Interface {

    function add(uint a, uint b) public pure returns (uint) {
        uint c = a + b;
        assert(c >= a);
        return c;
    }

    function sub(uint a, uint b) public pure returns (uint) {
        assert(b <= a);
        return a - b;
    }

    function mul(uint a, uint b) public pure returns (uint) {
        if (a == 0) {
            return 0;
        }
        uint256 c = a * b;
        assert(c / a == b);
        return c;
    }

    function div(uint a, uint b) public pure returns (uint) {
        return a / b;
    }

}
