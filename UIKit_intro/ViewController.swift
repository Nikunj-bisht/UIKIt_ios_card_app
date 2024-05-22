//
//  ViewController.swift
//  UIKit_intro
//
//  Created by Nikunj   on 14/05/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gotoCards(_ sender: UIButton) {
        performSegue(withIdentifier: "gotoCards", sender: nil)
    }
    @IBAction func buttonPress(_ sender: UIButton) {
        performSegue(withIdentifier: "gotocolors", sender: nil)
    }
    
}

