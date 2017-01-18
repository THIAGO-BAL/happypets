//
//  PessoaJuridica.swift
//  HappyPets
//
//  Created by Student on 1/18/17.
//  Copyright © 2017 thiago-Student. All rights reserved.
//

import Foundation

class PessoaJuridica:Usuario {
    var nome: String
    var tipoPessoaJuridica: String
    var foto: String
    var listaAmigos: [Pessoa]
    
    init(login: String, senha: String, reputacao: String, endereco: String, data_atualizacao: Date, data_criacao: Date, nome: String, tipoPessoaJuridica: String, foto: String){
        self.nome = nome
        self.tipoPessoaJuridica = tipoPessoaJuridica
        self.foto = foto
        self.listaAmigos = [Pessoa]()
        super.init(login: login, senha: senha, reputacao: reputacao, endereco: endereco, data_atualizacao: data_atualizacao, data_criacao: data_criacao)
        
    }
}
