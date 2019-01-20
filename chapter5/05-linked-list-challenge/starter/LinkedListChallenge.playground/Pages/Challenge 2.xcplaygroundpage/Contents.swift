// Copyright (c) 2018 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 [Previous Challenge](@previous)
 ## Challenge 2:
 Create a function that returns the middle node of a Linked List.
 */

func getMiddle<T>(_ list: LinkedList<T>) -> Node<T>? {
    guard list.count > 0 else { return nil }
    return list.node(at: list.count / 2)
}

var list = LinkedList<Int>()
list.append(1)
list.append(2)
list.append(3)
list.append(4)
//list.append(5)

let middleNode = getMiddle(list)
print(middleNode?.value)

//: [Next Challenge](@next)
