using Android.App;
using Android.Widget;
using Android.OS;
using PixelPaint.Droid.Utils.Navigation;
using System;
using Android.Content;
using PixelPaint.Droid.Utils;

namespace PixelPaint.Droid.Activities
{
    [Activity(Label = "PixelPaint", MainLauncher = true, Icon = "@mipmap/icon")]
    public class MainActivity : Activity
    {
        int count = 1;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.Main);

            Button button = FindViewById<Button>(Resource.Id.myButton);
            //button.Click += delegate { PixelPaint.instance.NavigateTo(Constants.CAPTURE_PHOTO_ACTIVITY); };
        }
    }
}

