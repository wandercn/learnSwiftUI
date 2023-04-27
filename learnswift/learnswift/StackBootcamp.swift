//
//  StackBootcamp.swift
//  learnswift
//
//  Created by lsmiao on 2023/4/27.
//

import SwiftUI

struct StackBootcamp: View {
    var body: some View {
        // Vstack 垂直布局
        VStack{
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
            
            // HStack 水平布局
            HStack{
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 50, height: 50)
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
            }
            // ZStack 层叠布局
            ZStack{
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 80, height: 80)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 60, height: 60)
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 40, height: 40)
            }
           // 图形背景
            Text("1")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .background(
                    Circle()
                        .fill(Color.black)
                        .frame(width: 40, height: 40)
                    
                )
        }

    }
}

struct StackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StackBootcamp()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
