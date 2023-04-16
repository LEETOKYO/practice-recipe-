//
//  DataService.swift
//  Recipe List App jibun
//
//  Created by 李 on 2023/03/28.
//

import Foundation
class DataService{
    static func getLocalData()->[Recipe]{
        //parse local json file
        
        // get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        guard pathString != nil else {
            return[Recipe]()
        }
        let url = URL(fileURLWithPath: pathString!)
        do {
            //let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do{
                let recipeData = try decoder.decode([Recipe].self,from: data)
                for r in recipeData {
                    r.id = UUID()
                }
                return recipeData
            }
            catch{
                print(error)
            }
        }
            catch {
                print(error)
            }
            return [Recipe]()
            
            
            
            
            
        }
    }


