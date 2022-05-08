//
//  QuizBrain.swift
//  MarvelQA
//
//  Created by İbrahim Ballıbaba on 8.05.2022.
//

import Foundation


struct Question {
    
    let text: String
    let answer: [String]
    let correctAnswer: String
    
    init(text: String, answer: [String], correctAnswer: String){
    
    self.text = text
    self.answer = answer
    self.correctAnswer = correctAnswer
        
    }
    
}


struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(text: "Marvel Sinematik Evreni'ni başlatan ilk Iron Man filmi hangi yıl çıkarıldı?", answer: ["2005", "2008", "2007"], correctAnswer: "2008"),
            Question(text: "Marvel Sinematik Evreni'ni başlatan ilk Iron Man filmi hangi yıl çıkarıldı?", answer: ["2005", "2008", "2007"], correctAnswer: "2008"),
            Question(text: "Marvel Sinematik Evreni'ni başlatan ilk Iron Man filmi hangi yıl çıkarıldı?", answer: ["2005", "2008", "2007"], correctAnswer: "2008"),
            Question(text: "Marvel Sinematik Evreni'ni başlatan ilk Iron Man filmi hangi yıl çıkarıldı?", answer: ["2005", "2008", "2007"], correctAnswer: "2008"),
            Question(text: "Marvel Sinematik Evreni'ni başlatan ilk Iron Man filmi hangi yıl çıkarıldı?", answer: ["2005", "2008", "2007"], correctAnswer: "2008")
    
    ]
    
    func getQuestionText() -> String{
        
        return quiz[questionNumber].text
        
    }
    
    func getProgress() -> Float{
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int{
        return score
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        }else {
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].correctAnswer{
            score += 1
            return true
        }else{
            return false
        }
    }
    
    
    
}
