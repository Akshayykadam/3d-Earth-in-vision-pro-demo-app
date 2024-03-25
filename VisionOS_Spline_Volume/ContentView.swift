//
//  ContentView.swift
//  VisionOS_Spline_Volume
//
//  Created by Akshay Kadam on 23/03/24.
//
import SplineRuntime
import SwiftUI

struct ContentView: View {
    
    @State private var IsShowingVolume = false
    @Environment(\.openWindow) var openWindow
    @Environment(\.dismissWindow) var dismissWindow
    
    var body: some View {
        VStack {
            EarthObjectView()
            
            HStack{
                Toggle("Show Planet Earth" , isOn: $IsShowingVolume)
                    .toggleStyle(.button)
                    .onChange(of: IsShowingVolume) { _, isShowing in
                        if isShowing{
                            openWindow(id: "EarthVolumeView")
                        }
                        else{
                            dismissWindow(id: "EarthVolumeView")
                        }
                    }
            }
            .padding()
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}

//-----------Earth view ---------------------------//
struct EarthObjectView: View {
    var body: some View {
        HStack{
            let url = URL(string: "https://build.spline.design/5aeEkhJXlrDodiBgpJPm/scene.splineswift")!

            try? SplineView(sceneFileURL: url).ignoresSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 10) {
                        Text("Planet Earth")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("Planet Earth is the third planet from the Sun in our solar system, located in the Milky Way galaxy. It is the only known celestial body to harbor life. Earth has a diverse range of ecosystems, including oceans, forests, deserts, and grasslands, which support a wide variety of plant and animal species.")
                            .font(.body)
                        
                        Text("The planet has a diameter of approximately 12,742 kilometers (7,918 miles) and a mass of about 5.97 × 10^24 kilograms. Earth's atmosphere primarily consists of nitrogen (78%) and oxygen (21%), with trace amounts of other gases.")
                            .font(.body)
                        
                        Text("Earth rotates on its axis, causing day and night, and orbits the Sun, completing one orbit roughly every 365.25 days, creating the cycle of seasons. The planet's surface is about 71% water, mostly found in its vast oceans, with the remaining 29% comprised of continents and islands.")
                            .font(.body)
                        
                        Text("Human civilization has flourished on Earth, with various cultures and societies evolving over thousands of years. However, human activities have also caused significant environmental challenges, including pollution, deforestation, and climate change, which threaten the planet's delicate balance.")
                            .font(.body)
                        
                        Text("Understanding and preserving Earth's ecosystems and biodiversity are crucial for the well-being of all life on the planet, including humans.")
                            .font(.body)
                    }
                .padding()
                //.font(.system(size: 20))
                .font(.caption)
        }
        
    }
}

struct EarthObjectVolumeView: View {
    var body: some View {

        let url = URL(string: "https://build.spline.design/5aeEkhJXlrDodiBgpJPm/scene.splineswift")!

        SplineVolumetricContent(sceneFileURL: url)
    }
}

//-----------------------------------------------//


