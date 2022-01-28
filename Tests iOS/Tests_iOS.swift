//
//  Tests_iOS.swift
//  Tests iOS
//
//  Created by Daksh Patel on 1/21/22.
//

import XCTest

class Tests_iOS: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    //tests basic values and checks if it is accurate 
    func testSphereIniutialization() async{
        let radius = 1.0
        
        let mySphere = Sphere()
        
        mySphere.updateSphereRadius(sphereRadius: radius)
        
        let sphereVolume = mySphere.sphereVolume
        
        XCTAssertEqual(sphereVolume, (4/3)*Double.pi, accuracy: 1.0E-7, "was not equal to this resolution")
        
        let sphereSurfaceArea = mySphere.sphereSurfaceArea
        
        XCTAssertEqual(sphereSurfaceArea, 4*Double.pi, accuracy: 1.0E-7, "was not equal to this resolution")
        
        let boxVolume = mySphere.boxVolume
        
        XCTAssertEqual(boxVolume, pow(2, 3), accuracy: 1.0E-7, "was not equal to this resolution")
        
        let boxSurfaceArea = mySphere.boxSurfaceArea
        
        XCTAssertEqual(boxSurfaceArea, 4.0*6.0, accuracy: 1.0E-7, "was not equal to this resolution")
    }
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
