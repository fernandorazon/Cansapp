//
//  MissionViewController.swift
//  Proyecto_Vergas
//
//  Created by d182_fernando_r on 27/06/18.
//  Copyright © 2018 Jaime ISLAS. All rights reserved.
//

import UIKit

class MissionViewController: UIViewController {
    
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
    }
    
    @objc func firstView() {
        performSegue(withIdentifier: "return", sender: self)
    }
    

}
