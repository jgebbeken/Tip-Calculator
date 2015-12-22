//
//  ViewController.swift
//  tips
//
//  Created by Josh Gebbeken on 12/8/15.
//  Copyright © 2015 Josh Gebbeken. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Tip Label
    @IBOutlet weak var tipLabel: UILabel!
    
    // Bill Amount field
    @IBOutlet weak var billField: UITextField!
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Title
        self.title = "Tip Calculator"
        
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set tip and total labels to $0.00
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
        
        // Set default selected tip from NSUserDefaults
        let defaults = NSUserDefaults.standardUserDefaults()
        let dblSegTipDefault = defaults.doubleForKey("defaultPercentage")
        
        print(dblSegTipDefault)
        
        
        
    }
 
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        // Set the segmented control with the new default
        let defaults = NSUserDefaults.standardUserDefaults()
        let dblSegTipDefault = defaults.doubleForKey("defaultPercentage")
        
        switch(dblSegTipDefault){
        case(0.18):
            self.tipControl.selectedSegmentIndex = 0
        case(0.2):
            self.tipControl.selectedSegmentIndex = 1
        case(0.22):
            self.tipControl.selectedSegmentIndex = 2
        default:
            break
        }
        
        // Reset the total so that we can start with fresh values
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        billField.text = ""
        
    }
    
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.22]
        
        let selectedTipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * selectedTipPercentage
        let total = billAmount + tip
        
        // Populate labels with values
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        // Currency formatting.
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    
    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }
    

    
    

}

