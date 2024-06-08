import SwiftUI

public struct AnchorConstants {
    //MARK: Anchor properties
    ///Contstants for chield views
    public let rectConst: MessageRectangleConstants
    public let cursorConst: CursorConstants
    
    ///ToolTip helper properties
    public let alignment: Alignment
    public let offset: CGSize
    public let padding: (edge: Edge.Set, lenght: CGFloat)
    public let frame: (width: CGFloat, height: CGFloat)?
    
    ///Ovveride default init
    public init(rectangleConstants: MessageRectangleConstants = MessageRectangleConstants(),
         cursorConstants: CursorConstants = CursorConstants(),
         tooltipOffset: CGSize = .zero,
         tooltipAlignment: Alignment = .center,
         tooltipFrame: (CGFloat, CGFloat)? = nil,
         tooltipPadding: (Edge.Set, CGFloat) = (.all, 0))
    {
        self.rectConst = rectangleConstants
        self.cursorConst = cursorConstants
        self.alignment = tooltipAlignment
        self.offset = tooltipOffset
        self.padding = tooltipPadding
        self.frame = tooltipFrame
    }
}
