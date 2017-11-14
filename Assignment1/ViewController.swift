//
//  ViewController.swift
//  Assignment1
//
//  Created by Matheu DeWitt on 9/14/16.
//  Copyright © 2016 Matheu DeWitt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var hoursParked: UITextField!
    @IBAction func calculateCost(sender: AnyObject) {
        let hours:Double? = Double(hoursParked.text!)
        if hours! == 24.0 {
            totalCost.text = "$18.00"
        }
        if hours! <= 3.0{
            totalCost.text = "$5.00"
        }
        if 24.0 > hours! && hours! > 3.0{
            totalCost.text = String(5.0+(hours!-3.0)*1.5)
        }
        if hours! > 24.0 {
            totalCost.text = "null"
        }
    }
    @IBOutlet weak var studentname: UITextField!
    @IBOutlet weak var quizScore: UITextField!
    @IBOutlet weak var midtermScore: UITextField!
    @IBOutlet weak var assignmentScore: UITextField!
    @IBOutlet weak var finalExamScore: UITextField!
    @IBOutlet weak var displayAverageScore: UILabel!
    @IBOutlet weak var displayLetterGrade: UILabel!
    @IBAction func calculateGrade(sender: AnyObject) {
        let q:Double? = Double(quizScore.text!)
        let a:Double? = Double(assignmentScore.text!)
        let m:Double? = Double(midtermScore.text!)
        let f:Double? = Double(finalExamScore.text!)
        let averageScore = (q! * 0.15) + (a!*0.4)+(m!*0.2)+(f!*0.25)
        
        displayAverageScore.text = String(averageScore)
        
        if averageScore >= 95.0 {
            displayLetterGrade.text = "A"
        }
        if averageScore >= 90.0 && averageScore < 95.0{
            displayLetterGrade.text = "A-"
        }
        if averageScore >= 85.0  && averageScore < 90.0{
            displayLetterGrade.text = "B"
        }
        if averageScore >= 80.0  && averageScore < 85.0{
            displayLetterGrade.text = "B-"
        }
        if averageScore >= 75.0  && averageScore < 80.0{
            displayLetterGrade.text = "C"
        }
        if averageScore >= 70.0  && averageScore < 75.0{
            displayLetterGrade.text = "C-"
        }
        if averageScore >= 65.0  && averageScore < 70.0{
            displayLetterGrade.text = "D"
        }
        if averageScore >= 60.0  && averageScore < 65.0{
            displayLetterGrade.text = "D-"
        }
        if averageScore <= 59.0 {
            displayLetterGrade.text = "F"
        }
//        average
//        score	=	(q	*	15%)	+	(a	*	40%)	+	(m	*	20%)	+	(f	*	25%)
    }


    @IBOutlet weak var totalCost: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

