//
//  PerfilViewController.swift
//  HappyPets
//
//  Created by Diorgenes Miranda on 19/01/17.
//  Copyright © 2017 thiago-Student. All rights reserved.
//

import UIKit

class PerfilViewController: UIViewController {

    var usuario: Usuario?
    var animais = [Animal]()
    
    @IBOutlet weak var fotoImageView: UIImageView!
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var categoriaLabel: UILabel!
    @IBOutlet weak var dataDeCriacaoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.usuario = UsuarioDAO.getInfo()
        self.animais = UsuarioDAO.getAnimais()
        
        fotoImageView.layer.cornerRadius = fotoImageView.frame.size.width / 2
        fotoImageView.clipsToBounds = true
        fotoImageView.image = UIImage(named: (usuario?.nomeDaFoto)!)
        
        nomeLabel.text = usuario?.nome
        categoriaLabel.text = "Categoria " + (usuario?.categoria)!
        dataDeCriacaoLabel.text = "Criado em " + (usuario?.data_criacao)!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mostraAnimaisDoUsuario" {
            if let viewAnimais = segue.destination as? AnimaisTableViewController {
                viewAnimais.animais = animais
            }
        }
        
        if segue.identifier == "editaPerfilUsuario" {
            if let viewEditaUsuario = segue.destination as? EditarUsuarioViewController {
                viewEditaUsuario.usuario = usuario
            }
        }
    }
}
