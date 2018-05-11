////
////  GCDViewController.swift
////  Lession5_Tableview
////
////  Created by nguyen.van.bao on 10/05/2018.
////  Copyright © 2018 nguyen.van.bao. All rights reserved.
////
//
//import UIKit
//
//class GCDViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        let queue = DispatchQueue.global()
//        let queue1 = DispatchQueue.global()
//
//        let group  = DispatchGroup()
//
//        queue.async(group: group, qos: .background, flags: .enforceQoS) {
//            for _ in 0...5{
//            print("queue ")
//            }
//        }
//        queue1.async(group: group, qos: .background, flags: .enforceQoS) {
//            for a in 11...19{
//                print("queue1\(a) ")
//            }
//        }
//        group.wait(timeout: DispatchTime.distantFuture)
//        print("sau khi Group thuc hien xong -> lam viec khac")
//        
//        let queue3 = DispatchQueue.global(qos: .background)
//        queue3.async {
//            for a in 20...25{
//            print(a)
//            }
//        }
//        let queue4 = DispatchQueue.global()
//        queue4.async {
//            for a in 25...29{
//                print(a)
//            }
//        }
//        
//
//        // Do any additional setup after loading the view.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
