import Foundation

public struct Stack<Element> {
    private var storage: [Element] = []
    
    public init(_ elements: [Element] = []) {
        self.storage = elements
    }
    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
    }
    
    public func peek() -> Element? {
        storage.last
    }
    
    public func isEmpty() -> Bool {
        peek() == nil
    }
}

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}

extension Stack: CustomDebugStringConvertible {
    
    public var debugDescription: String {
    """
    ----top----
    \(storage.map { "\($0)" }.reversed().joined(separator: "\n"))
    -----------
    """
    }
}
