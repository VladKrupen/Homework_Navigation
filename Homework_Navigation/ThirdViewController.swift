//
//  ThirdViewController.swift
//  Homework_Navigation
//
//  Created by Vlad on 4.11.23.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(chageBackgroundColor), name: notificaionName, object: nil)
        
        navigationItem.rightBarButtonItem = .init(title: "Forward", image: nil, target: self, action: #selector(buttonForwardTapped))
//        navigationItem.rightBarButtonItem?.customView = UIButton() чтобы название с картинкой

        // Do any additional setup after loading the view.
    }
    
    @objc func buttonForwardTapped(_ sender: UIButton) {
        let fourtViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FourthViewController")
        
        navigationController?.pushViewController(fourtViewController, animated: true)
        
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
