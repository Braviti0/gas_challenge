// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract gasChallenge {
    //Implement Fixed-Size Array Technique Here
    uint[10] numbers = [1,2,3,4,5,6,7,8,9,10];
    
    //Function to check for sum of array
    //No changes required in this function
    function getSumOfArray() public view returns (uint256) {
        uint sum = 0;
        for (uint i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
        return sum;
    }
    
    function notOptimizedFunction() public {
        for (uint i = 0; i < numbers.length; i++) {
            numbers[i] = 0;
        }
    }
    
    //Implement Remaining Gas Optimization Techniques Here
    //Sum of elements in the numbers array should equal 0

    function optimizedFunction() public {

        //unchecked block
        unchecked {
            // caching state variable
            uint arrayLength = numbers.length;

            // new for loop increment syntax
            for (uint256 i; i < arrayLength; ++i) {
                numbers[i] = 0;
            }
        }

            // code can be optimized further but it will not demonstrate optimization techniques required
            // for loop syntax can be further modified by using != instead of < to check whether we are at the last value of the array
            // since we already know our arraylength is going to be 10 (we fixed it) we can use i<10  and we won't even need to access state variable
            // better still, we can get rid of the for loop and write 10 lines that set the array values at index 0-9 to 0
    }

 }
