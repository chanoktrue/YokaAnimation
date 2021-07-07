//
//  TodayView.swift
//  Yoga
//
//  Created by Thongchai Subsaidee on 6/7/2564 BE.
//

import SwiftUI

struct TodayView: View {
    
    @EnvironmentObject var selectObject: SelectedObject
    var animation: Namespace.ID
    
    static var yogaArray = ["dhyana", "triknasana", "bhujangasana", "vakrasana"]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem()], content: {
                ForEach(TodayView.yogaArray, id: \.self) { yoga in
                    CardView(animation: animation, yogaName: yoga)
                        .onTapGesture {
                            withAnimation(.spring(response: 0.5, dampingFraction: 0.6)) {
                                selectObject.name = yoga
                                selectObject.isShowing .toggle()
                            }
                        }
                }
            })
        }
    }
}

