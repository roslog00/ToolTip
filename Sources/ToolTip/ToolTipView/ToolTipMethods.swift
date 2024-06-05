import SwiftUI

//MARK: ToolTip design clear methods
extension ToolTipView {
    //defines the layout for the view
    @inline(__always)
    func layoutConstructor() -> AnyLayout {
        switch tooltipAlignment {
        case .top,
                .topLeading,
                .topTrailing,
                .bottom,
                .bottomLeading,
                .bottomTrailing:
            return AnyLayout(VStackLayout(alignment: tooltipAlignment.horizontal, spacing: 0))
        default:
            return AnyLayout(HStackLayout(alignment: tooltipAlignment.vertical, spacing: -6))
        }
    }
    
    //defines the cursor rotation angle
    @inline(__always)
    func angleConstructor() -> Angle {
        switch tooltipAlignment {
        case .top, .topLeading, .topTrailing:
            return Angle(degrees: 180)
        case .bottom, .bottomLeading, .bottomTrailing:
            return Angle(degrees: 0)
        case .leading:
            return Angle(degrees: 90)
        case .trailing:
            return Angle(degrees: -90)
            
        default:
            return Angle(degrees: 0)
        }
    }
    
    //defines the edge indent for the cursor
    @inline(__always)
    func edgeConstructor() -> Edge.Set? {
        switch tooltipAlignment {
        case .topLeading, .bottomLeading:
            return .leading
        case .topTrailing, .bottomTrailing:
            return .trailing
            
        default:
            return nil
        }
    }
    
    //determines at which alignment ToolTip will be positioned above the cursor
    @inline(__always)
    func positionConstructor() -> Bool {
        switch tooltipAlignment {
        case .top, .topLeading, .topTrailing, .leading:
            return true
        case .bottom, .bottomLeading, .bottomTrailing, .trailing:
            return false
            
        default:
            return true
        }
    }
}

