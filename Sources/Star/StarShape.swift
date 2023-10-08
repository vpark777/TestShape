//
//  SwiftUIView.swift
//  
//
//  Created by Victoria Park on 10/7/23.
//

import SwiftUI

public struct StarShape: Shape {
    public func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
        var points: [CGPoint] = []
        for i in 0..<5 {
            let angle = Angle.degrees(Double(i) * 144.0) // 360 degrees / 5 points * 2 (for the star points)
            let x = center.x + rect.width / 2 * CGFloat(cos(angle.radians))
            let y = center.y + rect.height / 2 * CGFloat(sin(angle.radians))
            points.append(CGPoint(x: x, y: y))
        }
        
        var path = Path()
        path.move(to: points[0])
        for i in 1..<5 {
            path.addLine(to: points[i])
        }
        path.closeSubpath()
        
        return path
    }
    public init() {
        
    }
}

struct StarShape_Previews: PreviewProvider {
    static var previews: some View {
        StarShape()
    }
}
