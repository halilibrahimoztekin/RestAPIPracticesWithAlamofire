//
//  ViewController.swift
//  RestAPIPracticesWithAlamofire
//
//  Created by Halil İbrahim Öztekin on 3.11.2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
    
    
    @IBOutlet var tableView: UITableView!
    let urlString = "https://www.hackingwithswift.com/samples/petitions-1.json"
        var petitions = [Petition]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        petitions = WebServices().getData(urlString: urlString)
        tableView.reloadData()
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CellTableViewCell
        var petition = petitions[indexPath.row]
        cell.title.text = petition.title
        cell.body.text = petition.body
        cell.signature.text = String(petition.signatureCount)
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petitions.count
    }

}

