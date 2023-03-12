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

struct MyContainer_Previews: PreviewProvider{
    static var previews: some View{
        MyConatiner{
            Text("Hello")
            Text("World")
        }
    }
}
