//
//  ContextMenuBoocamp.swift
//  learnswift
//
//  Created by lsmiao on 2023/5/5.
//
// 点击长按弹出快捷菜单，上下文菜单

import SwiftUI

struct ContextMenuBoocamp: View {
    
    @State var backgroundColor: Color = .blue
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            Image(systemName: "house.fill")

                .font(.title)
            Text("Swiftui Thinking")
    
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
            

        }
        
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems:
                        {
            Button(action: {
                backgroundColor = .yellow
            }, label:   {
                Label("分享", systemImage:"flame.fill")
            })
            
            Button(action: {
                backgroundColor = .red
            }, label: {
                Text("Report post")
            })
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                HStack {
                    Text("点赞")
                    Image(systemName: "heart.fill")
                }
            })
        })

    }
}

struct ContextMenuBoocamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBoocamp()
    }
}
