using System;
using Android.App;
using Android.Content;
using Android.Runtime;

namespace PixelPaint.Droid
{
    [Application]
    public class PixelPaint: Application
    {
        public PixelPaint(IntPtr handle, JniHandleOwnership transfer) : base(handle, transfer)
        {
            // do any initialisation you want here (for example initialising properties)
        }

        public override void OnCreate()
        {
            base.OnCreate();
            StartActivity(new Intent(this, typeof(MainActivity)));
        }

        public void BackCommandHandle()
        {
            
        }

        /*public void DisplayMessage(string messageText)
        {
            Toast.MakeText(this, messageText, ToastLength.Long);
        }

        public Context GetContext()
        {
            return this;
        }*/
    }
}
