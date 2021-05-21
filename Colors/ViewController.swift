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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func redSliderChangeValue(_ sender: Any) {
        redSliderValue.text = String(format: "%.2f", redSlider.value )
        colorMixer()
    }
    @IBAction func greenSliderChangeValue(_ sender: Any) {
        greenSliderValue.text = String(format: "%.2f", greenSlider.value)
        colorMixer()
    }
    @IBAction func blueSliderChangeValue(_ sender: Any) {
        blueSliderValue.text = String(format: "%.2f", blueSlider.value)
        colorMixer()
    }
    
    @IBAction func transparencyChangeValue(_ sender: Any) {
        colorMixer()
    }
    
    func colorMixer() {
        self.mixView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                                    green: CGFloat(greenSlider.value),
                                                    blue: CGFloat(blueSlider.value),
                                                    alpha: CGFloat(transparencySlider.value))
        
    }
    
}

