//
//  URLSession_API.swift
//  Lession5_Tableview
//
//  Created by nguyen.van.bao on 10/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit

class URLSession_API: NSObject {
    public static func getDataGithub(url:URL, completion:@escaping(Data?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url) { (data, rp, err) in
            completion(data, err)
            }.resume()
        
    }
    
}
