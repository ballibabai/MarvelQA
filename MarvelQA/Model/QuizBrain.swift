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
            Question(text: "Thor'un çekicinin adı nedir?", answer: ["Vanir", "Mjolnir", "Norn"], correctAnswer: "Mjolnir"),
            Question(text: "İnanılmaz Hulk'ta Tony, filmin sonunda Thaddeus Ross'a ne anlatıyor?", answer: ["Hulk okumak istediğini", "Bir ekibi bir araya getirdiklerini", "SHIELD hakkında bildiği"], correctAnswer: "Bir ekibi bir araya getirdiklerini"),
            Question(text: "Kaptan Amerika'nın kalkanı neyden yapılmıştır?", answer: ["Vibranyum", "Promethium", "Karbonadium"], correctAnswer: "Vibranyum"),
            Question(text: "Flerkenler neye benzeyen son derece tehlikeli uzaylılardan oluşan bir ırktır?", answer: ["Sürüngenler", "Rakunlar", "Kediler"], correctAnswer: "Kediler")
    
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
    
    
    // - external paramethers affect in the viewController -let userGotItRight-
    //when we call the func use the external parameth.
    // we use internal parameth.. inside the func...
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].correctAnswer{
            score += 1
            return true
        }else{
            return false
        }
    }
    
    
    
}
