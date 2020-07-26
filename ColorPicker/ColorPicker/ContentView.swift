//
//  ContentView.swift
//  ColorPicker
//
//  Created by Erdi Ergene on 16.07.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var pickedColor: Color = Color.orange
    
    var body: some View {
        VStack {
            ColorPicker("Color picker", selection: $pickedColor)
                .frame(width: 100, height: 100)
           
            
          
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


