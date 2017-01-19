//
//  CadastroViewController.swift
//  HappyPets
//
//  Created by Student on 1/19/17.
//  Copyright © 2017 thiago-Student. All rights reserved.
//

import UIKit

class CadastroViewController: UIViewController {

    @IBOutlet weak var nomeText: UITextField!
    
    @IBOutlet weak var telefoneText: UITextField!
    
    @IBOutlet weak var enderecoText: UITextField!
    
    @IBOutlet weak var loginText: UITextField!
    
    @IBOutlet weak var senhaText: UITextField!
    
    
    var nomeUsuario: String = ""
    var loginUsuario: String = ""
    var senhaUsuario: String = ""
    var endereco: String = ""
    var telefone: String = ""
    
    @IBAction func cadastrarUsuario(_ sender: Any) {
        nomeUsuario = nomeText.text!
        loginUsuario = loginText.text!
        senhaUsuario = senhaText.text!
        endereco = enderecoText.text!
        telefone = telefoneText.text!
        
        //Fazer o tratamento caso as variaveis estejam vazias
        
        adicionarNovoUsuario()
    }
    
    func adicionarNovoUsuario(){
        let novoUsuario = Pessoa(login: loginUsuario, senha: senhaUsuario, reputacao: "", endereco: endereco, data_atualizacao: Date(), data_criacao: Date(), nome: nomeUsuario, CPF: "", foto: "", telefone: telefone)
        
        PessoaDAO.usuariosCadastrados.append(novoUsuario)
        print("Usuario cadastrado com sucesso!")
        self.dismiss(animated: true, completion: nil)
        
        //PessoaDAO.adicionarUsuario(novoUsuario)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
