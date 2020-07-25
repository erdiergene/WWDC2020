//
//  ContentView.swift
//  TextEditorExam
//
//  Created by Macbook PRO on 13.07.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var txt: String = ""
    @State private var wordCount: Int = 0
    
    var body: some View {
        VStack {
            TextEditor(text: $txt)
                .frame(width: 250, height: 250, alignment: .center)
                .cornerRadius(10)
                .foregroundColor(.black)
                .shadow(radius:10)
                
                .font(.footnote)
                .lineSpacing(8)
                .autocapitalization(.allCharacters)
                .disableAutocorrection(.none)
                .onChange(of: txt) { value in
                    let words = txt.split { $0 == " " || $0.isNewline }
                    self.wordCount = words.count
                }
            
            Text("\(wordCount) words")
                .font(.headline)
                .foregroundColor(.secondary)
                .padding(.trailing)
            
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
