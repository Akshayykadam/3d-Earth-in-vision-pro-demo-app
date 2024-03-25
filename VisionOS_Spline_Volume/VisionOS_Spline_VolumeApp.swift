//
//  VisionOS_Spline_VolumeApp.swift
//  VisionOS_Spline_Volume
//
//  Created by Akshay Kadam on 23/03/24.
//

import SwiftUI

@main
struct VisionOS_Spline_VolumeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
        WindowGroup(id: "EarthVolumeView") {
            EarthObjectVolumeView();
        }
        .windowStyle(.volumetric)
        //.defaultSize(width: 1, height: 1, depth: 1, in: .meters)
    }
}
