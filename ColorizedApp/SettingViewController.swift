//
//  SettingViewController.swift
//  ColorizedApp
//
//  Created by Dinar on 20.11.2022.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var colorRangeForRed: UILabel!
    @IBOutlet var colorRangeForGreen: UILabel!
    @IBOutlet var colorRangeForBlue: UILabel!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
   
    var delegate: SettingsViewControllerDelegate!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        settingSliderRGB(color: .red, slider: sliderRed)
        settingSliderRGB(color: .green, slider: sliderGreen)
        settingSliderRGB(color: .blue, slider: sliderBlue)
        rangeForRGB()
        changeColorView()
    }
    
    
    @IBAction func backButton() {
        delegate.setNewColorView(colorRedView: CGFloat(sliderRed.value), colorGreenView:CGFloat(sliderGreen.value), colorBlue: CGFloat(sliderBlue.value), alpha: CGFloat(1))
    }
    
    
    //MARK:  Action Slider
    @IBAction func sliderActionRed() {
        colorRangeForRed.text = "\(round(sliderRed.value * 100) / 100)"
        changeColorView()
        
    }
    
    @IBAction func sliderActionGreen() {
        colorRangeForGreen.text = "\(round(sliderGreen.value * 100) / 100)"
        changeColorView()
    }
    
    @IBAction func sliderActionBlue() {
        colorRangeForBlue.text = "\(round(sliderBlue.value * 100) / 100)"
        changeColorView()
    }
    
    
    //MARK: Private Metod
    private func settingSliderRGB(color: UIColor, slider: UISlider) {
        slider.value = 0
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.thumbTintColor = .blue
        slider.maximumTrackTintColor = .white
        slider.minimumTrackTintColor = .red
    }
    
   
    private func rangeForRGB() {
        colorRangeForRed.text = String(sliderRed.value)
        colorRangeForGreen.text = String(sliderGreen.value)
        colorRangeForBlue.text = String(sliderBlue.value)
    }
    
    
    private func changeColorView() {
        colorView.backgroundColor = UIColor(
            displayP3Red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: CGFloat(1)
        )
    }
    
}

