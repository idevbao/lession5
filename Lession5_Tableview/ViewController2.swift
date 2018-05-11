//
//  ViewController2.swift
//  Lession5_Tableview
//
//  Created by nguyen.van.bao on 11/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    var myArr = ["1","2"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension ViewController2: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = myArr[indexPath.row]
        return cell!
    }
    
    
}
