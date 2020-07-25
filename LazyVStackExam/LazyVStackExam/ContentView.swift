//
//  ContentView.swift
//  LazyVStackExam
//
//  Created by Macbook PRO on 13.07.2020.
//

import SwiftUI

struct SampleRow: View {
    let id: Int

    var body: some View {
        Text("Row \(id)")
    }

    init(id: Int) {
        print("Loading row \(id)")
        self.id = id
    }
}

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(1...1000, id: \.self, content: SampleRow.init)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
