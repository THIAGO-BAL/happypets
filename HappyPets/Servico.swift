//
//  Servico.swift
//  HappyPets
//
//  Created by Student on 1/18/17.
//  Copyright © 2017 thiago-Student. All rights reserved.
//

import Foundation

class Servico:Informativo {
    var preco: Float
    
    init(preco: Float, autor: Usuario, descricao: String){
        self.preco = preco
        super.init(data_criacao: Date(), data_atualizacao: Date(), autor: autor, descricao: descricao)
    }

}
