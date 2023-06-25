// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Mappings {
    mapping(address => uint256) public balances;
    mapping(address => bool) public inserted;
    address[] public keys;

    function set(address _key, uint256 _value) public {
        if (!inserted[_key]) {
            inserted[_key] = true;
            keys.push(_key);
        }
        balances[_key] = _value;
    }

    function getSize() public view returns (uint256) {
        return keys.length;
    }

    function getFirst() public view returns (uint256) {
        return balances[keys[0]];
    }

    function getLast() public view returns (uint256) {
        return balances[keys[keys.length - 1]];
    }

    function getBalance(uint256 _index) public view returns (uint256) {
        return balances[keys[_index]];
    }
}
