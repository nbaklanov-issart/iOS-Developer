// WARNING
//
// This file has been generated automatically by Visual Studio from the outlets and
// actions declared in your storyboard file.
// Manual changes to this file will not be maintained.
//
using Foundation;
using System;
using System.CodeDom.Compiler;
using UIKit;

namespace PixelPaint.iOS.Views
{
    [Register ("SelectImageViewController")]
    partial class SelectImageViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton TakeImageButton { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (TakeImageButton != null) {
                TakeImageButton.Dispose ();
                TakeImageButton = null;
            }
        }
    }
}