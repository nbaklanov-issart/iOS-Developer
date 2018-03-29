//
//  ViewController.swift
//  GoogleRouteDemo
//
//  Created by Nikolai Baklanov on 25/03/2018.
//  Copyright © 2018 Nikolai Baklanov. All rights reserved.
//

import UIKit
import Alamofire
import GoogleMaps
import SwiftyJSON
import ARCL
import MapKit
import ARKit

class ViewController: UIViewController, GMSMapViewDelegate
{
    @IBOutlet weak var defaultMapView:UIView!
    
    fileprivate var mapView:GMSMapView!
    fileprivate var markers:[GMSMarker] = Array()
    fileprivate var lastPathLine:GMSPolyline?
    fileprivate var nodes:[LocationAnnotationNode] = Array()
    fileprivate var locations:[CLLocation] = Array()
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        let camera = GMSCameraPosition.camera(withLatitude: 54.992932, longitude: 73.371411, zoom: 18.0)
        mapView = GMSMapView.map(withFrame: defaultMapView.bounds, camera: camera)
        mapView.isMyLocationEnabled = true
        mapView.delegate = self
        defaultMapView.addSubview(mapView)
    }
    
    public override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        mapView.frame = defaultMapView.frame
    }
    
    public func mapView(_ mapView: GMSMapView, didTapAt coordinate: CLLocationCoordinate2D)
    {
        let marker = GMSMarker(position: coordinate)
        marker.position.latitude = coordinate.latitude
        marker.position.longitude = coordinate.longitude
        marker.map = mapView
        markers.append(marker)
    }
    
    @IBAction func getPath(sender:UIButton)
    {        
        guard markers.count >= 2 else { return }
        let start:CLLocationCoordinate2D = markers[0].position
        let end:CLLocationCoordinate2D = markers.last!.position
        let urlString:String = String.init(format:"https://maps.googleapis.com/maps/api/directions/json?origin=%f,%f&destination=%f,%f&sensor=true&mode=walking&key=%@",
                                           start.latitude,
                                           start.longitude,
                                           end.latitude,
                                           end.longitude,
                                           GoogleCredentianals.API_KEY)
        
        Alamofire.request(urlString).responseJSON { response in
            let json = JSON(response.data!)
            let routes = json["routes"].arrayValue
            
            for route in routes {
                let routeOverviewPolyline = route["overview_polyline"].dictionary
                let points = routeOverviewPolyline?["points"]?.stringValue
                let path = GMSPath.init(fromEncodedPath: points!)
                
                for index in 0...path!.count() - 1 {
                    let pinLocation = CLLocation(coordinate: (path?.coordinate(at: index))!, altitude: 236)
                    self.locations.append(pinLocation)
                }
                self.lastPathLine = GMSPolyline.init(path: path)
                self.lastPathLine?.map = self.mapView
            }
            
            let controller:ARViewController? = self.storyboard!.instantiateViewController(withIdentifier: "ARViewController") as? ARViewController
            guard controller != nil else { return }
            controller!.setCoordinates(positions: self.locations)
            self.present(controller!, animated: true, completion: nil)
        }
    }
    
    @IBAction func resetMarkers(sender:UIButton)
    {
        for index in 0...markers.count - 1 {
            let marker:GMSMarker = markers[index]
            marker.map = nil
        }
        markers.removeAll()
        locations.removeAll()
        lastPathLine?.map = nil
    }
}

