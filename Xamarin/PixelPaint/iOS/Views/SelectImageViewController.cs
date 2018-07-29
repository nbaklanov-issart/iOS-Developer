using System;
using MvvmCross.Platforms.Ios.Views;
using PixelPaint.Models;
using PixelPaint.Models.SelectImage;
using UIKit;

namespace PixelPaint.iOS.Views
{
    public partial class SelectImageViewController : MvxViewController<SelectImageViewModel>
    {
        private SelectImageDataSource DataSource;

        public SelectImageViewController() : base("SelectImageViewController", null)
        {            
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

            DataSource = new SelectImageDataSource(ImagesTableView);
            ImagesTableView.Source = DataSource;
            ImagesTableView.ReloadData();
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }
    }
}

