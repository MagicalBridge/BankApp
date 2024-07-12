// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import {Script, console} from "forge-std/Script.sol";
import {MyToken} from "../src/LouisToken.sol";

contract MyTokenScript is Script {
    MyToken public mytoken;

    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        mytoken = new MyToken("My Test Token", "MTT");

        console.log("MyToken deployed to:", address(mytoken));

        vm.stopBroadcast();
    }
}
