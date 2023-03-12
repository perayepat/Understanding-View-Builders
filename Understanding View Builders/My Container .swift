//
//  My Container .swift
//  Understanding View Builders
//
//  Created by Pat on 2023/03/12.
//

import SwiftUI

//MARK: - Container View
struct MyConatiner<Content: View>: View{
    let content: Content
    let bgColor: Color
    let fgColor: Color
    
    init(bgColor: Color = .green, fgColor: Color = .white,@ViewBuilder content: () -> Content) {
        self.content = content()
        self.bgColor = bgColor
        self.fgColor = fgColor
    }
    
    var body: some View{
        VStack{
            content
                .padding(5)
        }
        .background(RoundedRectangle(cornerRadius: 10).fill(bgColor))
        .foregroundColor(fgColor)
        .shadow(radius: 5)
        
    }
}
