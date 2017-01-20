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
            
            Animal(nome: "Adam", descricao: "Cão dócio. Necessita de cuidados urgentes", nomeDaFoto: "fotoAdam", idade: 4, sexo: "Macho", porte: "Grande", especie: "Cachorro", usuario:"Ana", telefone: "6399416747", whatsapp:"6399416747", endereco: "Qd 304 norte, alameda 01" ),
            
            Animal(nome: "Minie", descricao: "Esta um pouco magra e desidratada", nomeDaFoto: "fotoMinie", idade: 2, sexo: "Fêmea", porte: "Pequeno", especie: "Gata", usuario:"Claudinha", telefone: "63981412247", whatsapp:"63981412247", endereco: "Qd 208 Sul, alameda 20" ),
            
            Animal(nome: "Bola", descricao: "Necessita de um dono cuidadoso", nomeDaFoto: "fotoBola", idade: 5, sexo: "Macho", porte: "Pequeno", especie: "Gato", usuario:"Ong SOS", telefone: "(63) 3218 4345", whatsapp:"(63) 9 9244 7523", endereco: "403 norte, alameda 3, n. 4" ),
            
            Animal(nome: "Barão", descricao: "Bem tratado. Procuramos um novo dono pra ele ", nomeDaFoto: "fotoBarao", idade: 5, sexo: "Macho", porte: "Grande", especie: "Cão", usuario:"Ong SOS", telefone: "(63) 3218 4345", whatsapp:"(63) 9 9244 7523", endereco: "403 norte, alameda 3, n. 4" ),
            
            Animal(nome: "Dori", descricao: "Precisa de um novo dono. Vamos mudar de país", nomeDaFoto: "fotoDori", idade: 2, sexo: "Fêmea", porte: "Pequeno", especie: "Peixe", usuario:"Familia Lula", telefone: "63984822225", whatsapp:"63984822225", endereco: "Qd 104 Sul, alameda 7" ),
            
            Animal(nome: "Desconhecido", descricao: "Cão abandonado", nomeDaFoto: "fotoDesconhecido", idade: 12, sexo: "Macho", porte: "Pequeno", especie: "Cão", usuario:"Lili", telefone: "(63) 9 8456 2200", whatsapp:"(63) 9 8444 2200", endereco: "Qd 404 Sul, alameda 3" ),
            
            Animal(nome: "Desconhecido", descricao: "Gato abandonado", nomeDaFoto: "fotoDesconhecido2", idade: 12, sexo: "Macho", porte: "Pequeno", especie: "Gato", usuario:"Lili", telefone: "(63) 9 8456 2200", whatsapp:"(63) 9 844 42200", endereco: "Qd 404 Sul, alameda 3" ),
            
            Animal(nome: "Dino", descricao: "Procuro um novo dono pro Dino", nomeDaFoto: "fotoDino", idade: 3, sexo: "Macho", porte: "Medio", especie: "Coelho", usuario:"Claudinha", telefone: "(63) 9 8141 2247", whatsapp:"(63) 9 8141 2247", endereco: "Qd 208 Sul, alameda 20" ),
            
        ]
    }
}
