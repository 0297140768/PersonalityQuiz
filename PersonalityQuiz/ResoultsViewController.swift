//
//  ResoultsViewController.swift
//  PersonalityQuiz
//
//  Created by Татьяна on 08.09.2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import UIKit

class ResoultsViewController: UIViewController {
    var responces: [Answer]!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        calculatePersonalityResult()
        
        navigationItem.hidesBackButton = true
    }
    
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        
        let responceTypes = responces.map { $0.type }
        
        for animalType in responceTypes {
            frequencyOfAnswers[animalType] = 0
        }
        
        for answer in responces {
            frequencyOfAnswers[answer.type] =  frequencyOfAnswers[answer.type]! + 1
        }
        
        let sortedFrequencyOfAnswers = frequencyOfAnswers.sorted { $0.1 > $1.1 }
        
        if let resultAnimal = sortedFrequencyOfAnswers.first?.key {
            titleLabel.text = "Вы - это \(resultAnimal.rawValue)"
            textLabel.text = resultAnimal.definition
        }
    }

}
