//
//  ContentView.swift
//  HotProspects
//
//  Created by Gary Watson on 28/07/2020.
//  Copyright © 2020 Gary Watson. All rights reserved.
//
// Manually publishing ObservableObject changes

import SwiftUI

class DelayedUpdater: ObservableObject {
    var value = 0 {
        willSet {
            objectWillChange.send()
            // so we could add other code here to do stuff
        }
    }
    
    init() {
        for i in 1...10 {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i)) {
                self.value += 1
            }
        }
    }
}

struct ContentView: View {
    @ObservedObject var updater = DelayedUpdater()
    var body: some View {
            Text("Value is: \(updater.value)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
