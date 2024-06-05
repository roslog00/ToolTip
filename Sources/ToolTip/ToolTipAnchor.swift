import SwiftUI
import Constants

public struct ToolTipAnchor: View {
    private let rectangleConstants: MessageRectangleConstants
    private let cursorConstants: CursorConstants
    
    init(rectangleConstants: MessageRectangleConstants,
         cursorConstants: CursorConstants)
    {
        self.rectangleConstants = rectangleConstants
        self.cursorConstants = cursorConstants
    }
    
    public var body: some View {
        ToolTipView(cursorAlignment: .top, 
                    cursorConstants: cursorConstants,
                    rectangleConstants: rectangleConstants) {
            Text("Walter White")
                .foregroundStyle(.white)
        }
    }
}
