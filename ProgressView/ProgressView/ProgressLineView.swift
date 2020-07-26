//
//  ContentView.swift
//  ProgressView
//
//  Created by Erdi Ergene on 16.07.2020.
//

import SwiftUI


struct ProgressCircularView: View {
    var body: some View {
        VStack {
            ProgressView()
            
                .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                .scaleEffect(CGSize(width: 3, height: 3), anchor: .center)
                
        }
    }
}


struct ProgressLineView: View {
    
    @State var progress: CGFloat = 0.5
    
    var body: some View {
        VStack {
            ProgressView(value: self.progress, total: 1.0, label: {
                VStack{
                 
                    Text("İşleminiz")
                    Text("Yükleniyor...")
                }
                
            })
            .accentColor(.blue)
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ProgressCircularView()
            ProgressLineView()
        }
      
    }
}
