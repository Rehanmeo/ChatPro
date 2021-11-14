//
//  RegisterButtonActionExt.swift
//  ChatPro
//
//  Created by Muhammad Rehan on 10/20/21.
//

import UIKit
import Firebase

extension RegisterVC {
    
    func buttonAction(){
        self.backButton.addTarget(self, action: #selector(registerButtonAction(sender:)), for: .touchUpInside)
        self.registerButton.addTarget(self, action: #selector(registerButtonAction(sender:)), for: .touchUpInside)
    }
    
    @objc func registerButtonAction(sender: UIButton){
        if sender.tag == 1 {
            self.navigationController?.popViewController(animated: true)
        }
        if sender.tag == 4 {
            print("Hello Register button")
            regisauth()
        }
    }
    
    func regisauth(){
        guard let useremail = self.emailTxt.text else { return }
        guard let pass = self.passwordTxt.text else { return }
        Auth.auth().createUser(withEmail: useremail, password: pass) { result, err in
            if let err = err {
                print("Failed to sign up: \(err)")
                self.showToast(message: "Failed to sign up")
                return
            }
            print("seccessfull sign")
            self.showToast(message: "seccessfull sign")
            self.navigationController?.pushViewController(LoginVC(), animated: true)
            
        }
    }
    
}

extension UIViewController {

func showToast(message : String, font: UIFont = UIFont.systemFont(ofSize: 12)) {

    let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 75, y: self.view.frame.size.height-100, width: 150, height: 35))
    toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
    toastLabel.textColor = UIColor.white
    toastLabel.font = font
    toastLabel.textAlignment = .center;
    toastLabel.text = message
    toastLabel.alpha = 1.0
    toastLabel.layer.cornerRadius = 10;
    toastLabel.clipsToBounds  =  true
    self.view.addSubview(toastLabel)
    UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
         toastLabel.alpha = 0.0
    }, completion: {(isCompleted) in
        toastLabel.removeFromSuperview()
    })
} }
