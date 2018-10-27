//
//  ViewController.swift
//  Flashcards
//
//  Created by Qinjun Jiang on 10/13/18.
//  Copyright © 2018 Qinjun Jiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func didTapOnFlashcard(_ sender: Any) {
        questionLabel.isHidden = true
    }
    
    func updateFlashcard(question: String, answer: String) {
        // questionLabel = question;
        questionLabel.text = question
        answerLabel.text = answer
        
        questionLabel.isHidden = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // We knwo the destination of the segue is the Navigation Controller
        let navigationController = segue.destination as! UINavigationController
        
        // We know the Navigation Controller only contains a Creation View Controller
        let creationController = navigationController.topViewController as! CreationViewController
        
        // We set the flashcardsController property to self
        creationController.flashcardsController = self
        
    }
}

