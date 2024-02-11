//
//  ViewController.swift
//  M5_JCW_Adventure
//
//  Created by user247663 on 2/8/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var promptText: UILabel!
    
    @IBOutlet weak var button_one: UIButton!
    
    @IBOutlet weak var button_two: UIButton!
    
    var adventureLogic = AdventureLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func buttonClick(_ sender: UIButton) {
        let answer = sender.titleLabel!.text!
        
        if (answer == adventureLogic.getChoiceOne()){
            adventureLogic.setChoice(0, adventureLogic.questionIndex)
        }
        else{
            adventureLogic.setChoice(1, adventureLogic.questionIndex)
        }
        
        adventureLogic.increaseIndex()
        
        if (adventureLogic.questionIndex <= 2){
            Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        }
        else{
            Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        }
    }
    
    @objc func updateUI(){
        
        adventureLogic.updateStatement()
        promptText.text = adventureLogic.getStatement()
        button_one.setTitle(adventureLogic.getChoiceOne(), for: .normal)
        button_two.setTitle(adventureLogic.getChoiceTwo(), for: .normal)
    }
}

