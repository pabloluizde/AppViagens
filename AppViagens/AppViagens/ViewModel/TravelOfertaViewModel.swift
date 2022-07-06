//
//  TravelOfertaViewModel.swift
//  AppViagens
//
//  Created by Pablo Luiz on 06/07/22.
//

import Foundation

class TravelOfertaViewModel: ViagemViewModel{
    var titleSession: String {
        return "Ofertas"
    }
    
    var type: ViagemViewModelType{
        return .ofertas
    }
    
    var viagens: [Viagem]
    
    var numbersLines: Int {
        return 1
    }
    
    //MARK: - Inicializador
    
    init(_ viagens: [Viagem]) {
        self.viagens = viagens
    }
    
    
}
