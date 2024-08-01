//
//  ViewController.swift
//  restartProject
//
//  Created by Дмитро Солоп on 24.07.2024.
//

import UIKit

class ViewController: UIViewController {

    var someAlert: String = ""
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var runLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func whoWin(creatures: [Creature]) -> Creature {
            var winner = creatures[0]
            for creature in creatures {
                if creature.result > winner.result {
                    winner = creature
                }
            }
            return winner
        }
        
        var leo = Lion(name: "Leo", distance: 25)
        var turt = Turtle(name: "Tommy", distance: 25)
        var gif = Giraffe(name: "George", distance: 25)
        var hip = Hippo(name: "Henderson", distance: 25)
        let animalRun: [Creature] = [leo, turt, gif, hip]

        let result = whoWin(creatures: animalRun)
        someAlert = result.congratulate(fast: result.isFast) ?? "No data"
    }

    @IBAction func startAction(_ sender: Any) {
        runLabel.font = .systemFont(ofSize: 20)
        runLabel.text = someAlert
    }
    
}

