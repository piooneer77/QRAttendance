//
//  CustomTabBarControllerViewController.swift
//  QRAttendance
//
//  Created by Apple on 4/10/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit
import Firebase

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
        isUserLoggedIn()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func setupControllers(){
        let qrReaderController = UINavigationController(rootViewController: QRReaderViewController())
        qrReaderController.tabBarItem.title = AppConstants.qrReaderTabTitle
//        qrReaderController.tabBarItem.image = UIImage(named: "settings@3x")
        let settingsController = UINavigationController(rootViewController: SettingsViewController())
        settingsController.tabBarItem.title = AppConstants.settingsTabTitle
//        settingsController.tabBarItem.image = UIImage(named: "scanner@3x")
        
        viewControllers = [qrReaderController, settingsController]
    }
    
    func createNavigationControllerWithTitle(title: String, imageName: String) -> UINavigationController {
        let viewController = UIViewController()
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        return navController
    }

}
