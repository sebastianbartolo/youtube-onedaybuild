//
//  Video.swift
//  youtube-onedaybuild
//
//  Created by Sebastian Kieth Bartolo on 18/9/20.
//  Copyright © 2020 Sebastian Kieth Bartolo. All rights reserved.
//

import Foundation

struct Video : Decodable {
    
    var videoId = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = Date()
    
    enum CodingKeys: String, CodingKey {
        
        case snippet
        case thumbnails
        case high
        case resourceId
        
        case published = "publishedAt"
        case title
        case description
        case thumbnail = "url"
        case videoId
        
    }
    
    init (from decoder:Decoder) throws{
        
       let container =  try decoder.container(keyedBy: CodingKeys.self)
        
        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self
            , forKey: .snippet)
        
        // PARSE TITLE
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        
        // PARSE DESCRIPTION
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        
        //PARSE PUBLISHED
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
        //PARSE THUMBNAILS
        let thumbnailContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        
        let highContainer = try thumbnailContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
        
        //PARSE VIDEO ID
        
        let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .videoId)
        
        self.videoId = try resourceIdContainer.decode(String.self, forKey: .videoId)
        
        
    }
    
}
