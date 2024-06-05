import SwiftUI

///This enum created to simplify initialisation of the layout property: AnyLayout
internal enum ToolTipStack {
    case H, V
    
    func setupLayout(_ alignment: Alignment, spacing: CGFloat) -> AnyLayout {
        switch self {
        case .H:
            return AnyLayout(HStackLayout(alignment: alignment.vertical, spacing: spacing))
        case .V:
            return AnyLayout(VStackLayout(alignment: alignment.horizontal, spacing: spacing))
        }
    }
}
