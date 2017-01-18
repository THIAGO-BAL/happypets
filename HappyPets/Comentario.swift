//
//  Comentario.swift
//  HappyPets
//
//  Created by Student on 1/18/17.
//  Copyright © 2017 thiago-Student. All rights reserved.
//

import Foundation

class Comentario {
    var autor: Usuario
    var texto: String
    
    init(autor: Usuario, texto: String) {
        self.autor = autor
        self.texto = texto
    }
}
