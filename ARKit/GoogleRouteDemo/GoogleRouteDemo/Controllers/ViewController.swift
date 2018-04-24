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
import MapKit
import ARKit

class ViewController: UIViewController, GMSMapViewDelegate
{
    @IBOutlet weak var defaultMapView:UIView!
    
    fileprivate var mapView:GMSMapView!
    fileprivate var markers:[GMSMarker] = Array()
    fileprivate var lastPathLine:GMSPolyline?
    fileprivate var destinationMarker:GMSMarker?
    fileprivate var locations:[CLLocationCoordinate2D] = Array()
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    public override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        let camera = GMSCameraPosition.camera(withLatitude: 54.992932, longitude: 73.371411, zoom: 18.0)
        mapView = GMSMapView.map(withFrame: defaultMapView.bounds, camera: camera)
        mapView.isMyLocationEnabled = true
        mapView.delegate = self
        mapView.settings.myLocationButton = true
        defaultMapView.addSubview(mapView)
    }
    
    public func mapView(_ mapView: GMSMapView, didTapAt coordinate: CLLocationCoordinate2D)
    {
        destinationMarker?.map = nil
        destinationMarker = GMSMarker(position: coordinate)
        destinationMarker!.position.latitude = coordinate.latitude
        destinationMarker!.position.longitude = coordinate.longitude
        destinationMarker!.map = mapView
    }
    
    @IBAction func moveToAR(sender:UIButton)
    {
        let controller:ARViewController? = self.storyboard!.instantiateViewController(withIdentifier: "ARViewController") as? ARViewController
        guard controller != nil else { return }
        //controller!.setCoordinates(positions: self.locations)
        self.navigationController?.pushViewController(controller!, animated: true)
    }
    
    @IBAction func getPath(sender:UIButton)
    {        
        guard destinationMarker != nil else { return }
        let start:CLLocationCoordinate2D = mapView.myLocation!.coordinate
        let end:CLLocationCoordinate2D = destinationMarker!.position
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
                
                self.locations.removeAll()
                for index in 0...path!.count() - 1 {
                    self.locations.append(path!.coordinate(at: index))
                }
                self.lastPathLine?.map = nil
                self.lastPathLine = GMSPolyline.init(path: path)
                self.lastPathLine!.map = self.mapView
            }
        }
    }
}

