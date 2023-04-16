//
//  RecipeModel.swift
//  Recipe List App jibun
//
//  Created by 李 on 2023/03/28.
//

import Foundation
class RecipeModel:ObservableObject {
    @Published var recipes = [Recipe]()
    init(){
        //parsed the local json file
        self.recipes = DataService.getLocalData()
        
        //set the recipes property
    }
}
