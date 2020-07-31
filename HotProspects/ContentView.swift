//
//  ContentView.swift
//  HotProspects
//
//  Created by Gary Watson on 28/07/2020.
//  Copyright © 2020 Gary Watson. All rights reserved.
//
// Adding Swift package dependencies in Xcode

import SamplePackage
import SwiftUI

struct ContentView: View {
    let possibleNumbers = Array(1...60)
    var results: String {
        let selected = possibleNumbers.random(7).sorted()
        let strings = selected.map(String.init)
        return strings.joined(separator: ", ")
    }
    var body: some View {
        Text(results)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
