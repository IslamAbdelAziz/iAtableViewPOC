//
//  ChatSwiftUI.swift
//
//
//  Created by iSlam AbdelAziz on 27/12/2023.
//

import SwiftUI

struct ChatSwiftUI: View, ChatSwiftUIType {
    @State private var cell: CellSwiftUI
    init(cellType: CellSwiftUI) {
        cell = cellType
    }
    var body: some View {
        List {
            cell
            CellSwiftUI()
            CellSwiftUI()
            CellSwiftUI()
        }
    }
    
    func confiureCell(cell: any View){
        
    }
}

#Preview {
    ChatSwiftUI(cellType: CellSwiftUI())
}

public
protocol ChatSwiftUIType: View{
    
}

