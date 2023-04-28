//
//  ButtonsBootcamp.swift
//  learnswift
//
//  Created by lsmiao on 2023/4/27.
//

import SwiftUI

struct ButtonsBootcamp: View {
    @State var title: String = "this is my title"
    var body: some View {
        VStack(spacing:20) {
            Text(title)
            Button("Press me !"){
                self.title = "Button was Pressed"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "Button #2 was pressed"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline) // 字体
                    .fontWeight(.semibold) // 字体粗细
                    .foregroundColor(.white)// 前景颜色
                    .padding() // 内边距
                    .padding(.horizontal, 20) // 水平方向内边距
                // 背景
                    .background(
                        Color.blue
                            .cornerRadius(10) // 圆角半径
                            .shadow(radius: 10) // 阴影

                        
                    )

            })
            
            Button(action: {
                self.title = "Button #3"
            }, label: {
                Circle()
                    .fill(Color.white) // 设置填充
                    .frame(width: 75, height: 75 ) // 设置框架大小
                    .shadow(radius: 10)
                // 覆盖图片等
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            })
            
            Button(action: {
                self.title = "Button #4"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal,10)
                    .background(
                   Capsule()// 胶囊形状
                    .stroke(Color.gray, lineWidth: 2.0) // 设置画笔的颜色和线条宽度
                        
                    )
            })
        }
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}
