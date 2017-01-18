//
//  Informativo.swift
//  HappyPets
//
//  Created by Student on 1/17/17.
//  Copyright © 2017 thiago-Student. All rights reserved.
//

import Foundation

class Informativo {

    var data_criacao: Date
    var data_atualizacao: Date
    var autor: Usuario
    var descricao: String
    var comentarios: [Comentario]

    init(data_criacao: Date, data_atualizacao: Date, autor: Usuario, descricao: String) {
        self.data_criacao = data_criacao
        self.data_atualizacao = data_atualizacao
        self.autor = autor
        self.descricao = descricao
        self.comentarios = [Comentario]()
    }
}
