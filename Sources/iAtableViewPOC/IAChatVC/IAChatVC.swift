//
//  IAChatVC.swift
//  
//
//  Created by iSlam AbdelAziz on 25/12/2023.
//

import UIKit

class IAChatVC: UIViewController {

    @IBOutlet weak var chatTV: UITableView!
        
    var chatCellNib: UINib?
    var chatCellIdentifier: String?

    func configureChatView(chatTableViewCellNib: UINib, identifier: String){
        chatCellNib = chatTableViewCellNib
        chatCellIdentifier = identifier
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        guard let nib = chatCellNib, let id = chatCellIdentifier else { return }
        chatTV.register(nib, forCellReuseIdentifier: id)

    }
    

}

extension IAChatVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}

extension IAChatVC: UITableViewDelegate{
    
}
