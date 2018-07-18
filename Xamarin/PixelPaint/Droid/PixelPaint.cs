using System;
using Android.App;
using Android.Content;
using Android.Runtime;
using Android.Widget;

using RU.Terrakok.Cicerone;

using PixelPaint.Droid.Utils.Navigation;
using PixelPaint.Droid.Utils;

namespace PixelPaint.Droid
{
    /*[Application]
    public class PixelPaint: Application, INavigatorOwner
    {
        public static PixelPaint instance = null;
        private Cicerone cicerone = null;

        public PixelPaint(IntPtr handle, JniHandleOwnership transfer) : base(handle, transfer)
        {
            FrameNavigator frameNavigator = new FrameNavigator(this);
            cicerone = Cicerone.Create();
            cicerone.NavigatorHolder.SetNavigator(frameNavigator);

            instance = this;
            NavigateTo(Constants.MAIN_ACTIVITY);
        }

        public void NavigateTo(String activityName)
        {
            ((Router)cicerone.Router).NavigateTo(activityName);
        }

        public void DisplayMessage(string messageText)
        {
            Toast.MakeText(this, messageText, ToastLength.Long);
        }

        public Context GetContext()
        {
            return this;
        }
    }*/
}
