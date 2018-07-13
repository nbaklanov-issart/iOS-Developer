using System;
using Android.Content;
using PixelPaint.Droid.Activities;
using RU.Terrakok.Cicerone;
using RU.Terrakok.Cicerone.Commands;

namespace PixelPaint.Droid.Utils.Navigation
{
    public class FrameNavigator : Java.Lang.Object, INavigator
    {
        private INavigatorOwner owner;

        public FrameNavigator(INavigatorOwner navigatorOwner)
        {
            owner = navigatorOwner;
        }

        public void ApplyCommands(ICommand[] p0)
        {
            foreach(ICommand currentCommand in p0) 
            {
                ApplyCommand(currentCommand);   
            }
        }

        private void ApplyCommand(ICommand command)
        {
            if(command is Back) {
                owner.DisplayMessage("Unknown command : Back");
            } else if(command is Replace) {
                owner.DisplayMessage("Unknown command : Replace");
            } else if(command is Forward) {
                Forward forwardCommand = (Forward)command;
                navigateToActivity(forwardCommand.ScreenKey, forwardCommand.TransitionData);
            }
        }

        private void navigateToActivity(String activityName, Java.Lang.Object parameters) 
        {
            switch(activityName) {
                case Constants.MAIN_ACTIVITY: {
                        owner.GetContext().StartActivity(new Intent(owner.GetContext(), typeof(MainActivity)));
                        break;
                    }
                case Constants.CAPTURE_PHOTO_ACTIVITY: {
                        owner.GetContext().StartActivity(new Intent(owner.GetContext(), typeof(CapturePhotoActivity)));
                        break;
                    }

            }
        }
    }
}
