//
//  ListVC.swift
//  ChatPro
//
//  Created by Muhammad Rehan on 10/21/21.
//

import UIKit


class ListVC: UITableViewController {
    
   
    let cellId = "cellID"
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        navigationItem.hidesBackButton = true
        title = "Contacts"
        tableView.register(ListCell.self, forCellReuseIdentifier: cellId)
        
        setupUI()
        
    }
    
    func setupUI(){
        let signout = UIBarButtonItem(title: "Sign out", style: .plain, target: self, action: #selector(signOut))
        self.navigationItem.rightBarButtonItem = signout
        let addButton = UIBarButtonItem(title: "add", style: .plain, target: self, action: #selector(signOut))
        self.navigationItem.leftBarButtonItem = addButton
    }
    
    @objc func signOut(sender: AnyObject){
        print("Hello work")
        self.navigationController?.pushViewController(HomeVC(), animated: true)
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ListCell
        cell.nameLabel.text = "Hello work"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
}

