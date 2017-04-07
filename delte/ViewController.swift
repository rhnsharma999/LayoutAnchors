//
//  ViewController.swift
//  delte
//
//  Created by Rohan Lokesh Sharma on 07/04/17.
//  Copyright © 2017 webarch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var data = [Student]()
    
    lazy var myTableView:UITableView = {
        
        
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false;
        view.delegate = self;
        view.dataSource = self;
        return view;
    }()
   
    override func viewDidLoad() {
        myTableView.register(customCellTableViewCell.self, forCellReuseIdentifier: "cell")
        view.backgroundColor = .white
        setupViews()
        super.viewDidLoad()
    }
    
    
    
    func setupViews(){
        view.addSubview(myTableView)
        myTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true;
        myTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true;
        myTableView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor).isActive = true;
        myTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true;
    }

    
  

}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell!.textLabel?.text = "Row no \(indexPath.row + 1)"
        return cell!;
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
