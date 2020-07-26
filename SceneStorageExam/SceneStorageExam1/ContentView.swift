//
//  ContentView.swift
//  SceneStorageExam1
//
//  Created by Erdi Ergene on 24.07.2020.
//


import SwiftUI

struct ContentView: View {
    @SceneStorage("Saved") var text = ""
    
    var body: some View {
        NavigationView {
            TextEditor(text:$text)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
