//
//  CustomTabBarControllerViewController.swift
//  QRAttendance
//
//  Created by Apple on 4/10/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit

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
        AppConstants.qrReaderController.tabBarItem.title = AppConstants.qrReaderTabTitle
        AppConstants.settingsController.tabBarItem.title = AppConstants.settingsTabTitle
        viewControllers = [AppConstants.qrReaderController, AppConstants.settingsController]
    }

}
