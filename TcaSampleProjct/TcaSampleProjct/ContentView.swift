//
//  ContentView.swift
//  TcaSampleProjct
//
//  Created by 佐藤汰一 on 2024/06/08.
//

import SampleFramework
import SampleLibraryView
import SampleLibraryModel
import SampleTargetFramework
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                fatalError("Test Crash!")
            } label: {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }
            RootView()
            SampleView()
            Button {
                let _ = SampleLibraryModel().getStr()
            } label: {
                Text("Test Crash! on static link dependency")
            }
            SampleTargetFrameworkView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
