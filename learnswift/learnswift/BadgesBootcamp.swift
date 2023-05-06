//
//  BadgesBootcamp.swift
//  learnswift
//
//  Created by lsmiao on 2023/5/6.
//
// 徽章

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        TabView {
            Color.red.tabItem {
                Image(systemName: "arrow.down.circle.fill")
                Text("Update")
            }
            .badge("new")
            .edgesIgnoringSafeArea(.top)
            
            Color.green
                .tabItem {
                    Image(systemName: "cart.circle")
                    Text("Shopping Cart")
                }
                .badge(1)
            .edgesIgnoringSafeArea(.top)
            
            Color.blue
                .tabItem {
                    Image(systemName: "message.fill")
                    Text("Message")
                }
                .badge(3)
            .edgesIgnoringSafeArea(.top)
            
        }
       
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
