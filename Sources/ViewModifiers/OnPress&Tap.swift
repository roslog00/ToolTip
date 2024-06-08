import SwiftUI
import Constants

public struct PressModifier: ViewModifier {
    let pressStyle: PressStyle
    let action: () -> Void
    
    @ViewBuilder
    func body(content: Content) -> some View {
        switch pressStyle {
        case .tap:
            content
                .onTapGesture {
                    action()
                }
        case .longPress:
            content
                .onLongPressGesture {
                    action()
                }
        }
    }
}

