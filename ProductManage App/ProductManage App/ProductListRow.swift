//
//  ProductListRow.swift
//  Landmarks App
//
//  Created by puzhiguang on 21/09/2020.
//  Copyright © 2020 Raja Tamil. All rights reserved.
//

import SwiftUI

struct productListRow: View {
    var landmark: ProductModel
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(landmark.title).bold()
                Spacer()
                Text(landmark.stock).foregroundColor(.gray)
                Spacer()
            }
            Spacer()
            if landmark.inStock {
                Text(landmark.price)
                    .foregroundColor(.blue)
                    .padding(7)
                    .background(Color("Alice Blue"))
                    .cornerRadius(10.0)
            } else {
                Text(landmark.price).foregroundColor(.gray)
                    .foregroundColor(.blue)
                    .padding(7)
                    .background(Color("White Smoke"))
                    .cornerRadius(10.0)
            }
        }
    }
}
