//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Zhanko Mojsovski on 4.2.21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    var bmi : BMI?
    
   mutating func calculateBMI(height: Float, weight: Float){
    let bmiValue = weight / pow(height, 2)
    if bmiValue < 18.5 {
        bmi = BMI(value: bmiValue, advice: "Треби појке да јадиш!", color: #colorLiteral(red: 0.1826629341, green: 0.5328099132, blue: 0.9716417193, alpha: 1))
    }
    else if bmiValue < 24.9{
        bmi = BMI(value: bmiValue, advice: "Fit af, топ си!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    else {
        bmi = BMI(value: bmiValue, advice: "Јади помалце!!!", color: #colorLiteral(red: 0.6643349528, green: 0, blue: 0.08385483176, alpha: 1))
    }
    
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    
}
