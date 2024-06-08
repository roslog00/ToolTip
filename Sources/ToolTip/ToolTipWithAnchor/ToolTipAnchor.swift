import SwiftUI
import Constants

public struct ToolTipAnchor<Content: View, Anchor: View>: View {
    //MARK: Properties & Typealiases
    
    ///Typealias
    typealias MessageConst = MessageRectangleConstants
    typealias CursorConst = CursorConstants
    
    ///Rectangle content
    let content: Content
    
    ///Anchor content
    let anchor: Anchor
    
    ///Contstants for chield views
    let rectangleConstants: MessageConst
    let cursorConstants: CursorConst
    let tooltipAlignment: Alignment
    
    ///View's helper properties
    var layout: AnyLayout
    
    ///Ovveride default init
    init(rectangleConstants: MessageConst,
         cursorConstants: CursorConst,
         @ViewBuilder content: () -> Content,
         @ViewBuilder anchor: () -> Anchor)
    {
        self.rectangleConstants = rectangleConstants
        self.cursorConstants = cursorConstants
        self.content = content()
        self.anchor = anchor()
        self.tooltipAlignment = .bottom
        self.layout = AnyLayout(VStackLayout())
    }
    
    ///Toggle for show tooltip
    @State var showToolTip = false
    
    //MARK: - Body
    public var body: some View {
        layout {
            if tooltipAlignment == .bottom || tooltipAlignment == .trailing {
                anchor
            }
            ToolTipView(content: content,
                        rectangleConstants: rectangleConstants,
                        cursorConstants: cursorConstants,
                        tooltipAlignment: tooltipAlignment)
            .opacity(showToolTip ? 1 : 0)
            if tooltipAlignment == .top || tooltipAlignment == .leading {
                anchor
            }
        }
        .animation(.spring(duration: 0), value: showToolTip)
        .onTapGesture {
            showToolTip.toggle()
        }
    }
}



