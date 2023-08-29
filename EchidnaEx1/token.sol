pragma solidity ^0.7.0;

contract Ownable {
    address public owner = msg.sender;

    modifier onlyOwner() {
        require(msg.sender == owner, "Ownable: Caller is not the owner.");
        _;
    }
}

contract Pausable is Ownable {
    bool private _paused;

    function paused() public view returns (bool) {
        return _paused;
    }

    function pause() public onlyOwner {
        _paused = true;
    }

    function resume() public onlyOwner {
        _paused = false;
    }

    modifier whenNotPaused() {
        require(!_paused, "Pausable: Contract is paused.");
        _;
    }
}

contract Token is Ownable, Pausable {
    mapping(address => uint256) public balances;

    function transfer(address to, uint256 value) public whenNotPaused {
        uint256 initSenderBalance = balances[msg.sender];
        uint256 initReceiverBalance = balances[to];

        balances[msg.sender] -= value;
        balances[to] += value;

        require(balances[msg.sender] <= initSenderBalance);
        require(balances[to] >= initReceiverBalance);
    }
}
