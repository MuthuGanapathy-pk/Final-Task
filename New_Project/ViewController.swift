//
//  ViewController.swift
//  New_Project
//
//  Created by Rifluxyss on 24/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Login_TextField: UITextField!
    @IBOutlet weak var NextButton_Outlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NextButton_Outlet.layer.cornerRadius = NextButton_Outlet.frame.height/2
    }

    @IBAction func Next_Button(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondPage_Story")
        self.navigationController?.setViewControllers([vc!], animated: true)
    }
    
}

