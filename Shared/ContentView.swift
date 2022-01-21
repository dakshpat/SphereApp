//
//  ContentView.swift
//  Shared
//
//  Created by Daksh Patel on 1/21/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Calculate", action: {let _ = self.sphereVolume()})
            .padding(.bottom)
            .padding()
    }
    

    func sphereVolume() -> Double{
        let sphereRadius = 0.0
        let volume = 4/3*Double.pi*sphereRadius
        print(volume)
        return volume
    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

