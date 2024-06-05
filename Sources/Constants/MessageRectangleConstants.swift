import SwiftUI

public struct MessageRectangleConstants{
    //Rectangle's modifier
    public let color: Color
    public let cornerRadius: CGFloat
    public let _maxWidth: CGFloat?
    public let _maxHeight: CGFloat?
    
    //Ovveride default init
     public init(color: Color = .black,
         cornerRadius: CGFloat = 12,
         _maxWidth: CGFloat? = nil,
         _maxHeight: CGFloat? = nil) {
        self.color = color
        self.cornerRadius = cornerRadius
        self._maxWidth = _maxWidth
        self._maxHeight = _maxHeight
    }
}
