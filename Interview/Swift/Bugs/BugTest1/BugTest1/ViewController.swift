import UIKit
import AVFoundation

class ViewController: UIViewController, AVCaptureVideoDataOutputSampleBufferDelegate, AVCapturePhotoCaptureDelegate {
    @IBOutlet weak var cameraParentSubview:UIView!
    @IBOutlet weak var count:UILabel!
    
    fileprivate var items:[Item] = Array()
    
    fileprivate let captureSession:AVCaptureSession = AVCaptureSession()
    fileprivate var photoOutput = AVCapturePhotoOutput()
    fileprivate var bufferedQueue = DispatchQueue.global(qos: .userInteractive)
    fileprivate var cameraInput:AVCaptureDeviceInput? = nil
    fileprivate var cameraDevice:AVCaptureDevice? = nil
    fileprivate var previewLayer:AVCaptureVideoPreviewLayer? = nil
    fileprivate var cameraView:CameraView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        captureSession.sessionPreset = .high
        checkAuthorizationStatus()
        
        
    }

    fileprivate func checkAuthorizationStatus() {
        if AVCaptureDevice.authorizationStatus(for: .video) == .authorized {
            setupCaptureSession()
        } else {
            AVCaptureDevice.requestAccess(for: .video, completionHandler: { (authorized) in
                DispatchQueue.main.async {
                    if authorized {
                        self.setupCaptureSession()
                    }
                }
            })
        }
    }
    
    fileprivate func setupCaptureSession() {
        guard captureSession.inputs.isEmpty else { return }
        guard let camera = findCamera() else {
            print("No camera found")
            return
        }
        
        do {
            cameraInput = try AVCaptureDeviceInput(device: camera)
            captureSession.addInput(cameraInput!)
            
            cameraView = CameraView(captureSession: captureSession)
            cameraParentSubview.addSubview(cameraView!)
            previewLayer = cameraView?.previewLayer
            
            cameraDevice = cameraInput!.device
            try cameraInput!.device.lockForConfiguration()
            cameraDevice?.focusMode = AVCaptureDevice.FocusMode.autoFocus
                        
            if cameraDevice!.isFocusPointOfInterestSupported {
                cameraDevice?.focusPointOfInterest = CGPoint(x: 0.5, y: 0.5)
            }
            cameraInput!.device.unlockForConfiguration()
            
            let output = AVCaptureVideoDataOutput()
            output.alwaysDiscardsLateVideoFrames = true
            output.videoSettings = [(kCVPixelBufferPixelFormatTypeKey as NSString) : NSNumber(value: kCVPixelFormatType_32BGRA as UInt32)] as [String : Any]
            output.setSampleBufferDelegate(self, queue: bufferedQueue)
            captureSession.addOutput(output)
            
            photoOutput = AVCapturePhotoOutput()
            photoOutput.isHighResolutionCaptureEnabled = true
            captureSession.addOutput(photoOutput)
            captureSession.startRunning()
            
        } catch let sessionException {
            print("Error creating capture session: \(sessionException)")
            return
        }
    }
    
    fileprivate func findCamera() -> AVCaptureDevice? {
        let deviceTypes: [AVCaptureDevice.DeviceType] = [.builtInDualCamera, .builtInTelephotoCamera, .builtInWideAngleCamera]
        let discovery = AVCaptureDevice.DiscoverySession(deviceTypes: deviceTypes, mediaType: .video, position: .back)
        return discovery.devices.first
    }
    
    fileprivate func imageFromSampleBuffer(sampleBuffer : CMSampleBuffer) -> UIImage {
        let  imageBuffer = CMSampleBufferGetImageBuffer(sampleBuffer)
        CVPixelBufferLockBaseAddress(imageBuffer!, CVPixelBufferLockFlags.readOnly)
        
        let baseAddress = CVPixelBufferGetBaseAddress(imageBuffer!)
        let bytesPerRow = CVPixelBufferGetBytesPerRow(imageBuffer!)
        let width = CVPixelBufferGetWidth(imageBuffer!)
        let height = CVPixelBufferGetHeight(imageBuffer!)
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        
        var bitmapInfo: UInt32 = CGBitmapInfo.byteOrder32Little.rawValue
        bitmapInfo |= CGImageAlphaInfo.premultipliedFirst.rawValue & CGBitmapInfo.alphaInfoMask.rawValue
        
        let context = CGContext.init(data: baseAddress, width: width, height: height, bitsPerComponent: 8, bytesPerRow: bytesPerRow, space: colorSpace, bitmapInfo: bitmapInfo)
        
        let quartzImage = context?.makeImage()
        CVPixelBufferUnlockBaseAddress(imageBuffer!, CVPixelBufferLockFlags.readOnly)
                
        let image = UIImage.init(cgImage: quartzImage!)
        return image
    }
    
    fileprivate func clearSession() {
        captureSession.stopRunning()
        
        let inputs = captureSession.inputs
        for currentInput in inputs {
            captureSession.removeInput(currentInput)
        }
        
        let outputs = captureSession.outputs
        for currentOutput in outputs {
            captureSession.removeOutput(currentOutput)
        }
        cameraView?.removeFromSuperview()
        cameraView = nil
    }
        
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        AVCaptureDevice.requestAccess(for: .video, completionHandler: { (authorized) in
            guard let imageData = photo.fileDataRepresentation() else { return }
            let currentItem = Item()
            currentItem.itemData = imageData
            
            self.items.append(currentItem)
        })
    }
        
    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        if let videoConnection = output.connection(with: AVMediaType.video) {
            videoConnection.videoOrientation = .portrait
            let image:UIImage = imageFromSampleBuffer(sampleBuffer: sampleBuffer)
            if (image.size.width < image.size.height) {
                
            }
        }
    }
    
    @IBAction func takePhoto() {
        let formats = photoOutput.supportedPhotoPixelFormatTypes(for: .tif)
        guard let uncompressedPixelType = formats.first else {
            print("No pixel format types available")
            return
        }
        
        let settings = AVCapturePhotoSettings(format: [kCVPixelBufferPixelFormatTypeKey as String : uncompressedPixelType])
        settings.isHighResolutionPhotoEnabled = true
        settings.isAutoStillImageStabilizationEnabled = true
        photoOutput.capturePhoto(with: settings, delegate: self)
    }
    
}

