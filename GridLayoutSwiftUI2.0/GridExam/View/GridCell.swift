//
//  GridCell.swift
//  GridLayoutSwiftUI2.0
//
//  Created by Macbook PRO on 11.07.2020.
//

import SwiftUI

struct GridCell: View {

    let dish: Dish
    var body: some View {

        VStack {
            Image(dish.imageURL).resizable().frame(width: 120, height: 120)
            Text(dish.name)
        }
    }
}

struct GridCell_Previews: PreviewProvider {

    let dishes = Dish.all()
    static var previews: some View {
        GridCell(dish: Dish(name: "Cell ", price: 2.0, imageURL: "e1"))
    }
}
