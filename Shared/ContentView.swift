//
//  ContentView.swift
//  Shared
//
//  Created by Daksh Patel on 1/21/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Calculate", action: {let _ = self.sphere()})
            .padding(.bottom)
            .padding()
    }
    

    func sphere() -> Double{
        let sphereRadius = 5.0
        let sphereVolume = 4/3*Double.pi*pow(sphereRadius,3)
        let sphereSurfaceArea = 4*Double.pi*pow(sphereRadius,2)
        let boxVolume = pow(sphereRadius*2,3)
        let boxSurfaceArea = pow(sphereRadius*2,2)*6
        print("sphereVolume: " , sphereVolume)
        print("sphereSurfaceArea: " , sphereSurfaceArea)
        print("boxVolume: " , boxVolume)
        print("boxSurfaceArea: " , boxSurfaceArea)
        return sphereVolume
    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

