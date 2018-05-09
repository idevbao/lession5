//
//  myData.swift
//  Lession5_Tableview
//
//  Created by nguyen.van.bao on 09/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit

class myData: NSObject {
    var nameData: String!
    var urlImgData: String!
    init(name: String, urlImgInput:String) {
        self.nameData = name
        self.urlImgData = urlImgInput
    }

}
