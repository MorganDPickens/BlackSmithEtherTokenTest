// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../lib/openzeppelin-contracts/lib/forge-std/src/Script.sol";
import "../src/BlackSmithEther.sol";

contract DeployBlackSmithEther is Script {
    function run() external {
        vm.startBroadcast();

        // Deploy the token contract
        BlackSmithEther token = new BlackSmithEther(msg.sender);

        // Mint some tokens to a specific address (if needed)
        token.mint(
            0x2c36d4F12b3FA18632BE3137F8A54A5bfbf9dBd0,
            1000 * 10 ** token.decimals()
        );

        vm.stopBroadcast();
    }
}
