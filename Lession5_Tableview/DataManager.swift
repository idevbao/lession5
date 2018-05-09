//
//  DataManager.swift
//  Lession5_Tableview
//
//  Created by nguyen.van.bao on 09/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit

class DataManager: NSObject {
    static let sharedInstance = DataManager()
  
    var mutableDataItem:[myData]!
    var mutableDataItem1:[myData]!

    var myArrData = [[myData]]()
    
    func GetData() -> [[myData] ]{
       
        let myData0 = myData.init(name: "CAPPUCINO NÓNG", urlImgInput: "1 ")
        let myData1 = myData.init(name: "CAMERICANO NÓNG", urlImgInput: "2 ")
        let myData2 = myData.init(name: "MOCHA ĐÁ XAY", urlImgInput: " 3")
        let myData3 = myData.init(name: "MILK NÓNG", urlImgInput: " 2")
        
         mutableDataItem = [myData0, myData1]
         mutableDataItem1 = [myData2, myData3]
       myArrData = [mutableDataItem,mutableDataItem1]
        return myArrData
    }

    func remove(section: Int, row: Int) {
        myArrData[section].remove(at: row)
    }
}

