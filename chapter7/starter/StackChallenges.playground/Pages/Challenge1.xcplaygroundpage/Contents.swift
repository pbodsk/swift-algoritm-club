// Copyright (c) 2018 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 # Stack Challenges
 
 ## Challenge 1
 Print a linked list in reverse without using recursion. Given a linked list,
 print the nodes in reverse order. You should not use recursion to solve
 this problem.
 */

let list: LinkedList<Int> = {
  var list = LinkedList<Int>()
  list.push(3)
  list.push(2)
  list.push(1)
  return list
}()

// Your code here
func printInReverse<Element>(_ list: LinkedList<Element>) {
    var stack = Stack<Element>()
    var currentNode = list.head
    //Load the stack
    while currentNode?.value != nil {
        stack.push(currentNode!.value)
        currentNode = currentNode?.next
    }
    
    //And run through it
    while !stack.isEmpty {
        print(stack.pop()!)
    }
}

printInReverse(list)

//: [Next Challenge](@next)
