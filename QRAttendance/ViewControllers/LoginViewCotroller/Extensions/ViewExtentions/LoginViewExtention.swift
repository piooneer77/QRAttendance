//
//  LoginViewExtention.swift
//  QRAttendance
//
//  Created by Apple on 4/6/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit

extension LoginViewController {
    
    func setViewConstraits(){
        addSubViewsInsideMainViews()
        setLoginButonConstraints (button : loginButton)
        setEmailTextFieldConstraints(textField: emailTextField)
        setMagicTextFieldConstraints(textField: magicTextField)
        setProfileImageView(image: profileImageView)
    }
    
    func addSubViewsInsideMainViews(){
        view.addSubview(loginButton)
        view.addSubview(emailTextField)
        view.addSubview(magicTextField)
        view.addSubview(profileImageView)
    }
    
    private func setProfileImageView(image: UIImageView){
        NSLayoutConstraint.activate([
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            image.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
            image.heightAnchor.constraint(equalToConstant: 100)
            ])
    }
    
    private func setEmailTextFieldConstraints(textField : UITextField){
        NSLayoutConstraint.activate([
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 75),
            textField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            textField.heightAnchor.constraint(equalToConstant: 40)
            ])
    }
    
    private func setMagicTextFieldConstraints(textField : UITextField){
        NSLayoutConstraint.activate([
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 12),
            textField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            textField.heightAnchor.constraint(equalToConstant: 40)
            ])
    }
    
    private func setLoginButonConstraints(button: UIButton){
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: magicTextField.bottomAnchor, constant: 75),
            button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            button.heightAnchor.constraint(equalToConstant: 40)
            ])
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}
