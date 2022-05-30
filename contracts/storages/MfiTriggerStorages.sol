// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import "../interfaces/IMfiTriggerInterfaces.sol";

import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

contract MfiTriggerStorages {

    uint256 public totalPledgeValue;
    uint256 public totalPledgeAmount;
    uint256 public treasuryRatio;
    uint256 public exchequerAmount;
    uint256 public cakeTokenBalanceOf;
    IMetaFinanceClubInfo public metaFinanceClubInfo;
    ISmartChefInitializable[] public smartChefArray;
    IMetaFinanceIssuePool public metaFinanceIssuePoolAddress;

    // User has received
    mapping(address => uint256) public userHasReceived;
    // User pledge amount
    mapping(address => uint256) public userPledgeAmount;
    // Storage quantity
    mapping(ISmartChefInitializable => uint256) public storageQuantity;
    // Storage ratio
    mapping(ISmartChefInitializable => uint256) public storageProportion;


    /// @notice main chain
    IPancakeRouter02 public constant pancakeRouterAddress = IPancakeRouter02(0x10ED43C718714eb63d5aA57B78B54704E256024E);
    IERC20Metadata public constant wbnbTokenAddress = IERC20Metadata(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c);
    IERC20Metadata public constant cakeTokenAddress = IERC20Metadata(0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82);

    bool public urgent;
}
