//
//  Sphere.swift
//  SphereApp (iOS)
//
//  Created by Daksh Patel on 1/21/22.
//

import Foundation
import SwiftUI

class Sphere{

    //Creating class variables
    @Published var sphereRadius = 0.0
    @Published var sphereVolume = 0.0
    @Published var sphereSurfaceArea = 0.0
    @Published var boxVolume = 0.0
    @Published var boxSurfaceArea = 0.0
    
    //Creating method of instance with default values
    init(){
        self.sphereRadius = 0.0
        self.sphereVolume = 0.0
        self.sphereSurfaceArea = 0.0
        self.boxVolume = 0.0
        self.boxSurfaceArea = 0.0
    }
    
    //Instance that takes in radius
    init(sphereRadius: Double){
        self.sphereRadius = sphereRadius
        sphereVolume = (4/3)*Double.pi*pow(sphereRadius,3)
        sphereSurfaceArea = 4*Double.pi*pow(sphereRadius,2)
        boxSurfaceArea = 6*pow(2*sphereRadius,2)
        boxVolume = pow(2*sphereRadius,3)
    }
    
    //Making a fucntion that updates sphere and box properties
    func updateSphereRadius(sphereRadius: Double) -> Void{
        self.sphereRadius = sphereRadius
        sphereVolume = (4/3)*Double.pi*pow(sphereRadius,3)
        sphereSurfaceArea = 4*Double.pi*pow(sphereRadius,2)
        boxSurfaceArea = 6*pow(2*sphereRadius,2)
        boxVolume = pow(2*sphereRadius,3)
    }
    
    //function that calculates volume of a sphere
    func sphereVolumeCalculate(sphereRadius: Double) -> Double{
        sphereVolume = (4/3)*Double.pi*pow(sphereRadius,3)
        return sphereVolume
    }
    
    //function that calculates surface area of a sphere
    func sphereSurfaceAreaCalculate(sphereRadius: Double) -> Double{
        sphereSurfaceArea = 4*Double.pi*pow(sphereRadius,2)
        return sphereSurfaceArea
    }
    
    //funcion that calculates surface area of the bounding box
    func boxeSurfaceAreaCalculate(sphereRadius: Double) -> Double{
        boxSurfaceArea = 6*pow(2*sphereRadius,2)
        return boxSurfaceArea
    }
    
    //function that calculates volume of the bounding box
    func boxVolumeCalculate(sphereRadius: Double) -> Double{
        boxVolume = pow(2*sphereRadius,3)
        return boxVolume
    }
    
}
    


