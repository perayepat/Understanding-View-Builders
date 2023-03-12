
import SwiftUI

struct ContainerView: View {
    var body: some View {
        NavigationView{
            MyConatiner{
                Text("Container View")
                Text("This is the second line ")
                Button {
                    
                } label: {
                    Image(systemName: "star")
                }

            }
        }
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}

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
        .background(RoundedRectangle(cornerRadius: 10).fill(.green))
        .foregroundColor(.white)
        .shadow(radius: 5)
        
    }
}
