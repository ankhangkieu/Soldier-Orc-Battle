//
//  ViewController.swift
//  Soldier-Orc Battle
//
//  Created by Ak Kieu on 1/8/17.
//  Copyright © 2017 Ak Kieu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var winnerLbl: UILabel!
    @IBOutlet weak var startLbl: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var orcLbl: UILabel!
    @IBOutlet weak var soldierLbl: UILabel!
    @IBOutlet weak var gameLbl: UILabel!
    @IBOutlet weak var orcAttBut: UILabel!
    @IBOutlet weak var soldierAttBut: UILabel!
    @IBOutlet weak var orcimg: UIImageView!
    @IBOutlet weak var soldierimg: UIImageView!
    @IBOutlet weak var textHolder: UIImageView!
    @IBOutlet weak var ground: UIImageView!
    
    var game : Game!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        winnerLbl.text = ""
    }

    @IBAction func onOrcAttPressed(){
        
    }
    
    @IBAction func onSoldierAttPressed(){
        
    }
    
    @IBAction func onStartAttPressed(){
        game = Game(soldierName: "Knight", orcName: "Troll")
        
        changeScreen()
    }
    
    func updateLabel(){
        soldierLbl.text = "\(game.soldier.name): \(game.soldier.hp)HP"
        orcLbl.text = "\(game.orc.name): \(game.orc.hp)HP"
    }
    
    func isGameOver()->Bool{
        if game.isGameOver() {
            return true
        }
        return false
    }
    
    func changeScreen(){
        winnerLbl.hidden = !winnerLbl.hidden
        startLbl.hidden = !startLbl.hidden
        startButton.hidden = !startButton.hidden
        orcLbl.hidden = !orcLbl.hidden
        soldierLbl.hidden = !soldierLbl.hidden
        gameLbl.hidden = !gameLbl.hidden
        orcAttBut.hidden = !orcAttBut.hidden
        soldierAttBut.hidden = !soldierAttBut.hidden
        orcimg.hidden = !orcimg.hidden
        soldierimg.hidden = !soldierimg.hidden
        textHolder.hidden = !textHolder.hidden
        ground.hidden = !ground.hidden
    }
    
}

