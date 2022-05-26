// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 [Previous Challenge](@previous)
 
 ## #2. Balance Parentheses
 
 Check for balanced parentheses. Given a string, check if there are `(` and `)` characters, and return `true` if the parentheses in the string are balanced.
 ```
 // 1
 h((e))llo(world)() // balanced parentheses
 // 2
 (hello world // unbalanced parentheses
 ```
 */
var testString1 = "h((e))llo(world)()"
var testString2 = "h(((e))llo(world)()"
var testString3 = "h((e))llo(world)())"

// your code here
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
    
    func isEmpty() -> Bool {
        storage.last == nil
    }
}

func checkParentheses(_ string: String) -> Bool {
    var stack = Stack<Character>()
    
    for char in string {
        if char == "(" {
            stack.push(char)
        } else if char == ")" {
            if stack.isEmpty() {
                return false
            } else {
                stack.pop()
            }
        }
    }
    
    return stack.isEmpty()
}

checkParentheses(testString1)
checkParentheses(testString2)
checkParentheses(testString3)

// checkParentheses(testString1) // should be true
