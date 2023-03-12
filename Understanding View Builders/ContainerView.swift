
import SwiftUI

struct ContainerView: View {
    var body: some View {
        NavigationView{
            VStack{
                MyConatiner{
                    Text("Container View")
                    Text("This is the second line ")
                    Button {
                        
                    } label: {
                        Image(systemName: "star")
                    }
                }
                MyConatiner(bgColor: .red, fgColor: .yellow) {
                    Text("Second Container")
                    Rectangle()
                        .frame(width: 200, height: 50)
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


