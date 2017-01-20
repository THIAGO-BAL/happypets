//
//  LocalizacaoViewController.swift
//  HappyPets
//
//  Created by Student on 1/19/17.
//  Copyright © 2017 thiago-Student. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class LocalizacaoViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var localizacaoMapView: MKMapView!
    
    var profissional: Profissional?
    
    var locationManager = CLLocationManager()
    var userLocation = CLLocation()

    override func viewDidLoad() {
        super.viewDidLoad()

        localizacaoMapView.showsUserLocation = true
        setupLocationManager()
        // addGesture()
        adicionarLocalizacao()
    }
    
    func adicionarLocalizacao() {
        let coordenadas = CLLocationCoordinate2DMake((profissional?.latitude)!, (profissional?.longitude)!)
        let pin = MKPointAnnotation()
        pin.coordinate = coordenadas
        pin.title = profissional?.nome
        pin.subtitle = profissional?.endereco
        localizacaoMapView.addAnnotation(pin)
        
        let span = MKCoordinateSpanMake(0.02, 0.02)
        let regiao = MKCoordinateRegion(center: pin.coordinate, span: span)
        localizacaoMapView.setRegion(regiao, animated: true)
    }
    
    func setupLocationManager() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func addGesture() {
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(addAnnotationToMap(gestureRecognizer:)))
        longPress.minimumPressDuration = 1.0
        localizacaoMapView.addGestureRecognizer(longPress)
    }
    
    func addAnnotationToMap(gestureRecognizer: UIGestureRecognizer) {
        let touchPoint = gestureRecognizer.location(in: localizacaoMapView)
        let newCoordinate: CLLocationCoordinate2D = localizacaoMapView.convert(touchPoint, toCoordinateFrom: self.localizacaoMapView)
        let newAnnotation = MKPointAnnotation()
        newAnnotation.coordinate = newCoordinate
        newAnnotation.title = profissional?.nome
        newAnnotation.subtitle = profissional?.descricao
        
        localizacaoMapView.addAnnotation(newAnnotation)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if locations.count > 0 {
            userLocation = locations.last!
            print("Localização do usuário = ", userLocation.coordinate)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
