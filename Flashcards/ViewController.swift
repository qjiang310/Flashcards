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
}

