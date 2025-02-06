// The Swift Programming Language
// https://docs.swift.org/swift-book

public struct SampleMessage {
    
    public init(message: String) {
        
        self.message = message
    }
    
    public let message: String
    
    public func getMessage() -> String {
        
        fatalError("Test Crash!")
        return message
    }
}
