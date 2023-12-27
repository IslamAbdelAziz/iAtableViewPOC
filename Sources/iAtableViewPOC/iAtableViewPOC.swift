import UIKit
import SwiftUI

public
class IAChatManager {
    
    var chatView: IAChatVC?
    var chatView2: ChatVC2?
    var chatSwiftUIView: ChatSwiftUI?

    public
    init(chatTableViewCellNib: UINib, identifier: String) {
        chatView = IAChatVC(nibName: "IAChatVC", bundle: .module)
        chatView = UIStoryboard(name: "ChatStoryboard", bundle: .module).instantiateViewController(identifier: "ChatVC2")
        chatView?.configureChatView(chatTableViewCellNib: chatTableViewCellNib, identifier: identifier)
    }
    
    public
    init(cell: any View) {
        
    }
    
    public
    func getChatView() -> UIViewController? {
        return chatView
    }
    
    public
    func getChatSwiftUIView() -> (any View)? {
        return chatSwiftUIView
    }
    
}
