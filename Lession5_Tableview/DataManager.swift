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
        
        let myData0 = myData.init(name: "CAPPUCINO NÓNG", urlImgInput: " ")
        let myData1 = myData.init(name: "CAMERICANO NÓNG", urlImgInput: " ")
        let myData2 = myData.init(name: "MOCHA ĐÁ XAY", urlImgInput: " ")
        let myData3 = myData.init(name: "MILK NÓNG", urlImgInput: " ")
        let myData4 = myData.init(name: "MOCHA ĐÁ ", urlImgInput: " ")
        let myData5 = myData.init(name: "MILK ", urlImgInput: " ")
        let myData6 = myData.init(name: "MOCHA ", urlImgInput: " ")
        let myData7 = myData.init(name: "COFFEE MILK ", urlImgInput: " ")
        
        mutableDataItem = [myData0, myData1]
        mutableDataItem1 = [myData2, myData3]
        mutableDataItem = [myData4, myData5,myData6,myData7]
        myArrData = [mutableDataItem,mutableDataItem1,mutableDataItem]
        return myArrData
    }
    
    func remove(section: Int, row: Int) {
        myArrData[section].remove(at: row)
    }
}

