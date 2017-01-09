//
//  SecondViewController.swift
//  calcilatorPro
//
//  Created by 大嶋 広也 on 2017/01/04.
//  Copyright © 2017年 大嶋 広也. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    @IBOutlet weak var label1: UILabel!
    var text1:String = ""
    var text2:String = ""
    var row:Int = 1
    var textField3:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    @IBOutlet weak var memoTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1.text = text1
        
        memoTableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        var message = textField3.message
        
        row = row + Int(message!)!
        memoTableView.reloadData()
        

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return row
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath) as! UITableViewCell
        cell.textLabel?.text = String(indexPath.row)
        return cell
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
