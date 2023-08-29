pragma solidity ^0.8.0;

import "./token.sol";

/// @dev Run the template with
///      ```
///      solc-select use 0.8.0
///      echidna program-analysis/echidna/exercises/exercise2/template.sol
///      ```

contract TestToken is Token {
    constructor() {
        pause(); // pause the contract
        owner = address(0); // lose ownership
            // it should now be impossible to unpause!
    }

    // property testing
    function echidna_cannot_be_unpaused() public view returns (bool) {
        return paused();
    }

    // assertion testing
    function assert_cannot_unpause() public view {
        assert(paused());
    }
}
