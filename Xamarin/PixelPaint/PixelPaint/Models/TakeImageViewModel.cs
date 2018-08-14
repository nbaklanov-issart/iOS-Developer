using System;
using MvvmCross.Navigation;
using MvvmCross.ViewModels;

namespace PixelPaint.Models
{
    public class TakeImageViewModel:MvxViewModel
    {
        private readonly IMvxNavigationService navigationService;

        public TakeImageViewModel(IMvxNavigationService modelNavigationService)
        {
            navigationService = modelNavigationService;
        }
    }
}
