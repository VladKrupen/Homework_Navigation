//
//  FirstViewController.swift
//  Homework_Navigation
//
//  Created by Vlad on 4.11.23.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "First"
        
        NotificationCenter.default.addObserver(self, selector: #selector(chageBackgroundColor), name: notificaionName, object: nil)

        // Do any additional setup after loading the view.
    }
    
    @objc func chageBackgroundColor(_ notification: NSNotification) {
        
        view.backgroundColor = .red
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
