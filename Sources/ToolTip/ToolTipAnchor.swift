import SwiftUI
import Constants
import ViewModifiers

public struct ToolTipAnchor<Content: View, Anchor: View>: View {
    //Views
    ///Rectangle content
    let content: Content
    ///Anchor content
    let anchor: Anchor
    
    //Const
    let const: AnchorConstants
    
    ///Ovverided default init
    init(anchorConstants: AnchorConstants = AnchorConstants(),
         @ViewBuilder content: () -> Content,
         @ViewBuilder anchor: () -> Anchor)
    {
        self.const = anchorConstants
        self.content = content()
        self.anchor = anchor()
    }
    
    ///Toggle for show tooltip
    @State private var showToolTip = false
    
    private let bounds = UIScreen.main.bounds
    //MARK: - Body
    public var body: some View {
        anchor
            .onTapGesture {
                withAnimation(.spring(duration: 0.2)) {
                    showToolTip.toggle()
                }
            }
            .overlay {
                Group {
                    ToolTipView(content: content,
                                rectangleConstants: const.rectConst,
                                cursorConstants: const.cursorConst,
                                tooltipAlignment: const.alignment)
                    .opacity(showToolTip ? 1 : 0)
                }
                .frame(maxWidth: const.frame?.width ?? bounds.width,
                       maxHeight: const.frame?.height ?? bounds.height)
                .fixedSize()
                .offset(const.offset)
                .onTapGesture {
                    withAnimation(.spring(duration: 0.2)) {
                        showToolTip.toggle()
                    }
                }
            }
    }
}
