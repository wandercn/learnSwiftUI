//
//  TabViewBootcamp.swift
//  learnswift
//
//  Created by lsmiao on 2023/5/5.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 2
    var body: some View {
        TabView(selection: $selectedTab){
            HomeView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            Text("Browse Tab")
                .tabItem{
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            
            Text("Profile Tab")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .accentColor(.red)
    }
}

struct HomeView: View {
    
    var body: some View {
        ZStack{
            Color.red.edgesIgnoringSafeArea(.top)
            Text("Home Tab")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
//        HomeView()
    }
}
