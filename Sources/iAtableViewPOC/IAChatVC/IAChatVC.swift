//
//  IAChatVC.swift
//  
//
//  Created by iSlam AbdelAziz on 25/12/2023.
//

import UIKit

class IAChatVC: UIViewController {

    @IBOutlet weak var chatTV: UITableView!
        
    func configureChatView(chatTableViewCell: IAChatCellProtocol){
        chatTV.register(chatTableViewCell.nib, forCellReuseIdentifier: chatTableViewCell.identifier)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
