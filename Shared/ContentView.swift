//
//  ContentView.swift
//  Shared
//
//  Created by Daksh Patel on 1/21/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var sphereRadius = 0.0
    @State var sphereVolume = 0.0
    @State var sphereSurfaceArea = 0.0
    @State var boxVolume = 0.0
    @State var boxSurfaceArea = 0.0
    
    var body: some View {
        
        VStack{
            Text("Sphere Radius")
                .padding(.top)
                .padding(.bottom, 0)
    
            TextField("Enter Radius", value: $sphereRadius, format: .number)
    
            Text("Sphere Volume: \(sphereVolume)")
                .padding(0.5)
            Text("Sphere SurfaceArea: \(sphereSurfaceArea)")
                .padding(0.5)
            Text("Bounding Box Volume: \(boxVolume)")
                .padding(0.5)
            Text("Bounding Box SurfaceArea: \(boxSurfaceArea)")
            .padding(0.5)
            
        }
        
        
        Button("Calculate", action:{
            sphereVolume = (4/3)*Double.pi*pow(sphereRadius,3)
            sphereSurfaceArea = 4*Double.pi*pow(sphereRadius,2)
            boxSurfaceArea = 6*pow(2*sphereRadius,2)
            boxVolume = pow(2*sphereRadius,3)
            
        })
            .padding()
        
    
    }
}
    



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

