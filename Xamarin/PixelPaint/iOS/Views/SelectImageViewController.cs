using System;
using MvvmCross.Binding.BindingContext;
using MvvmCross.Platforms.Ios.Views;
using PixelPaint.Models;
using PixelPaint.Models.SelectImage;
using UIKit;

namespace PixelPaint.iOS.Views
{
    public partial class SelectImageViewController : MvxViewController<SelectImageViewModel>
    {
        public SelectImageViewController() : base("SelectImageViewController", null)
        {           
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

            Console.WriteLine("HERE");

            var binding = this.CreateBindingSet<SelectImageViewController, SelectImageViewModel>();
            binding.Bind(TakeImageButton).To(vm => vm.MoveToImageTakeCommand);
            binding.Apply();
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }
    }
}

