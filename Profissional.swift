//
//  Profissional.swift
//  HappyPets
//
//  Created by Student on 1/19/17.
//  Copyright © 2017 thiago-Student. All rights reserved.
//

import Foundation

class Profissional {
    
    var imagem: String
    var nome: String
    var descricao: String
    var telefone: String
    var email: String
    var endereco: String
    
    var latitude: Double
    var longitude: Double
    
    init(imagem: String, nome: String, descricao: String, telefone: String, email: String, endereco: String, latitude: Double, longitude: Double) {
        self.imagem = imagem
        self.nome = nome
        self.descricao = descricao
        self.telefone = telefone
        self.email = email
        self.endereco = endereco
        
        self.latitude = latitude
        self.longitude = longitude
    }
}

class ProfissionalDAO {
    
    static func getLista() -> [Profissional] {
        return [
            Profissional(imagem: "profissionalgenerico", nome: "Ong tal", descricao: "Somos uma ong...", telefone: "(63) 3224-3456", email: "ong@exemplo.com", endereco: "403 norte, alameda 4, n. 8", latitude: -10.178513, longitude: -48.361647),
        ]
    }
}
