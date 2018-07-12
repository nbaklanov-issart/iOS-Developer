using System;
using Android.Content;

namespace PixelPaint.Droid.Utils.Navigation
{
    public interface INavigatorOwner
    {
        void BackCommandHandle();
        void DisplayMessage(String messageText);
        Context GetContext();
    }
}
