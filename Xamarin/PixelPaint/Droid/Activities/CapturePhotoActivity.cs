using System;
using Android.App;
using Android.Hardware;
using Android.OS;
using Android.Widget;
using PixelPaint.Droid.Controls;

namespace PixelPaint.Droid.Activities
{
    [Activity]
    public class CapturePhotoActivity : Activity
    {
        private Camera mCamera;
        private CameraPreview mPreview;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.CaptureActivityLayout);

            mCamera = getCameraInstance();

            // Create our Preview view and set it as the content of our activity.
            mPreview = new CameraPreview(this, mCamera);
            FrameLayout preview = (FrameLayout)FindViewById(Resource.Id.camera_preview);
            preview.AddView(mPreview);
        }

        public static Camera getCameraInstance()
        {
            Camera c = null;
            try
            {
                c = Camera.Open(); // attempt to get a Camera instance
            }
            catch (Exception e)
            {
                // Camera is not available (in use or does not exist)
            }
            return c; // returns null if camera is unavailable
        }
    }
}
