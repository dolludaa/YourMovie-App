//
//  ContentView.swift
//  YourMovie
//
//  Created by Людмила Долонтаева on 02.10.2022.
//

import SwiftUI


struct ContentView: View {
    @State var currentTab: Tab = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        VStack {
            TabView(selection: $currentTab) {
                Text ("Home")
                    .tag(Tab.home)
                Text ("Location")
                    .tag(Tab.location)
                TicketView()
                    .tag(Tab.ticket)
                Text ("Category")
                    .tag(Tab.category)
                Text ("Profile")
                    .tag(Tab.profile)
            }
            CustomTabBar(currentTab: $currentTab)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
