// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/governance/Governor.sol";
import "@openzeppelin/contracts/governance/extensions/GovernorCountingSimple.sol";
import "@openzeppelin/contracts/governance/extensions/GovernorVotes.sol";
import "@openzeppelin/contracts/governance/extensions/GovernorVotesQuorumFraction.sol";

contract WebMobGovernor is Governor, GovernorCountingSimple, GovernorVotes, GovernorVotesQuorumFraction {
    constructor(IVotes _token)
        Governor("WebMobGovernor")
        GovernorVotes(_token)
        GovernorVotesQuorumFraction(4)
    {}

    /** 
     * @dev Determines how long after a proposal is created should voting power be fixed.
     *      A large voting delay gives users time to unstake tokens if necessary.
     *      (Assuming lock time around 13.14 seconds, we will set votingDelay = 1 block, 1 day = 6545 blocks,
            and votingPeriod = 1 week = 45818 blocks)
     * @return 1-block 
     */ 
    function votingDelay() public pure override returns (uint256) {
        return 1; // 1 block
    }

    /** 
     * @dev Determines how long a proposal remains open to vote.
     * @return blocks in a week.
     */ 
    function votingPeriod() public pure override returns (uint256) {
        return 45818; // 1 week
    }
    
    /** 
     * @dev We can optionally set a proposal threshold. This restricts proposal creation to accounts that 
            have enough voting power.
     */ 
    function proposalThreshold() public pure override returns (uint256) {
        return 0;
    }

    // The following functions are overrides required by Solidity.
    function quorum(uint256 blockNumber)
        public
        view
        override(IGovernor, GovernorVotesQuorumFraction)
        returns (uint256)
    {
        return super.quorum(blockNumber);
    }
}