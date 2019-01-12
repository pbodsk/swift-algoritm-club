import Foundation

public struct LinkedList<Value> {
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public init() {}
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public mutating func push(_ value: Value) {
        //old head becomes next
        head = Node(value: value, next: head)
        
        //First node added
        if tail == nil {
            tail = head
        }
    }
    
    public mutating func append(_ value: Value) {
        guard !isEmpty else {
            push(value)
            return
        }
        
        tail!.next = Node(value: value)
        
        tail = tail!.next
    }
    
    public func node(at index: Int) -> Node<Value>? {
        var currentNode = head
        var currentIndex = 0
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode!.next
            currentIndex += 1
        }
        
        return currentNode
    }
    
    public mutating func insert(value: Value, after node: Node<Value>) -> Node<Value> {
        guard tail !== node else {
            append(value)
            return tail!
        }
        
        //create new node, make its `next` point to the current nodes `next`
        node.next = Node(value: value, next: node.next)
        
        return node.next!
    }
    
    public mutating func pop() -> Value? {
        defer {
            //before leaving, fast forward head to next
            head = head?.next
            if isEmpty {
                //if the list is empty, nuke the tail as well
                tail = nil
            }
        }
        
        return head?.value
    }
    
    public mutating func removeLast() -> Value? {
        guard let head = head else {
            //we've reached the end of the line
            return nil
        }
        
        guard head.next != nil else {
            //only one element in the list
            return pop()
        }
        
        var prev = head
        var current = head
        
        while let next = current.next {
            //loop all the way through the list
            prev = current
            current = next
        }
        
        //now we're at the end, detach current
        prev.next = nil
        tail = prev
        
        return current.value
    }
    
    public mutating func remove(after node: Node<Value>) -> Value? {
        defer {
            //if we've reached the end of the line, update tail
            if node.next === tail {
                tail = node
            }
            node.next = node.next?.next
        }
        return node.next?.value
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let head = head else {
            return "Empty list"
        }
        
        return String(describing: head)
    }
}

extension LinkedList: Collection {
    public struct Index: Comparable {
        public var node: Node<Value>?
        
        static public func ==(lhs: Index, rhs: Index) -> Bool {
            switch (lhs.node, rhs.node) {
            case let (left?, right?):
                return left.next === right.next
            case (nil, nil):
                return true
            default:
                return false
            }
        }
        
        static public func <(lhs: Index, rhs: Index) -> Bool {
            guard lhs != rhs else {
                return false
            }
            
            let nodes = sequence(first: lhs.node) { $0?.next}
            return nodes.contains{ $0 === rhs.node }
        }
    }
    
    public var startIndex: Index {
        return Index(node: head)
    }
    
    public var endIndex: Index {
        return Index(node: tail?.next)
    }
    
    public func index(after i: Index) -> Index {
        return Index(node: i.node?.next)
    }
    
    public subscript(position: Index) -> Value {
        return position.node!.value
    }
}
