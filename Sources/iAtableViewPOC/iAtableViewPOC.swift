import UIKit

public
class ChatManager {
    
    var chatView: IAChatVC?
    
    init(chatTableViewCell: IAChatCellProtocol) {
        chatView = IAChatVC(chatTableViewCell: chatTableViewCell)
    }
    
    public
    func getChatView() -> UIViewController? {
        return chatView
    }
}
