//
//  FifthViewController.swift
//  Homework_Navigation
//
//  Created by Vlad on 4.11.23.
//

import UIKit

let notificaionName = Notification.Name.init("Background color")

class FifthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(chageBackgroundColor), name: notificaionName, object: nil)
        
        NotificationCenter.default.post(name: notificaionName, object: self)
        
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
