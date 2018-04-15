//
//  LoginViewController.swift
//  QRAttendance
//
//  Created by Apple on 3/22/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit

class LoginViewController : UIViewController {
    
//    weak var mainTabBarController = MainTabBarController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = AppConstants.loginPageColor
        setViewConstraits()
        fillLoginDetails()
    }
    
    private func fillLoginDetails(){
        magicTextField.text = "aaaaaa"
        emailTextField.text = "A@mail.com"
    }
    
    lazy var profileImageView : UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        //        view.backgroundColor = .white
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(setProfileImage)))
        view.isUserInteractionEnabled = true
        view.image = UIImage(named: "cslogo")
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    let emailTextField : UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = AppConstants.emailTextFieldPromptText
        view.backgroundColor = .white
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        view.textAlignment = .center
        view.layer.borderColor = AppConstants.borderColor.cgColor
        view.layer.borderWidth = 1
        return view
    }()
    
    let magicTextField : UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = AppConstants.magicTextFieldPromptText
        view.backgroundColor = .white
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        view.textAlignment = .center
        view.layer.borderColor = AppConstants.borderColor.cgColor
        view.layer.borderWidth = 1
        view.isSecureTextEntry = true
        return view
    }()
    
    lazy var loginButton : UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = AppConstants.loginButtonColor
        view.setTitle(AppConstants.LoginButtonTitle, for: .normal)
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        view.setTitleColor(.white, for: .normal)
        view.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        view.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
        return view
    }()
    
}
