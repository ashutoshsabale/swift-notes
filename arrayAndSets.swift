import Foundation

// initializing empty array
var emptyArr: [Int] = []

// array of Integers
var arr = [10,54,8,6,48,45,465,84,53]

print(arr.count) //number of elements in array
print(arr.first) //first element of array
print(arr.last) //last element of array

// adding element to an array
arr.append(99)
print(arr)

// inserting element to array
arr.insert(00, at: 1)
print(arr)

// sort array
arr.sort()
print(arr)

// reverse Array
arr.reverse()
print(arr)

//---------------------------------------------------------

/*
    ! Sets
    ? these are unordered and cannot contain duplicates and it is more optimized in terms of performance than array

*/

// creating empty set
// var agesSet: Set<int> = []

var agesSet: Set<Int> = [10,51,61,641,48,1,6]
print(agesSet)

var agesSet2 = Set(arr)
print(agesSet2)

agesSet2.insert(100)
let isContain = agesSet2.contains(100)
print(isContain)

print(agesSet2)




