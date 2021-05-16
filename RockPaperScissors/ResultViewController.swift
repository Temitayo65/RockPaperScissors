//
//  ResultViewController.swift
//  RockPaperScissors
//
//  Created by owner on 15/05/2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    var imageName: String?
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var resultImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    func computerChoice() -> (Int){
        let choice = Int.random(in: 0...2)
        return choice
    }
    
    
    @IBAction func playAgain(_ sender: UIButton){
        
        let controller: GamePlayViewController
        controller = storyboard?.instantiateViewController(withIdentifier: "gamePlay") as! GamePlayViewController
        present(controller, animated: true, completion: nil)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let label = imageName{
            resultLabel.text = label
        }
        if let image = imageName{
            resultImageView.image = UIImage(named: image)
        }
        self.resultImageView.alpha = 0
        self.resultLabel.alpha = 0
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.3) {
            self.resultImageView.alpha = 1
            self.resultLabel.alpha = 1
        }
    }
    
    
    
    
    
}
