using System;
using Foundation;
using MvvmCross.Platforms.Ios.Binding.Views;
using UIKit;

namespace PixelPaint.Models.SelectImage
{
    public class SelectImageDataSource : MvxTableViewSource
    {
        public SelectImageDataSource(UITableView table) : base(table)
        {
            TableView.SeparatorStyle = UITableViewCellSeparatorStyle.None;
        }

        protected override UITableViewCell GetOrCreateCellFor(UITableView tableView, NSIndexPath indexPath, object item)
        {
            return new UITableViewCell();
        }
    }
}
