//
//  ContentView.swift
//  Shared
//
//  Created by Daksh Patel on 1/21/22.
//

import SwiftUI

struct ContentView: View {
    
   @State var sphereRadius = "0.0"
   @State var sphereVolume = "0.0"
    
    var body: some View {
        
        VStack{
            Text("Sphere Radius")
                .padding(.top)
                .padding(.bottom, 0)
            TextField("Enter Radius", text: $sphereRadius, onCommit: {self.sphere(sphereRadius: Double(sphereRadius)!)})
                .padding()
            HStack{
                Text("Sphere Volume")
                Text(self.sphere(sphereRadius: Double(sphereRadius)!))
            }
                    
        }
        
        
        Button("Calculate", action: {let _ = self.sphere(sphereRadius: Double(sphereRadius)!)})
            .padding(.bottom)
            .padding()
    
    }
    
    
    
    func sphere(sphereRadius: Double) -> Double{
        let sphereVol = 4/3*Double.pi*pow(sphereRadius,3)
        print("Sphere Volume: " , sphereVol)
        return sphereVol
    }
}
    



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

