//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Sebastian Kieth Bartolo on 16/9/20.
//  Copyright © 2020 Sebastian Kieth Bartolo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
        
    }
    

}

