using System;
using MvvmCross.Commands;
using MvvmCross.Navigation;
using MvvmCross.ViewModels;

namespace PixelPaint.Models
{
    public class SelectImageViewModel:MvxViewModel
    {
        private readonly IMvxNavigationService navigationService;

        public SelectImageViewModel(IMvxNavigationService modelNavigationService) {
            navigationService = modelNavigationService;
        }

        public async void NavigateToImageTakeController() {
            await navigationService.Navigate<TakeImageViewModel>();
        }

        public IMvxCommand MoveToImageTakeCommand {
            get { return new MvxCommand(NavigateToImageTakeController); }
        }
    }
}
