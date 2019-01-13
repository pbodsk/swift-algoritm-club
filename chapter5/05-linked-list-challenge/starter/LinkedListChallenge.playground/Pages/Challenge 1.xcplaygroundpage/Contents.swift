// Copyright (c) 2018 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 # Linked List Challenges
 ## Challenge 1:
 Create a function that prints out the elements of a Linked List in reverse order.
 */

func printInReverse<T>(_ list: LinkedList<T>) {
    var currentNode = list.head
    var reversedValues: [T] = [T]()
    while currentNode?.value != nil {
        reversedValues.insert(currentNode!.value, at: 0)
        currentNode = currentNode?.next
    }
    print(reversedValues)
}

var list = LinkedList<Int>()
list.append(1)
list.append(2)
list.append(3)
list.append(4)

printInReverse(list)

//: [Next Challenge](@next)
