//
//  MainTabBarEvents.swift
//  QRAttendance
//
//  Created by Apple on 4/11/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import Firebase

extension MainTabBarController {
    
    func isUserLoggedIn(){
        if Firebase.Auth.auth().currentUser?.uid == nil {
            perform(#selector(handleLogout), with: nil, afterDelay: 0)
        } else {
            
        }
    }
    
    @objc private func handleLogout(){
        logout()
        let loginController = LoginViewController()
        present(loginController, animated: true, completion: nil)
    }
    
    private func logout(){
        do {
            try Firebase.Auth.auth().signOut()
        } catch let logoutError {
            print(logoutError)
        }
    }
    
}
