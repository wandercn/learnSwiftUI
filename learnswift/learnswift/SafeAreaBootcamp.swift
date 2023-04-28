//
//  SafeAeaBootcamp.swift
//  learnswift
//
//  Created by lsmiao on 2023/4/27.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ScrollView {
        VStack{
            Text("标题位置")
                .font(.largeTitle)
                .frame(maxWidth:.infinity ,  alignment: .leading)
            
            ForEach(0..<10) {index in
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.white)
                    .frame( height: 150)
                    .shadow( radius: 10)
                    .padding(20)
            }
         }
        }.background(
            Color.red
        
        )
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
