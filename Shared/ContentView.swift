//
//  ContentView.swift
//  Shared
//
//  Created by Daksh Patel on 1/21/22.
//

import SwiftUI

struct ContentView: View {
    
    // Created state variable to print out
    @State var sphereRadius = 0.0
    @State var sphereVolume = 0.0
    @State var sphereSurfaceArea = 0.0
    @State var boxVolume = 0.0
    @State var boxSurfaceArea = 0.0
    var sphereModel = Sphere()
    
    var body: some View {
        
        VStack{
            Text("Sphere Radius")
                .padding(.top)
                .padding(.bottom, 0)
    
            TextField("Enter Radius", value: $sphereRadius, format: .number)
            
            Text("Sphere Volume: \(sphereVolume, specifier: "%.2f")")
                .padding(0.5)
            Text("Sphere SurfaceArea: \(sphereSurfaceArea, specifier: "%.2f")")
                .padding(0.5)
            Text("Bounding Box Volume: \(boxVolume,specifier: "%.2f")")
                .padding(0.5)
            Text("Bounding Box SurfaceArea: \(boxSurfaceArea,specifier: "%.2f")")
            .padding(0.5)
            .padding(.bottom)
            
            Button("Calculate"){
                sphereModel.updateSphereRadius(sphereRadius: sphereRadius)
                sphereVolume = sphereModel.sphereVolume
                sphereSurfaceArea = sphereModel.sphereSurfaceArea
                boxVolume = sphereModel.boxVolume
                boxSurfaceArea = sphereModel.boxSurfaceArea
            }
                .padding()
            
        }

    
    }
}
    



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

