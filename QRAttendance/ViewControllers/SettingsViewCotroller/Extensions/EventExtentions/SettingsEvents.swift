//
//  SettingsEvents.swift
//  QRAttendance
//
//  Created by Apple on 4/11/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit

extension SettingsViewController {
    
    func setNavigationBarItems(){
        navigationItem.title = AppConstants.settingsTabTitle
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: AppConstants.logoutSegmentTitle, style: .plain, target: self, action: #selector(handleLogout))
    }
    
    @objc private func handleLogout(){
        HelperMethods.handleLogout(controller: self)
    }
    
    @objc func saveStudentDetails (){
        
    }
    
}
