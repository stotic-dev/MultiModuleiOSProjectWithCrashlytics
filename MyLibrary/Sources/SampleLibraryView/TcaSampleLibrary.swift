// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct SampleView: View {
    
    public init() {}
    
    public var body: some View {
        Button {
            fatalError("Debug Crash")
        } label: {
            Text("Hello World!")
        }
    }
}
