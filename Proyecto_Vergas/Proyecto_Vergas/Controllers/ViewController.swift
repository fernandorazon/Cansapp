//
//  ViewController.swift
//  Proyecto_Vergas
//
//  Created by Jaime ISLAS on 19/06/18.
//  Copyright © 2018 Jaime ISLAS. All rights reserved.
//

import UIKit
@IBDesignable
class ViewController: UIViewController {
    
    @IBOutlet weak var proyButton: UIButton!
    @IBOutlet weak var satLabel: UILabel!
    @IBOutlet weak var satButton: UIButton!
    @IBOutlet weak var satImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        setupView()
    }
    
    
    @IBAction func startProy(_ sender: Any) {
        performSegue(withIdentifier: "startP", sender: self)
        
    }
    
    @IBAction func viewSat(_ sender: Any) {
        performSegue(withIdentifier: "satP", sender: self)
    }
    
    func setupLayout() {
        
        //Background
        view.backgroundColor = UIColor(patternImage: UIImage(named: "starBackground")!)
        
        //Cambiar atributos del label
        satLabel.text = "CansApp"
        satLabel.font = UIFont(name:"OriyaSangamMN", size: 40.0)
        satLabel.textColor = UIColor.white
        satLabel.textAlignment = .center
        //satLabel.adjustsFontSizeToFitWidth =  false
        satLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //Boton de satelites
        satButton.setTitle("Satelites", for: .normal)
        satButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        satButton.tintColor = UIColor.white
        satButton.backgroundColor = UIColor.gray
        satButton.translatesAutoresizingMaskIntoConstraints = false
        satButton.layer.cornerRadius = 10
        
        //Boton de mision
        proyButton.setTitle("Mision", for: .normal)
        proyButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        proyButton.tintColor = UIColor.white
        proyButton.backgroundColor = UIColor.gray
        proyButton.translatesAutoresizingMaskIntoConstraints = false
        proyButton.layer.cornerRadius = 10
        
        //Permitir constraints a la imagen
        satImage.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func setupView() {
        //Constraints Label
        NSLayoutConstraint.activate([satLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20), satLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: -20), satLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 10), satLabel.heightAnchor.constraint(equalToConstant: 45)])
        
        //Constraints Imagen
        NSLayoutConstraint.activate([satImage.topAnchor.constraint(equalTo: satLabel.bottomAnchor, constant: 30),satImage.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: -50), satImage.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 50),satImage.heightAnchor.constraint(equalToConstant: 200)])
        
        //Boton de abajo alv
        NSLayoutConstraint.activate([proyButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -100), proyButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 90), proyButton.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -90), proyButton.heightAnchor.constraint(equalToConstant: 45)])
        
        //Boton de arriba
        NSLayoutConstraint.activate([satButton.bottomAnchor.constraint(equalTo: proyButton.topAnchor, constant: -20), satButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 90), satButton.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -90), satButton.heightAnchor.constraint(equalToConstant: 45)])
        
        
    }

}

