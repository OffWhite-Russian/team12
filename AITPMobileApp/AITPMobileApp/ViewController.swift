//
//  ViewController.swift
//  AITPMobileApp
//
//  Created by Dan on 3/27/15.
//  Copyright (c) 2015 Team 12. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func unwindToViewController(segue: UIStoryboardSegue) {
        println("unwind function")
    }
}

