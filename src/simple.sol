// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// /* 
//     Simple contract to test contract verification
// */

// contract SimpleToken is ERC20 {
//     address public owner;
    
//     constructor() ERC20("MyToken", "MTK") {
//         owner = msg.sender;
//     }
    
// }

contract SimpleToken {
    address public oowner;
    constructor() {
        oowner = msg.sender;
    }
}
