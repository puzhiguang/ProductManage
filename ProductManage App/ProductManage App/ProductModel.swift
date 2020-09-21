//
//  ProductModel.swift
//  ProductSearch
//
//  Created by puzhiguang on 21/09/2020.
//

import SwiftUI

struct Category:Identifiable {
    var id = UUID()
    var title:String
    var products:[ProductModel]
}

struct ProductModel:Identifiable {
    var id = UUID()
    var title:String
    var stock:String
    var inStock:Bool
    var price:String
}


var CategoriesData =  [
    Category(
        title: "Vacuum",
        products: [
            ProductModel(title: "V11", stock:"In-stock",inStock:true,price:"$599.99"),
            ProductModel(title: "V10", stock:"Out-of-stock",inStock:false,price:"$399.99"),
        ]
    ),
    Category(
        title: "Hair Dryer",
        products: [
            ProductModel(title: "Supersonic", stock:"In-stock",inStock:true,price:"$399.99"),
        ]
    )
]

