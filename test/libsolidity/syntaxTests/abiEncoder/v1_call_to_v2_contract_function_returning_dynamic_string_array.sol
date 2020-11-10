==== Source: A ====
pragma experimental ABIEncoderV2;

contract C {
    function f() external view returns (string[] memory) {}
}
==== Source: B ====
import "A";

contract D {
    function g() public view {
        C(address(0x00)).f();
    }
}
// ----
// TypeError 2428: (B:65-85): The type of return parameter 1, string[], is only supported in ABI coder v2. Use "pragma abicoder v2;" to enable the feature.
