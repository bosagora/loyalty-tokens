// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IERC20DelegatedTransfer is IERC20 {
    function nonceOf(address account) external view returns (uint256);
    function delegatedTransfer(
        address from,
        address to,
        uint256 amount,
        bytes calldata signature
    ) external returns (bool);
}
