//
//  SampleFramework.swift
//  SampleLibrary
//
//  Created by 佐藤汰一 on 2025/02/01.
//

import SampleLibraryView
import SampleLibraryModel
import SwiftUI

public struct RootView: View {
    
    public init() {}
    
    @State var str: String = "Default"
    
    public var body: some View {
        VStack {
            SampleView()
            Button {
                str = SampleLibraryModel().getStr()
            } label: {
                Text(str)
            }
        }
    }
}
