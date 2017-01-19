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
    var site: String
    
    init(imagem: String, nome: String, descricao: String, telefone: String, email: String, site: String) {
        self.imagem = imagem
        self.nome = nome
        self.descricao = descricao
        self.telefone = telefone
        self.email = email
        self.site = site
    }
}

class ProfissionalDAO {
    
    static func getLista() -> [Profissional] {
        return [
            Profissional(imagem: "profissionalgenerico", nome: "Ong tal", descricao: "Somos uma ong...", telefone: "(63) 3224-3456", email: "ong@exemplo.com", site: "ongtal.ong.br"),
        ]
    }
}
