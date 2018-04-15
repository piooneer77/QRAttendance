//
//  AppConstants.swift
//  QRAttendance
//
//  Created by Apple on 4/6/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit
import Firebase

class AppConstants {
    
    // MARK: Strings
    static let LoginButtonTitle : String = "Login"
    static let nameTextFieldPromptText : String = "Name"
    static let phoneTextFieldPromptText : String = "Phone"
    static let mailTextFieldPromptText : String = "Email"
    static let addressTextFieldPromptText : String = "Address"
    static let emailTextFieldPromptText : String = "Username"
    static let magicTextFieldPromptText : String = "Password"
    static let loginSegmentTitle : String = "Login"
    static let logoutSegmentTitle : String = "Logout"
    static let saveSegmentTitle : String = "Save"
    static let qrReaderTabTitle : String = "QR Reader"
    static let settingsTabTitle : String = "Account Settings"
    static let readerTabTitle : String = "QR Scanner"
    static let settingsImage : String = "Settings"
    static let readerImage : String = "scanner"
    static let errorTitle : String = "Error"
    static let tryActionTitle : String = "Try Again"
    
    // MARK: Controllers
    static let loginController = LoginViewController()
    static let mainTabBarController = MainTabBarController()
    static let qrReaderController = UINavigationController(rootViewController: QRReaderViewController())
    static let settingsController = UINavigationController(rootViewController: SettingsViewController())
    
    // MARK: Firebase
    static let studentTable : String = "Student"
    static let profTable : String = "Professor"
    static var hashedEmail : String?
    static let databaseURL : String = "https://qrattendance-9de0a.firebaseio.com/"
    static let databaseReferrence = Firebase.Database.database().reference(fromURL: AppConstants.databaseURL)
    static let authenticationReference = Firebase.Auth.auth()
    static let name : String = "name"
    static let user : String = "user"
    static let magic : String = "magic"
    static let contactDetails : String = "ContactDetails"
    static let email : String = "email"
    static let phone : String = "phone"
    static let address : String = "address"
    
    // MARK: Colors
    static let loginPageColor = UIColor(r: 35, g: 58, b: 55)
    static let loginButtonColor = UIColor(r: 45, g: 85, b: 75)
    static let borderColor = UIColor(r: 220, g: 220, b: 220)
    
    
    
    
}
