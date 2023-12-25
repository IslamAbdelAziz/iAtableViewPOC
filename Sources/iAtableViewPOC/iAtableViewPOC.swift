import UIKit

public
class IAChatManager {
    
    var chatView: IAChatVC?
    
    public
    init(chatTableViewCell: IAChatCellProtocol) {
        chatView = IAChatVC(chatTableViewCell: chatTableViewCell)
    }
    
    public
    func getChatView() -> UIViewController? {
        return chatView
    }
}
