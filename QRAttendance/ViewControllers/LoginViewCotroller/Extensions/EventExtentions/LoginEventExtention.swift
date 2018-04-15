//
//  LoginEventExtention.swift
//  QRAttendance
//
//  Created by Apple on 4/6/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit
import Firebase
import CryptoSwift

extension LoginViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    @objc func loginAction(){
        login()
    }
    
    func login(){
//        self.dismiss(animated: true, completion: nil)
        let student : Student = Student()
        guard let email = emailTextField.text,
            let magic = magicTextField.text else { return }
        student.magic = magic
        student.contactDetails?.email = email
        AppConstants.hashedEmail = email.md5()
        AppConstants.authenticationReference.signIn(withEmail: email, password: magic) { (user, error) in
            if error != nil {
                let alert = UIAlertController(title: AppConstants.errorTitle, message: error?.localizedDescription , preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: AppConstants.tryActionTitle, style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
//                print(error)
                return
            }
            self.saveStudentDetailsToDatabase(student: student)
            self.dismiss(animated: true, completion: nil)
            print("Logged In")
        }
    }
    
    func addUserToDatabase(name: String, email: String, magic: String, child: String){
        
//        let storageReferrence = Firebase.Storage.storage().reference().child(FirebaseConstants.profileImagesFolder).child("\(DateUtility.getCurrentTimeStampString())\(NSUUID().uuidString).jpeg")
//        //        if let profileImageData = UIImagePNGRepresentation(profileImageView.image!) // too big image size
//        if let profileImageData = UIImageJPEGRepresentation(profileImageView.image!, 0.05){
//            storageReferrence.putData(profileImageData, metadata: nil, completion: { (metadata, error) in
//                if error != nil {
//                    print(error)
//                    return
//                }
//                self.putUserDetails(name: name, email: email, magic: magic, imageURL: (metadata?.downloadURL()?.absoluteString)!, child: child)
//            })
//        }
    }
    
    private func saveStudentDetailsToDatabase(student: Student){
        
        if let userId = AppConstants.hashedEmail {
            let contactDetails : [String : Any] = [AppConstants.address: student.contactDetails?.address,
                                                   AppConstants.email: student.contactDetails?.email,
                                                   AppConstants.phone: student.contactDetails?.phone]
            let values : [String : Any] = [AppConstants.name: student.name,
                                           AppConstants.user: student.user,
                                           AppConstants.magic: student.magic]
            AppConstants.databaseReferrence.child(AppConstants.studentTable).child(userId).updateChildValues(values){
                (error, referrence) in
                    if error != nil {
//                        print(error)
                        return
                    }
                print("success")
            }
        }
    }
    
    @objc func setProfileImage(){
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true, completion: nil)
        print("profile image tabbed")
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        var selectedImage : UIImage?
        
        if let editedImage = info["UIImagePickerControllerEditedImage"] as? UIImage {
            selectedImage = editedImage
            print("Choosed edited image")
        } else if let originalImage = info["UIImagePickerControllerOriginalImage"] as? UIImage {
            selectedImage = originalImage
            print("Choosed original image")
        }
        
        if let image = selectedImage {
            profileImageView.image = image
            print("image set to profile")
        }
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
        print("Image Controller Picker Cancelled")
    }
    
}
