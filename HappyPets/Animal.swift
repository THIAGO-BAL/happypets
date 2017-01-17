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
    
    init(nome: String, descricao: String, nomeDaFoto: String, idade: Int, sexo: String, porte: String, especie: String, usuario: String) {
        self.nome = nome
        self.descricao = descricao
        self.nomeDaFoto = nomeDaFoto
        
        self.idade = idade
        self.sexo = sexo
        self.porte = porte
        self.especie = especie
    }
}

class AnimalDAO {
    
    static func getLista() -> [Animal] {
        return [
            Animal(nome: "Animal 1", descricao: "Descrição do animal", nomeDaFoto: "cachorro1", idade: 4, sexo: "Macho", porte: "Grande", especie: "Cachorro"),
            Animal(nome: "Animal 2", descricao: "Descrição do segundo animal", nomeDaFoto: "gato1", idade: 2, sexo: "Fêmea", porte: "Pequeno", especie: "Gato"),
        ]
    }
}
