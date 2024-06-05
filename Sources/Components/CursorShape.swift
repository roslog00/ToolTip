import SwiftUI

//MARK: Cursor with curve
public struct Cursor: Shape {
    public init() {}
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.5*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.02381*width, y: height), control1: CGPoint(x: 0.35714*width, y: 0), control2: CGPoint(x: 0.21429*width, y: height))
        path.addLine(to: CGPoint(x: 0.97619*width, y: height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0), control1: CGPoint(x: 0.78691*width, y: height), control2: CGPoint(x: 0.64286*width, y: 0))
        path.closeSubpath()
        return path
    }
}
