//
//  HomeHeader.swift
//  AppViagens
//
//  Created by Pablo Luiz on 29/06/22.
//

import UIKit

class HomeHeader: UIView {

    // MARK: - IBOutlets
    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var bannerImage: UIImageView!
    
    func viewConfig() {
        headerView.backgroundColor = UIColor(red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
    }
    
}
