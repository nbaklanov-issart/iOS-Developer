//
//  ARViewController.swift
//  GoogleRouteDemo
//
//  Created by Nikolai Baklanov on 29/03/2018.
//  Copyright © 2018 Nikolai Baklanov. All rights reserved.
//

import UIKit
import MapKit
import ARKit

class ARViewController: UIViewController, ARSCNViewDelegate
{
    /*@IBOutlet weak var sceneLocationView:SceneLocationView!
    
    fileprivate var nodes:[LocationAnnotationNode] = Array()
    fileprivate var coordinates:[CLLocation] = Array()*/
    
    @IBOutlet weak var sceneView: ARSCNView!
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let scene = SCNScene()
        sceneView.delegate = self
        sceneView.scene = scene
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        let configuration = ARWorldTrackingConfiguration()
        configuration.worldAlignment = .gravityAndHeading
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        super.viewWillDisappear(animated)
        sceneView.session.pause()
    }
    
    public override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        
        /*print(String.init(format: "coors : %@", coordinates))
        
        let image = UIImage(named: "pin")!
        for location:CLLocation in coordinates {
            let annotationNode = LocationAnnotationNode(location: location, image: image)
            annotationNode.scaleRelativeToDistance = true
            print(annotationNode.locationConfirmed)
            sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
            nodes.append(annotationNode)
        }
        
        for index in 0...self.coordinates.count - 2 {
            let firstNode:SCNVector3 = nodes[index].position
            let secondNode:SCNVector3 = nodes[index + 1].position
            
            let line = SCNGeometry.lineFrom(vector: firstNode, toVector: secondNode)
            let lineNode = SCNNode(geometry: line)
            lineNode.geometry?.firstMaterial?.diffuse.contents = UIColor.white
            sceneLocationView.scene.rootNode.addChildNode(lineNode)
        }*/
    }
    
    public func setCoordinates(positions:[CLLocation])->Void
    {
        //coordinates = positions
    }
}
