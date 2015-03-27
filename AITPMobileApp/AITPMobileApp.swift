//
//  AITPMobileApp.swift
//  AITPMobileApp
//
//  Created by team12 on 3/27/15.
//  Copyright (c) 2015 Team 12. All rights reserved.
//

import Foundation
import CoreData

@objc(AITPMobileApp)
class AITPMobileApp: NSManagedObject {

    @NSManaged var datetime: NSDate
    @NSManaged var ideadetails: String
    @NSManaged var ideaname: String
    @NSManaged var purchaseprice: NSNumber
    @NSManaged var sharespurchased: NSNumber
    @NSManaged var gpslat: NSNumber
    @NSManaged var gpslong: NSNumber

}
