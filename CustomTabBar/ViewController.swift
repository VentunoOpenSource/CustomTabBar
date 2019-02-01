//
//  ViewController.swift
//  CustomTabBar
//
//  Created by Ventuno Technologies on 01/02/19.
//  Copyright © 2019 Ventuno Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let menuBar: MenuBar = {
        let mb = MenuBar()
        return mb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setUpMenuBar()
        
    }
    
    
    
    
    private func setUpMenuBar(){
        
        view.addSubview(menuBar)
        addConstraintsWithFormat("H:|[v0]|", views: menuBar)
        addConstraintsWithFormat("V:|[v0(50)]", views: menuBar)
        
    }
    
    func addConstraintsWithFormat(_ format: String, views: UIView...) {
        var viewDict = [String: UIView]()
        
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewDict[key] = view
        }
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutConstraint.FormatOptions(rawValue: 0), metrics: nil, views: viewDict))
    }

    

   
}

