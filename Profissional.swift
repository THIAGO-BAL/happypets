//
//  Profissional.swift
//  HappyPets
//
//  Created by Student on 1/19/17.
//  Copyright © 2017 thiago-Student. All rights reserved.
//

import Foundation

class Profissional {
    
    var imagem: String
    var nome: String
    var descricao: String
    var telefone: String
    var email: String
    var endereco: String
    
    var latitude: Double
    var longitude: Double
    
    init(imagem: String, nome: String, descricao: String, telefone: String, email: String, endereco: String, latitude: Double, longitude: Double) {
        self.imagem = imagem
        self.nome = nome
        self.descricao = descricao
        self.telefone = telefone
        self.email = email
        self.endereco = endereco
        
        self.latitude = latitude
        self.longitude = longitude
    }
}

class ProfissionalDAO {
    
    static func getLista() -> [Profissional] {
        return [
            Profissional(imagem: "fotoPlaneta", nome: "Planeta Animal", descricao: "Banho, Tosa, Vacinas, Medicamentos, Rações e Taxi Dog", telefone: "(63) 3214-5476", email: "Não Tem", endereco: "806 Sul Av. LO-19 Lote 02 - Plano diretor Sul - Palmas TO", latitude: -10.230381, longitude: -48.322954),
            
            Profissional(imagem: "fotoSaudade", nome: "Saúde Animal Veterinaria e Pet Shop", descricao: "Vacinas, Banho, Tosa, Eletrocardiograma, Exames e Raões", telefone: "(63) 3214-1461", email: "anapera2001@hotmail.com", endereco: "403 Sul Av. LO-09 Lote 07 Sala 02 - Plano diretor Sul - Palmas TO", latitude: -10.204487, longitude: -48.340629),
            
            Profissional(imagem: "fotoLov", nome: "Lov Pet Store", descricao: "Banho, Tosa e Rações", telefone: "(63) 3215-5379", email: "Não Tem", endereco: "R. SE 07, 32 104 Sul  - Plano diretor Sul - Palmas TO", latitude: -10.189401, longitude: -48.326929),
            
            Profissional(imagem: "fotoGolden", nome: "Pet Golden", descricao: "Pet Shop, Banho, Tosa, Vacinas e Clínica Veterinária", telefone: "(63) 3225-1874", email: "petgoldenpmw@gmail.com", endereco: "Quadra 104 Sul Rua SE 11 Lote 01 Sala 15 e 16 - Plano diretor Sul - Palmas TO", latitude: -10.190948, longitude: -48.329657),
            
            Profissional(imagem: "fotoArca", nome: "Arca dos Bichos", descricao: "Clínica veterinária e Pet Shop, com internação, Banho e Tosa, TaxiDog, Vacinas, Exames laboratoriais e de imagem", telefone: "(63) 3028-2462", email: "Não Tem", endereco: "104 Sul Rua SE 07 Numero 08 - Plano diretor Sul - Palmas TO", latitude: -10.189364, longitude: -48.329471),

        ]
    }
}
