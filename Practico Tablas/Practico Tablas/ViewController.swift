//
//  ViewController.swift
//  Practico Tablas
//
//  Created by Administrador on 4/4/19.
//  Copyright © 2019 UCUDAL. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var informationField: UITextField!
    
    var items : [String] = ["Shopping", "Work", "Clothe", "Fitness", "Food"]
    
    @IBAction func addInformation(_ sender: Any) {
        insertCell()
    }
    func insertCell(){
        items.append(informationField.text!)
        let indexPath = IndexPath(row: items.count - 1, section: 0 )
        tableView.beginUpdates()
        tableView.insertRows(at: [indexPath], with: .automatic)
        tableView.endUpdates()
        informationField.text=""
        view.endEditing(true)
    }
    

    //SECTIONS
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return items.count
    }
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return self.items[section]
        
    }
    //TABLE VIEW
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"var") as! TableCell
        cell.textLabel?.text  = items[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingstyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingstyle == .delete {
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            items.remove(at: indexPath.row)
            tableView.endUpdates()
            
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath)
    {
        if let cell = tableView.cellForRow(at: indexPath as IndexPath) {
            if cell.accessoryType == .checkmark
            {
                cell.accessoryType = .none
            }
            else
            {
                cell.accessoryType = .checkmark
            }
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark;
    }
    
    //COLLECTION VIEW
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.cellCollectionView.text = items[indexPath.item]
        
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

