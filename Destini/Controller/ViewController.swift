//
//  ViewController.swift
//  Destini
//
//  Created by Ahmed Alaa on 29/04/2023.
//

import UIKit

class ViewController: UIViewController {
    
    //Mark: - Outlets.
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Butoon: UIButton!
    
    
    //Mark: - Proreties.
    var storyBrain = StoryBrain()
 
    
    //Mark: - LifeCycle Method.
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    
    }
    
    //Mark: - Actions.
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    //Mark: - func.
    func updateUI() {
        textLabel.text = storyBrain.getStory()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Butoon.setTitle(storyBrain.getChoice2(), for: .normal)
    }


}

