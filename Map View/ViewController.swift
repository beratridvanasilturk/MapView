//
//  ViewController.swift
//  Map View
//
//  Created by Berat Rıdvan Asiltürk on 4.07.2023.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    //MARK: Variables
    @IBOutlet var mapView: MKMapView!
    
    // alanin yaricapi
    let regionRadius = 3000
    let location = CLLocation(latitude: 36.2972, longitude: 30.1460)
    
    //MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        centreMap(location: location)
        
        
    }
    
    private func centreMap(location: CLLocation) {
        // Alanlari belirler
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(floatLiteral: Double(regionRadius)), longitudinalMeters: CLLocationDistance(floatLiteral: Double(regionRadius)))
        
        let coorType = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let annotation = MKPointAnnotation()
        annotation.coordinate = coorType
        
        annotation.title = "Best View"
        annotation.subtitle = "to visit"

        mapView.addAnnotation(annotation)
        mapView.setRegion(region, animated: true)
        
    }
}

