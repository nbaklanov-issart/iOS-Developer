import UIKit
import AVFoundation

class CameraView: UIView {
    let previewLayer: AVCaptureVideoPreviewLayer!
    
    init(captureSession: AVCaptureSession) {
        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.backgroundColor = UIColor.black.cgColor
        previewLayer.videoGravity = .resizeAspect
        //previewLayer.connection?.videoOrientation = AVCaptureVideoOrientation.portrait
        //print(previewLayer.connection)
        
        super.init(frame: UIScreen.main.bounds)
        
        layer.addSublayer(previewLayer)
        setNeedsLayout()
        layoutIfNeeded()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        previewLayer.frame = layer.bounds
    }
}
