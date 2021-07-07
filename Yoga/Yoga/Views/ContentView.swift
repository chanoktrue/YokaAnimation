//
//  ContentView.swift
//  Yoga
//
//  Created by Thongchai Subsaidee on 2/7/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @Namespace var animation
    @StateObject var selectedObject = SelectedObject()
    
    var body: some View {
        ZStack {
            TabView {
                TodayView(animation: animation)
                    .environmentObject(selectedObject)
                    .tabItem {
                        Label(
                            title: { Text("Home") },
                            icon: { Image(systemName: "house") }
                        )
                    }
                Text("Preferences")
                    .tabItem {
                        Label(
                            title: { Text("Preferences") },
                            icon: { Image(systemName: "gear") }
                        )
                    }
            }
            .zIndex(1.0)
            
            if selectedObject.isShowing {
                DetailView(animation: animation)
                    .environmentObject(selectedObject)
                    .zIndex(2.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
