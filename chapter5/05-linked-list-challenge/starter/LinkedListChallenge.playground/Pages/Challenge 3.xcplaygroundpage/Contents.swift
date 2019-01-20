// Copyright (c) 2018 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 [Previous Challenge](@previous)
 ## Challenge 3:
 Create a function that reverses a linked list
 */

extension LinkedList {
    
  mutating func reverse() {
    var reversedList = LinkedList<Value>()
    guard head != nil else { return }
    var currentNode = head
    while currentNode?.value != nil {
        reversedList.push(currentNode!.value)
        currentNode = currentNode?.next
    }
    
    self = reversedList
  }
}

var list = LinkedList<Int>()
list.append(1)
list.append(2)
list.append(3)
list.append(4)

print(list)

list.reverse()
print(list)

//: [Next Challenge](@next)
