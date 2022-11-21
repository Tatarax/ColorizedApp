//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Dinar on 20.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var colorRangeForRed: UILabel!
    @IBOutlet var colorRangeForGreen: UILabel!
    @IBOutlet var colorRangeForBlue: UILabel!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        rangeForRed()
        rangeForGreen()
        rangeForBlue()
        sutepSliderRed()
        sutepSliderGreen()
        sutepSliderBlue()
    }
    
    // Action Slider:
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
    
    
    
    
    //Private Metod:
    private func rangeForRed() {
        colorRangeForRed.text = String(sliderRed.value)
    }
    
    private func rangeForGreen() {
        colorRangeForGreen.text = String(sliderGreen.value)
    }
    
    private func rangeForBlue() {
        colorRangeForBlue.text = String(sliderBlue.value)
    }
    
    private func sutepSliderRed() {
        sliderRed.value = 0
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 1
        sliderRed.thumbTintColor = .blue
        sliderRed.maximumTrackTintColor = .white
        sliderRed.minimumTrackTintColor = .red
    }
    
    private func sutepSliderGreen() {
        sliderGreen.value = 0
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 1
        sliderGreen.thumbTintColor = .blue
        sliderGreen.maximumTrackTintColor = .white
        sliderGreen.minimumTrackTintColor = .green
    }
    
    private func sutepSliderBlue() {
        sliderBlue.value = 0
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 1
        sliderBlue.thumbTintColor = .blue
        sliderBlue.maximumTrackTintColor = .white
        sliderBlue.minimumTrackTintColor = .blue
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

