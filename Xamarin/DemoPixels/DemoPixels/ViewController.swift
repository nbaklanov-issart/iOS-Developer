import UIKit
import AVFoundation

class ViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate, AVCaptureVideoDataOutputSampleBufferDelegate {
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var img:UIImageView!
    
    var session: AVCaptureSession?
    var device: AVCaptureDevice?
    var input: AVCaptureDeviceInput?
    var output: AVCaptureMetadataOutput?
    var videoOutput = AVCaptureVideoDataOutput()
    var prevLayer: AVCaptureVideoPreviewLayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createSession()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        prevLayer?.frame.size = myView.frame.size
    }
    
    func createSession() {
        session = AVCaptureSession()
        device = AVCaptureDevice.default(for: AVMediaType.video)
        
        videoOutput.setSampleBufferDelegate(self, queue: DispatchQueue.global(qos: .userInteractive))
        
        var error: NSError? = nil
        input = try? AVCaptureDeviceInput(device: device!)
        if error == nil {
            session?.addInput(input!)
            session?.addOutput(videoOutput)
        } else {
            print("camera input error: \(error)")
        }
        
        
        
        
        prevLayer = AVCaptureVideoPreviewLayer(session: session!)
        prevLayer?.frame.size = myView.frame.size
        prevLayer?.videoGravity = AVLayerVideoGravity.resizeAspectFill
        
        prevLayer?.connection?.videoOrientation = transformOrientation(orientation: UIInterfaceOrientation(rawValue: UIApplication.shared.statusBarOrientation.rawValue)!)
        
        myView.layer.addSublayer(prevLayer!)
        
        session?.startRunning()
    }
    
    func cameraWithPosition(position: AVCaptureDevice.Position) -> AVCaptureDevice? {
        let devices = AVCaptureDevice.devices(for: AVMediaType.video)
        for device in devices {
            if device.position == position {
                return device as? AVCaptureDevice
            }
        }
        return nil
    }
    
    func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animate(alongsideTransition: { (context) -> Void in
            self.prevLayer?.connection?.videoOrientation = self.transformOrientation(orientation: UIInterfaceOrientation(rawValue: UIApplication.shared.statusBarOrientation.rawValue)!)
            self.prevLayer?.frame.size = self.myView.frame.size
        }, completion: { (context) -> Void in
            
        })
    }
    
    func transformOrientation(orientation: UIInterfaceOrientation) -> AVCaptureVideoOrientation {
        switch orientation {
        case .landscapeLeft:
            return AVCaptureVideoOrientation.landscapeLeft
        case .landscapeRight:
            return AVCaptureVideoOrientation.landscapeRight
        case .portraitUpsideDown:
            return AVCaptureVideoOrientation.portraitUpsideDown
        default:
            return AVCaptureVideoOrientation.portrait
        }
    }
    
    @IBAction func switchCameraSide(sender: AnyObject) {
        if let sess = session {
            let currentCameraInput: AVCaptureInput = sess.inputs[0] as! AVCaptureInput
            sess.removeInput(currentCameraInput)
            var newCamera: AVCaptureDevice
            if (currentCameraInput as! AVCaptureDeviceInput).device.position == .back {
                newCamera = self.cameraWithPosition(position: .front)!
            } else {
                newCamera = self.cameraWithPosition(position: .back)!
            }
            let newVideoInput = try? AVCaptureDeviceInput(device: newCamera)
            session?.addInput(newVideoInput!)
        }
    }
    
    public func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        
        let pixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer)
        let cameraImage = CIImage.init(cvPixelBuffer: pixelBuffer!)
        let comicEffect = CIFilter(name: "CIPixellate")
        comicEffect!.setValue(10, forKey: kCIInputScaleKey)
        comicEffect!.setValue(cameraImage, forKey: kCIInputImageKey)
        
        let filteredImage = UIImage.init(ciImage: (comicEffect!.value(forKey: kCIOutputImageKey) as! CIImage?)!)
        DispatchQueue.main.async()
        {
            self.img.image = filteredImage
        }
    }

    
}

