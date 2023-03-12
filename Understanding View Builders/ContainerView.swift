
import SwiftUI

struct ContainerView: View {
    var body: some View {
        NavigationView{
            MyConatiner{
                Text("Container View")
                Text("This is the second line ")
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
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View{
        VStack{
            content
        }
    }
}
