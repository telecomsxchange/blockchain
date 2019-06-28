pragma solidity ^0.4.11;

contract Publish {
    address public owner;
    event Published(bytes32 message);

    function Publish() {
        owner = msg.sender;
    }
    
    function say(bytes32 mesg) returns (bool success) {
        require(msg.sender == owner);
        Published(mesg);
        return true;
    }
}
