import SwiftUI
import Constants
import Components
import ViewModifiers

struct ToolTipView<Content: View>: View {
    ///Content & Constants For Message Rectangle
    let content: Content
    let rectangleConstants: MessageRectangleConstants
    
    ///Constants for Cursor View
    let cursorConstants: CursorConstants
    
    ///Alignment for positioning cursor and rectangle
    let tooltipAlignment: Alignment
    
    var body: some View { tooltip }
}

//MARK: - ToolTip
fileprivate extension ToolTipView {
    ///This property collects all cursor and rectangle positioning data and arranges them
    var tooltip: some View {
        ///Properties for correct positioning of the rectangle with the cursor
        let onTop = positionConstructor()
        let layout = layoutConstructor()
        let angle = angleConstructor()
        let edge = edgeConstructor()
        
        ///Rectangle
        let rectangle = MessageRectangle(constants: rectangleConstants,
                                         content: content)
        ///Cursor
        let cursor = Cursor()
            .foregroundStyle(rectangleConstants.color)
            .frame(width: cursorConstants.width, height: cursorConstants.height)
            .rotationEffect(angle)
            .padding(edge, 10)
        
        return layout {
            if onTop {
                rectangle
            }
            cursor
            if !onTop {
                rectangle
            }
        }
    }
}

