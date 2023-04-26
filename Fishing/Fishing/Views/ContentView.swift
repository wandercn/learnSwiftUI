//
//  ContentView.swift
//  Fishing
//
//  Created by lsmiao on 2023/4/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var count:Double = 50.0
    @State private var isVisible:Bool = false
    @State private var game: Game = Game()
    var body:  some View {
        VStack {
            Text("让鱼竿尽量接近鱼")
                .bold().multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
    
            
            Text(String(game.target) + "米")
                .lineSpacing(-1.0)
                .font(.largeTitle)
                .foregroundColor(Color.black)
                
            HStack {
                Text("1米")
                    .font(.headline)
                Slider(value:self.$count, in: 1...100)
                Text("100米")
                    .font(.headline)
            }
            Button(action:{
                print("hello swiftUI")
                self.isVisible = true
            }){
                Text("点我").font(.subheadline).padding()
            }
                .background(Color.purple)
                .foregroundColor(Color.white)
                .cornerRadius(15)
                .alert(isPresented: $isVisible){
                    let  roundValue:Int = Int(self.count.rounded())
                        return Alert(
                            title: Text("你好啊！"),
                            message: Text("滑块的值是\(roundValue)。\n" + "你本轮获得了\(self.game.points(sliderValue: roundValue))分"),
                            dismissButton: .default(Text("真棒!"))
                        )
                    }
            HStack{
                Spacer()
                VStack(alignment:.center) {Text("轮数")
                Button("3"){}
                }
            }
            .listStyle(.plain)
            
        }.padding()
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
