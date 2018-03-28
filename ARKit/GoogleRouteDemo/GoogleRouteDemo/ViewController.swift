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

class ViewController: UIViewController
{
    @IBOutlet weak var defaultMapView:UIView!
    
    fileprivate var sceneLocationView:SceneLocationView = SceneLocationView()
    
    fileprivate var mapView:GMSMapView!
    fileprivate var nodes:[LocationAnnotationNode] = Array()
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        
        sceneLocationView.run()
        
       // let coordinate = CLLocationCoordinate2D(latitude: 51.504571, longitude: -0.019717)
       // let location = mapView.myLocation
        let image = UIImage(named: "pin")!
        
        
        
        /*
         NSString *urlString = [NSString stringWithFormat:
         @"%@?origin=%f,%f&destination=%f,%f&sensor=true&key=%@",
         @"https://maps.googleapis.com/maps/api/directions/json",
         mapView.myLocation.coordinate.latitude,
         mapView.myLocation.coordinate.longitude,
         destLatitude,
         destLongitude,
         @"Your Google Api Key String"];
         */
        
        let urlString:String = String.init(format:"https://maps.googleapis.com/maps/api/directions/json?origin=%f,%f&destination=%f,%f&sensor=true&mode=walking&key=%@",
                                           54.992932,
                                           73.371411,
                                           54.967134,
                                           73.381636,
                                           GoogleCredentianals.API_KEY)
        print(urlString)
        
        Alamofire.request(urlString).responseJSON { response in
            let json = JSON(response.data!)
            let routes = json["routes"].arrayValue
            
            let annotationNode = LocationAnnotationNode(location: self.mapView.myLocation, image: image)
            self.sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
            self.nodes.append(annotationNode)
            
            for route in routes {
                let routeOverviewPolyline = route["overview_polyline"].dictionary
                let points = routeOverviewPolyline?["points"]?.stringValue
                let path = GMSPath.init(fromEncodedPath: points!)
                let image = UIImage(named: "pin")!
                
                for index in 0...path!.count() - 1 {
                    print(path?.coordinate(at: index))
                    let pinLocation = CLLocation(coordinate: (path?.coordinate(at: index))!, altitude: 236)
                    let annotationNode = LocationAnnotationNode(location: pinLocation, image: image)
                    annotationNode.scaleRelativeToDistance = true
                    self.sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
                    self.nodes.append(annotationNode)
                }
                //self.view.addSubview(self.sceneLocationView)
                let polyline = GMSPolyline.init(path: path)
                polyline.map = self.mapView
            }
            
            for index in 0...self.nodes.count - 2 {
                let firstNode:SCNVector3 = self.nodes[index].position
                let secondNode:SCNVector3 = self.nodes[index + 1].position
                
                let line = SCNGeometry.lineFrom(vector: firstNode, toVector: secondNode)
                let lineNode = SCNNode(geometry: line)
                lineNode.geometry?.firstMaterial?.diffuse.contents = UIColor.white
                self.sceneLocationView.scene.rootNode.addChildNode(lineNode)
            }
        }
    }
    
    public override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        
        let camera = GMSCameraPosition.camera(withLatitude: 54.992932, longitude: 73.371411, zoom: 18.0)
        mapView = GMSMapView.map(withFrame: defaultMapView.bounds, camera: camera)
        mapView.isMyLocationEnabled = true
        defaultMapView.addSubview(mapView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        sceneLocationView.run()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // Pause the view's session
        sceneLocationView.pause()
    }
}

