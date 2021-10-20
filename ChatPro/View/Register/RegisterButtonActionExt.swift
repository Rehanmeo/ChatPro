//
//  RegisterButtonActionExt.swift
//  ChatPro
//
//  Created by Muhammad Rehan on 10/20/21.
//

import UIKit

extension RegisterVC {
    
    func buttonAction(){
        self.backButton.addTarget(self, action: #selector(registerButtonAction(sender:)), for: .touchUpInside)
    }
    
    @objc func registerButtonAction(sender: UIButton){
        if sender.tag == 1 {
            self.navigationController?.popViewController(animated: true)
        }
    }
}
