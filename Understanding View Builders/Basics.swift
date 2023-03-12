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
   @ViewBuilder func squareOrCircle() -> some View{
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

//MARK: - Using a view as a seperate function
struct SquareOrCirle: View{
    @Binding var isSquare: Bool
    var body: some View{
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

struct Basics_Previews: PreviewProvider {
    static var previews: some View {
        Basics()
    }
}
