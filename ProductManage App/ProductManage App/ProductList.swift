//
//  ProductList.swift
//  ProductSearch
//
//  Created by puzhiguang on 21/09/2020.
//

import Combine
import SwiftUI

struct ProductList: View {
    @ObservedObject var searchBar: SearchBar = SearchBar()
    var body: some View {
        GeometryReader { geo in
            Color("Brilliance")
            NavigationView {
                List {
                    if self.searchBar.text == "Dyson" {
                        ForEach(CategoriesData) { category in
                            Section(header:
                                HStack {
                                    Text(category.title)
                                        .font(.headline)
                                        .foregroundColor(Color("Basalt Grey"))
                                        .padding()
                                    Spacer()
                                }
                                .background(Color("Brilliance"))
                                .listRowInsets(EdgeInsets(
                                    top: 0,
                                    leading: 0,
                                    bottom: 0,
                                    trailing: 0))
                            ) {
                                ForEach(category.products) { landmark in
                                    productListRow(landmark: landmark)
                                }
                            }
                        }
                    } else if self.searchBar.text != "Dyson" && !self.searchBar.text.isEmpty {
                        VStack(alignment: .center) {
                            Text("No result")
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color("Basalt Grey"))
                                .padding([.trailing], 40)
                        }
                        .frame(width: geo.size.width, height: geo.size.height / 4, alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)
                    }
                }
                .navigationBarTitle(Text("Search"))
                .add(self.searchBar)
                .listSeparatorStyle(style: .none)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProductList()
    }
}

struct ListSeparatorStyle: ViewModifier {
    let style: UITableViewCell.SeparatorStyle
    func body(content: Content) -> some View {
        content
            .onAppear {
                UITableView.appearance().separatorStyle = self.style
            }
    }
}

extension View {
    func listSeparatorStyle(style: UITableViewCell.SeparatorStyle) -> some View {
        ModifiedContent(content: self, modifier: ListSeparatorStyle(style: style))
    }
}
