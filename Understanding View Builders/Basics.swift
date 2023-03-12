import SwiftUI

struct Basics: View {
    @State private var isSquare = true
    var body: some View {
        NavigationView {
            Button {
                isSquare.toggle()
            } label: {
            squareOrCircle()
            }
            .navigationTitle("The basics")

        }
    }
}

/// Small veiw structs design principles
extension Basics{
    func squareOrCircle() -> some View{
        Group{
            if isSquare{
                RoundedRectangle(cornerRadius: 10)
                    .fill(.green)
                    .frame(width: 100, height: 100)
            } else {
                Circle()
                    .fill(.red)
                    .frame(width: 100)
            }
        }
    }
}

struct Basics_Previews: PreviewProvider {
    static var previews: some View {
        Basics()
    }
}
