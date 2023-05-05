//
//  TextFieldBootcamp.swift
//  learnswift
//
//  Created by lsmiao on 2023/5/5.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        VStack{
            TextField("请输入文本...",text: $textFieldText)
                .padding()
                .background(Color.gray.opacity(0.3).cornerRadius(10))
                .foregroundColor(.red)
                .font(.headline)
            
            Button(action: {
                if textIsAppropriate(){
                    saveText()
                }
            }, label: {
                Text("Save".uppercased())
                    .padding()
                    .frame(maxWidth:.infinity)
                    .background(textIsAppropriate() ? Color.blue : Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.headline)
            })
            .disabled(!textIsAppropriate())
            
            ForEach(dataArray, id:\.self ){data in
                Text(data)
            }
            Spacer()
        }
    }
    
    func saveText(){
        dataArray.append(textFieldText)
    }
    
    func textIsAppropriate()->Bool{
         textFieldText.count >= 3
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
