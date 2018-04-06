//
//  Doctor.swift
//  QRAttendance
//
//  Created by Apple on 3/24/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

class Doctor {
    
    var Id : String?
    var name : String?
    var user : String?
    var magic : String?
    var contactDetails : ContactDetails?
    
    init(json : [String:AnyObject]) {
        self.Id = json["Id"] as? String
        self.name = json["name"] as? String
        self.user = json["user"] as? String
        self.magic = json["magic"] as? String
        self.contactDetails = json["contactDetails"] as? ContactDetails
    }
    
    deinit {
        
    }
    
}
