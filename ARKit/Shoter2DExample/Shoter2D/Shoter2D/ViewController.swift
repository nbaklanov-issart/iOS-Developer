//
//  ViewController.swift
//  Shoter2D
//
//  Created by Nikolai Baklanov on 24/03/2018.
//  Copyright © 2018 Nikolai Baklanov. All rights reserved.
//

import UIKit
import ARKit

class ViewController: UIViewController, ARSKViewDelegate
{
    @IBOutlet weak var sceneView:ARSKView!
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        sceneView.showsFPS = true
        sceneView.delegate = self
        sceneView.presentScene(SKScene.init(fileNamed: "ShotingScene"))
    }

    public override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        let configuration = ARWorldTrackingConfiguration()
        sceneView.session.run(configuration)
    }

    public override func viewWillDisappear(_ animated: Bool)
    {
        super.viewWillDisappear(animated)
        sceneView.session.pause()
    }

    public func view(_ view: ARSKView, nodeFor anchor: ARAnchor) -> SKNode?
    {
        var node: SKNode?
        if let anchor = anchor as? Anchor {
            if let type = anchor.type {
                node = SKSpriteNode(imageNamed: type.rawValue)
                node?.name = type.rawValue
            }
        }
        return node
    }
    
    public func session(_ session: ARSession, didFailWithError error: Error)
    {
        print(String.init(format:"Session did fail with error: %@", error.localizedDescription))
    }
    
    public func sessionWasInterrupted(_ session: ARSession)
    {
        print("Session was interrupted")
    }
    
    public func sessionInterruptionEnded(_ session: ARSession)
    {
        print("Session interrupting ended")
        sceneView.session.run(session.configuration!,
                              options: [.resetTracking, .removeExistingAnchors])
    }
}

