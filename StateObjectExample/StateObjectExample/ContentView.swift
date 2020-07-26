//
//  ContentView.swift
//  StateObjectExample
//
//  Created by Erdi Ergene on 23.07.2020.
//

import SwiftUI


class Counter: ObservableObject {
    @Published var count: Int
    
    init(_ initialCount: Int) {
        self.count = initialCount
    }
    
    func increment() {
        count += 1
    }
    
    func decrement() {
        count -= 1
    }
}

struct Counters: View {
    @State var useFirstCounter = true
    @StateObject var counter1 = Counter(0)
    @StateObject var counter2 = Counter(0)
    
    var body: some View {
        VStack {
            Counter1(counter: useFirstCounter ? counter1 : counter2)
            Counter2(counter: useFirstCounter ? counter1 : counter2)
            Button("Switch Counter") {
                
                
                
                useFirstCounter.toggle()
            }
            Text ("\(String(useFirstCounter))")
            Text ("\(String(counter1.count))")
            Text ("\(String(counter2.count))")
        }
    }
}
//// Bu görünümdeki Sayaç daima üst görünümden geçirilen sayaç olacaktır.

// The Counter in this view will always be the one passed in from the parent view.
struct Counter1: View {
    @ObservedObject var counter: Counter
    
    init(counter: Counter) {
        self.counter = counter
    }
    
    var body: some View {
        HStack {
            Text("Counter 1 Observed")
            Button { counter.decrement() } label: { Image(systemName: "minus.circle") }
            Text("\(counter.count)")
            Button { counter.increment() } label: { Image(systemName: "plus.circle") }
        }
    }
}


// Bu görünümdeki Sayaç başlangıçta üst öğeden geçirilen sayaca ayarlanacak,
// ancak daha sonraki görünüm güncellemelerinde, bu aynı örneği her seferinde, hatta
// ebeveyn daha sonra farklı bir Sayaçtan geçerse.


// The Counter in this view will initially be set to the one passed in from the parent,
// but in later view updates, this will keep using that same instance every time, even
// if the parent later passes in a different Counter.
struct Counter2: View {
    @StateObject var counter: Counter
    
    init(counter: Counter) {
        self._counter = StateObject(wrappedValue: counter)
    }
    
    var body: some View {
        HStack {
            Text("Counter 2 State")
            Button { counter.decrement() } label: { Image(systemName: "minus.circle") }
            Text("\(counter.count)")
            Button { counter.increment() } label: { Image(systemName: "plus.circle") }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Counters()
    }
}
