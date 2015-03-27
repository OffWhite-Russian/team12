//
//  Ideas.swift
//  AITPMobileApp
//
//  Created by Kimberly Barnes on 3/27/15.
//  Copyright (c) 2015 Team 12. All rights reserved.
//

import Foundation
import CoreData

class Ideas: NSManagedObject {

    @NSManaged var ideaname: String
    @NSManaged var datetime: NSDate
    @NSManaged var ideadetails: NSNumber
    @NSManaged var sharespurchased: NSNumber
    @NSManaged var purchaseprice: NSNumber

}
