# Lua Nested Table Iteration Issue

This repository demonstrates a potential issue with Lua's `pairs` iterator when dealing with nested tables. The `pairs` iterator does not guarantee a specific order of iteration, which can lead to unexpected behavior, especially when modifying the table during iteration.

The `bug.lua` file contains a simple recursive function that iterates through a nested table. However, because the order of iteration isn't defined, the output may vary unpredictably between runs.

The `bugSolution.lua` file offers a solution using a custom iterative function which ensures a stable and predictable order when processing the nested table.