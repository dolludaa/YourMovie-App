import SwiftUI

struct ContentView: View {
    @State var currentTab: Tab = .home

    init() {
        UITabBar.appearance().isHidden = true
    }

    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                TabView(selection: $currentTab) {
                    HomeView()
                        .tag(Tab.home)
                    
                    TicketView()
                        .tag(Tab.ticket)
                }
                
                CustomTabBar(currentTab: $currentTab)
            }
            .ignoresSafeArea(.keyboard)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
