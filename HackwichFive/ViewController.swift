//
//  ViewController.swift
//  HackwichFive
//
//  Created by Sergio San Pedro on 3/7/19.
//  Copyright © 2019 Sergio San Pedro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var slider: UISlider!
    //create a variable that can hold the value of the slider
    var currentValue: Int = 0

    var targetValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        currentValue = lroundf(slider.value)
        
        startNewRound()
        
        
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")
        
        slider.setThumbImage(thumbImageNormal, for: .normal)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }

    func startNewRound() {
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
    }
    
    @IBAction func sliderHasMoved(_ sender: Any) {
        
    print("The value of the slider is:\(slider.value)")
        
    currentValue = lroundf(slider.value)
        
        
    }
    

    @IBAction func myGuessButtonPressed(_ sender: Any) {
    
        //1. create alert view
        let message = "The value is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(title:"Hello World!", message: message, preferredStyle: .alert)
       
        
        //2. button that user taps to dismiss view controller
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        //3.add the button to the alertview
        alert.addAction(action)
        
       
        //4. present alertview on the screen
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        //5. New variable message that displays a message that includes currentValue
        
        updateTargetLabel()
        
        
    }
    
    @IBOutlet var targetLabel: UILabel!
    
    func updateTargetLabel () {
        
    targetLabel.text = String(targetValue)
        
}
        
}
