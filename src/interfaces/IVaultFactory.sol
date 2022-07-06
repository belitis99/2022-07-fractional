// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

/// @dev Interface for VaultFactory contract
interface IVaultFactory {
    /// @dev Event log for deploying vault
    /// @param _origin Address of transaction origin
    /// @param _deployer Address of sender
    /// @param _owner Address of vault owner
    /// @param _seed Value of seed
    /// @param _salt Value of salt
    /// @param _vault Address of deployed vault
    event DeployVault(
        address indexed _origin,
        address indexed _deployer,
        address indexed _owner,
        bytes32 _seed,
        bytes32 _salt,
        address _vault
    );

    function deploy() external returns (address payable vault);

    function deployFor(address _owner) external returns (address payable vault);

    function getNextAddress(address _deployer)
        external
        view
        returns (address vault);

    function getNextSeed(address _deployer) external view returns (bytes32);

    function implementation() external view returns (address);
}
