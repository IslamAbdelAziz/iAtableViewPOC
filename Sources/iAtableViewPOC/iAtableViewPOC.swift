import UIKit

public
class IAChatManager {
    
    var chatView: ChatVC2?
    
    public
    init(chatTableViewCellNib: UINib, identifier: String) {
        let bundle = Bundle(for: IAChatVC.self)
        let id = bundle.bundleIdentifier
        let bundle2 = Bundle(for: ChatVC2.self)
        let bundle3 = Bundle(for: IAChatVC.self)
//        chatView = IAChatVC(nibName: "IAChatVC", bundle: Bundle(identifier: "com.IA.iAtableViewPOC"))
        chatView = UIStoryboard(name: "ChatStoryboard", bundle: nil).instantiateViewController(identifier: "ChatVC2")
        chatView?.configureChatView(chatTableViewCellNib: chatTableViewCellNib, identifier: identifier)
    }
    
    public
    func getChatView() -> UIViewController? {
        return chatView
    }
}
