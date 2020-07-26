

import SwiftUI

struct ContentView : View {

    let dishes = Dish.all()

    var body: some View {

        let chunkedDishes = dishes.chunked(into: 4)

        return List {

            // rows
            ForEach(0..<chunkedDishes.count) { index in

                HStack {

                    ForEach(chunkedDishes[index]) { dish in

                        Image(dish.imageURL)
                            .resizable()
                            .frame(width:  UIScreen.main.bounds.size.width/4-8, height:  UIScreen.main.bounds.size.width/4-8 )
                            .scaledToFit()
                            .cornerRadius(8)

                    }

                }

            }

        }

    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif


