//
//  ViewController.swift
//  tips2
//
//  Created by Prime, Heather(AWF) on 8/19/15.
//  Copyright (c) 2015 Prime, Heather. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalFourLabel: UILabel!
    @IBOutlet weak var totalThreeLabel: UILabel!
    @IBOutlet weak var totalTwoLabel: UILabel!
    @IBOutlet weak var totalOneLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var hideView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tipControl.alpha = 0
        
        tipLabel.text = "$0.00"
        totalOneLabel.text = "$0.00"
        totalTwoLabel.text = "$0.00"
        totalThreeLabel.text = "$0.00"
        totalFourLabel.text = "0.00"
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(2.0, animations: { () -> Void in
            self.tipControl.alpha = 1.0
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.15, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = billField.text._bridgeToObjectiveC().doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalOneLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalOneLabel.text = String(format: "$%.2f", total)
        
    }
    
 
    @IBAction func onTap
        (sender: AnyObject)
    {
        view.endEditing (true)

    }
    
   /*
    @IBAction func hideView(sender: AnyObject) {
        hideView.hidden = true
    }
    */

    /*
   hideView.animateWithDuration(0.4, animations: {
   
    self.hideView.alpha = 1
    self.hideView.alpha = 0
    })
    */
    
}

