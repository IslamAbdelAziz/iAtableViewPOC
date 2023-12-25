//
//  
//
//  Created by iSlam AbdelAziz on 24/12/2023.
//

import UIKit

public
protocol IAChatCellProtocol: UITableViewCell {
    func iAConfigure()
}


public
extension UITableViewCell{
    var identifier: String {
        return String(describing: self)
    }
    
    var nib : UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
}
