// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 # Stack Challenges
 
 ## #1. Reverse an Array
 
 Create a function that prints the contents of an array in reversed order.
 */

let array: [Int] = [1, 2, 3, 4, 5]

// Your code here
struct Stack<Element> {
    private var storage: [Element] = []
    
    init(_ elements: [Element] = []) {
        storage = elements
    }
    
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    mutating func pop() -> Element? {
        storage.popLast()
    }
}

var stack = Stack(array)

// printInReverse(array)
while let value = stack.pop() {
    print(value)
}
//: [Next Challenge](@next)
