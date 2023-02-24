//
//  SecondPage_ViewController.swift
//  New_Project
//
//  Created by Rifluxyss on 24/02/23.
//

import UIKit

class SecondPage_ViewController: UIViewController {

    @IBOutlet weak var SecondPg_Next_Button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        SecondPg_Next_Button.layer.cornerRadius = SecondPg_Next_Button.frame.height/2
    }
    @IBAction func SecondPage_NextButton(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ThirdPage_Story")
        self.navigationController?.setViewControllers([vc!], animated: true)
    }
}
