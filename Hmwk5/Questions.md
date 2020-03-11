## Exercises Chapter 5 pg. 70
### Question 2 (10 pts)

*How else could we compare test criteria besides subsumption?*

We could compare test criteria with looking at specific functions each set of criteria perform. For example, DU pair coverage tests the flow of variable values, whereas edge coverage doesn't consider that. 

We also could compare test criteria based on the functionality that each test case would be covering. Some path might be a path that a client really would never see so it's not entirely practical. In that case, it sort of aligns with the SPC coverage criterion we went over that doesn't fit within the subsumption hierarchy. You could compare multiple SPCs by comparing what functionality in the code they test OR the resources they would each take to test. 

## Exercises Section 7.2.2 pg. 122

### Question 4 (4pts)

*Answer questions a-d for the graph defined by the following sets:*
*N = {1, 2, 3, 4}*
*N<sub>0</sub> = {1}*
*N<sub>f</sub>={4}*
*E = {(1,2), (2,3), (3,2), (2,4)}*

*a) Draw the graph.*
*b) If possible, list test paths that achieve Node Coverage, but not Edge Coverage. If not possible, explain why not.*
*c) If possible, list test paths that achieve Edge Coverage, but not Edge-Pair Coverage. If not possible, explain why not.*
*d) List test paths that achieve Edge-Pair Coverage.*

(a) See "Question 4 Model.png"
(b) This is not possible because to get to node 3, you have to take both edge (2,3) and then (3,2). The only other edges are covered through the normal tavel of the program.
(c) [1,2,3,2,4]
(d) [1,2,3,2,3,2,4], [1,2,4]


### Question 5 (14 pts)

*Answer questions a-g for the graph defined by the following sets:*
*N = {1, 2, 3, 4, 5, 6, 7}*
*N<sub>0</sub> = {1}*
*N<sub>f</sub>={7}*
*E = {(1,2), (1,7), (2,3), (2,4), (3,2), (4,5), (4,6), (5,6), (6,1)}*

*Also consider the following (candidate) test paths:*
*p<sub>1</sub> = [1,2,4,5,6,1,7]*
*p<sub>2</sub> = [1,2,3,2,4,6,1,7]*
*p<sub>3</sub> = [1,2,3,2,4,5,6,1,7]*

*(a) Draw the graph.*
*(b) List the test requirements for Edge-Pair Coverage. (Hint: You should get 12 requirements of length 2)*
*(c) Does the given set of test paths satisfy Edge-Pair Coverage? If not, state what is missing.*
*(d) Consider the smiple path [3,2,4,5,6] and test path [1,2,3,2,4,6,1,2,4,5,6,1,7]. Does the test path tour the simple path directly? With a sidetrip? if so, write down the sidetrip.*
*(e) List the test requirements for Node Coverage, Edge Coverage, and Prime Path Coverage on the graph.*
*(f) List test paths from the given set that achieve Node Coverage but not Edge Coverage on the graph.*
*(g) List test paths from the given set that achieve Edge Coverage but not Prime Path Coverage on the graph.*

(a) See "Question 5 Model.png"
(b) [ (1,2,3), (2,3,2), (3,2,3), (3,2,4), (1,2,4), (2,4,5), (2,4,6), (4,5,6), (4,6,1), (5,6,1), (6,1,7), (6,1,2) ]
(c) (3,2,3) and (6,1,2) are missing from the test paths.
(d) It doesn't tour the path directly, but it does tour the path with the sidetrip [6,1,2,4]
(e)
    Node coverage: visit nodes 1,2,3,4,5,6, and 7.
    Edge coverage: travel edges: {(1,2), (1,7), (2,3), (2,4), (3,2), (4,5), (4,6), (5,6), (6,1)}.
    Prime Path Coverage: tour all paths: {[2, 3, 2], [3, 2, 3], [1, 2, 4, 6, 1], [2, 4, 6, 1, 2], [4, 6, 1, 2, 3], [4, 6, 1, 2, 4], [6, 1, 2, 4, 6], [1, 2, 4, 5, 6, 1], [2, 4, 5, 6, 1, 2], [3, 2, 4, 6, 1, 7], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 4], [5, 6, 1, 2, 4, 5], [6, 1, 2, 4, 5, 6], [3, 2, 4, 5, 6, 1, 7]}
(f) [1,2,3,2,4,5,6,1,7]
(g) [1,2,3,2,4,5,6,1,7], [1,2,3,2,4,6,1,7]
