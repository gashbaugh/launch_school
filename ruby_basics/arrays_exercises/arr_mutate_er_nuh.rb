1. arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   arr.first.delete(arr.first.last)

=begin
line 1 defines arr, as a array containing 2 elements,
strings "b" and "a." Line 2 calls the product method 
on "b" and "a", with the new array, 1..3 inclusive. 
This returns [["b", 1], ["b", 2], ["b", 3], ["a", 1],
["a", 1], ["a", 2], ["a", 3]]. Line 3 of the operation
calls .delete on the first element of the new array,
with the argument arr.first.last. Specifying to delete
the last element of the the first nested array, Returning 
1. Finalizing in arr = arr =  [["b"], ["b", 2], ["b", 3], 
["a", 1], ["a", 2], ["a", 3]]
=end

2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   arr.first.delete(arr.first.last)

=begin
Line 16 defines array "arr" as containing two elements,
"b" and "a". Line 17 calls the product method on "arr"
with the argument Array(1..3) inclusive, within an extra
set of brackets. This results in the product method not 
combining each element of each array, but combining the 
elements of arr, with the newly defined array [1, 2, 3].
This returns ["b" [1, 2, 3], "a", [1, 2, 3]]. Line 18 
calls the first element of the new array ["b", [1, 2, 3,]]
and then calls .delete method, witht the argument of 
arr.first.last, deleting the [1, 2, 3] portion of ["b", 
[1, 2, 3]]. This returns [1, 2, 3]. Resulting in arr = 
[["b"], ["a", [1, 2, 3]]]
=end
