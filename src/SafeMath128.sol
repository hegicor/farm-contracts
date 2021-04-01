pragma solidity >= 0.4.24;


library SafeMath128 {

    function mul(uint128 a, uint128 b) internal pure returns (uint128) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-solidity/pull/522
        if (a == 0) {
            return 0;
        }

        uint128 c = a * b;
        require(c / a == b, "SafeMath#mul: OVERFLOW");
        return c;
    }

    function mul(uint128 a, uint128 b, string memory errMsg) internal pure returns (uint128) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-solidity/pull/522
        if (a == 0) {
            return 0;
        }

        uint128 c = a * b;
        require(c / a == b, errMsg);
        return c;
    }


    function div(uint128 a, uint128 b) internal pure returns (uint128) {
        require(b > 0, "SafeMath#div: DIVISION_BY_ZERO"); // Solidity only automatically asserts when dividing by 0
        uint128 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    function div(uint128 a, uint128 b, string memory errMsg) internal pure returns (uint128) {
        require(b > 0, errMsg); // Solidity only automatically asserts when dividing by 0
        uint128 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
    * @dev Subtracts two numbers, reverts on overflow (i.e. if subtrahend is greater than minuend).
    */
    function sub(uint128 a, uint128 b) internal pure returns (uint128) {
        uint128 c = a - b;
        require(c <= a, "SafeMath#sub: UNDERFLOW");
        return c;
    }

    /**
    * @dev Subtracts two numbers, reverts on overflow (i.e. if subtrahend is greater than minuend).
    */
    function sub(uint128 a, uint128 b, string memory errMsg) internal pure returns (uint128) {
        uint128 c = a - b;
        require(c <= a, errMsg);
        return c;
    }

    /**
    * @dev Adds two numbers, reverts on overflow.
    */
    function add(uint128 a, uint128 b) internal pure returns (uint128) {
        uint128 c = a + b;
        require(c >= a, "SafeMath#add: OVERFLOW");

        return c;
    }

    /**
    * @dev Adds two numbers, reverts on overflow.
    */
    function add(uint128 a, uint128 b, string memory errMsg) internal pure returns (uint128) {
        uint128 c = a + b;
        require(c >= a, errMsg);

        return c;
    }

    /**
    * @dev Divides two numbers and returns the remainder (unsigned integer modulo),
    * reverts when dividing by zero.
    */
    function mod(uint128 a, uint128 b) internal pure returns (uint128) {
        require(b != 0, "SafeMath#mod: DIVISION_BY_ZERO");
        return a % b;
    }

    /**
    * @dev Divides two numbers and returns the remainder (unsigned integer modulo),
    * reverts when dividing by zero.
    */
    function mod(uint128 a, uint128 b, string memory errMsg) internal pure returns (uint128) {
        require(b != 0, errMsg);
        return a % b;
    }

    /**
     * @dev Returns the minimum of a and b
     */
    function min(uint128 a, uint128 b) internal pure returns (uint128 z) {
        z = a <= b ? a : b;
    }

    /**
     * @dev Returns the maximum value in a and b
     */
    function max(uint128 a, uint128 b) internal pure returns (uint128 z) {
        z = a >= b ? a : b;
    }
}