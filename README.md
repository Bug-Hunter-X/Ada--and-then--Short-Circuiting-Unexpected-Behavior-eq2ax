# Ada "and then" Short-Circuiting Bug

This example demonstrates a potential issue with Ada's `and then` short-circuiting operator.  If the first condition of `and then` is false, the second condition is not evaluated. However, if the second condition has side effects (e.g., accessing an array element), and the first condition unexpectedly evaluates to false due to some other logic error, this can lead to unexpected exceptions. The short-circuit behavior of `and then` is typically desirable for efficiency and error handling but can cause hidden problems if not considered.