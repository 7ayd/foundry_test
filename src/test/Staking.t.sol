// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "../Staking.sol";
import "./mocks/MockERC20.sol";

contract StakingTest is DSTest {
    StakingContract public Staking;
    MockERC20 public MockERC20;

    function setUp() public {
        stakingContract = new StakingContract();
        mockERC = new MockERC20();
    }

    function testExample() public {
        uint256 amount = 10e18;
        mockERC.approve(address(stakingContract), amount);
        bool stakingPassed = stakingContract.stake(amount, address(mockERC));
        assertTrue(stakingPassed);
    }
}
/ 