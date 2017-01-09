//
//  ViewController.swift
//  MyDentaku
//
//  Created by 大嶋 広也 on 2017/01/04.
//  Copyright © 2017年 大嶋 広也. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var textField2: UITextField!
    
    var textField3:AppDelegate = UIApplication.shared.delegate as! AppDelegate

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var viewcontroller2 = segue.destination as! SecondViewController
        viewcontroller2.text1 = textField.text!
        
        textField3.message = textField2.text!
    }
    
    
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        //編集終了でキーボードを下げる
        self.view.endEditing(true)
    }
    
    
}









