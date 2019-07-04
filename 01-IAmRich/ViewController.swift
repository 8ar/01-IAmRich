//
//  ViewController.swift
//  01-IAmRich
//
//  Created by Adriana Ortega on 7/3/19.
//  Copyright © 2019 Adriana Ortega. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //PROPERTIES
    
    @IBOutlet weak var LabeltITitle: UILabel!
    @IBOutlet weak var ImageViewDiamond: UIImageView!
    @IBOutlet weak var buttonPush: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view. hola
       
    }
//METHOD

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let controller = UIAlertController(title:"""
        I´m rich,
        """,message:"""
        I deserve it,
        I am good
        healthy and successfull
        """,preferredStyle: .alert)
        
        // Creaciones de acciones=
        
            //Primer forma de usar un handler que no hace nada si escoges esta opcion
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
            //Segunda forma declaras la accion y pones en código aparte que acciones quieres que haga
        let action2 = UIAlertAction(title: "Borrar", style: .default) { (action) in
            print("he pulsado el boton borrar")
        }
            // Tercer forma aqui defines el codigo adentro de los parametros
        let action3 = UIAlertAction(title: "Cancelar", style: .default, handler: { (_) in print("he pulsado el boton cancelar")})
        
        
        
        controller.addAction(action)
        controller.addAction(action2)
        controller.addAction(action3)
        
        self.show(controller,sender:nil)
    }
}

