import SwiftUI

public struct AnchorConstants {
    
    //MARK: Anchor properties
    ///Contstants for chield views
    public let rectConst: MessageRectangleConstants
    public let cursorConst: CursorConstants
    
    ///ToolTip alignment
    public let alignment: Alignment
    
    ///View's helper properties
    public let offset: CGSize
    public let padding: (edge: Edge.Set, lenght: CGFloat)
    
    ///Ovveride default init
    public init(rectangleConstants: MessageRectangleConstants = MessageRectangleConstants(),
         cursorConstants: CursorConstants = CursorConstants(),
         tooltipOffset: CGSize = .zero,
         tooltipAlignment: Alignment = .center,
         tooltipPaddingEdge: Edge.Set = .all,
         tooltipPadding: CGFloat = 0)
    {
        self.rectConst = rectangleConstants
        self.cursorConst = cursorConstants
        self.alignment = tooltipAlignment
        self.offset = tooltipOffset
        self.padding = (tooltipPaddingEdge, tooltipPadding)
    }
}
