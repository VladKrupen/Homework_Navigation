//
//  ViewController.swift
//  Homework_Navigation
//
//  Created by Vlad on 4.11.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(chageBackgroundColor), name: notificaionName, object: nil)
        // Do any additional setup after loading the view.
    }
    
    @objc func chageBackgroundColor(_ notification: NSNotification) {
        
        let viewControllers = navigationController?.viewControllers
        
        for viewController in viewControllers! {
            viewController.view.backgroundColor = .red
        }
        
        navigationController?.viewControllers = viewControllers!
        
    }


}

