// Copyright (c) 2018 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 [Previous Challenge](@previous)
 ## Challenge 5:
 Create a function that removes all occurrences of a specific element from a Linked List.
 */

extension LinkedList where Value: Equatable {
  
  mutating func removeAll(_ value: Value) {
    var currentNode = head
    var mutatedList = LinkedList<Value>()
    while currentNode?.value != nil {
        if currentNode?.value != value {
            mutatedList.append(currentNode!.value)
        }
        currentNode = currentNode?.next
    }
    self = mutatedList
  }
}

var list = LinkedList<Int>()
list.append(1)
list.append(3)
list.append(3)
list.append(3)
list.append(4)

print(list)

list.removeAll(3)
print(list)

