# ex 4

Add assertions to ensure that after calling transfer:

msg.sender must have its initial balance or less.
to must have its initial balance or more.

## notes

Echidna does not seem to find any issue. After 500,000 calls everything passes.
