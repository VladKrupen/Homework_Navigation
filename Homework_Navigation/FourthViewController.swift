//
//  FourthViewController.swift
//  Homework_Navigation
//
//  Created by Vlad on 4.11.23.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonJumpTapped(_ sender: Any) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController")
        let firstViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FirstViewController")
        let secondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController")
        let thirdViewContrller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThirdViewController")
        let fourthViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FourthViewController")
        let fifthViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FifthViewController")
        
        navigationController?.pushViewController(fifthViewController, animated: true)
        
        navigationController?.viewControllers = [viewController, firstViewController, secondViewController, thirdViewContrller, fourthViewController, fifthViewController]
        var viewControllers = navigationController?.viewControllers
        viewControllers?.swapAt(3, 4)
        viewControllers?.swapAt(1, 2)
        
        navigationController?.viewControllers = viewControllers!
        
        
        
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
