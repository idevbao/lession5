//
//  myData.swift
//  Lession5_Tableview
//
//  Created by nguyen.van.bao on 09/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit
import ObjectMapper

class myData: Mappable {
    
    
    var nameData: String!
    var urlImgData: String!
    var name:String!
    init(name: String, urlImgInput:String) {
        self.nameData = name
        self.urlImgData = urlImgInput
    }
    required init?(map: Map) {
        
    }
    /*
     full_name": "google/abpackage",
     "owner": {
     "avatar_url": "https://avatars1.githubusercontent.com/u/1342004?v=4",
     */
    func mapping(map: Map) {
        name <- map["name"]
        nameData <- map["full_name"]
        urlImgData <- map["owner.avatar_url"]

    }
    
}
