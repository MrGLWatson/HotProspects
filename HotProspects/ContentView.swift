//
//  ContentView.swift
//  HotProspects
//
//  Created by Gary Watson on 28/07/2020.
//  Copyright © 2020 Gary Watson. All rights reserved.
//
// Controlling image interpolation in SwiftUI

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("example")
            .interpolation(.none)
        .resizable()
        .scaledToFit()
            .frame(maxHeight: .infinity)
            .background(Color.black)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
