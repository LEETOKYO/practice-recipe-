//
//  ContentView.swift
//  Recipe List App jibun
//
//  Created by 李 on 2023/03/28.
//

import SwiftUI

struct RecipeListView: View {
    @ObservedObject var model = RecipeModel()
    var body: some View {
        VStack {
            List(model.recipes) {
                r in
                HStack(spacing: 20.0){
                    Image(r.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50.141, height: 50.0,alignment: .center)
                        .clipped()
                        .cornerRadius(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                    
                    Text(r.name)
                
                     
                        
                        
                }
            }
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
