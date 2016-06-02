//
//  ViewController.swift
//  CATransitionDemo
//
//  Created by Jake Chasan on 6/1/16.
//  Copyright © 2016 Jake Chasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    //Class Variables
    var transitions = ["oglFlip", "pageCurl", "pageUnCurl", "fade", "cube", "moveIn", "push", "reveal", "rippleEffect", "suckEffect", "cameraIris"];
    var directions = [kCATransitionFromLeft, kCATransitionFromRight, kCATransitionFromTop, kCATransitionFromBottom];
    var durations = [0.0, 0.15, 0.25, 0.5, 0.75, 1.0, 1.5, 2.0, 3.0, 4.0];
    
    var imageName = "imageA.jpg";
    @IBOutlet var transitionPicker: UIPickerView!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        self.pickerView.delegate = self;
        self.pickerView.dataSource = self;
        
        self.pickerView.selectRow(transitions.count / 2, inComponent: 0, animated: false);
        self.pickerView.selectRow(directions.count / 2, inComponent: 1, animated: false);
        self.pickerView.selectRow(durations.count / 2, inComponent: 2, animated: false);
    }
    
    //UIPickerView DataSource method
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        //Three columns: type, direction, duration
        return 3;
    }
    
    //UIPickerView DataSource method
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //Determine how many rows in each column
        switch(component){
            case 0:return transitions.count;
            case 1: return directions.count;
            case 2: return durations.count;
            default: return 0;
        }
    }
    
    //UIPickerView DataSource method
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //Determine the title of each row in each column
        switch(component){
            case 0:return transitions[row];
            case 1: return directions[row];
            case 2: return String(durations[row]) + "s";
            default: return "";
        }
    }
    
    //This method is only necessary because the cameraIris transition sometimes does not go away after the animation is complete
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.view.layoutIfNeeded();
    }
    
    //Called when "View Transition" button tapped
    @IBAction func showTransition(sender: UIButton) {
        //Initialize the transition
        let animation = CATransition();
        
        //Set transition properties
        animation.type = transitions[pickerView.selectedRowInComponent(0)];
        animation.subtype = directions[pickerView.selectedRowInComponent(1)];
        animation.duration = durations[pickerView.selectedRowInComponent(2)];
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut);
        
        //Switch the image
        if(self.imageName == "imageA.jpg"){
            self.imageView.image = UIImage(named: "imageB.jpg");
            self.imageName = "imageB.jpg";
        }
        else{
            self.imageView.image = UIImage(named: "imageA.jpg");
            self.imageName = "imageA.jpg";
        }
        
        //Add transition to imageView, so that the entire view does not refresh
        self.imageView.layer.addAnimation(animation, forKey: "animation");
    }
}

