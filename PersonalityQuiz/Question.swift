//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Татьяна on 11.09.2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
    
}


enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
    
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вы окружаете себя людьми, которые вам нравятся и любите проводить время с дурзьями"
        case .cat:
            return "Вам нравится делать все самостоятельно"
        case .rabbit:
            return "Вам нарвится в се мягкое, вы здоровы и полны энергии"
        case .turtle:
            return "Вы умны не по годам, любите вникать в детали. Медленный и аккуратный выигрывает!"
        }
    }
    
}
