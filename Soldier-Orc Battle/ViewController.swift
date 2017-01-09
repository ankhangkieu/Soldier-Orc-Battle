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
    @IBOutlet weak var descriptionLbl: UILabel!
    
    @IBOutlet weak var orcLbl: UILabel!
    @IBOutlet weak var soldierLbl: UILabel!
    @IBOutlet weak var gameLbl: UILabel!
    @IBOutlet weak var orcAttImg: UIImageView!
    @IBOutlet weak var soldierAttImg: UIImageView!
    @IBOutlet weak var orcAttBut: UIButton!
    @IBOutlet weak var soldierAttBut: UIButton!
    @IBOutlet weak var orcimg: UIImageView!
    @IBOutlet weak var soldierimg: UIImageView!
    @IBOutlet weak var textHolder: UIImageView!
    @IBOutlet weak var ground: UIImageView!
    
    var game : Game!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        winnerLbl.text = ""
        gameLbl.text = "GAME START!!!"
    }
    
    @IBAction func onStartAttPressed(){
        game = Game(soldierName: "Knight", orcName: "Troll")
        gameLbl.text = "GAME START!!!"
        updateLabel()
        changeScreen()
    }
    
    @IBAction func onOrcAttPressed(){
        unableAttack()
        game.orcTurn()
        updateLabel()
        updateGameLbl(game.orc, defender: game.soldier)
        checkGameOver()
    }
    
    @IBAction func onSoldierAttPressed(){
        unableAttack()
        game.soldierTurn()
        updateLabel()
        updateGameLbl(game.soldier, defender: game.orc)
        checkGameOver()
    }
    
    func unableAttack(){
        orcAttBut.hidden = true
        soldierAttBut.hidden = true
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.enableAttack), userInfo: nil, repeats: false)
    }
    
    func enableAttack(){
        orcAttBut.hidden = false
        soldierAttBut.hidden = false
    }
    
    func updateLabel(){
        soldierLbl.text = "\(game.soldier.name): \(game.soldier.hp)HP"
        orcLbl.text = "\(game.orc.name): \(game.orc.hp)HP"
    }
    
    func updateGameLbl(attacker: Character, defender: Character){
        gameLbl.text = "\(attacker.name) uses \(attacker.ability).\n\(attacker.name) attacks \(defender.name) with \(attacker.attackPwr) damage."
    }
    
    func checkGameOver(){
        if isGameOver(){
            winnerLbl.text = "\(game.winner()) wins"
            NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.changeScreen), userInfo: nil, repeats: false)
        }
    }
    
    func isGameOver()->Bool{
        if game.isGameOver() {
            return true
        }
        return false
    }
    
    func changeScreen(){
        let screen1 = gameLbl.hidden
        let screen2 = !screen1
        winnerLbl.hidden = screen1
        startLbl.hidden = screen1
        startButton.hidden = screen1
        descriptionLbl.hidden = screen1
        
        orcLbl.hidden = screen2
        soldierLbl.hidden = screen2
        gameLbl.hidden = screen2
        orcAttImg.hidden = screen2
        soldierAttImg.hidden = screen2
        orcAttBut.hidden = screen2
        soldierAttBut.hidden = screen2
        orcimg.hidden = screen2
        soldierimg.hidden = screen2
        textHolder.hidden = screen2
        ground.hidden = screen2
    }
    
}

