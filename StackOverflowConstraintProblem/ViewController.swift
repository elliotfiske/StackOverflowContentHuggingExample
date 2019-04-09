//
//  ViewController.swift
//  StackOverflowConstraintProblem
//
//  Created by Elliot Fiske on 4/8/19.
//  Copyright © 2019 Elliot Fiske. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var testLabel: UILabel!
   
   override var keyCommands: [UIKeyCommand]? {
      return [
         UIKeyCommand(input: UIKeyCommand.inputUpArrow,
                      modifierFlags: [],
                      action: #selector(ViewController.addCharacter(sender:))),
         UIKeyCommand(input: UIKeyCommand.inputDownArrow,
                      modifierFlags: [],
                      action: #selector(ViewController.rmCharacter(sender:)))
      ]
   }
   
   var numLetters = 1
   
   @objc func addCharacter(sender: UIKeyCommand) {
      numLetters += 1
      testLabel.text = String(format: "l%@bel", String(repeating: "a", count: numLetters))
   }
   
   @objc func rmCharacter(sender: UIKeyCommand) {
      numLetters -= 1
      testLabel.text = String(format: "l%@bel", String(repeating: "a", count: numLetters))
   }
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
   }
   
   


}

