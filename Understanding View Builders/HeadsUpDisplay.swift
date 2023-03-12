import SwiftUI

struct HeadsUpDisplay: View {
    @State private var isShowingHUD = false
    var body: some View {
        NavigationView{
            ZStack{
                if isShowingHUD{
                    HUDView(isShowingHUD: $isShowingHUD){
                        Text("Heads Up Display")
                    }
                }
                ZStack{
                    Color(.green)
                        Button("Show HUD"){
                            isShowingHUD.toggle()
                        }
                    
                }
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
    @Binding var isShowingHUD: Bool
    init(isShowingHUD: Binding<Bool>,@ViewBuilder content: () -> Content) {
        self.content = content()
        self._isShowingHUD = isShowingHUD
    }
    
    var body: some View{
        VStack{
            MyConatiner(bgColor: Color(.secondarySystemBackground), fgColor: Color(.secondaryLabel)) {
                content
            }
            Spacer()
        }
        .zIndex(1) ///Making it the first view in a stack
        .transition(.move(edge: .top))
        .animation(.spring(),value: isShowingHUD)
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                withAnimation {
                    isShowingHUD = false
                }
            }
        }
    }
}
