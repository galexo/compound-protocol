// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.5.16;

// import "../openzeppelin-contracts/contracts/access/Roles.sol";
import "../openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract MockERC20 is ERC20 {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    uint8 private __decimals = 18;
    string public  name;
    string public  symbol;

    constructor(string memory _name, string memory _symbol) public {
        // _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        // _setupRole(MINTER_ROLE, msg.sender);
        name = _name;
        symbol = _symbol;
    }

    function decimals() public view  returns (uint8) {
        return __decimals;
    }

    function setDecimals(uint8 _decimals) external {
        __decimals = _decimals;
    }

    function mint(address _to, uint256 _value) external {
        _mint(_to, _value);
    }
}
