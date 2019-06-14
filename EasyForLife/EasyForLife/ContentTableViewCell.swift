//
//  ContentTableViewCell.swift
//  EasyForLife
//
//  Created by Bob on 2019/6/14.
//  Copyright © 2019 hgd. All rights reserved.
//

import UIKit
import SnapKit

class ContentTableViewCell: UITableViewCell {
    
    public enum ContentCellType {
        case reminder
        case note
    }

    var iconView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "reminder")
        return imageView
    }()
    
    var titleLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Test Content"
        return label
    }()
    
    override func awakeFromNib() {
     
        super.awakeFromNib()
        configureView()
    }
    
    public func refreshCell(_ type: ContentCellType, _ content: String) {
        
        iconView.image = imageWithType(type)
        titleLabel.text = content
    }
    
    private func imageWithType(_ type: ContentCellType) -> UIImage {
        
        switch type {
        case .note:
            return UIImage(named: "note") ?? UIImage()
        case .reminder:
            return UIImage(named: "reminder") ?? UIImage()
        }
    }
    
    private func configureView() {
        
        contentView.addSubview(iconView)
        iconView.snp.makeConstraints({ (maker) in
            maker.centerY.equalToSuperview()
            maker.left.equalToSuperview().offset(15)
            maker.size.equalTo(CGSize(width: 30, height: 30))
        })
        
        contentView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { (maker) in
            maker.centerY.equalToSuperview()
            maker.left.equalTo(iconView.snp_right).offset(15)
            maker.right.equalToSuperview().offset(15)
        }
    }
}
