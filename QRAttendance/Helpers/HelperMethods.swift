//
//  HelperMethods.swift
//  QRAttendance
//
//  Created by Apple on 4/10/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit

class HelperMethods {
    
    class func createNavigationControllerWithTitle(title: String, imageName: String) -> UINavigationController {
        let viewController = UIViewController()
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        return navController
    }
    
}
