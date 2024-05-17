pragma solidity ^0.5.16;
import "../tests/Contracts/FixedPriceOracle.sol";
import "../contracts/Comptroller.sol";
import "../contracts/InterestRateModel.sol";
import "../contracts/CErc20.sol";
import "../contracts/MockERC20.sol";

interface IHevm {
    function prank(address) external;
}

contract ComptrollerEchidna {

    uint256 public constant USER_TOKENS   = 1_000_000; // multiplied by token decimals
    IHevm hevm = IHevm(address(0x7109709ECfa91a80626fF3989D68f67F5b1DD12D));
    address public constant ALICE = address(0x1000000000000000000000000000000000000000);
    address public constant BOB   = address(0x2000000000000000000000000000000000000000);
    Comptroller comptroller;
    CErc20 Ctoken;
    MockERC20 Utoken;
    InterestRateModel irm;
    


    constructor() public {
        //Init contracts
        comptroller = new Comptroller();
        // irm = new InterestRateModel;
        Ctoken = new CErc20();
        Utoken.mint(address(ALICE), USER_TOKENS * (10 ** Utoken.decimals()));
    }

}
