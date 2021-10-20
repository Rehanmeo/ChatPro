//
//  RegisterVC.swift
//  ChatPro
//
//  Created by Muhammad Rehan on 10/18/21.
//

import UIKit


class RegisterVC: UIViewController {
    
    
    var backButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .clear
        btn.setImage(UIImage(systemName: "arrow.backward"), for: .normal)
        btn.tintColor = UIColor.black
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.tag = 1
        return  btn
    }()
    
    var AppTitleLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Register"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont(name: "San Francisco", size: 28)
        lbl.font = UIFont.boldSystemFont(ofSize: 18)
        lbl.textColor = UIColor.systemBlue.withAlphaComponent(0.8)
        return lbl
    }()
    
    var profileImageView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .clear
        return v
    }()
    
    var profileImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "plus")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.tintColor = .systemGray3
//        image.sizeToFit()
        image.layer.cornerRadius = 45
        image.layer.borderWidth = 0.5
        image.layer.borderColor =  UIColor.systemGray3.cgColor
        image.clipsToBounds = true
        return image
    }()
    
    //Fields
    var userView: UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.clear
        v.layer.borderWidth = 0.5
        v.layer.borderColor = UIColor.systemGray3.cgColor
        v.layer.cornerRadius = 5
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    var userTextImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "person")
        image.tintColor = .systemGray2
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var userTxt: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.placeholder = "username"
        txt.keyboardType = UIKeyboardType.default
        txt.returnKeyType = UIReturnKeyType.done
        txt.autocorrectionType = UITextAutocorrectionType.no
        txt.font = UIFont.systemFont(ofSize: 13)
        txt.borderStyle =  UITextField.BorderStyle.none
        txt.clearButtonMode = UITextField.ViewMode.whileEditing
        txt.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        return txt
    }()
    
    
    var emailView: UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.clear
        v.layer.borderWidth = 0.5
        v.layer.borderColor = UIColor.systemGray3.cgColor
        v.layer.cornerRadius = 5
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    var emailTextImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "envelope")
        image.tintColor = .systemGray2
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var emailTxt: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.placeholder = "Email"
        txt.keyboardType = UIKeyboardType.emailAddress
        txt.returnKeyType = UIReturnKeyType.done
        txt.autocorrectionType = UITextAutocorrectionType.no
        txt.font = UIFont.systemFont(ofSize: 13)
        txt.borderStyle =  UITextField.BorderStyle.none
        txt.clearButtonMode = UITextField.ViewMode.whileEditing
        txt.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        return txt
    }()
    
    
    var addressView: UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.clear
        v.layer.borderWidth = 0.5
        v.layer.borderColor = UIColor.systemGray3.cgColor
        v.layer.cornerRadius = 5
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    var addressTextImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "person")
        image.tintColor = .systemGray2
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var addressTxt: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.placeholder = "Address"
        txt.keyboardType = UIKeyboardType.emailAddress
        txt.returnKeyType = UIReturnKeyType.done
        txt.autocorrectionType = UITextAutocorrectionType.no
        txt.font = UIFont.systemFont(ofSize: 13)
        txt.borderStyle =  UITextField.BorderStyle.none
        txt.clearButtonMode = UITextField.ViewMode.whileEditing
        txt.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        return txt
    }()
    
    
    var passwordView: UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.clear
        v.layer.borderWidth = 0.5
        v.layer.borderColor = UIColor.systemGray3.cgColor
        v.layer.cornerRadius = 5
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    var passwordTextImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "lock")
        image.tintColor = .systemGray2
        image.translatesAutoresizingMaskIntoConstraints = false
//        image.sizeToFit()
        return image
    }()
    
    var passwordTxt: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.placeholder = "Password"
        txt.isSecureTextEntry = true
        txt.keyboardType = UIKeyboardType.default
        txt.returnKeyType = UIReturnKeyType.done
        txt.autocorrectionType = UITextAutocorrectionType.no
        txt.font = UIFont.systemFont(ofSize: 13)
        txt.borderStyle =  UITextField.BorderStyle.none
        txt.clearButtonMode = UITextField.ViewMode.whileEditing
        txt.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        return txt
    }()
    
    var passwordEyeButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .clear
        btn.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        btn.tintColor = UIColor.systemGray2
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.tag = 2
        return  btn
    }()
    
    var registerButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Register", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        btn.contentHorizontalAlignment = .center
        btn.backgroundColor = UIColor.systemBlue.withAlphaComponent(0.8)
        btn.layer.cornerRadius = 5
        btn.clipsToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.tag = 4
        return btn
    }()
    
    var alreadyUserButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("If you are already user click here", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        btn.contentHorizontalAlignment = .center
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.tag = 5
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }
    
    func setupUI(){
        view.addSubview(backButton)
        view.addSubview(AppTitleLabel)
        view.addSubview(profileImageView)
        view.addSubview(userView)
        view.addSubview(emailView)
        view.addSubview(addressView)
        view.addSubview(passwordView)
        view.addSubview(registerButton)
        view.addSubview(alreadyUserButton)
        
        backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 75).isActive = true
        backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        AppTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        AppTitleLabel.centerYAnchor.constraint(equalTo: backButton.centerYAnchor).isActive = true
        
        profileImageView.topAnchor.constraint(equalTo: AppTitleLabel.bottomAnchor, constant: 50).isActive = true
        profileImageView.centerXAnchor.constraint(equalTo: AppTitleLabel.centerXAnchor).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 90).isActive = true
        
        profileImageView.addSubview(profileImage)
        profileImage.topAnchor.constraint(equalTo: profileImageView.topAnchor, constant: 0).isActive = true
        profileImage.leadingAnchor.constraint(equalTo: profileImageView.leadingAnchor, constant: 0).isActive = true
        profileImage.trailingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 0).isActive = true
        profileImage.bottomAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 0).isActive = true
        
        //Field
        userView.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 20).isActive = true
        userView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        userView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        userView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        userView.addSubview(userTextImage)
        userTextImage.topAnchor.constraint(equalTo: userView.topAnchor, constant: 5).isActive = true
        userTextImage.leadingAnchor.constraint(equalTo: userView.leadingAnchor, constant: 5).isActive = true
        userTextImage.bottomAnchor.constraint(equalTo: userView.bottomAnchor, constant: -5).isActive = true
        userTextImage.widthAnchor.constraint(equalToConstant: 24).isActive = true
        
        userView.addSubview(userTxt)
        userTxt.leadingAnchor.constraint(equalTo: userTextImage.trailingAnchor, constant: 10).isActive = true
        userTxt.topAnchor.constraint(equalTo: userView.topAnchor, constant: 0).isActive = true
        userTxt.bottomAnchor.constraint(equalTo: userView.bottomAnchor, constant: 0).isActive = true
        userTxt.trailingAnchor.constraint(equalTo: userView.trailingAnchor, constant: 0).isActive = true
        
        emailView.topAnchor.constraint(equalTo: userView.bottomAnchor, constant: 10).isActive = true
        emailView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        emailView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        emailView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        emailView.addSubview(emailTextImage)
        emailTextImage.topAnchor.constraint(equalTo: emailView.topAnchor, constant: 5).isActive = true
        emailTextImage.leadingAnchor.constraint(equalTo: emailView.leadingAnchor, constant: 5).isActive = true
        emailTextImage.bottomAnchor.constraint(equalTo: emailView.bottomAnchor, constant: -5).isActive = true
        emailTextImage.widthAnchor.constraint(equalToConstant: 24).isActive = true
        
        emailView.addSubview(emailTxt)
        emailTxt.leadingAnchor.constraint(equalTo: emailTextImage.trailingAnchor, constant: 10).isActive = true
        emailTxt.topAnchor.constraint(equalTo: emailView.topAnchor, constant: 0).isActive = true
        emailTxt.bottomAnchor.constraint(equalTo: emailView.bottomAnchor, constant: 0).isActive = true
        emailTxt.trailingAnchor.constraint(equalTo: emailView.trailingAnchor, constant: 0).isActive = true
        
        addressView.topAnchor.constraint(equalTo: emailView.bottomAnchor, constant: 10).isActive = true
        addressView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        addressView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        addressView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        addressView.addSubview(addressTextImage)
        addressTextImage.topAnchor.constraint(equalTo: addressView.topAnchor, constant: 5).isActive = true
        addressTextImage.leadingAnchor.constraint(equalTo: addressView.leadingAnchor, constant: 5).isActive = true
        addressTextImage.bottomAnchor.constraint(equalTo: addressView.bottomAnchor, constant: -5).isActive = true
        addressTextImage.widthAnchor.constraint(equalToConstant: 24).isActive = true
        
        addressView.addSubview(addressTxt)
        addressTxt.leadingAnchor.constraint(equalTo: addressTextImage.trailingAnchor, constant: 10).isActive = true
        addressTxt.topAnchor.constraint(equalTo: addressView.topAnchor, constant: 0).isActive = true
        addressTxt.bottomAnchor.constraint(equalTo: addressView.bottomAnchor, constant: 0).isActive = true
        addressTxt.trailingAnchor.constraint(equalTo: addressView.trailingAnchor, constant: 0).isActive = true
        
        
        passwordView.topAnchor.constraint(equalTo: addressView.bottomAnchor, constant: 10).isActive = true
        passwordView.leadingAnchor.constraint(equalTo: userView.leadingAnchor, constant: 0).isActive  = true
        passwordView.trailingAnchor.constraint(equalTo: userView.trailingAnchor, constant: 0).isActive = true
        passwordView.heightAnchor.constraint(equalTo: userView.heightAnchor).isActive = true
       
        passwordView.addSubview(passwordTextImage)
        passwordTextImage.topAnchor.constraint(equalTo: passwordView.topAnchor, constant: 5).isActive = true
        passwordTextImage.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 5).isActive = true
        passwordTextImage.bottomAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: -5).isActive = true
        passwordTextImage.widthAnchor.constraint(equalToConstant: 24).isActive = true
        
        passwordView.addSubview(passwordTxt)
        passwordTxt.topAnchor.constraint(equalTo: passwordView.topAnchor, constant: 0).isActive = true
        passwordTxt.leadingAnchor.constraint(equalTo: passwordTextImage.trailingAnchor, constant: 10).isActive = true
        passwordTxt.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: -30).isActive = true
        passwordTxt.bottomAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: 0).isActive = true
        
        
        passwordView.addSubview(passwordEyeButton)
        passwordEyeButton.topAnchor.constraint(equalTo: passwordView.topAnchor, constant: 5).isActive = true
        passwordEyeButton.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: -5).isActive = true
        passwordEyeButton.bottomAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: -5).isActive = true
        passwordEyeButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        
        registerButton.topAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: 40).isActive = true
        registerButton.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 0).isActive = true
        registerButton.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: 0).isActive = true
        registerButton.heightAnchor.constraint(equalTo: passwordView.heightAnchor).isActive = true
        
        alreadyUserButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        alreadyUserButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        alreadyUserButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }
}
