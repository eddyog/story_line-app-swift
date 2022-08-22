//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var stories = Stories()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        storyLabel.text = stories.story_line[0].story_title
        choice1Button.setTitle(stories.story_line[0].left_choice, for: .normal)
        choice2Button.setTitle(stories.story_line[0].right_choice, for: .normal)
        
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        stories.checkAnswer(userAnswer: userAnswer)
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    
    @objc func updateUI() {
        
        storyLabel.text = stories.get_title()
        choice1Button.setTitle(stories.get_left(), for: .normal)
        choice2Button.setTitle(stories.get_right(), for: .normal)
        
    }
    
}

