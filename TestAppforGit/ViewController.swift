//
//  ViewController.swift
//  TestAppforGit
//
//  Created by Renata Technologies Pvt Ltd on 25/05/15.
//  Copyright (c) 2015 Renata Technologies Pvt Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBOutlet weak var myAgeInfo: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        myDatePicker.datePickerMode = UIDatePickerMode.Date
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func findAge(sender: UIButton) {
        let selDate = myDatePicker.date
        let currDate = NSDate()
        let myCalendar = NSCalendar.currentCalendar()
        let naVayasu = myCalendar.components(NSCalendarUnit.CalendarUnitYear, fromDate: selDate, toDate: currDate, options:nil)
        myAgeInfo.text = "Hi, U R \(naVayasu.year) Yrs Old"
    }

}

