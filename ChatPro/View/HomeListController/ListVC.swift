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
//        view.backgroundColor = .systemYellow
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
//        navigationController?.navigationBar.isTranslucent = false
//        navigationController?.navigationBar.tintColor = .blue
        navigationItem.largeTitleDisplayMode = .always
        navigationItem.hidesBackButton = true
        title = "Lists"
        tableView.register(ListCell.self, forCellReuseIdentifier: cellId)
        
        let signout = UIBarButtonItem(title: "Sign out", style: .plain, target: self, action: #selector(signOut))
        self.navigationItem.rightBarButtonItem = signout
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
    
    
    
}

class ListCell: UITableViewCell {
    
    let nameLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(nameLabel)
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 20).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        addSubview(nameLabel)
       
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
