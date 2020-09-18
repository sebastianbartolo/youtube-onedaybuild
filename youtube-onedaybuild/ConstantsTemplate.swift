//
//  ConstantsTemplate.swift
//  youtube-onedaybuild
//
//  Created by Sebastian Kieth Bartolo on 18/9/20.
//  Copyright © 2020 Sebastian Kieth Bartolo. All rights reserved.
//

import Foundation

//put your own details down below


struct Constants {
    static var API_KEY = "AIzaSyCvG0BGAgQTskB8AMRXqGA8d2Mymt9QSF0"
    static var PLAYLIST_ID = "PLi-xKOcBJmgjMQLRqhN9f2Eco4o8r1ejS"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}
