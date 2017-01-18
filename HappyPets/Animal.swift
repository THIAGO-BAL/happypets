//
//  Animal.swift
//  HappyPets
//
//  Created by Student on 1/17/17.
//  Copyright © 2017 thiago-Student. All rights reserved.
//

import Foundation

class Animal {
    
    let nome: String
    let descricao: String
    let nomeDaFoto: String
    
    let idade: Int
    let sexo: String
    let porte: String
    let especie: String
    
    let usuario: String
    let telefone: String
    let whatsapp: String
    let endereco: String
    
    init(nome: String, descricao: String, nomeDaFoto: String, idade: Int, sexo: String, porte: String, especie: String, usuario: String, telefone:String, whatsapp: String, endereco: String) {
        self.nome = nome
        self.descricao = descricao
        self.nomeDaFoto = nomeDaFoto
        
        self.idade = idade
        self.sexo = sexo
        self.porte = porte
        self.especie = especie
        
        self.usuario = usuario
        self.telefone = telefone
        self.whatsapp = whatsapp
        self.endereco = endereco
    
    }
}

class AnimalDAO {
    
    static func getLista() -> [Animal] {
        return [
            Animal(nome: "Animal 1", descricao: "Descrição do animal", nomeDaFoto: "animalgenerico", idade: 4, sexo: "Macho", porte: "Grande", especie: "Cachorro", usuario:"fulano1", telefone: "6384416747", whatsapp:"6384416747", endereco: "avenue7" ),
            Animal(nome: "Animal 2", descricao: "Descrição do segundo animal", nomeDaFoto: "animalgenerico", idade: 2, sexo: "Fêmea", porte: "Pequeno", especie: "Gato", usuario:"fulano1", telefone: "6384416747", whatsapp:"6384416747", endereco: "avenue7" ),
        ]
    }
}
