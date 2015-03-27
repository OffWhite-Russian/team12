//
//  SaveIdeaViewController.swift
//  AITPMobileApp
//
//  Created by Dan on 3/27/15.
//  Copyright (c) 2015 Team 12. All rights reserved.
//

import UIKit

class SaveIdeaViewController: UIViewController {

    @IBOutlet weak var stockSymbolField: UITextField!
    @IBOutlet weak var stockDescriptionField: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    

    @IBAction func submitButtonPressed(sender: AnyObject) {
    }

    @IBAction func takePhotoButtonPressed(sender: AnyObject) {
    }

}
