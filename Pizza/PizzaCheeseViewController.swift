//
//  CheeseViewController.swift
//  PizzaMaker
//
//  Created by Daniel Ramirez on 10/11/17.
//  Copyright © 2017 Daniel Ramirez. All rights reserved.
//



import UIKit

class PizzaCheeseViewController: UIViewController,AKRadioButtonsControllerDelegate
{
    var pizza: Pizza = Pizza()
    
    var radioButtonsController: AKRadioButtonsController!
    @IBOutlet var radioButtons: [AKRadioButton]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.radioButtonsController = AKRadioButtonsController(radioButtons: self.radioButtons)
        self.radioButtonsController.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        pizza.cheese = (radioButtons[radioButtonsController.selectedIndex].titleLabel?.text)!
        
        
        let nextView = segue.destination as! PizzaIngredientsViewController
        nextView.pizza = pizza
        
    }
    
    
    func selectedButton(sender: AKRadioButton){
        
    }
}
