import SwiftUI
import Components
import Constants

struct ToolTipView<Content: View>: View {
    //Content & Constants For Message Rectangle
    fileprivate let content: Content
    fileprivate let rectangleConstants: MessageRectangleConstants
    
    //Constants for Cursor View
    fileprivate let cursorConstants: CursorConstants
    
    //Alignment for positioning cursor and rectangle
    internal let cursorAlignment: Alignment
    
    //Ovveride default init
    init(cursorAlignment: Alignment,
         cursorConstants: CursorConstants,
         rectangleConstants: MessageRectangleConstants,
         @ViewBuilder content: () -> Content)
    {
        self.cursorAlignment = cursorAlignment
        self.cursorConstants = cursorConstants
        self.rectangleConstants = rectangleConstants
        self.content = content()
    }
    
    var body: some View { tooltip }
}

//MARK: This property collects all cursor and rectangle positioning data and arranges them
fileprivate extension ToolTipView {
    var tooltip: some View {
        ///Properties for correct positioning of the rectangle with the cursor
        let onTop = positionConstructor()
        let layout = layoutConstructor()
        let angle = angleConstructor()
        let edge = edgeConstructor()
        
        ///Rectangle
        let rectangle = MessageRectangle(constants: rectangleConstants,
                                         content: content)
        return layout {
            if onTop {
                rectangle
            }
            Cursor()
                .frame(width: cursorConstants.width, height: cursorConstants.height)
                .rotationEffect(angle)
                .padding()
            if !onTop {
                rectangle
            }
        }
    }
}

