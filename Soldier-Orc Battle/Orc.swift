//
//  Orc.swift
//  Soldier-Orc Battle
//
//  Created by Ak Kieu on 1/8/17.
//  Copyright © 2017 Ak Kieu. All rights reserved.
//

import Foundation

class Orc:Character {
    convenience init(name: String) {
        self.init(hp: 100, acctackPwr: 10, name: name)
        self.ability = "More Power"
    }
    
    override func abilityUsed() {
        attackPwr += 2
    }
}