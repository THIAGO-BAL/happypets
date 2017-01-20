//
//  DetalhesProfissionaisViewController.swift
//  HappyPets
//
//  Created by Student on 1/19/17.
//  Copyright © 2017 thiago-Student. All rights reserved.
//

import UIKit

class DetalhesProfissionaisViewController: UIViewController {
    
    var profissional: Profissional?

    @IBOutlet weak var fotoImageView: UIImageView!
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    @IBOutlet weak var telefoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var siteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fotoImageView.layer.cornerRadius = fotoImageView.frame.size.width / 2
        fotoImageView.clipsToBounds = true
        fotoImageView.image = UIImage(named: (profissional?.imagem)!)
        nomeLabel.text = profissional?.nome
        descricaoLabel.text = profissional?.descricao
        telefoneLabel.text = profissional?.telefone
        emailLabel.text = profissional?.email
        siteLabel.text = profissional?.endereco
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mostraLocalizacaoProfissional" {
            if let viewLocalizacao = segue.destination as? LocalizacaoViewController {
                viewLocalizacao.profissional = profissional
            }
        }
    }
}
