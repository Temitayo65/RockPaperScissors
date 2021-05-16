//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by owner on 15/05/2021.
//

import UIKit

class GamePlayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   

    @IBAction func gamePlay(_ sender: UIButton){
        let controller: ResultViewController = storyboard?.instantiateViewController(withIdentifier: "result") as! ResultViewController
        let playerChoice = sender.tag
        let computerChoice = controller.computerChoice()
        
        if playerChoice == computerChoice{
            controller.imageName = "tie"
        }
        else if playerChoice == 0 && computerChoice == 1{
            controller.imageName = "PaperCoversRock"
        }
        else if playerChoice == 0 && computerChoice == 2{
            controller.imageName = "RockCrushesScissors"
        }
        else if playerChoice == 1 && computerChoice == 2{
            controller.imageName = "ScissorsCutPaper"
        }
        else if playerChoice == 2 && computerChoice == 0{
            controller.imageName = "RockCrushesScissors"
        }
        else if playerChoice == 2 && computerChoice == 1{
            controller.imageName = "ScissorsCutPaper"
        }
        else{
            controller.imageName = "PaperCoversRock"
        }
        
        present(controller, animated: true, completion: nil)
        
    }
    

    
    

}

