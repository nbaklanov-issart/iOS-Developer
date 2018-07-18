using System;
using MvvmCross.ViewModels;

namespace PixelPaint
{
    public class App:MvxApplication
    {
        public override void Initialize()
        {
            //Mvx.RegisterType<ICalculationService, CalculationService>();

            RegisterAppStart<SelectImageViewModel>();
        }
    }
}
