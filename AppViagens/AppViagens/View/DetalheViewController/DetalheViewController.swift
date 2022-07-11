//
//  DetalheViewController.swift
//  AppViagens
//
//  Created by Pablo Luiz on 07/07/22.
//

import UIKit

class DetalheViewController: UIViewController {
    
    // MARK: - IBOutles
    
    @IBOutlet weak var imageDetalhes: UIImageView!
    @IBOutlet weak var titleTravelDetalhes: UILabel!
    @IBOutlet weak var subtitleDetalhes: UILabel!
    
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Actions
    
    @IBAction func botaoRetornar(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
