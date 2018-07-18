﻿using System;
using MvvmCross.ViewModels;
using PixelPaint.Models;

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
