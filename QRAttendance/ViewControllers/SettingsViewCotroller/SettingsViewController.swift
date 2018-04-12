//
//  SettingsViewController.swift
//  QRAttendance
//
//  Created by Apple on 3/22/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    private var user : Student?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setNavigationBarItems()
        setViewConstraits()
    }
    
    lazy var saveDetailsButton : UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(r: 80, g: 101, b: 161)
        view.setTitle(AppConstants.saveSegmentTitle, for: .normal)
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        view.setTitleColor(.white, for: .normal)
        view.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        view.addTarget(self, action: #selector(saveStudentDetails), for: .touchUpInside)
        return view
    }()
    
    let nameTextField : UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = AppConstants.nameTextFieldPromptText
        view.backgroundColor = .white
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        view.textAlignment = .center
        view.layer.borderColor = UIColor(r: 220, g: 220, b: 220).cgColor
        view.layer.borderWidth = 1
//        view.isHidden = true
        return view
    }()
    
    let userTextField : UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = AppConstants.emailTextFieldPromptText
        view.backgroundColor = .white
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        view.textAlignment = .center
        view.layer.borderColor = UIColor(r: 220, g: 220, b: 220).cgColor
        view.layer.borderWidth = 1
//        view.isHidden = true
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
        view.layer.borderColor = UIColor(r: 220, g: 220, b: 220).cgColor
        view.layer.borderWidth = 1
        view.isSecureTextEntry = true
        return view
    }()
    
    let emailTextField : UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = AppConstants.mailTextFieldPromptText
        view.backgroundColor = .white
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        view.textAlignment = .center
        view.layer.borderColor = UIColor(r: 220, g: 220, b: 220).cgColor
        view.layer.borderWidth = 1
        return view
    }()
    
    let phoneTextField : UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = AppConstants.phoneTextFieldPromptText
        view.backgroundColor = .white
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        view.textAlignment = .center
        view.layer.borderColor = UIColor(r: 220, g: 220, b: 220).cgColor
        view.layer.borderWidth = 1
//        view.isHidden = true
        return view
    }()
    
    let addressTextField : UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = AppConstants.addressTextFieldPromptText
        view.backgroundColor = .white
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        view.textAlignment = .center
        view.layer.borderColor = UIColor(r: 220, g: 220, b: 220).cgColor
        view.layer.borderWidth = 1
//        view.isHidden = true
        return view
    }()
}
