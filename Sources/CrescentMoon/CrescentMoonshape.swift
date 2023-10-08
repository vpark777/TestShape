//
//  SwiftUIView.swift
//  
//
//  Created by Victoria Park on 10/7/23.
//

import SwiftUI

public struct CrescentMoonShape: Shape {

    public init() {}
    public func path(in rect: CGRect) -> Path {
           var path = Path()

           path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                       radius: rect.width * 0.5,
                       startAngle: Angle(degrees: 60),
                       endAngle: Angle(degrees: -60),
                       clockwise: false)

           // Inner arc of the crescent moon
           path.addArc(center: CGPoint(x: rect.midX + (rect.width * 0.2), y: rect.midY),
                       radius: rect.width * 0.42,
                       startAngle: Angle(degrees: -100),
                       endAngle: Angle(degrees: 100),
                       clockwise: true)


           return path
        }
}


struct CrescentMoonShape_Previews: PreviewProvider {
    static var previews: some View {
        CrescentMoonShape()
    }
}
