# Smart-Wallet

Meet Gavin, a proud business owner who works alongside his children. Gavin loves his kids, but sometimes they need access to the funds stored in his bank account, which he's not always comfortable sharing with them.

That's where you come in! Gavin wants you to help him create a wallet and develop a smart contract that he can deploy and own after verification. Gavin wants to be the only one who can grant or revoke access to the wallet, and anyone with access should be able to add, spend, and view its balance.
Gavin is hoping that you can set the maximum limit of the wallet to 10000 and ensure that its balance never exceeds this amount. The wallet should start with an initial balance of 0.

Gavin would like the smart contract to include the following public functions:

 

Input:
addFunds(uint amount): Allows adding funds to the wallet's balance, but the amount should not exceed 10000. Only Gavin and the addresses he has granted access to can use this function.

spendFunds(uint amount): Allows spending funds from the wallet's balance. Only owner and the addresses he has granted access to can use this function. The balance cannot be negative.

addAccess(address x): Grants access to address x to the smart contract. Only Gavin (contract owner) has the authority to execute this function.

revokeAccess(address y):Revokes the access of address y to the smart contract. Only Gavin (contract owner) has the authority to execute this function.

 

Output:
viewBalance() Displays the current balance of the wallet. Only Gavin and the addresses he has granted access to can use this function.
