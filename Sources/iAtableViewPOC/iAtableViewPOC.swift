import UIKit

public
class IAChatManager {
    
    var chatView: IAChatVC?
    
    public
    init(chatTableViewCell: IAChatCellProtocol) {
        chatView = IAChatVC()
        chatView?.configureChatView(chatTableViewCell: chatTableViewCell)
    }
    
    public
    func getChatView() -> UIViewController? {
        return chatView
    }
}
