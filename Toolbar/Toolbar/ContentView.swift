//
//  ContentView.swift
//  Toolbar
//
//  Created by Erdi Ergene on 16.07.2020.
//

import SwiftUI

struct ContentView: View {
   var body: some View {
         NavigationView {
             Text("")
                 //.navigationTitle("SwiftUI 2.0")
                
                 .navigationBarTitle(Text("Navigation Views"),displayMode: .inline)
                 .toolbar {
                    
                    
                    //LEFT BUTTONN
                    ToolbarItem(placement: .navigationBarLeading) {
                         HStack(spacing: 15) {
                             Button(action: {
                                 print("Pressed person")
                             }) {
                                 Image(systemName: "person")
                                     .font(.system(size: 21))
                                     .accentColor(.black)
                             }
                             
                             Button(action: {
                                 print("Pressed paperline")
                             }) {
                                 Image(systemName: "paperplane")
                                     .font(.system(size: 21))
                                     .accentColor(.black)
                             }
                             
                         }
                     }
                    
                    //RİGHT BUTTON
                    ToolbarItem(placement: .navigationBarTrailing) {
                         HStack(spacing: 15) {
                             Button(action: {
                                 print("Pressed person")
                             }) {
                                 Image(systemName: "person")
                                     .font(.system(size: 21))
                                     .accentColor(.black)
                             }
                             
                             Button(action: {
                                 print("Pressed paperline")
                             }) {
                                 Image(systemName: "paperplane")
                                     .font(.system(size: 21))
                                     .accentColor(.black)
                             }
                             
                         }
                     }
                 }
         }
     }
 
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
