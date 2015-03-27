//
//  SaveIdeaViewController.swift
//  AITPMobileApp
//
//  Created by team12 on 3/27/15.
//  Copyright (c) 2015 Team 12. All rights reserved.
//

import UIKit
import CoreData
import CoreLocation

class SaveIdeaViewController: UIViewController {

    @IBOutlet weak var stockSymbolField: UITextField!
    @IBOutlet weak var stockDescriptionField: UITextView!
    let managedObjectContext = (UIApplication.sharedApplication().delegate as AppDelegate!).managedObjectContext
    let manager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Retreive the managedObjectContext from AppDelegate
        
        // Print it to the console
        println(managedObjectContext!)
        if CLLocationManager.authorizationStatus() == .NotDetermined {
            manager.requestWhenInUseAuthorization()
        }
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
        
        let entity =  NSEntityDescription.entityForName("Ideas",
            inManagedObjectContext:
            managedObjectContext!)
        
        let idea = NSManagedObject(entity: entity!,
            insertIntoManagedObjectContext:managedObjectContext!)
        
        //3
        var symbol = stockSymbolField.text
        var description = stockDescriptionField.text
        idea.setValue(symbol, forKey: "ideaname")
        idea.setValue(description, forKey: "ideadetails")
        
        var datetime = NSDate()
        idea.setValue(datetime, forKey: "datetime")
        
        if(manager.location != nil){
            var gpslat: NSString = manager.location.coordinate.latitude.description
            var gpslong: NSString = manager.location.coordinate.longitude.description
            idea.setValue(gpslat, forKey: "gpslat")
            idea.setValue(gpslong, forKey: "gpslong")
        }
        //4
        var error: NSError?
        if !managedObjectContext!.save(&error) {
            println("Could not save \(error), \(error?.userInfo)")
        }
        
    }

    @IBAction func takePhotoButtonPressed(sender: AnyObject) {
    }
    
    func locationManager(manager: CLLocationManager!,
        didChangeAuthorizationStatus status: CLAuthorizationStatus)
    {
        if(CLLocationManager.locationServicesEnabled()){
            manager.startUpdatingLocation()
        }

    }

}
