//
//  ListCell.swift
//  ChatPro
//
//  Created by Muhammad Rehan on 10/31/21.
//

import UIKit

class ListCell: UITableViewCell {
    
    let nameLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var bgView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        addSubview(bgView)
        bgView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        bgView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        bgView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        bgView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        bgView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        addSubview(nameLabel)
       
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
