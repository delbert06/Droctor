//
//  HomeViewController.swift
//  Doctor_Local
//
//  Created by 胡迪 on 2016/10/4.
//  Copyright © 2016年 D.Huhu. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    @IBOutlet weak var tableView: UITableView!
    
    var list = ["个人信息","体质信息","行为习惯","签约情况"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        title = "档案信息"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{  
        let cell = tableView.dequeueReusableCell(withIdentifier: "typeCell") as! HomeTableViewCell
        cell.typeName.text = list[indexPath.row]
        
        if list[indexPath.row]=="体质信息" {
            
        }
        
        return cell
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
