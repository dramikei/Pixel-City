//
//  DropablePin.swift
//  Pixel City
//
//  Created by Raghav Vashisht on 27/08/17.
//  Copyright © 2017 Raghav Vashisht. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class DropablePin: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
