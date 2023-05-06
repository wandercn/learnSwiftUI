//
//  AppStorageBootcamp.swift
//  learnswift
//
//  Created by lsmiao on 2023/5/6.
//
// 默认存储

import SwiftUI

struct AppStorageBootcamp: View {
    @AppStorage("name") var currentUserName:String? // 退出App数据会持久保存
//    @State var currentUserName:String? // 退出App数据会丢失
    var body: some View {
        VStack {
            Text(currentUserName ?? "Add name here")
            
            if let name = currentUserName{
                Text(name)
                Button("clear".uppercased()){
                    currentUserName = nil
                }
            }else{
                Button("save".uppercased()){
                    let name = "Emliy"
                    currentUserName = name
            }
            
            
            }
            
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
