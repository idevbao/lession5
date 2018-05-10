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
    
    
    var myArrData = [[myData]]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableViewHome.dataSource = self
        tableViewHome.delegate = self
        
        myArrData = DataManager.sharedInstance.GetData()
        
    
        
        
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "Edit", style: .plain, target: self, action: #selector(editItem))
    }
    @objc func editItem() {
        self.tableViewHome.reloadData()
        print("Edit Item")
        self.tableViewHome.setEditing(true, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let rowInSection = myArrData[section]
        return  rowInSection.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! Cell_item
        let dataItemName = myArrData[indexPath.section][indexPath.row].nameData
        
        
        cell.lblNameItem.text = dataItemName
        cell.backgroundColor = .white
        cell.selectionStyle = .none
        return cell
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return  myArrData.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.size.height/6
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return " "// \(myArrData[section][section])
    }
    
    // xoa row
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            myArrData[indexPath.section].remove(at: indexPath.row)
            print("row \(indexPath.row)")
            
            tableView.reloadData()
            
        }
    }
    // move row
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        var myItemSource:myData!
        myItemSource = (myArrData[sourceIndexPath.section])[sourceIndexPath.row]

        myArrData[sourceIndexPath.section].remove(at: sourceIndexPath.row)


        myArrData[destinationIndexPath.section].insert(myItemSource, at: destinationIndexPath.row)
        
     
        tableView.reloadData()
        
        
    }
    
    // swipe
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let itemTrailing = itemTrailingSwipe(atIndex: indexPath)
        return UISwipeActionsConfiguration.init(actions: [itemTrailing])
    }
    func itemTrailingSwipe(atIndex: IndexPath) -> UIContextualAction{
        let itemTrailing = UIContextualAction(style: .destructive, title: "Dow") { (action, view, completion) in
            completion(true)
            print(self.myArrData[atIndex.section][atIndex.row].nameData)
            
        }
        itemTrailing.image = #imageLiteral(resourceName: "dow")
        itemTrailing.backgroundColor = .green
    return itemTrailing
    }
    // load data
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let sectionA = myArrData.count - 1
        let rowA = (myArrData[indexPath.section].count)
        
        if (indexPath.section == sectionA && indexPath.row == rowA) {
            print("load data func") // append item -> reload
        }
        
    }

    
    
}

