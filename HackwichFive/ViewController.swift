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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func sliderHasMoved(_ sender: Any) {
        
    print("The value of the slider is:\(slider.value)")
    currentValue = lroundf(slider.value)
    }
    
    
    @IBAction func myGuessButtonPressed(_ sender: Any) {
        //1. create alert view
        let alert = UIAlertController(title:"Hello World!", message: "This is my first alert view", preferredStyle: .alert)
        
        //2. button that user taps to dismiss view controller
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        //3.add the button to the alertview
        alert.addAction(action)
        
        //4. present alertview on the screen
        present(alert, animated: true, completion: nil)
        
        //5. New variable message that displays a message that includes currentValue
        let message = "The value is : \(currentValue)"
    }
}

