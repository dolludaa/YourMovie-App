//
//  CustomSearchBar.swift
//  YourMovie
//
//  Created by Людмила Долонтаева on 05.10.2022.
//

import SwiftUI

struct CustomSearchBar: View {
    @State var searchText = ""
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            
            TextField("Search", text: $searchText)
            
            Image(systemName: "mic.fill")
        }
        .padding(EdgeInsets(top: 7, leading: 8, bottom: 7, trailing: 8))
        .font(.headline)
        .background(.ultraThinMaterial)
        .foregroundColor(.white.opacity(0.6))
        .cornerRadius(10)
    }
}

struct CustomSearchBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomSearchBar()
    }
}
