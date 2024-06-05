import SwiftUI

//MARK: Other init
internal extension ToolTipAnchor {
    ///Hard init with AnyLayout protocol
    init(constants: (MessageConst, CursorConst),
         tooltipAlignment: Alignment = .bottom,
         layout: AnyLayout = AnyLayout(VStackLayout()),
         @ViewBuilder content: () -> Content,
         @ViewBuilder anchor: () -> Anchor)
    {
        self.layout = layout
        self.tooltipAlignment = tooltipAlignment
        self.rectangleConstants = constants.0
        self.cursorConstants = constants.1
        self.content = content()
        self.anchor = anchor()
    }
    
    ///Easy init for developer who don't work with AnyLayout protocol
    init(constants: (MessageConst, CursorConst),
         tooltipAlignment: Alignment = .bottom,
         layout: ToolTipStack,
         stackSpacing: CGFloat = 8,
         stackAlignment: Alignment = .center,
         @ViewBuilder content: () -> Content,
         @ViewBuilder anchor: () -> Anchor)
    {
        self.layout = layout.setupLayout(stackAlignment, spacing: stackSpacing)
        self.tooltipAlignment = tooltipAlignment
        self.rectangleConstants = constants.0
        self.cursorConstants = constants.1
        self.content = content()
        self.anchor = anchor()
    }
}

