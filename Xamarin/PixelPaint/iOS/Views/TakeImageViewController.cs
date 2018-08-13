using System;
using AVFoundation;
using CoreFoundation;
using CoreGraphics;
using Foundation;
using MvvmCross.Platforms.Ios.Views;
using PixelPaint.iOS.Views.Base;
using PixelPaint.Models;
using UIKit;

namespace PixelPaint.iOS.Views
{
    public partial class TakeImageViewController : MvxViewController<TakeImageViewModel>, IAVCaptureVideoDataOutputSampleBufferDelegate
    {
        private AVCaptureSession session;
        private AVCaptureDevice device;
        private AVCaptureDeviceInput input;
        private AVCaptureMetadataOutput output;
        private AVCaptureVideoDataOutput videoDataOutput;
        private AVCaptureVideoPreviewLayer previewLayer;

        public TakeImageViewController() : base("TakeImageViewController", null)
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            videoDataOutput = new AVCaptureVideoDataOutput();
        }

		public override void ViewDidAppear(bool animated)
		{
            base.ViewDidAppear(animated);
            if (previewLayer != null) {
                CGRect frame = previewLayer.Frame;
                frame.Size = ParentView.Frame.Size;
                previewLayer.Frame = frame;
            }
		}

        private void CreateSession()
        {
            session = new AVCaptureSession();
            device = AVCaptureDevice.GetDefaultDevice(AVMediaTypes.Video);

            videoDataOutput.SetSampleBufferDelegateQueue(this, DispatchQueue.DefaultGlobalQueue);

            NSError error = null;
            input = new AVCaptureDeviceInput(device, out error);
            if (error == null)
            {
                session.AddInput(input);
                session.AddOutput(videoDataOutput)
            }
            else
            {
                Console.WriteLine("Camera init error!");
            }

            previewLayer = new AVCaptureVideoPreviewLayer(session);
            CGRect frame = previewLayer.Frame;
            frame.Size = ParentView.Frame.Size;

            previewLayer.Frame = frame;
            previewLayer.VideoGravity = AVLayerVideoGravity.ResizeAspectFill;
            previewLayer.Connection.VideoOrientation = TransformOrientation(UIApplication.SharedApplication.StatusBarOrientation);

            ParentView.Layer.AddSublayer(previewLayer);
            session.StartRunning();
        }

        private AVCaptureVideoOrientation TransformOrientation(UIInterfaceOrientation orientation) 
        {
            AVCaptureVideoOrientation converted = AVCaptureVideoOrientation.Portrait;
            switch(orientation) {
                case UIInterfaceOrientation.LandscapeLeft: {
                        converted = AVCaptureVideoOrientation.LandscapeLeft;
                        break;
                    }
                case UIInterfaceOrientation.LandscapeRight:
                    {
                        converted = AVCaptureVideoOrientation.LandscapeRight;
                        break;
                    }
                case UIInterfaceOrientation.Portrait:
                    {
                        converted = AVCaptureVideoOrientation.Portrait;
                        break;
                    }
                case UIInterfaceOrientation.PortraitUpsideDown:
                    {
                        converted = AVCaptureVideoOrientation.PortraitUpsideDown;
                        break;
                    }
            }
            return converted;
        }

        public AVCaptureDevice CameraWithPosition(AVCaptureDevicePosition position)
        {
            AVCaptureDevice[] devices = AVCaptureDevice.DevicesWithMediaType(AVMediaType.Video);
            foreach (AVCaptureDevice currentDevice in devices)
            {
                if (currentDevice.Position == position)
                {
                    return currentDevice;
                }
            }
            return null;
        }

		public override void ViewWillTransitionToSize(CGSize toSize, IUIViewControllerTransitionCoordinator coordinator)
		{
            //coordinator.AnimateAlongsideTransition()
		}


	}
    
    /*func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
{
    coordinator.animate(alongsideTransition: {
        (context)->Void in
            self.prevLayer?.connection?.videoOrientation = self.transformOrientation(orientation: UIInterfaceOrientation(rawValue: UIApplication.shared.statusBarOrientation.rawValue)!)
            self.prevLayer?.frame.size = self.myView.frame.size
        }, completion:
    {
        (context)->Void in
            
        })
    }
    }*/
}

