//
//  ViagemViewModel.swift
//  AppViagens
//
//  Created by Pablo Luiz on 04/07/22.
//

import Foundation

enum ViagemViewModelType: String {
    case destaques
    case ofertas
    case internacionais
}

protocol ViagemViewModel {
    var titleSession: String {get}
    var type: ViagemViewModelType {get}
    var viagens: [Viagem] {get set}
    var numbersLines: Int {get}
}
