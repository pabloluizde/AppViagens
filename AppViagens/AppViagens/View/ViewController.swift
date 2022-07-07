//
//  ViewController.swift
//  AppViagens
//
//  Created by Pablo Luiz on 29/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var viagensTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        view.backgroundColor = UIColor(red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    func configTableView() {
        viagensTableView.register(UINib(nibName: "CellTableViewCell", bundle: nil), forCellReuseIdentifier: "CellTableViewCell")
        viagensTableView.register(UINib(nibName: "OfertTableViewCell", bundle: nil), forCellReuseIdentifier: "OfertTableViewCell")
        viagensTableView.dataSource = self
        viagensTableView.delegate = self
        
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sessaoDeViagens?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sessaoDeViagens?[section].numbersLines ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let viewModel = sessaoDeViagens?[indexPath.section]
        
        switch viewModel?.type {
        case .destaques:
            guard let cellViagem = tableView.dequeueReusableCell(withIdentifier: "CellTableViewCell") as? CellTableViewCell else {
                fatalError("erro to create Cell")
            }
            cellViagem.configCell(viewModel?.viagens[indexPath.row])
            return cellViagem
        case .ofertas:
            
            guard let ofertCell = tableView.dequeueReusableCell(withIdentifier: "OfertTableViewCell") as? OfertTableViewCell else {
                fatalError("erro to create Cell")
            }
            ofertCell.configCell(viewModel?.viagens)
            
            return ofertCell
            
        default:
            return UITableViewCell()
    
        }
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detalheController = DetalheViewController(nibName: "DetalheViewController", bundle: nil)
        navigationController?.pushViewController(detalheController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            let headerView = Bundle.main.loadNibNamed("HomeHeader", owner: self, options: nil)?.first as? HomeHeader
            headerView?.viewConfig()
            
            return headerView
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 300
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
}



// Tabelas:

// Numero de linhas

// line1 = pao
