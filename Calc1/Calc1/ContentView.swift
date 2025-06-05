import SwiftUI

struct ContentView: View {

     @State private var display = "0"

     let buttons: [[CalculatorButton]] = [

         [.clear, .plusMinus, .percent, .operation("÷")],

         [.digit("7"), .digit("8"), .digit("9"), .operation("×")],

         [.digit("4"), .digit("5"), .digit("6"), .operation("−")],

         [.digit("1"), .digit("2"), .digit("3"), .operation("+")],

         [.digit("0"), .dot, .operation("=")]

     ]

     var body: some View {

         GeometryReader { geometry in

             VStack(spacing: 0) {

                 Spacer()

                 // Display

                 HStack {

                     Spacer()

                     Text(display)

                         .font(.system(size: 64, weight: .light))

                         .foregroundColor(.black)

                         .lineLimit(1)

                         .padding()

                 }

                 // Button Grid

                 ForEach(buttons, id: \.self) { row in

                     HStack(spacing: 0) {

                         ForEach(row, id: \.self) { button in

                             Button(action: {

                                 print(button.title)

                             }) {

                                 Text(button.title)

                                     .font(.system(size: 28))

                                     .frame(

                                         width: self.buttonWidth(button: button, totalWidth: geometry.size.width),

                                         height: self.buttonHeight(totalWidth: geometry.size.width)

                                     )

                                     .background(button.backgroundColor)

                                     .foregroundColor(.black)

                             }

                             .border(Color.white, width: 0.5)

                         }

                     }

                 }

             }

             .padding(.bottom, 8)

             .padding(.horizontal, 4)

         }

     }

     private func buttonWidth(button: CalculatorButton, totalWidth: CGFloat) -> CGFloat {

         let columns: CGFloat = 4

         let buttonSize = totalWidth / columns

         return button == .digit("0") ? buttonSize * 2 : buttonSize

     }
 
    private func buttonHeight(totalWidth: CGFloat) -> CGFloat {

         let columns: CGFloat = 4

         return totalWidth / columns

     }

 }
 
enum CalculatorButton: Hashable {

     case digit(String)

     case operation(String)

     case clear, plusMinus, percent, dot, equal

     var title: String {

         switch self {

         case .digit(let value): return value

         case .operation(let op): return op

         case .clear: return "Clear"

         case .plusMinus: return "+/-"

         case .percent: return "%"

         case .dot: return "."

         case .equal: return "="

         }

     }

     var backgroundColor: Color {

         switch self {

         case .clear, .plusMinus, .percent:

             return Color(.darkGray) // top-left three buttons

         case .operation:

             return Color.red

         default:

             return Color(.systemGray4) // digits, dot, equal

         }

     }

 }
 
#Preview {

     ContentView()

 }
