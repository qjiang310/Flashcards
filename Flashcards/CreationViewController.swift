//
//  CreationViewController.swift
//  Flashcards
//
//  Created by Qinjun Jiang on 10/27/18.
//  Copyright © 2018 Qinjun Jiang. All rights reserved.
//

import UIKit

class CreationViewController: UIViewController {
    
    var flashcardsController: ViewController!
    // var questionText: String = ""
    // var answerText: String = ""
    
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss(animated:true)
    }
    
    @IBAction func didTapOnDone(_ sender: Any) {
        // get the text in the question text field
        let questionText = questionTextField.text
        
        // get the text in the answer text field
        let answerText = answerTextField.text
        
        // call the function updateFlashcard in the viewController
        flashcardsController.updateFlashcard(question: questionText!, answer: answerText!)
        
        // dismiss the screen
        dismiss(animated:true)
        
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
