//
//  HomeView.swift
//  YourMovie
//
//  Created by Людмила Долонтаева on 05.10.2022.
//

import SwiftUI

struct HomeView: View {
    @State var animate = false 
    var body: some View {
        ZStack{
            CircleBackground(color: Color("greenCircle"))
                .blur(radius:animate ? 30 :  100)
                .offset(x: animate ? -50 : -130, y: animate ? -30 : -100)
                .task {
                    withAnimation(.easeInOut(duration: 7).repeatForever()) {
                        animate.toggle()
                    }
                                  
                }
            
            CircleBackground(color: Color("pinkCircle"))
                .blur(radius:animate ? 30 : 100)
                .offset(x: animate ? 100 : 130, y: animate ? 150 : 100)
            VStack{
                Text("Choose movie")
                    .fontWeight(.bold)
                    .font(.title3)
                    .foregroundColor(.white)
                
                CustomSearchBar()
                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .top)
        }
        .background(
            LinearGradient(colors: [Color("backgroundColor"),Color("backgroundColor2") ], startPoint: .top, endPoint: .bottom)
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
