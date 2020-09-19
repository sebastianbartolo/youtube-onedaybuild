//
//  Model.swift
//  youtube-onedaybuild
//
//  Created by Sebastian Kieth Bartolo on 18/9/20.
//  Copyright © 2020 Sebastian Kieth Bartolo. All rights reserved.
//

import Foundation

class Model{
    
    func getVideos(){
        
        // URL OBJECT
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else{
            return
        }
        
        // URL SESSION OBJECT
        let session = URLSession.shared
        
        // GET A DATA TASK FROM URL SESSION OBJECT
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
        
        // CHECK IF THERE IS ANY ERRORS
        if error != nil || data == nil {
            
                return
            
            }
            
            do {
                // PARSING THE DATA INTO VIDEO OBJECTS
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
            }
            
            catch {
                
                
            }
            
            
        }
        
       
        
        // KICK OFF THE TASK
        dataTask.resume()
        
    }
    
}
