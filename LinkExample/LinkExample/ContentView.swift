//
//  ContentView.swift
//  LinkExample
//
//  Created by Erdi Ergene on 21.07.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Link("Bankadan Güzeli :)",
                    destination: URL(string: "https://www.qnbfinansbank.enpara.com")!)
                .font(.headline)
                  .foregroundColor(.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
