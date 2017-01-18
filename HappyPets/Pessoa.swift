//
//  Pessoa.swift
//  HappyPets
//
//  Created by Student on 1/17/17.
//  Copyright © 2017 thiago-Student. All rights reserved.
//

import Foundation
class Pessoa:Usuario {

    var nome: String
    var CPF: String
    var listaAmigos: [Pessoa]
    var foto: String
    
    init(login: String, senha: String, reputacao: String, endereco: String, data_atualizacao: Date, data_criacao: Date, nome: String, CPF: String, foto: String){
        self.nome = nome
        self.CPF = CPF
        self.listaAmigos = [Pessoa]()
        self.foto = foto
        super.init(login: login, senha: senha, reputacao: reputacao, endereco: endereco, data_atualizacao: data_atualizacao, data_criacao: data_criacao)
        
        
    }
}
