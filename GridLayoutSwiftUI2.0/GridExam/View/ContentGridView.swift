//
//  ContentView.swift
//  GridExam
//
//  Created by Macbook PRO on 11.07.2020.
//

import SwiftUI

struct ContentHorizontalView: View {

    let dishes = Dish.all()

    // private var rows: [GridItem] = [GridItem(.adaptive(minimum: 100))]


    // private var rows: [GridItem] = [GridItem(.fixed(200))]

    // private var rows: [GridItem] = [GridItem(.adaptive(minimum:200))]

    //4 satır olsun
    private var rows: [GridItem] = Array(repeating: .init(.flexible()), count: 4)
    var body: some View {

        ScrollView(.horizontal) {
            LazyHGrid(rows: rows,spacing:60) {
                ForEach(dishes) { dish in
                    GridCell(dish: dish)
                }
            }.padding(.all, 8)


        }
    }
}

struct ContentVerticalView: View {

    @State var index = 0


    let dishes = Dish.all()

    // private var columns : [GridItem] = [GridItem(.fixed(200))]
    // private var columns: [GridItem] = [GridItem(.adaptive(minimum:200))]

    //1 satırda 2 sütun  olsun
    var columns: [GridItem] = Array(repeating: .init(.flexible(), alignment: .center), count: 2)

    var body: some View {

        VStack {
            Text("\(self.index)")
            ScrollView {
                LazyVGrid(columns: columns,spacing:70) {
                    ForEach(Array(dishes.enumerated()), id: \.offset){ index ,dish in
                        GridCell(dish: dish)
                            .onTapGesture {
                                withAnimation(.default){
                                    self.index = index
                                }


                            }
                    }

                }


            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentHorizontalView()
            ContentVerticalView()
        
        }
    }
}
