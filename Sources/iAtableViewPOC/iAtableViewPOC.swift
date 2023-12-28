import UIKit
import SwiftUI

public
class IAChatManager {
    
    var chatView: IAChatVC?
//    var chatView2: ChatVC2?

    public
    init(chatTableViewCellNib: UINib, identifier: String) {
        chatView = IAChatVC(nibName: "IAChatVC", bundle: .module)
        chatView?.configureChatView(chatTableViewCellNib: chatTableViewCellNib, identifier: identifier)
    }
        
    public
    init(arrayOfNibFiles: [UINib], arrayOfIdentifers: [String]) {
        chatView = IAChatVC(nibName: "IAChatVC", bundle: .module)
//        chatView?.configureChatView(chatTableViewCellNib: chatTableViewCellNib, identifier: identifier)
        chatView?.configureChatView(listOfCellsNib: arrayOfNibFiles, listOfIdentifiers: arrayOfIdentifers)
    }
        
    public
    func getChatView() -> UIViewController? {
        return chatView
    }
}
