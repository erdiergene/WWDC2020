//
//  ContentView.swift
//  PageTabViewStyle
//
//  Created by Erdi Ergene on 16.07.2020.
//

import SwiftUI

struct ContentView: View {

    @State private var selectedPage = 0
    
    var body: some View {
        ScrollView {
            VStack {
            TopTabView()
            HStack {
                Text("Popular Apps")
                    .font(.title)
                    .bold()
                    .padding(.leading)
                Spacer()
            }
                
                AppPageView(selectedPage: $selectedPage)
            

                
                
            }
    }
        
    }
 
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TopTabView: View {
    var body: some View {
        TabView {
            ForEach(0..<5) { index  in
                VStack {
                    HStack() {
                        VStack(alignment: .leading) {
                            Text("Some App \(index)").bold()
                            Text("Details and stuff \(index)").foregroundColor(.secondary)
                        }
                        Spacer()
                        
                    }
                    
                    RoundedRectangle(cornerRadius: 8, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/).foregroundColor(.blue)
                }
                
                
            }.padding()
        }
        .frame(width:UIScreen.main.bounds.width,height:270)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct AppCell: View {
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .frame(width: 60, height: 60).foregroundColor(. blue)
            
            VStack(alignment: .leading) {
                Text("Some App")
                    .bold()
                Text("Details and stuff")
                    .foregroundColor(.secondary)
            }
            Spacer()
            
            Image(systemName: "icloud.and.arrow.down")
                .font(.title)
        }
    }
}

struct AppPageView: View {
    @Binding var selectedPage :Int
    var body: some View {
        VStack {
        TabView(selection:$selectedPage){
            ForEach(0..<5){ index in
                VStack{
                    AppCell()
                    AppCell()
                    AppCell()
                }
                .padding()
            }
        }
        
        .frame(width: UIScreen.main.bounds.width, height: 270)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            Text("Selected page \(selectedPage)")

    }
    }
}
