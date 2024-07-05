// .s.sol ---> foundry convention
// .t.sol ---> hardhat convention

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.26;

import {Script} from "../lib/forge-std/src/Script.sol";
import "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        // every cmd after this line should send to the rpc
        vm.startBroadcast(); // vm is a special keyword in forge-std + it works ONLY in foundry
        SimpleStorage simpleStorage = new SimpleStorage(); // will send a trx to create a new sc
        vm.stopBroadcast();

        return simpleStorage;
    }
}
