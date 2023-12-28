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
    var chatCellIdentifier: String = ""

    var listOfChatCellNib: [UINib] = []
    var listOfChatCellIdentifier: [String] = []

    func configureChatView(chatTableViewCellNib: UINib, identifier: String){
        chatCellNib = chatTableViewCellNib
        chatCellIdentifier = identifier
    }
    
    func configureChatView(listOfCellsNib: [UINib], listOfIdentifiers: [String]){
        listOfChatCellNib = listOfCellsNib
        listOfChatCellIdentifier = listOfIdentifiers
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        guard listOfChatCellNib.count == listOfChatCellIdentifier.count, listOfChatCellNib.count > 0 else { return }
        
        for i in 0 ... listOfChatCellNib.count {
            chatTV.register(listOfChatCellNib[i], forCellReuseIdentifier: listOfChatCellIdentifier[i])
        }

    }
    

}

extension IAChatVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: listOfChatCellIdentifier[0], for: indexPath) as? IAChatCellProtocol
            cell?.iAConfigure()
            return cell ?? UITableViewCell()

        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: listOfChatCellIdentifier[1], for: indexPath) as? IAChatCellProtocol
            cell?.iAConfigure()
            return cell ?? UITableViewCell()

        }
    }
    
    
}

extension IAChatVC: UITableViewDelegate{
    
}
