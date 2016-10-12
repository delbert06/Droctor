//
//  TestViewController.swift
//  Doctor_Local
//
//  Created by 胡迪 on 2016/10/12.
//  Copyright © 2016年 D.Huhu. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {


    @IBOutlet var Test: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        Test.backgroundColor = UIColor.black
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
