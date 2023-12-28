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
    
    
    var arrayOfDummyMsgsForDemo: [String] = [
        "مرحباً 👋,\nحياكم الله أستاذ محمد",
        "مرحباً استاذ عزيز",
        "ممكن تفاصيل أكتر عن الشقة",
        " اه طبعاً \nهبعتلك كل التفاصيل",
        "٣ غرف -\n ٣ حمامات -\n بلكونة -\n مفروش بالكامل \n- ٢٠٠ متر",
        "بأكد إن النهاردة ميعاد المعاينة",
        "اه منتظرك في الميعاد",
        "مرحباً 👋,\nحياكم الله أستاذ محمد",
        "٣ غرف -\n ٣ حمامات -\n بلكونة -\n مفروش بالكامل \n- ٢٠٠ متر",
        "ممكن تفاصيل أكتر عن الشقة",
        " اه طبعاً \nهبعتلك كل التفاصيل",
        "٣ غرف -\n ٣ حمامات -\n بلكونة -\n مفروش بالكامل \n- ٢٠٠ متر",
        "بأكد إن النهاردة ميعاد المعاينة",
        "اه منتظرك في الميعاد",
        "مرحباً 👋,\nحياكم الله أستاذ محمد",
        "٣ غرف -\n ٣ حمامات -\n بلكونة -\n مفروش بالكامل \n- ٢٠٠ متر",
        "ممكن تفاصيل أكتر عن الشقة",
        " اه طبعاً \nهبعتلك كل التفاصيل",
        "٣ غرف - ٣ حمامات - بلكونة - مفروش بالكامل - ٢٠٠ متر",
        "بأكد إن النهاردة ميعاد المعاينة",
        "اه منتظرك في الميعاد",
        "مرحباً 👋,\nحياكم الله أستاذ محمد",
        "مرحباً استاذ عزيز",
        "ممكن تفاصيل أكتر عن الشقة",
        " اه طبعاً \nهبعتلك كل التفاصيل",
        "٣ غرف - ٣ حمامات - بلكونة - مفروش بالكامل - ٢٠٠ متر",
        "بأكد إن النهاردة ميعاد المعاينة",
        "اه منتظرك في الميعاد"
    ]

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
        
        for i in 0 ... listOfChatCellNib.count - 1 {
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
            cell?.iAConfigure(text: arrayOfDummyMsgsForDemo[Int.random(in: 0..<26)])
            return cell ?? UITableViewCell()

        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: listOfChatCellIdentifier[1], for: indexPath) as? IAChatCellProtocol
            cell?.iAConfigure(text: arrayOfDummyMsgsForDemo[Int.random(in: 0..<26)])
            return cell ?? UITableViewCell()

        }
    }
    
    
}

extension IAChatVC: UITableViewDelegate{
    
}
