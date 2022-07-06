//
//  CellTableViewCell.swift
//  AppViagens
//
//  Created by Pablo Luiz on 04/07/22.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    
    @IBOutlet weak var backgroundViewCell: UIView!
    
    @IBOutlet weak var imageTravel: UIImageView!
    
    @IBOutlet weak var titleTravel: UILabel!
    @IBOutlet weak var subtileTravel: UILabel!
    @IBOutlet weak var daysTravel: UILabel!
    @IBOutlet weak var priceTotalTravel: UILabel!
    @IBOutlet weak var priceDiscountTravel: UILabel!
    @IBOutlet weak var statsTravel: UILabel!
    
    
    func configCell(_ viagem: Viagem?){
        imageTravel.image = UIImage(named: viagem?.asset ?? "")
        titleTravel.text = viagem?.titulo
        subtileTravel.text = viagem?.subtitulo
        priceDiscountTravel.text = "R$ \(viagem?.preco ?? 0)"
        
        let atributoString: NSMutableAttributedString = NSMutableAttributedString(string: "R$ \(viagem?.precoSemDesconto ?? 0)")
        
        atributoString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 1, range: NSMakeRange(0, atributoString.length))
        priceDiscountTravel.attributedText = atributoString
        
        if let numberDays = viagem?.diaria, let numberPeople = viagem?.hospedes {
            let days = numberDays == 1 ? "Diária" : "Diárias"
            let people = numberPeople == 1 ? "Pessoa" : "Pessoas"
            
            daysTravel.text = "\(numberDays) \(days) - \(numberPeople) \(people)"
            
        }
        DispatchQueue.main.async {
            self.backgroundViewCell.addSombra()
        }
    }
    
}
