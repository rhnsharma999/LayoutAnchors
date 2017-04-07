//
//  SecondViewController.swift
//  delte
//
//  Created by Rohan Lokesh Sharma on 07/04/17.
//  Copyright © 2017 webarch. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    var container:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false;
        view.backgroundColor = .white;
        view.layer.cornerRadius = 5
        return view;
    }()
    
    var emailField:UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false;
        view.placeholder = "Email"
        return view;
    }()
    
    var passField:UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false;
        view.placeholder = "Password"
        return view;
    }()
    var seperator:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false;
        view.backgroundColor = .lightGray
        return view;
    }()
    var signInButton:UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false;
        view.setTitle("Sign in", for: .normal)
        view.backgroundColor = UIColor(red: 79/255, green: 105/255, blue: 162/255, alpha: 1.0)
        return view;
        
    }()
    var logoImage:UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false;
        view.contentMode = .scaleAspectFit
        view.image = #imageLiteral(resourceName: "logo-facebook-1")
        return view;
    }()

    override func viewDidLoad() {
        setupViews()
        view.backgroundColor = UIColor(red: 53/255, green: 88/255, blue: 157/255, alpha: 1.0)
        super.viewDidLoad()

      
    }

    
    func setupViews(){
        
        //should not put everything in one function, this is the bad way of coding
        
        // just for reference...
        
        view.addSubview(container)
        view.addSubview(signInButton)
        view.addSubview(logoImage)
        container.addSubview(emailField)
        container.addSubview(seperator)
        container.addSubview(passField)
        
        
        container.leftAnchor.constraint(equalTo: view.leftAnchor,constant:10).isActive = true
        container.rightAnchor.constraint(equalTo: view.rightAnchor,constant:-10).isActive = true //note the negative constant here
        container.heightAnchor.constraint(equalToConstant: 100).isActive = true
        container.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant:-30).isActive = true
        
        emailField.leftAnchor.constraint(equalTo: container.leftAnchor,constant:10).isActive = true
        emailField.rightAnchor.constraint(equalTo: container.rightAnchor,constant:-10).isActive = true
        emailField.heightAnchor.constraint(equalTo: container.heightAnchor, multiplier: 1/2).isActive = true //equal division of fields using multiplier
        emailField.topAnchor.constraint(equalTo: container.topAnchor).isActive = true
        
        
        
        seperator.topAnchor.constraint(equalTo: emailField.bottomAnchor).isActive = true
        seperator.leftAnchor.constraint(equalTo: container.leftAnchor).isActive = true
        seperator.rightAnchor.constraint(equalTo: container.rightAnchor).isActive = true
        seperator.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        
        passField.leftAnchor.constraint(equalTo: container.leftAnchor,constant:10).isActive = true
        passField.rightAnchor.constraint(equalTo: container.rightAnchor,constant:-10).isActive = true
        passField.heightAnchor.constraint(equalTo: container.heightAnchor, multiplier: 1/2).isActive = true
        passField.topAnchor.constraint(equalTo: seperator.bottomAnchor).isActive = true
        
        signInButton.leftAnchor.constraint(equalTo: view.leftAnchor,constant:10).isActive = true
        signInButton.rightAnchor.constraint(equalTo: view.rightAnchor,constant:-10).isActive = true
        signInButton.topAnchor.constraint(equalTo: container.bottomAnchor,constant:10).isActive = true
        signInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        logoImage.leftAnchor.constraint(equalTo: view.leftAnchor,constant:10).isActive = true
        logoImage.rightAnchor.constraint(equalTo: view.rightAnchor,constant:-10).isActive = true
        logoImage.bottomAnchor.constraint(equalTo: container.topAnchor,constant:10).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        
    }
    

}
