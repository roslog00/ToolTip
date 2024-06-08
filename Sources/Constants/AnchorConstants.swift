import SwiftUI
public struct AnchorConstants {
    ///Contstants for chield views
    public let rectConst: MessageRectangleConstants
    public let cursorConst: CursorConstants
    
    ///ToolTip helper properties
    public let alignment: Alignment
    public let offset: CGSize
    public let frame: (width: CGFloat, height: CGFloat)?
    
    ///Ovveride default init
    public init(rectangleConstants: MessageRectangleConstants = MessageRectangleConstants(),
         cursorConstants: CursorConstants = CursorConstants(),
         tooltipOffset: CGSize = .zero,
         tooltipAlignment: Alignment = .center,
         tooltipFrame: (CGFloat, CGFloat)? = nil)
    {
        self.rectConst = rectangleConstants
        self.cursorConst = cursorConstants
        self.alignment = tooltipAlignment
        self.offset = tooltipOffset
        self.frame = tooltipFrame
    }
}
