//
//  DetalhesAnimalViewController.swift
//  HappyPets
//
//  Created by Student on 1/18/17.
//  Copyright © 2017 thiago-Student. All rights reserved.
//

import UIKit

class DetalhesAnimalViewController: UIViewController {
    
    var animal: Animal?

    @IBOutlet weak var fotoImageView: UIImageView!
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    @IBOutlet weak var idadeLabel: UILabel!
    @IBOutlet weak var sexoLabel: UILabel!
    @IBOutlet weak var porteLabel: UILabel!
    @IBOutlet weak var especieLabel: UILabel!
    
    @IBOutlet weak var usuarioLabel: UILabel!
    @IBOutlet weak var telefoneLabel: UILabel!
    @IBOutlet weak var whatsappLabel: UILabel!
    @IBOutlet weak var enderecoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nomeLabel.text = animal?.nome
        descricaoLabel.text = animal?.descricao
        fotoImageView.image = UIImage(named: (animal?.nomeDaFoto)!)
        idadeLabel.text = "\(animal?.idade)"
        sexoLabel.text = animal?.sexo
        especieLabel.text = animal?.especie
        porteLabel.text = animal?.porte
        
        usuarioLabel.text = animal?.usuario
        telefoneLabel.text = animal?.telefone
        whatsappLabel.text = animal?.whatsapp
        enderecoLabel.text = animal?.endereco
        
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
