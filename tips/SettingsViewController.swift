//
//  SettingsViewController.swift
//  tips
//
//  Created by Josh Gebbeken on 12/8/15.
//  Copyright © 2015 Josh Gebbeken. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var segTipSettings: UISegmentedControl!
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    
    @IBAction func setDefaultTip(sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.22]
        
        let selectedDefaultTip = tipPercentages[segTipSettings.selectedSegmentIndex]
        
        // Saved the new default tip percentage
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(selectedDefaultTip, forKey: "defaultPercentage")
        defaults.synchronize()
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let defaults = NSUserDefaults.standardUserDefaults()
        
        // load the default segTipSettings index from NSUserDefaults
        let segTipIndex = defaults.doubleForKey("defaultPercentage")
        
        
        // Select default index
        if(segTipIndex == 0.0)
        {
            self.segTipSettings.selectedSegmentIndex = 1
        }
        else
        {
            switch(segTipIndex){
            case(0.18):
                self.segTipSettings.selectedSegmentIndex = 0
            case(0.2):
                self.segTipSettings.selectedSegmentIndex = 1
            case(0.22):
                self.segTipSettings.selectedSegmentIndex = 2
            default:
                break
            }
        }
        
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
