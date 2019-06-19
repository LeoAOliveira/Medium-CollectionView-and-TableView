//
//  ViewController.swift
//  Medium: CollectionView and TableView
//
//  Created by Leonardo Oliveira on 17/06/19.
//  Copyright © 2019 Leonardo Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    // MARK: - Table View
    
    // Retorna o número de linhas para a tabela.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    // Provém um objeto de célula para cada linha.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Parte 1: Buscar uma célula do tipo apropriado.
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! TableViewCell
        
        // Parte 2: Configurar o conteúdo da célula.
        cell.titleLabel!.text = "Título"
        // cell.layer.backgroundColor = UIColor.white as! CGColor
        
        cell.collectionView.delegate = self
        cell.collectionView.dataSource = self
        
        return cell
    }
    
    // Retorna a altura das linhas da tabela.
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    
    // MARK: - Collection View
    
    // Retorna o número de itens para a collection.
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    // Provém um objeto de célula para cada item.
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Parte 1: Buscar uma célula do tipo apropriado.
        let cellCollection = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CollectionViewCell
        
        // Parte 2: Configurar o conteúdo da célula.
        cellCollection.collectionViewTextLabel!.text = "Texto"
        
        return cellCollection
    }
    
}

