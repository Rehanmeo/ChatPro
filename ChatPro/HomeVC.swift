//
//  HomeVC.swift
//  ChatPro
//
//  Created by Muhammad Rehan on 10/17/21.
//

import UIKit

class HomeVC: UIViewController {
    
    var titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Chat Pro"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont(name: "San Francisco", size: 38)
        lbl.font = UIFont.boldSystemFont(ofSize: 28)
        lbl.textColor = UIColor.systemBlue
        return lbl
    }()
    
    var sepView: UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.black
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    var subTitleLabele: UILabel = {
        let lbl = UILabel()
        lbl.text = "Simple Chat With Friends share Pics"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont(name: "San Francisco", size: 20)
        lbl.font = UIFont.boldSystemFont(ofSize: 15)
        lbl.textColor = UIColor.systemGray3
        return lbl
    }()
    
    var signinButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Sign in", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "San Francisco", size: 18)
        btn.backgroundColor = UIColor.systemBlue
        btn.layer.cornerRadius = 5
        btn.clipsToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    var orLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "or"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont(name: "San Francisco", size: 28)
        lbl.font = UIFont.boldSystemFont(ofSize: 22)
        lbl.textColor = UIColor.systemGray3
        return lbl
    }()
    
    var signupButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Register", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "San Francisco", size: 18)
        btn.backgroundColor = UIColor.systemBlue
        btn.layer.cornerRadius = 5
        btn.clipsToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .white
        print("Hello Pakistan 234")
        setUI()
    }
    
    
    private func setUI(){
        view.addSubview(titleLabel)
        view.addSubview(sepView)
        view.addSubview(subTitleLabele)
        view.addSubview(signinButton)
        view.addSubview(orLabel)
        view.addSubview(signupButton)
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        sepView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8).isActive = true
        sepView.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor, constant: 0).isActive = true
        sepView.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 0).isActive = true
        sepView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        subTitleLabele.topAnchor.constraint(equalTo: sepView.bottomAnchor, constant: 4).isActive = true
        subTitleLabele.leadingAnchor.constraint(equalTo: sepView.leadingAnchor, constant: 0).isActive = true
        subTitleLabele.trailingAnchor.constraint(equalTo: sepView.trailingAnchor, constant: 0).isActive = true
        
        signinButton.topAnchor.constraint(equalTo: subTitleLabele.bottomAnchor, constant: 110).isActive = true
        signinButton.leadingAnchor.constraint(equalTo: subTitleLabele.leadingAnchor, constant: 0).isActive = true
        signinButton.trailingAnchor.constraint(equalTo: subTitleLabele.trailingAnchor, constant: 0).isActive = true
        signinButton.heightAnchor.constraint(equalToConstant: 40).isActive = true

        orLabel.topAnchor.constraint(equalTo: signinButton.bottomAnchor, constant: 10).isActive = true
        orLabel.centerXAnchor.constraint(equalTo: signinButton.centerXAnchor).isActive = true
        
        signupButton.topAnchor.constraint(equalTo: orLabel.bottomAnchor, constant: 10).isActive = true
        signupButton.leadingAnchor.constraint(equalTo: sepView.leadingAnchor, constant: 0).isActive = true
        signupButton.trailingAnchor.constraint(equalTo: sepView.trailingAnchor, constant: 0).isActive =  true
        signupButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
   
}
