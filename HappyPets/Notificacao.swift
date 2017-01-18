//
//  Notificacao.swift
//  HappyPets
//
//  Created by Student on 1/18/17.
//  Copyright © 2017 thiago-Student. All rights reserved.
//

import Foundation

class Notificacao {
    var data_atualizacao, data_criacao: Date
    var notificacao_lida: Bool
    var autor: Usuario
    var descricao: String
    
    init (autor: Usuario, descricao: String) {
        data_atualizacao = Date()
        data_criacao = Date()
        self.autor = autor
        self.notificacao_lida = false
        self.descricao = descricao
    }
    
}
