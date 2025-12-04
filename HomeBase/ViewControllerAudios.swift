//
//  ViewControllerAudios.swift
//  HomeBase
//
//  Created by Ezra Degafe on 12/3/25.
//

import UIKit

class ViewControllerAudios: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   
    @IBOutlet weak var tableViewAudio: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewAudio.delegate = self
        tableViewAudio.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "audioCell") ?? UITableViewCell(style: .subtitle, reuseIdentifier: "audioCell")
        cell.textLabel?.text = "Recording \(indexPath.row + 1)"
        cell.detailTextLabel?.text = "0:30" // placeholder duration
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }


}
