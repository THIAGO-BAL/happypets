//
//  Animal.swift
//  HappyPets
//
//  Created by Student on 1/17/17.
//  Copyright © 2017 thiago-Student. All rights reserved.
//

import Foundation

class Animal {
    var nome: String
    var especie: String
    var tutor: Usuario
    var foto: String
    
    init(nome: String, especie: String, tutor: Usuario, foto: String){
        self.nome = nome
        self.especie = especie
        self.foto = foto
        self.tutor = tutor
    }
}
