//
//  LoginVC.swift
//  ChatPro
//
//  Created by Muhammad Rehan on 10/17/21.
//

import UIKit

class LoginVC: UIViewController{
    
    var backButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .clear
        btn.setImage(UIImage(systemName: "arrow.backward"), for: .normal)
        btn.tintColor = UIColor.black
        btn.translatesAutoresizingMaskIntoConstraints = false
        return  btn
    }()
    
    var AppTitleLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Chat Pro Login"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont(name: "San Francisco", size: 28)
        lbl.font = UIFont.boldSystemFont(ofSize: 18)
        lbl.textColor = UIColor.systemBlue.withAlphaComponent(0.8)
        return lbl
    }()
    
    var titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Chat Pro"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont(name: "San Francisco", size: 32)
        lbl.font = UIFont.boldSystemFont(ofSize: 24)
        lbl.textAlignment = .center
        lbl.textColor = UIColor.systemBlue.withAlphaComponent(0.8)
        return lbl
    }()
    
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
//        image.sizeToFit()
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
    
   //Password
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
    
    
    var forgotPasswordButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Forgot Password", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.contentHorizontalAlignment = .right
        btn.tag = 3
        return btn
    }()
    
    
    var loginButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Login", for: .normal)
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
    
    var registerButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("If you haven't account please click here", for: .normal)
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
    
    private func setupUI(){
        view.addSubview(backButton)
        view.addSubview(AppTitleLabel)
        view.addSubview(titleLabel)
        view.addSubview(userView)
        view.addSubview(passwordView)
        view.addSubview(forgotPasswordButton)
        view.addSubview(loginButton)
        view.addSubview(registerButton)
        
        backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 75).isActive = true
        backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        AppTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        AppTitleLabel.centerYAnchor.constraint(equalTo: backButton.centerYAnchor).isActive = true
        
        titleLabel.centerXAnchor.constraint(equalTo: AppTitleLabel.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: AppTitleLabel.bottomAnchor, constant: 100).isActive = true
        
        //User View
        userView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 35).isActive = true
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
        
        //Password View
        passwordView.topAnchor.constraint(equalTo: userView.bottomAnchor, constant: 8).isActive = true
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
        
        
        //forgot password
        forgotPasswordButton.topAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: 5).isActive = true
        forgotPasswordButton.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: 0).isActive = true
        forgotPasswordButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        forgotPasswordButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        //Login
        loginButton.topAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor, constant: 40).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 0).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: 0).isActive = true
        loginButton.heightAnchor.constraint(equalTo: passwordView.heightAnchor).isActive = true
        
        registerButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        registerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
    }
}
