
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.Graphics;
using Android.Hardware;
using Android.OS;
using Android.Runtime;
using Android.Util;
using Android.Views;
using Android.Widget;
using Java.IO;

namespace PixelPaint.Droid.Controls
{
    public class CameraPreview : SurfaceView, ISurfaceHolderCallback
    {
        private ISurfaceHolder mHolder;
        private Android.Hardware.Camera surfaceCamera;

        public CameraPreview(Context context, Android.Hardware.Camera camera) : base(context)
        {
            surfaceCamera = camera;

            // Install a SurfaceHolder.Callback so we get notified when the
            // underlying surface is created and destroyed.
            mHolder = Holder;
            mHolder.AddCallback(this);

            // deprecated setting, but required on Android versions prior to 3.0
            mHolder.SetType(SurfaceType.PushBuffers);
        }

        public void SurfaceCreated(ISurfaceHolder holder)
        {
            // The Surface has been created, now tell the camera where to draw the preview.
            try
            {
                surfaceCamera.SetPreviewDisplay(holder);
                surfaceCamera.StartPreview();
            }
            catch (IOException e)
            {
                Log.Debug("TEST", "Error setting camera preview: " + e.Message);
            }
        }

        public void SurfaceDestroyed(ISurfaceHolder holder)
        {
            // empty. Take care of releasing the Camera preview in your activity.
        }

        public void SurfaceChanged(ISurfaceHolder holder, [GeneratedEnum] Format format, int width, int height)
        {
            // If your preview can change or rotate, take care of those events here.
            // Make sure to stop the preview before resizing or reformatting it.

            if (mHolder.Surface == null)
            {
                // preview surface does not exist
                return;
            }

            // stop preview before making changes
            try
            {
                surfaceCamera.StopPreview();
            }
            catch (Exception e)
            {
                // ignore: tried to stop a non-existent preview
            }

            // set preview size and make any resize, rotate or
            // reformatting changes here

            // start preview with new settings
            try
            {
                surfaceCamera.SetPreviewDisplay(mHolder);
                surfaceCamera.StartPreview();

            }
            catch (Exception e)
            {
                Log.Debug("SDDSDSdsddssd", "Error starting camera preview: " + e.Message);
            }
        }
    }
}
