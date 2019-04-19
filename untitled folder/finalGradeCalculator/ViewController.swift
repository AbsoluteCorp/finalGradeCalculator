//
//  ViewController.swift
//  finalGradeCalculator
//
//  Created by Hrishi Ingale on 4/17/19.
//  Copyright © 2019 Hrishi Ingale. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var currentGradeText: UITextField!
    @IBOutlet weak var gradeWant: UITextField!
    @IBOutlet weak var finalWorth: UITextField!
    @IBOutlet weak var textReturned: UITextView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        textReturned.isHidden = true
        
    }
    @IBAction func buttonPressed(_ sender: AnyObject)
    {
        textReturned.isHidden = false
        let currentGradeNumber = Double(currentGradeText.text!)
        let gradeWantNumber = Double(gradeWant.text!)
        let finalWorthNumber = Double(finalWorth.text!)
        if currentGradeNumber != nil && gradeWantNumber != nil && finalWorthNumber != nil
        {
        let requiredGrade = Double((gradeWantNumber! - currentGradeNumber! * (100 - finalWorthNumber!))/finalWorthNumber!)
            textReturned.text = "The grade you need is \(requiredGrade)"
        }
        else {
            textReturned.text = "Hey! Enter a number please"
        }
        

        
        
    }
    

   
    
    
        
    }


