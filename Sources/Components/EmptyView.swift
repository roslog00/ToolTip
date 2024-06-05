import SwiftUI

//MARK: Empty View
public struct EmptyView: View {
    public var body: some View {
        Group{}.frame(width: .zero, height: .zero)
    }
}
