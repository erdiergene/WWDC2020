//
//  ContentView.swift
//  MatchedGeometryEffectExam1
//
//  Created by Erdi Ergene on 17.07.2020.
//

import SwiftUI

struct ContentView: View {
    @State var pickedNumber: Int?
    @Namespace var namespace
    var body: some View {
        
        if pickedNumber == nil {
            VStack(spacing: 15) {
                ForEach(0..<3) { number in
                    Button("Hello world \(number)") {
                        withAnimation {
                            pickedNumber = number
                        }
                    }
                    .frame(width: 300, height: 30, alignment: .center)
                    .padding()
                    .border(Color.black, width: 1)
                    //1
                    .matchedGeometryEffect(id: number, in: namespace)
                }
            }
        }else {
            
            ForEach(0..<3) { number in
                               if pickedNumber == number {
                                   ZStack {
                                       Rectangle().foregroundColor(.blue).cornerRadius(30)
                                       Button("Back") {
                                           withAnimation {
                                               pickedNumber = nil
                                           }
                                       }
                                       .padding()
                                       .foregroundColor(.black)
                                   }
                                   //2
                                   .matchedGeometryEffect(id: number, in: namespace)
                                
                                //1  ve 2 aynı olması aynı geçişin parçası olduğunu belirtir(1. buton 1. geçişi yap)
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
