//
//  AdventureLogic.swift
//  M5_JCW_Adventure
//
//  Created by user247663 on 2/8/24.
//

import Foundation

struct AdventureLogic {
    
    var questionIndex: Int = 0
    var choice = [-1,-1,-1]
    
    var statement = Adventure("You see a dog walking up towards you on the sidewalk.", "Stop to pet the dog.", "Move away and into the street.")
    
    mutating func updateStatement(){
        if (questionIndex > 0) {
            if (choice[0] == 0){
                statement = Adventure("While you reach down to pet the dog, you notice a super cute owner.", "Talk to the cute owner.", "Continue on your way.")
                
                if (choice[1] == 0){
                    statement = Adventure("You strike up a casual conversation around your mutual love for animals. The dog and its owner are both happy you stopped to chat.", "Say goodbye, continue on your way.", "Ask for their number.")
                    
                    if (choice[2] == 0){
                        statement = Adventure("You make it back to your house. Your day was pleasant but you begin to think you missed out.", "Reset Adventure.", "Reset Adventure.")
                    }
                    else if (choice[2] == 1){
                        statement = Adventure("You successfully get their number and plan to meet up later that week. You make it home happy about your new connection.", "Reset Adventure.", "Reset Adventure.")
                    }
                }
                else if (choice[1] == 1){
                    statement = Adventure("You stand back up and thank the owner for allowing you to pet the dog. As you start back down the sidewalk you hear screeching tires.", "Continue on your way.", "Turn to check out the noise.")
                    
                    if (choice[2] == 0){
                        statement = Adventure("A car rushes by splashing puddled water up on the sidewalk right behind you. Relieved you didn't get soaked you finish walking home. You had a decent day.", "Reset Adventure.", "Reset Adventure.")
                    }
                    else if (choice[2] == 1){
                        statement = Adventure("As you turn a car rushes by and splashes a puddle up into your face. Annoyed, you finish your walk home, cold. You feel like you might be getting sick. What a lowsy day. Atleast you got to pet a dog.", "Reset Adventure.", "Reset Adventure.")
                    }
                }
            }
            else if (choice[0] == 1){
                statement = Adventure("As you step out into the street you hear the dog's owener say something but you can't quite make out what they say.", "Stop and talk to the owner.", "Continue on your way.")
                
                if (choice[1] == 0){
                    statement = Adventure("You realize the owner was trying to let you know the dog was friendly and you didn't need to move out of the way. A screeching noise interrupts your conversation.", "Hurry back over to the sidewalk.", "Turn to see what you hear.")
                    
                    if (choice[2] == 0){
                        statement = Adventure("You make it back onto the sidewalk just in time as a car rushes past. However, you are splashed by a puddle the car drives through. Soaked and embarassed you continue home. You're frustrated by the series of events.", "Reset Adventure.", "Reset Adventure.")
                    }
                    else if (choice[2] == 1){
                        statement = Adventure("You awaken in a hospital bed. A nurse informs you that you were struck by a speeding car. The nurse notes that an eye witness informed the cops about the make and model of the car but no one has been caught at this time. You spend weeks recovering.", "Reset Adventure.", "Reset Adventure.")
                    }
                }
                else if (choice[1] == 1){
                    statement = Adventure("You make it over to the other side of the street. Just as you step up you hear a screeching noise.", "Turn to check out the noise.", "Rush home.")
                    
                    if (choice[2] == 0){
                        statement = Adventure("You turn to see a rushing car pass through the street splashing puddles onto the other narrowly missing the dog and its owner. You're relieved no one was hurt but couldn't help but think how bad things could have turned out. You continue home dissapointed you didn't think to catch the license plates of the car.", "Reset Adventure.", "Reset Adventure.")
                    }
                    else if (choice[2] == 1){
                        statement = Adventure("Some jerk in thier car rushes past you splashing up water onto the other sidewalk. You realize that would have gotten you soadked if you hadn't moved over. You quickly make it back to your house relived but scared of everything.", "Reset Adventure.", "Reset Adventure.")
                    }
                }
            }
            
        }
        else{
            statement = Adventure("You see a dog walking up towards you on the sidewalk.", "Stop to pet the dog.", "Move away and into the street.")
        }
    }
    
    func getStatement() -> String {
        
        return statement.prompt
    }
    
    func getChoiceOne() -> String {
        
        return statement.option_one
    }
    
    func getChoiceTwo() -> String {
        
        return statement.option_two
    }
        
    mutating func increaseIndex() {
            
        if(questionIndex <= 2){
            questionIndex += 1
        }
        else{
            questionIndex = 0
            choice = [-1,-1,-1]
        }
    }
    
    mutating func setChoice(_ val: Int, _ index: Int) {
        if (index <= 2){
            choice[questionIndex] = val
        }
    }
}
