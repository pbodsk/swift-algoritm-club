import UIKit

example(of: "creating and linking nodes") {
 let node1 = Node(value: 1)
 let node2 = Node(value: 2)
 let node3 = Node(value: 3)
    
 node1.next = node2
 node2.next = node3
    
 print(node1)
}

example(of: "pushing") {
    var linkedList = LinkedList<Int>()
    
    linkedList.push(3)
    linkedList.push(2)
    linkedList.push(1)
    
    print(linkedList)
}

example(of: "appending") {
    var linkedList = LinkedList<Int>()
    
    linkedList.append(1)
    linkedList.append(2)
    linkedList.append(4)
    
    print(linkedList)
}

example(of: "inserting") {
    var linkedList = LinkedList<Int>()
    
    linkedList.push(4)
    linkedList.push(2)
    linkedList.push(1)
    
    print("before insertion")
    print(linkedList)
    
    let middleNode = linkedList.node(at: 1)!
    linkedList.insert(value: 3, after: middleNode)

    print("after insertion")
    print(linkedList)
}

example(of: "pop") {
    var linkedList = LinkedList<Int>()
    
    linkedList.push(3)
    linkedList.push(2)
    linkedList.push(1)

    print("before pop")
    print(linkedList)
    linkedList.pop()
    print("after pop 1")
    print(linkedList)
    
    linkedList.pop()
    print("after pop 2")
    print(linkedList)
    
    linkedList.pop()
    print("after pop 3")
    print(linkedList)
    
    linkedList.pop()
    print("after pop 4")
    print(linkedList)
}

example(of: "pop") {
    var linkedList = LinkedList<Int>()
    
    linkedList.push(3)
    linkedList.push(2)
    linkedList.push(1)
    
    print("before removeLast")
    print(linkedList)
    print(linkedList.removeLast() ?? -1)
    print("after removeLast")
    print(linkedList)
    
    print(linkedList.removeLast() ?? -1)
    print("after removeLast")
    print(linkedList)
    
    print(linkedList.removeLast() ?? -1)
    print("after removeLast")
    print(linkedList)
    
    print(linkedList.removeLast() ?? -1)
    print("after removeLast")
    print(linkedList)
}

example(of: "remove after") {
    var linkedList = LinkedList<Int>()
    
    linkedList.push(4)
    linkedList.push(3)
    linkedList.push(2)
    linkedList.push(1)

    print("before remove")
    print(linkedList)

    let middleNode = linkedList.node(at: 1)
    linkedList.remove(after: middleNode!)
    
    print("after remove")
    print(linkedList)
}

example(of: "using collection") {
    var linkedList = LinkedList<Int>()
    
    for i in 0...9 {
        linkedList.append(i)
    }
    
    print("List: \(linkedList)")
    print("First element \(linkedList[linkedList.startIndex])")
    print("Array with first 3 elements: \(Array(linkedList.prefix(3)))")
    print("Array with last 3 elements: \(Array(linkedList.suffix(3)))")
    let sum = linkedList.reduce(0, +)
    print("Sum: \(sum)")
}

example(of: "COW") {
    var list1 = LinkedList<Int>()
    list1.push(1)
    list1.push(2)
    
    print("list1 before copy")
    print(list1)
    
    print("list1 uniquely referenced: \(isKnownUniquelyReferenced(&list1.head))")
    
    var list2 = list1
    list2.push(3)

    print("list1 uniquely referenced: \(isKnownUniquelyReferenced(&list1.head))")

    print("list1 after copy")
    print(list1)
    print("list2 after copy")
    print(list2)

}


