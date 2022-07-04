//
//  ViagemDestaqueViewModel.swift
//  AppViagens
//
//  Created by Pablo Luiz on 04/07/22.
//

import Foundation

class ViagemDestaqueViewModel: ViagemViewModel {
    
    var titleSession: String {
        return "Destaques"
    }
    
    var type: ViagemViewModelType {
        return .destaques
    }
    
    var viagens: [Viagem]
    
    var numbersLines: Int {
        return viagens.count
    }
    
    init(_ viagens: [Viagem]){
        self.viagens = viagens
    }
    
    
}
