//
//  HomeExtension.swift
//  ChatPro
//
//  Created by Muhammad Rehan on 10/17/21.
//

import Foundation
import UIKit
extension HomeVC {
    @objc func buttonactions(sender: UIButton){
        print("1")
        if sender.tag == 1 {
            print("Sign in")
            self.navigationController?.pushViewController(LoginVC(), animated: true)
        }
        
        if sender.tag == 2 {
            print("Sign Up")
            self.navigationController?.pushViewController(RegisterVC(), animated: true)
        }
    }
}
