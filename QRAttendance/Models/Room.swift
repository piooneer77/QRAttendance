//
//  Room.swift
//  QRAttendance
//
//  Created by Apple on 3/24/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

class Room {
    
    var Id : String?
    var name : String?
    
    init(json : [String:AnyObject]) {
        self.Id = json["Id"] as? String
        self.name = json["name"] as? String
    }
    
    deinit {
        
    }
    
}
