// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.markdown.

import Foundation

example(of: "using a stack") {
    var stack = Stack<Int>()
    stack.push(1)
    stack.push(2)
    stack.push(3)
    stack.push(4)
    
    print(stack)
    
    if let poppedElement = stack.pop() {
        assert(4 == poppedElement)
        print("Popped: \(poppedElement)")
    }
}

example(of: "initializing a stack from an array") {
    var stack: Stack = ["A", "B", "C", "D"]
    print(stack)
    stack.pop()
}
