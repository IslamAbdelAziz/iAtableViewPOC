//
//  IAChatVC.swift
//  
//
//  Created by iSlam AbdelAziz on 25/12/2023.
//

import UIKit

class IAChatVC: UIViewController {

    @IBOutlet weak var chatTV: UITableView!
        
    var chatCellType: IAChatCellProtocol.Type?
    func configureChatView(chatTableViewCell: IAChatCellProtocol.Type){
        chatCellType = chatTableViewCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        chatTV.register(chatCellType!.init().nib, forCellReuseIdentifier: chatCellType!.init().identifier)

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
