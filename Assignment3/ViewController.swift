//
//  ViewController.swift
//  Assignment3
//
//  Created by David Clare on 3/27/16.
//  Copyright © 2016 David Clare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var timerLbl: UILabel!
    
    @IBOutlet weak var wordLbl: UILabel!
    
    @IBOutlet weak var definitionLbl: UILabel!

    @IBOutlet weak var codeSnipet: UIImageView!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    var count = 30
    var increment = 1
    
    
    var studyWords = ["Let vs Var",
                      "Computed Initializers",
                      "Computed Variables",
                      "Setter Observers",
                      "Functions",
                      "External Parameters",
                      "Default Parameters",
                      "Anonymous Functions",
                      "Optional Chaining",
                      "Failable Initializers",
                      "Casting",
                      "Class Methods",
                      "Extensions",
                      "Enumeration",
                      "Error Handling",
                      "Dictionaries",
                      "Conditional Binding",
                      "Protocols",
                      "Inheritance",
                      "Structs",
                      "Enums",
                      "Classes",
                      "Subscripts"]
    
    
    var studyDef = ["The 'let' keyword defines a constant and the 'var' keyword defines an ordinary variable ",
                    "Can initialize a variable by calling a 'Define and Call' function and must be a var",
                    "Instead of having a value, it has functions with getters and setters",
                    "willSet = will execute before the variable is set and didSet = will execute after the variable has been set",
                    "return functions have a return value",
                    "Labels used in function invocation and clarify purpose for each argument",
                    "assign a value to the parameter after the parameters type",
                    "A function without the declaration",
                    "Code will not cause a runtime error and will not execute the code you have told it to execute",
                    "An initializer that returns and Optional wrapping the new instance",
                    "performed with the : and then the Object type",
                    "declared with static keyword for an enum or struct and declared with the class keyword for a class",
                    "a way of injecting your own code into an object type that has already been declared elsewhere",
                    "declared in a class and its values are accessed through the instance of that class",
                    "Errors can be thrown and caught",
                    "Dictionary<KeyType, ValueType",
                    "If let statement",
                    "ways to express commonalities between otherwise unrelated types",
                    "specified with a : token",
                    "used for simple types and when classes are overkill",
                    "A way to express a set of constants that are known alternatives",
                    "references types and mutable in nature",
                    "Instance methods that are invoked with brackets"]
    
    var studyImages = [UIImage(named: "let vs var.png"),
                       UIImage(named: "computed initializer.png"),
                       UIImage(named: "computed variables.png"),
                       UIImage(named: "setter observers.png"),
                       UIImage(named: "function.png"),
                       UIImage(named: "external paramters.png"),
                       UIImage(named: "default parameters.png"),
                       UIImage(named: "anonymous functions.png"),
                       UIImage(named: "optional chaining.png"),
                       UIImage(named: "failable initializer.png"),
                       UIImage(named: "casting.png"),
                       UIImage(named: "class methods.png"),
                       UIImage(named: "extensions.png"),
                       UIImage(named: "enumeration.png"),
                       UIImage(named: "error handling.png"),
                       UIImage(named: "dictionaries.png"),
                       UIImage(named: "conditional binding.png"),
                       UIImage(named: "protocols.png"),
                       UIImage(named: "inheritance.png"),
                       UIImage(named: "structs.png"),
                       UIImage(named: "enumeration.png"),
                       UIImage(named: "classes.png"),
                       UIImage(named: "subscripts.png")]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(ViewController.update), userInfo: nil,  repeats: true)
        
        wordLbl.text = studyWords[0]
        definitionLbl.text = studyDef[0]
        codeSnipet.image = studyImages[0]
        

    }

//called every second to decrement timer and update images
    func update() {
        if(count > 0)
        {
            timerLbl.text = String(count--)
        }
        else if(count == 0)
        {
            timerLbl.text = "0"
            reset()
        }
    }
    
    //reset on click
    @IBAction func onNextPressed(sender: AnyObject) {
        reset()
    }
    
    //resets the random number and random image
    
    func reset(){
        count = 30
        
        let randomNum = arc4random_uniform(22)
        let intNum = Int(randomNum)
        wordLbl.text = studyWords[intNum]
        definitionLbl.text = studyDef[intNum]
        codeSnipet.image = studyImages[intNum]

    }
    
}

