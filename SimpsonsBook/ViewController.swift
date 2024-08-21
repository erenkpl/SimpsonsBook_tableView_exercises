//
//  ViewController.swift
//  SimpsonsBook
//
//  Created by Eren on 12.08.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var mySimpsons = [Simpson]()
    var choosenSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //Simpson objects
        let homer = Simpson(name: "Homer Simpson", job: "Nukleer Safety", image: UIImage(named: "Homer")!)
        let bart = Simpson(name: "Bart Simpson", job: "Student", image: UIImage(named: "Bart")!)
        let lisa = Simpson(name: "Lisa Simpson", job: "Student", image: UIImage(named: "Lisa")!)
        let marge = Simpson(name: "Marge Simpson", job: "Housewife", image: UIImage(named: "Marge")!)
        let maggie = Simpson(name: "Maggie Simpson", job: "Baby", image: UIImage(named: "Maggie")!)
        
        mySimpsons.append(homer)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(marge)
        mySimpsons.append(maggie)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC"{
            let destinationVC = segue.destination as! DetailVC
            destinationVC.selectedSimpson = choosenSimpson
        }
    }


}

