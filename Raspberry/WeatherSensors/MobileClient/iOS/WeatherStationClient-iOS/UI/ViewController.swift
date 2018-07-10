//
//  ViewController.swift
//  WeatherStationClient-iOS
//
//  Created by Nikolai Baklanov on 09/07/2018.
//  Copyright © 2018 Nikolai Baklanov. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var humidityValueLabel:UILabel!
    @IBOutlet weak var temperatureValueLabel:UILabel!
    @IBOutlet weak var pressureValueLabel:UILabel!
    
    fileprivate let viewModel:MainViewModel = MainViewModel()
    fileprivate let disposeBag:DisposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.humidity.bind(to: humidityValueLabel.rx.text).disposed(by: disposeBag)
        viewModel.temperature.bind(to: temperatureValueLabel.rx.text).disposed(by: disposeBag)
        viewModel.pressure.bind(to: pressureValueLabel.rx.text).disposed(by: disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

