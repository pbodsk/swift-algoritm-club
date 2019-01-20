// Copyright (c) 2018 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 [Previous Challenge](@previous)
 ## Challenge 4:
 Create a function that takes 2 sorted linked lists and merges them into a single sorted linked list.
 */

func mergeSorted<T: Comparable>(_ left: LinkedList<T>,
                                _ right: LinkedList<T>) -> LinkedList<T> {
    var mergedList = LinkedList<T>()
//    check to see if left and right are empty
    guard left.head != nil else {
        return right
    }
    guard right.head != nil else {
        if left.head != nil {
            return left
        } else {
            return mergedList
        }
    }
    var mutableLeft = left
    var mutableRight = right
    while mutableLeft.head != nil && mutableRight.head != nil {
        if mutableLeft.head!.value < mutableRight.head!.value {
            mergedList.append(mutableLeft.pop()!)
        } else {
            mergedList.append(mutableRight.pop()!)
        }
    }
    if mutableLeft.head != nil {
        while mutableLeft.head != nil {
            mergedList.append(mutableLeft.pop()!)
        }
    }

    if mutableRight.head != nil {
        while mutableRight.head != nil {
            mergedList.append(mutableRight.pop()!)
        }
    }

    return mergedList
}

var leftList = LinkedList<Int>()
leftList.append(1)
leftList.append(4)
leftList.append(10)
leftList.append(11)

var rightList = LinkedList<Int>()
rightList.append(1)
rightList.append(2)
rightList.append(3)
rightList.append(6)

let mergedList = mergeSorted(leftList, rightList)
print(mergedList)
//: [Next Challenge](@next)
