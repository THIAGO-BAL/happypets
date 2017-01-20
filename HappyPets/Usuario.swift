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
    var nome: String
    var reputacao: String
    var nomeDaFoto: String
    
    var telefone: String
    var whatsapp: String
    var categoria: String
    var endereco: String
    
    var data_atualizacao: String
    var data_criacao: String
    
    init(login: String, senha: String, nome: String, reputacao: String, nomeDaFoto: String,
         telefone: String, whatsapp: String, categoria: String, endereco: String, data_atualizacao: String, data_criacao: String) {
        
        self.login = login
        self.senha = senha
        self.nome = nome
        self.reputacao = reputacao
        self.nomeDaFoto = nomeDaFoto
        
        self.telefone = reputacao
        self.whatsapp = whatsapp
        self.categoria = categoria
        self.endereco = endereco
        
        self.data_atualizacao = data_atualizacao
        self.data_criacao = data_criacao
    }
}

class UsuarioDAO {
    static func getInfo() -> Usuario {
        return Usuario(login: "ongsos", senha: "sos123", nome: "Ong SOS", reputacao: "Boa", nomeDaFoto: "sos", telefone: "(63) 3218 4345", whatsapp: "(63) 9 9244 7523", categoria: "Ong", endereco: "403 norte, alameda 3, n. 4", data_atualizacao: "NAN", data_criacao: "16/01/2017")
    }
    
    static func getAnimais() -> [Animal] {
        return [
            Animal(nome: "Bola", descricao: "Necessita de um dono cuidadoso", nomeDaFoto: "fotoBola", idade: 5, sexo: "Macho", porte: "Pequeno", especie: "Gato", usuario:"Ong SOS", telefone: "(63) 3218 4345", whatsapp:"(63) 9 9244 7523", endereco: "403 norte, alameda 3, n. 4" ),
            
            Animal(nome: "Barão", descricao: "Bem tratado. Procuramos um novo dono pra ele ", nomeDaFoto: "fotoBarao", idade: 5, sexo: "Macho", porte: "Grande", especie: "Cão", usuario:"Ong SOS", telefone: "(63) 3218 4345", whatsapp:"(63) 9 9244 7523", endereco: "403 norte, alameda 3, n. 4" ),
        ]
    }
}
