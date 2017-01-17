//
//  Usuario.swift
//  HappyPets
//
//  Created by Student on 1/17/17.
//  Copyright © 2017 thiago-Student. All rights reserved.
//

import Foundation

class Usuario {
    
    var login: String
    var senha: String
    var reputacao: String
    var endereco: String
    //var endereco: Endereco
    //var permissao: USUARIO_PERMISSAO
    var data_atualizacao: Date
    var data_criacao: Date
    var listaAnimais: [Animal]
    var listaNotificacao: [Notificacao]
    var listaInformativo: [Informativo]
    
    init(login: String, senha: String, reputacao: String, endereco: String, data_atualizacao:
        Date, data_criacao: Date) {
        self.login = login
        self.senha = senha
        self.reputacao = reputacao
        self.endereco = endereco
        self.data_atualizacao = data_atualizacao
        self.data_criacao = data_criacao
        self.listaAnimais = [Animal]()
        self.listaNotificacao = [Notificacao]()
        self.listaInformativo = [Informativo]()
    }
    
}
