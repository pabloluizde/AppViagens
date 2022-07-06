//
//  OfertTableViewCell.swift
//  AppViagens
//
//  Created by Pablo Luiz on 06/07/22.
//

import UIKit

class OfertTableViewCell: UITableViewCell {

    //MARK: -IBOutlets
    
    @IBOutlet var travelImages: [UIImageView]!
    @IBOutlet var titleTravel: [UILabel]!
    @IBOutlet var subtitleTravel: [UILabel]!
    @IBOutlet var totalPriceTravel: [UILabel]!
    @IBOutlet var fundoViews: [UIView]!
    @IBOutlet var priceTravel: [UILabel]!
    
    func configCell(_ viagens: [Viagem]?){
        guard let travelList = viagens else {
            return
        }
        for i in 0..<travelList.count {
            setOutlets(i, viagem: travelList[i])
        }
        
        fundoViews.forEach { viewAtual in
            viewAtual.addSombra()
        }
    }
    
    func setOutlets(_ index: Int, viagem: Viagem) {
        let imageOutlets = travelImages[index]
        imageOutlets.image = UIImage(named: viagem.asset)
        
        let titleOutlets = titleTravel[index]
        titleOutlets.text = viagem.titulo
        
        let subtitleOutlets = subtitleTravel[index]
        subtitleOutlets.text = viagem.subtitulo
        
        let priceOutlets = totalPriceTravel[index]
        priceOutlets.text = "A partir de R$ \(viagem.precoSemDesconto)"
        
        let priceDiscountOutlets = priceTravel[index]
        priceDiscountOutlets.text = "R$ \(viagem.preco)"
    }
    
    
    
}
