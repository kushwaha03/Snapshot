//
//  ContentView.swift
//  Snapshot
//
//  Created by Mobile Programming  on 22/08/23.
//

import SwiftUI

struct ContentView: View {
    @State var screenshotMaker: ScreenshotMaker?

    
    var body: some View {
        VStack {
            
            VStack {
                Text("Top Bar")
                Spacer()
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                Text("Main View")
                Spacer()
            }
            .padding()
            Text("Bottom Bar")
            Spacer()
            Button {
                if let screenshotMaker = screenshotMaker {
                    screenshotMaker.screenshot()?.saveToDocuments()
                }
                else {
                    snapshot().saveToDocuments()
                }
            } label: {
                Text("Take Snapshot")
              }
        }
        .screenshotView { screenshotMaker in
            self.screenshotMaker = screenshotMaker
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
