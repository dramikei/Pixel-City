//
//  ViewController.swift
//  Pixel City
//
//  Created by Raghav Vashisht on 25/08/17.
//  Copyright © 2017 Raghav Vashisht. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
    }

    @IBAction func centerMapBtnPressed(_ sender: Any) {
        
    }
    
}
extension MapVC: MKMapViewDelegate {
    
}
