//
//  EditarUsuarioViewController.swift
//  HappyPets
//
//  Created by Diorgenes Miranda on 19/01/17.
//  Copyright © 2017 thiago-Student. All rights reserved.
//

import UIKit

class EditarUsuarioViewController: UIViewController {

    var usuario: Usuario?
    
    
    @IBOutlet weak var fotoImageView: UIImageView!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var senhaTextField: UITextField!
    @IBOutlet weak var telefoneTextField: UITextField!
    @IBOutlet weak var whatsappTextField: UITextField!
    @IBOutlet weak var categoriaTextField: UITextField!
    @IBOutlet weak var enderecoTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fotoImageView.image = UIImage(named: (usuario?.nomeDaFoto)!)
        fotoImageView.layer.cornerRadius = fotoImageView.frame.size.width / 2
        fotoImageView.clipsToBounds = true
        
        loginTextField.text = usuario?.login
        senhaTextField.text = usuario?.senha
        telefoneTextField.text = usuario?.telefone
        whatsappTextField.text = usuario?.whatsapp
        categoriaTextField.text = usuario?.categoria
        enderecoTextField.text = usuario?.endereco
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
