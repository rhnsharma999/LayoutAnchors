//
//  customCellTableViewCell.swift
//  delte
//
//  Created by Rohan Lokesh Sharma on 07/04/17.
//  Copyright © 2017 webarch. All rights reserved.
//

import UIKit

class customCellTableViewCell: UITableViewCell {
    
    
    var sampleImageView:UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false;
        view.contentMode = .scaleAspectFill
        view.image = #imageLiteral(resourceName: "AMAZON-1200x537")
        
        return view;
    }()

   // let cell = UITableViewCell(style: <#T##UITableViewCellStyle#>, reuseIdentifier: <#T##String?#>)
  
   override init(style: UITableViewCellStyle, reuseIdentifier: String?)
   {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupViews(){

        addSubview(sampleImageView)
        sampleImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true;
        sampleImageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true;
        sampleImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true;
        sampleImageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true;
    }
}
