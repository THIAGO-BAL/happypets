//
//  EditarAnimalViewController.swift
//  HappyPets
//
//  Created by Diorgenes Miranda on 19/01/17.
//  Copyright © 2017 thiago-Student. All rights reserved.
//

import UIKit

class EditarAnimalViewController: UIViewController {
    
    var animal: Animal?
    
    @IBOutlet weak var fotoImageView: UIImageView!
    @IBOutlet weak var nomeLabel: UITextField!
    @IBOutlet weak var descricaoLabel: UITextField!
    @IBOutlet weak var idadeLabel: UITextField!
    @IBOutlet weak var sexoLabel: UITextField!
    @IBOutlet weak var porteLabel: UITextField!
    @IBOutlet weak var especieLabel: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        fotoImageView.image = UIImage(named: (animal?.nomeDaFoto)!)
        fotoImageView.layer.cornerRadius = fotoImageView.frame.size.width / 2
        fotoImageView.clipsToBounds = true
        
        nomeLabel.text = animal?.nome
        descricaoLabel.text = animal?.descricao
        idadeLabel.text = "\(animal?.idade)"
        sexoLabel.text = animal?.sexo
        porteLabel.text = animal?.porte
        especieLabel.text = animal?.especie
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
