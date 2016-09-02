import "dapple/test.sol";
import "dapple/reporter.sol";

contract A is Test, Reporter {
  uint[][] multiarray;

  function setUp() {
    setupReporter('./report.md');
  }

  function testMultiArray() wrapCode("js") {
    //@doc multiarray length: `uint multiarray.length`
    //@doc multiarray.length++;
    multiarray.length++;
    //@doc multiarray length: `uint multiarray.length`
    //@doc multiarray[0] length: `uint multiarray[0].length`
    //@doc multiarray[0].length++;
    //@doc multiarray[0].length++;
    multiarray[0].length++;
    multiarray[0].length++;
    //@doc multiarray[0][0]: `uint multiarray[0][0]`
    //@doc multiarray[0][0] = 1;
    multiarray[0][0] = 1;
    //@doc multiarray[0][1] = 1;
    multiarray[0][1] = 1;
    //@doc multiarray[0] length: `uint multiarray[0].length`
    //@doc multiarray[0][0]: `uint multiarray[0][0]`
    //@doc multiarray[0][1]: `uint multiarray[0][1]`
    //@doc multiarray.length--;
    multiarray.length--;
    //@doc multiarray[0] length: `uint multiarray.length`
    //@doc multiarray.length++;
    multiarray.length++;
    //@doc multiarray[0] length: `uint multiarray[0].length`
    //@doc multiarray[0].length++;
    //@doc multiarray[0].length++;
    multiarray[0].length++;
    multiarray[0].length++;
    //@doc multiarray[0][0]: `uint multiarray[0][0]`
    //@doc multiarray[0][1]: `uint multiarray[0][1]`
  }

  function testFibonacci() {
    //@doc ### the first 10 number of the fibonacci sequence
    uint s = 0;
    uint b = 1;
    uint tmp;
    for(uint i=0; i<10; i++) {
      tmp = s; s = b; b = tmp + b;
      //@doc #### 0x`uint b`
    }
  }
}
