//
//  visionTestApp.swift
//  visionTest
//
//  Created by SMSoftLab on 2/26/24.
//

import SwiftUI

//@main 어노테이션은 앱의 엔트리포인트
@main
struct visionTestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
        WindowGroup (id: "SecondWindow"){
            SecondWindow()
        }
    }
}
