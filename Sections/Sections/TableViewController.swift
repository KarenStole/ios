//
//  TableViewController.swift
//  Sections
//
//  Created by Administrador on 11/4/19.
//  Copyright © 2019 UCUDAL. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var items = ["Shopping", "Food", "Sports"]
    
    var item0 : [String] = ["TV", "Calzado"]
    var item1 : [String] = ["Pizza", "Ensalada"]
    var item2 : [String] = ["Nataciòn", "Basket"]
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return items[section]
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return items.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if (section == 0){
            return item0.count
        }
        if (section == 1){
            return item1.count
        }
        if (section == 2){
            return item2.count
        }
        else{
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"Cell") as! TableViewCell
        
        if(indexPath.section==0){
            cell.textLabel?.text = item0[indexPath.row]
        }
        if(indexPath.section==1){
            cell.textLabel?.text = item0[indexPath.row]
        }
        if(indexPath.section==2){
            cell.textLabel?.text = item0[indexPath.row]
        }
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellCollectionView", for: indexPath) as! CollectionViewCell
            cell.collectionLabel.text = items[indexPath.item]
            
            return cell
        }
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
            let alerta = UIAlertController(title: "Agregar item",
                                           message: "",
                                           preferredStyle: UIAlertControllerStyle.alert)
            
            alerta.addTextField(configurationHandler: { (_ textField: UITextField) -> Void in
                textField.placeholder = "¿Que deseas agregar?"
            })
            
            alerta.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                
                if let name = alerta.textFields?.first?.text {
                    print("Your name: \(name)")
                }
            }))
            
            
        }
    }



