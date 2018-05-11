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
    
    var mutableDataItem:[myData] = []
    
    func GetData(doneLoadData:@escaping ([myData]?)-> ()){
        let urllink = URL(string: "https://api.github.com/users/google/repos")
        URLSession_API.getDataGithub(url: urllink!) { (data, err) in
            guard let dataRequest = data,err == nil else {
                print("get data fail")
                return
            }
            do {
                let jsonArray = try JSONSerialization.jsonObject(with: dataRequest, options: JSONSerialization.ReadingOptions.mutableContainers) as! Array<Any>
                for json in jsonArray{
                    if let item = json as? [String: AnyObject] {
                        let a = myData(JSON: item)!
                        self.mutableDataItem.append(a)
                        print(a.nameData)
                    }
                }
            }catch{
                print("Pass data toa [myData] Fail")
            }
            doneLoadData(self.mutableDataItem)
            
        }
        //
        //        let myData0 = myData.init(name: "CAPPUCINO NÓNG", urlImgInput: " ")
        //        let myData1 = myData.init(name: "CAMERICANO NÓNG", urlImgInput: " ")
        //        let myData2 = myData.init(name: "MOCHA ĐÁ XAY", urlImgInput: " ")
        //        let myData3 = myData.init(name: "MILK NÓNG", urlImgInput: " ")
        //        let myData4 = myData.init(name: "MOCHA ĐÁ ", urlImgInput: " ")
        //        let myData5 = myData.init(name: "MILK ", urlImgInput: " ")
        //        let myData6 = myData.init(name: "MOCHA ", urlImgInput: " ")
        //        let myData7 = myData.init(name: "COFFEE MILK ", urlImgInput: " ")
        //
        //        mutableDataItem = [myData0, myData1]
        //        mutableDataItem1 = [myData2, myData3]
        //        mutableDataItem = [myData4, myData5,myData6,myData7]
        //        myArrData = [mutableDataItem,mutableDataItem1,mutableDataItem]
    }
    func remove(section: Int, row: Int) {
        mutableDataItem.remove(at: row)
    }
}

