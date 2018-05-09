//
//  ViewController.swift
//  Lession5_Tableview
//
//  Created by nguyen.van.bao on 09/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewHome: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableViewHome.dataSource = self
        tableViewHome.delegate = self
        DataManager.sharedInstance.GetData()

        

        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "add", style: .plain, target: self, action: #selector(addItem))
    }
    @objc func addItem() {
        self.tableViewHome.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let rowInSection = DataManager.sharedInstance.GetData()[section]
        return  rowInSection.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! Cell_item
        let dataItemGroup = DataManager.sharedInstance.GetData()
        let dataItemName = dataItemGroup[indexPath.section][indexPath.row].nameData
        
        
        cell.lblNameItem.text = dataItemName
        cell.backgroundColor = .white
        cell.selectionStyle = .none
        return cell
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return  DataManager.sharedInstance.mutableDataItem.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.size.height/6
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let dataItemGroup = DataManager.sharedInstance.GetData()
        let dataItemNameGroup = dataItemGroup[section]
        return dataItemNameGroup[section].nameData
    }
    
    
}

