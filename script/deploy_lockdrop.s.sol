// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/console.sol";
import {Script, console2} from "forge-std/Script.sol";
import {Reward} from "../src/tokencontract.sol";
import {LockDrop} from "../src/lockdrop.sol";
import {ILockDrop} from "../src/I.lockdrop.sol";
import {TokenManager} from "../src/rewardtokenmanager.sol";
import {ITokenManager} from "../src/I.tokenmanager.sol";


contract Deploy is Script {
    function run() public {
        uint256 privateKey = vm.envUint("PRIVATE_KEY_0x");
        address account = vm.addr(privateKey);
        uint256 supply = 1_000 * (10 ** 18);

        address tokenmanagerAddress =   0x17Cc05C02b35CF3d79d2fCedf1Ad15d391442570;
        address rewardAddress =   0x52bbcDBEC990b39d2fb5B7d75B956c439e0fDe4F;

        console.log("Account:", account);

        // start broadcast
        vm.startBroadcast(privateKey);

        // deploy reward token manager
        // TokenManager tokenmanager = new TokenManager();

        // deploy the RWDZ token contract
        // Reward reward = new Reward("Rewardz", "RWDZ", address(tokenmanager), supply);
        
        // set the Reward token address in TokenManager
        // ITokenManager(address(tokenmanager)).setRewardTokenAddress(address(reward));
        ITokenManager(tokenmanagerAddress).setRewardTokenAddress(rewardAddress);
        
        // deploy lockdrop
        // new LockDrop(address(tokenmanager));

        // stop broadcast
        vm.stopBroadcast();
    }
}

