import SwiftUI

//MARK: Custom padding with optional value (Edge) in params
fileprivate struct PaddingModifier: ViewModifier {
    let edge: Edge.Set?
    let lenght: CGFloat?
    
    func body(content: Content) -> some View {
        if let edge {
            content.padding(edge, lenght)
        } else {
            content
        }
    }
}

//MARK: Do modifier
public extension View {
    func padding(_ edge: Edge.Set?,_ lenght: CGFloat?) -> some View {
        modifier(PaddingModifier(edge: edge, lenght: lenght))
    }
}
