//
//  ListBootcamp.swift
//  learnswift
//
//  Created by lsmiao on 2023/5/4.
//

import SwiftUI




struct ListBootcamp: View {
    
    @State var Fruits: [String] = ["Apple","Orange","Banana","Peach"]
    @State var  Veggies : [String] = ["Tomato","Potato","Carrot"]
    
    var body: some View {
        NavigationView{
            List {
                Section(header:
                            HStack {
                    Text("Fruites")
                    Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                    .foregroundColor(.orange)
                ){
                    ForEach(Fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
//                            .padding(.vertical)
//                            .frame(maxWidth:.infinity,maxHeight:.infinity)
//                            .background(Color.pink)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                }
                
                Section(header:
                            HStack {
                    Text("Veggies")
                    Image(systemName: "flame.veggies")
                }
                ){
                    ForEach(Veggies,id: \.self){
                        veggie in
                        Text(veggie.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
               
                    .listRowBackground(Color.green)
                    
                }
                
            }
            .navigationTitle("购物清单")
            .navigationBarItems(leading:EditButton(),trailing:addButton)
        }
        .accentColor(.red)

    }
    
    func delete (indexSet:IndexSet){
        Fruits.remove(atOffsets: indexSet)
    }
    
    func move (indexSet:IndexSet, offset:Int){
        Veggies.move(fromOffsets: indexSet, toOffset: offset)
    }
    
    var addButton: some View{
        Button("Add",action: {
           Fruits.append("sdfsfd")
       })
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
