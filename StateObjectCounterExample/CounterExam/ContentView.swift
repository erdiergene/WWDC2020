//
//  ContentView.swift
//  CounterExam
//
//  Created by Erdi Ergene on 23.07.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      ItemList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


class DataSource: ObservableObject {
  @Published var counter = 0
}

struct Counter: View {
//  @ObservedObject var dataSource = DataSource()
    
    @StateObject var dataSource = DataSource()

  var body: some View {
    VStack {
      Button("Increment counter") {
        dataSource.counter += 1
      }

      Text("Count is \(dataSource.counter)")
    }
  }
}

struct ItemList: View {
  @State private var items = ["hello", "world"]

  var body: some View {
    VStack {
      Button("Append item to list") {
        items.append("test")
      }

      List(items, id: \.self) { name in
        Text(name)
      }

      Counter()
    }
  }
}
