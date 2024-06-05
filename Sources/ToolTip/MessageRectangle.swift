import SwiftUI
import Constants

public struct MessageRectangle<Content: View>: View {
    //Constants for view
    private let constants: MessageRectangleConstants
    
    //Content in rectangle
    private let content: Content
    
    //Ovveride default init
    init(constants: MessageRectangleConstants,
         content: Content)
    {
        self.content = content
        self.constants = constants
    }
    
    //Private view's properties
    private let bounds = UIScreen.main.bounds
    
    //If _maxWidth & _maxHeight unspecified then we'll use the standard
    private var maxWidth: CGFloat {
        constants._maxWidth ?? bounds.width - 20
    }
    private var maxHeight: CGFloat {
        constants._maxHeight ?? bounds.height/4
    }
    
    //The rectangle will contain the specified content in the content variable
    public var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: constants.cornerRadius)
                .foregroundStyle(constants.color)
            content
                .frame(maxWidth: maxWidth - 12, maxHeight: maxHeight - 10)
                .padding(.vertical, 10)
                .padding(.horizontal, 12)
        }
        .frame(maxWidth: maxWidth,
               maxHeight: maxHeight)
        .fixedSize()
    }
}
