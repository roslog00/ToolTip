import SwiftUI
import Constants

public struct MessageRectangle<Content: View>: View {
    let constants: MessageRectangleConstants  ///Constants
    let content: Content  ///Content in rectangle
    
    ///Private view's properties
    private let bounds = UIScreen.main.bounds
    @State var size: CGSize = .zero
    
    ///If _maxWidth & _maxHeight unspecified then we'll use the standard
    private var maxWidth: CGFloat {
        constants._maxWidth ?? (size == .zero ? bounds.width : size.width + 12)
    }
    private var maxHeight: CGFloat {
        constants._maxHeight ?? (size == .zero ? bounds.height : size.height + 10)
    }
    
    ///The rectangle will contain the specified content in the content variable
    public var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: constants.cornerRadius)
                .foregroundStyle(constants.color)
            content
                .background {
                    GeometryReader { geo in
                        Color.clear
                            .onAppear {
                                size = geo.size
                            }
                    }
                }
        }
        .frame(maxWidth: maxWidth,
               maxHeight: maxHeight)
    }
}
