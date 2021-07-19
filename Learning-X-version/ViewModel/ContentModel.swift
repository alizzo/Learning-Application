//
//  ContentModel.swift
//  Learning-X-version
//
//  Created by X on 7/18/21.
//

import Foundation

class ContentModel: ObservableObject{
    @Published var modules = [Module]()
    var styleData: Data?
    
    init(){
            getLocalData()
    }
    
    func getLocalData(){
        //get a url to the JSON file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "JSON")
        
        //Read the file into the data object
        do{
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            //try to decode the JSON into an array of modules
            let jsonDecoder = JSONDecoder()
            
            let modules =  try jsonDecoder.decode([Module].self, from: jsonData)
            
            //Assigned parsed modules to modules property
            self.modules = modules
            
            
        }catch{
            print(error)
        }
        
        
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "HTML")
        
        //Read the file into the data object
        do{
            let styleData = try Data(contentsOf: styleUrl!)
            self.styleData = styleData
           
            
        }catch{
            print(error)
        }
        
        
    }
}

