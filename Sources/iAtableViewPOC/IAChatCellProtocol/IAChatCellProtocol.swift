//
//  
//
//  Created by iSlam AbdelAziz on 24/12/2023.
//

import UIKit

public
protocol IAChatCellProtocol: UITableViewCell {
    var cellIdentifier: String { get set }
    var cellNib: UINib { get set }
    func iAConfigure()
}
