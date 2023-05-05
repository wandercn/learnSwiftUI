//
//  ColorPickerBootcamp.swift
//  learnswift
//
//  Created by lsmiao on 2023/5/5.
//
// 颜色选择器

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroudColor: Color = .green
    var body: some View {
        ZStack{
            backgroudColor
                .edgesIgnoringSafeArea(.all)
            ColorPicker("Select a color",
                        selection: $backgroudColor,
                        supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(10.0)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
