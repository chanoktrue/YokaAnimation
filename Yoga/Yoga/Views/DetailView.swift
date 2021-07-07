//
//  DetailView.swift
//  Yoga
//
//  Created by Thongchai Subsaidee on 6/7/2564 BE.
//

import SwiftUI

struct DetailView: View {
    
    @EnvironmentObject var selectObject: SelectedObject
    var animation: Namespace.ID
    
    var body: some View {
        ScrollView {
            VStack {
                Image(selectObject.name)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .matchedGeometryEffect(id: selectObject.name, in: animation)
//                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .onTapGesture {
                        withAnimation(.spring(response: 0.6, dampingFraction: 0.9)) {
                            selectObject.isShowing.toggle()
                        }
                    }
                
                VStack {
                    HStack {
                        Text(selectObject.name)
                            .bold()
                            .font(.system(.largeTitle, design: .rounded))
                            .foregroundColor(.black)
//                            .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0.0, y: 2.0)
                            .padding()
                            .matchedGeometryEffect(id: selectObject.name + "text", in: animation)
                        
                        Spacer()
                        
                        Image(systemName: "play")
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                            .padding(.trailing)
                    }
                    
                    Spacer()
                    
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                        .minimumScaleFactor(0.1)
                        .padding()
                        .matchedGeometryEffect(id: selectObject.name + "description", in: animation)
                }
            }
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}

