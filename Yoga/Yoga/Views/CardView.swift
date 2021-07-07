//
//  CardView.swift
//  Yoga
//
//  Created by Thongchai Subsaidee on 7/7/2564 BE.
//

import SwiftUI

struct CardView: View {
    
    var animation: Namespace.ID
    var yogaName: String
    
    var body: some View {
        ZStack {
            Image(yogaName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .matchedGeometryEffect(id: yogaName, in: animation)
            
            VStack {
                HStack {
                    Text(yogaName)
                        .bold()
                        .font(.system(.largeTitle, design: .rounded))
                        .foregroundColor(.white)
                        .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0.0, y: 2.0)
                        .padding()
                        .matchedGeometryEffect(id: yogaName + "text", in: animation)
                    
                    Spacer()
                }
                Spacer()
            }
            .matchedGeometryEffect(id: yogaName + "description", in: animation)
        }
        .padding()
    }
}

