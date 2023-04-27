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
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                        
                    )
            })
            
            Button(action: {
                self.title = "Button #3"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75 )
                    .shadow(radius: 10)
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
                   Capsule()
                    .stroke(Color.gray, lineWidth: 2.0)
                        
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
