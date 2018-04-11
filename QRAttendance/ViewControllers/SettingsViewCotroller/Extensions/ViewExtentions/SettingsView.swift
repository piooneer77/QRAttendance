//
//  SettingsView.swift
//  QRAttendance
//
//  Created by Apple on 4/11/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit

extension SettingsViewController {
    
    func setViewConstraits(){
        addSubViewsInsideMainViews()
        setNameTextViewContraint(addedView: nameTextField)
        setUserTextViewContraint(addedView: userTextField)
        setMagicTextViewContraint(addedView: magicTextField)
        setPhoneTextViewContraint(addedView: phoneTextField)
        setEmailTextViewContraint(addedView: emailTextField)
        setAddressTextViewContraint(addedView: addressTextField)
        setSaveButtonViewContraint(addedView: saveDetailsButton)
    }
    
    func addSubViewsInsideMainViews(){
        view.addSubview(nameTextField)
        view.addSubview(userTextField)
        view.addSubview(magicTextField)
        view.addSubview(phoneTextField)
        view.addSubview(emailTextField)
        view.addSubview(addressTextField)
        view.addSubview(saveDetailsButton)
    }
    
    func setNameTextViewContraint(addedView : UITextField) {
        NSLayoutConstraint.activate([
            addedView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addedView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            addedView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            addedView.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setUserTextViewContraint(addedView : UITextField) {
        NSLayoutConstraint.activate([
            addedView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addedView.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 10),
            addedView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            addedView.heightAnchor.constraint(equalToConstant: 40)
            ])
    }
    
    func setMagicTextViewContraint(addedView : UITextField) {
        NSLayoutConstraint.activate([
            addedView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addedView.topAnchor.constraint(equalTo: userTextField.bottomAnchor, constant: 10),
            addedView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            addedView.heightAnchor.constraint(equalToConstant: 40)
            ])
    }
    
    func setPhoneTextViewContraint(addedView : UITextField) {
        NSLayoutConstraint.activate([
            addedView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addedView.topAnchor.constraint(equalTo: magicTextField.bottomAnchor, constant: 10),
            addedView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            addedView.heightAnchor.constraint(equalToConstant: 40)
            ])
    }
    
    func setEmailTextViewContraint(addedView : UITextField) {
        NSLayoutConstraint.activate([
            addedView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addedView.topAnchor.constraint(equalTo: phoneTextField.bottomAnchor, constant: 10),
            addedView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            addedView.heightAnchor.constraint(equalToConstant: 40)
            ])
    }
    
    func setAddressTextViewContraint(addedView : UITextField) {
        NSLayoutConstraint.activate([
            addedView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addedView.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10),
            addedView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            addedView.heightAnchor.constraint(equalToConstant: 40)
            ])
    }
    
    func setSaveButtonViewContraint(addedView : UIButton) {
        NSLayoutConstraint.activate([
            addedView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addedView.topAnchor.constraint(equalTo: addressTextField.bottomAnchor, constant: 10),
            addedView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            addedView.heightAnchor.constraint(equalToConstant: 40)
            ])
    }
    
}
