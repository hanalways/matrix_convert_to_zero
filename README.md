# Matrix: Convert to zero
Changes the corresponding row and column to have '0' values if the value is '0' in the input matrix.

## Exercise
* Design and implement a method that updates the input matrix. The input parameter is a matrix i.e. two-dimensional array contains only '0's and '1's. If any element in the array is found to be '0', the method updates all the elements in the corresponding row as well as the corresponding column to be '0'.
* If you think of multiple approaches to solve the problem, implement the solution which minimizes space complexity. Explain the other approaches, and your decision in comments above the code.
* For example if the input is:
```
1 1 1
1 0 1
1 1 1
1 1 0
```
then, the matrix should get updated to:
```
1 0 0
0 0 0
1 0 0
0 0 0
```
* Share and explain the time and space complexities for your solution in the comments above the method implementation.
    * If the complexity is describes in terms of *n* and *m*, explain what *n* and *m* stand for.
