//
//  Game.swift
//  Soldier-Orc Battle
//
//  Created by Ak Kieu on 1/8/17.
//  Copyright © 2017 Ak Kieu. All rights reserved.
//

import Foundation

class Game{
    var soldier:Soldier!
    var orc: Orc!
    
    init(soldierName: String, orcName: String){
        startGame(soldierName, orcName: orcName)
    }
    
    func startGame(soldierName: String, orcName: String){
        self.soldier = Soldier(name: soldierName)
        self.orc = Orc(name: orcName)
    }
    
    func soldierTurn(){
        soldier.abilityUsed()
        orc.attacked(soldier.attackPwr)
    }
    
    func orcTurn(){
        orc.abilityUsed()
        soldier.attacked(orc.attackPwr)
    }
    
    func isGameOver() -> Bool {
        if soldier.hp <= 0 || orc.hp <= 0{
            return true
        }
        return false
    }
    
    func winner()->String{
        if orc.hp <= 0{
            return soldier.name
        }
        return orc.name
    }
    
}