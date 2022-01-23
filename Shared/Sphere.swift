//
//  Sphere.swift
//  SphereApp (iOS)
//
//  Created by Daksh Patel on 1/21/22.
//

import Foundation
import SwiftUI

class Sphere{

    @Published var sphereRadius = 0.0
    @Published var sphereVolume = 0.0
    @Published var sphereSurfaceArea = 0.0
    @Published var boxVolume = 0.0
    @Published var boxSurfaceArea = 0.0
    
    init(){
        self.sphereRadius = 0.0
        self.sphereVolume = 0.0
        self.sphereSurfaceArea = 0.0
        self.boxVolume = 0.0
        self.boxSurfaceArea = 0.0
    }
    
    init(sphereRadius: Double){
        self.sphereRadius = sphereRadius
        sphereVolume = (4/3)*Double.pi*pow(sphereRadius,3)
        sphereSurfaceArea = 4*Double.pi*pow(sphereRadius,2)
        boxSurfaceArea = 6*pow(2*sphereRadius,2)
        boxVolume = pow(2*sphereRadius,3)
    }
        
    func updateSphereRadius(sphereRadius: Double) -> Void{
        self.sphereRadius = sphereRadius
        sphereVolume = (4/3)*Double.pi*pow(sphereRadius,3)
        sphereSurfaceArea = 4*Double.pi*pow(sphereRadius,2)
        boxSurfaceArea = 6*pow(2*sphereRadius,2)
        boxVolume = pow(2*sphereRadius,3)
    }
    
    func sphereVolumeCalculate(sphereRadius: Double) -> Double{
        sphereVolume = (4/3)*Double.pi*pow(sphereRadius,3)
        return sphereVolume
    }
    
    func sphereSurfaceAreaCalculate(sphereRadius: Double) -> Double{
        sphereSurfaceArea = 4*Double.pi*pow(sphereRadius,2)
        return sphereSurfaceArea
    }
    
    func boxeSurfaceAreaCalculate(sphereRadius: Double) -> Double{
        boxSurfaceArea = 6*pow(2*sphereRadius,2)
        return boxSurfaceArea
    }
    
    func boxVolumeCalculate(sphereRadius: Double) -> Double{
        boxVolume = pow(2*sphereRadius,3)
        return boxVolume
    }
    
}
    


