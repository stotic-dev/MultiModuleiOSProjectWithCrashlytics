//
//  SampleTargetFramework.swift
//  SampleTargetFramework
//
//  Created by 佐藤汰一 on 2025/02/01.
//

import SwiftUI

public struct SampleTargetFrameworkView: View {
    
    public init() {}
    
    public var body: some View {
        Button {
            fatalError("Test Crash! on SampleTargetFrameworkView")
        } label: {
            Text("Test Crash! on SampleTargetFrameworkView")
        }
    }
}
