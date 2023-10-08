//
//  SwiftUIView.swift
//  
//
//  Created by Victoria Park on 10/7/23.
//

import SwiftUI

public struct TriangleShape: Shape {
    @available(macOS 10.15, *)
    public func path(in rect: CGRect) -> Path {
            var path = Path()
            
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.closeSubpath()
            
            return path
        }
    public init() {
        
    }
}

#if DEBUG
struct TriangleShape_Previews: PreviewProvider {
    @available(macOS 10.15, *)
    static var previews: some View {
        TriangleShape()
            .fill(Color.blue) // filling the triangle with a blue color for better visualization
            .frame(width: 100, height: 100)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
#endif
