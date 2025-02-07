//
//  ZaLocation.swift
//  Za Hunter
//
//  Created by Aiden Baker on 2/4/25.
//

import Foundation
import CoreLocation
class ZaLocation: NSObject, CLLocationManagerDelegate, ObservableObject {
    var locationManager = CLLocationManager()
    var geocoder = CLGeocoder()
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}
