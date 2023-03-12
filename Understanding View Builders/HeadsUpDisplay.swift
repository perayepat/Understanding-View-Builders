import SwiftUI

struct HeadsUpDisplay: View {
    var body: some View {
        NavigationView{
            HUDView {
                Text("Heads Up Display")
            }
                    .navigationTitle("Heads Up Display")
            
        }
    }
}

struct HeadsUpDisplay_Previews: PreviewProvider {
    static var previews: some View {
        HeadsUpDisplay()
    }
}


struct HUDView<Content: View>: View{
    let content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View{
        VStack{
            MyConatiner(bgColor: Color(.secondarySystemBackground), fgColor: Color(.secondaryLabel)) {
                content
            }
            Spacer()
        }
    }
}
