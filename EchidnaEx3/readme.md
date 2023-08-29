# ex 3

Create a scenario where echidna (tx.origin) becomes the owner of the contract at construction, and totalMintable is set to 10,000. Remember that Echidna needs a constructor without arguments.
Add a property to check if echidna can mint more than 10,000 tokens.
Once Echidna finds the bug, fix the issue, and re-try your property with Echidna.

## notes

Echidna does not seem to detect any problems. Tested with 500,000 calls.
