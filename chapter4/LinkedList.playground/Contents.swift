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


