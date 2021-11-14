//
//  LoginButtonActionExt.swift
//  ChatPro
//
//  Created by Muhammad Rehan on 10/20/21.
//

import UIKit
import Firebase

extension LoginVC {
    
    func buttonaction(){
        self.backButton.addTarget(self, action: #selector(loginButtonAction(sender:)), for: .touchUpInside)
        self.passwordEyeButton.addTarget(self, action: #selector(loginButtonAction(sender:)), for: .touchUpInside)
        self.forgotPasswordButton.addTarget(self, action: #selector(loginButtonAction(sender:)), for: .touchUpInside)
        self.loginButton.addTarget(self, action: #selector(loginButtonAction(sender:)), for: .touchUpInside)
        self.registerButton.addTarget(self, action: #selector(loginButtonAction(sender:)), for: .touchUpInside)
    }
    
    @objc func loginButtonAction(sender: UIButton) {
        if sender.tag == 1{
            self.navigationController?.popViewController(animated: true)
        }
        
        if sender.tag == 2 {
            print("Eye Button")
        }
        
        if sender.tag == 3 {
            print("Forgot Button")
        }
        
        if sender.tag == 4 {
            print("login button")
            loginuser()
            
        }
        
        if sender.tag == 5 {
            self.navigationController?.pushViewController(RegisterVC(), animated: true)
        }
    }
    
    func loginuser(){
        guard let email = userTxt.text else { return }
        guard let pass = passwordTxt.text else { return }
        Auth.auth().signIn(withEmail: email, password: pass) { result, err in
            if let err = err {
                self.showToast(message: "Login error please Correct Info put: \(err)", font: UIFont.systemFont(ofSize: 9))
                return
            }
            self.showToast(message: "succesfully login")
            self.navigationController?.pushViewController(ListVC(), animated: true)
        }
    }
}
