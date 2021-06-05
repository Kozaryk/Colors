//
//  ViewController.swift
//  Colors
//
//  Created by Козар Ігор on 21.05.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var transparencySlider: UISlider!
    
    @IBOutlet weak var mixView: UIView!
   
    @IBOutlet weak var redSliderValue: UITextField!
    @IBOutlet weak var greenSliderValue: UITextField!
    @IBOutlet weak var blueSliderValue: UITextField!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mixView.layer.cornerRadius = 10
        mixView.layer.borderWidth = 2
        
        mixView.layer.shadowOffset = CGSize(width: 5, height: 5)
        mixView.layer.shadowOpacity = 0.4
        mixView.layer.shadowRadius = 5
        
        resetButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        resetButton.layer.shadowOpacity = 0.4
        resetButton.layer.shadowRadius = 5
        
        shadows()

    }

    @IBAction func SlidersChangeValue(_ sender: Any) {
        redSliderValue.text = String(format: "%.2f", redSlider.value )
        greenSliderValue.text = String(format: "%.2f", greenSlider.value)
        blueSliderValue.text = String(format: "%.2f", blueSlider.value)
        colorMixer()
    }
    
    @IBAction func transparencyChangeValue(_ sender: Any) {
        colorMixer()
    }
    
    @IBAction func resetColor(_ sender: Any) {
        reset()
    }
    
    
    private func colorMixer() {
        self.mixView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: CGFloat(transparencySlider.value))
    }
    
    private func shadows() {
        let array = [redSlider, greenSlider, blueSlider,
                     transparencySlider, redSliderValue,
                     greenSliderValue, blueSliderValue]
        for index in array{
            index?.layer.shadowOffset = CGSize(width: 2, height: 2)
            index?.layer.shadowOpacity = 0.4
            index?.layer.shadowRadius = 5
        }
    }
    
    private func reset(){
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
        redSliderValue.text = String("")
        greenSliderValue.text = String("")
        blueSliderValue.text = String("")
        transparencySlider.value = 1
        mixView.backgroundColor = UIColor.white
    }
    
}

