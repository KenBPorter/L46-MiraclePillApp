//
//  ViewController.swift
//  MiraclePillApp
//
//  Created by Ken Porter on 2016-11-12.
//  Copyright © 2016 Ken Porter. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var stateButton: UIButton!
    
    @IBOutlet weak var statePicker: UIPickerView!
    
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryField: UITextField!
    
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipField: UITextField!
    
    @IBOutlet weak var dividerBottomView: UIView!
    
    @IBOutlet weak var buyNowButton: UIButton!
    
    @IBOutlet weak var successImage: UIImageView!
    
    let states = ["Alaska","Colorado","Mississippi","Nebraska","New York","Utah", "AB", "BC", "ON"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func stateButtonPressed(_ sender: UIButton) {
        statePicker.isHidden = false

        countryLabel.isHidden = true
        countryField.isHidden = true
        zipLabel.isHidden = true
        zipField.isHidden = true
        dividerBottomView.isHidden = true
        buyNowButton.isHidden = true
    }

    @IBAction func buyNowButtonPressed(_ sender: Any) {
        // hide everything
        for view in self.view.subviews as [UIView] {
            if !view.isHidden {
                view.isHidden = true
            }
        }
        // display success image view
        successImage.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]  
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateButton.setTitle(states[row], for: UIControlState.normal
        )
        statePicker.isHidden = true
        
        countryLabel.isHidden = false
        countryField.isHidden = false
        zipLabel.isHidden = false
        zipField.isHidden = false
        
        dividerBottomView.isHidden = false
        
        buyNowButton.isHidden = false
    }
    
    

}

