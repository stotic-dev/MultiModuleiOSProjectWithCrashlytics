// The Swift Programming Language
// https://docs.swift.org/swift-book

public struct SampleLibraryModel {
    
    public init() {}
    
    public func getStr() -> String {
        fatalError("Test Crash!")
        return "Hello World!"
    }
}
