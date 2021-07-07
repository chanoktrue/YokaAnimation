//
//  SelectedObject.swift
//  Yoga
//
//  Created by Thongchai Subsaidee on 6/7/2564 BE.
//

import SwiftUI

class SelectedObject: ObservableObject {
    @Published var isShowing = false
    @Published var name = ""
}
