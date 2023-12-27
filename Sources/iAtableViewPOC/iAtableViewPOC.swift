import UIKit

public
class IAChatManager {
    
    var chatView: IAChatVC?
    
    public
    init(chatTableViewCellNib: UINib, identifier: String) {
        chatView = IAChatVC(nibName: "IAChatVC", bundle: Bundle(identifier: "com.iA.iAtableViewPOC"))
        chatView?.configureChatView(chatTableViewCellNib: chatTableViewCellNib, identifier: identifier)
    }
    
    public
    func getChatView() -> UIViewController? {
        return chatView
    }
}
