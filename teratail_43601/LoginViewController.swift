//
//  LoginViewController.swift
//  teratail_43601
//
//  Created by Kentarou on 2016/08/08.
//  Copyright © 2016年 Kentarou. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pushLogin(sender: UIButton) {
        
        if idTextField.text!.isEmpty || passwordTextField.text!.isEmpty {
            showAlert()
            return
        }
        
        NSUserDefaults.standardUserDefaults().setBool(true, forKey: "UserLogin")
        
        let mainStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
        let tabBarView = mainStoryboard.instantiateInitialViewController() as! TabBarController
        self.navigationController?.pushViewController(tabBarView, animated: true)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "エラー", message: "ID,Passwordを入力してください", preferredStyle: .Alert)
        alert.addAction( UIAlertAction(title: "OK", style: .Default, handler: nil))
        presentViewController(alert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
