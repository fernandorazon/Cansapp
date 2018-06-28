//
//  SatViewController.swift
//  Proyecto_Vergas
//
//  Created by Jaime ISLAS on 26/06/18.
//  Copyright © 2018 Jaime ISLAS. All rights reserved.
//

import UIKit

class SatViewController: UIViewController {

   @IBOutlet weak var navBar: UINavigationBar!
    
    let backItem: UINavigationItem = {
        let bI = UINavigationItem(title: "Satelites")
        bI.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.stop, target: self, action: #selector(firstView))
        
        return bI
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }
    
    func setupView() {
        
        navBar.setItems([backItem], animated: false)
        self.view.addSubview(navBar)
        
//        let screenSize: CGRect = UIScreen.main.bounds
//        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: 44))
//        let navItem = UINavigationItem(title: "")
//        let doneItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: nil, action: #selector(done))
//        navItem.rightBarButtonItem = doneItem
//        navBar.setItems([navItem], animated: false)
//        self.view.addSubview(navBar)
    }
    
    @objc func firstView() {
        performSegue(withIdentifier: "regresa", sender: self)
    }
    
    
}
