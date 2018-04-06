//
//  Lecture.swift
//  QRAttendance
//
//  Created by Apple on 3/24/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import Foundation

class Lecture {
    
    var Id : String?
    var name : String?
    var doctor : Doctor?
    var dateTime : Date?
    var students : [Student]?
    var room : Room?
    var material : Material?
    
    init(json : [String:AnyObject]) {
        self.Id = json["Id"] as? String
        self.name = json["name"] as? String
        self.doctor = json["doctor"] as? Doctor
        self.dateTime = json["dateTime"] as? Date
        self.room = json["room"] as? Room
        self.material = json["material"] as? Material
    }
    
    deinit {
        
    }
    
}
