//
//  ContactDetails.swift
//  QRAttendance
//
//  Created by Apple on 3/24/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

class ContactDetails {
    
    var Id : String?
    var phone : String?
    var email : String?
    var address : String?
    
    init() {
        
    }
    
    init(json : [String:AnyObject]) {
        self.Id = json["Id"] as? String
        self.phone = json["phone"] as? String
        self.email = json["email"] as? String
        self.address = json["address"] as? String
    }
    
    deinit {
        
    }
    
}
