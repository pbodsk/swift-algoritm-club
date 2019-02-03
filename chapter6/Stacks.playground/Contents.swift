import Cocoa

example(of: "Using a stack") {
    var stack = Stack<Int>()
    stack.push(1)
    stack.push(2)
    stack.push(3)
    stack.push(4)
    
    print(stack)
    
    stack.pop()
    stack.pop()
    
    print(stack)
    
    print(stack.peek() ?? -1)
    
    print(stack)
}

example(of: "using stack from array") {
    let items = [1,2,3,4,5,6,7,8]
    let stack = Stack(items)
    
    print(stack)
}

example(of: "init using array literal") {
    let stack: Stack = [5,6,7,8]
    print(stack)
}
