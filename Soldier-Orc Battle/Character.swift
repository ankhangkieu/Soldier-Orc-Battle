//
//  Character.swift
//  Soldier-Orc Battle
//
//  Created by Ak Kieu on 1/8/17.
//  Copyright © 2017 Ak Kieu. All rights reserved.
//

import Foundation

class Character{
    private var _hp : Int = 100
    private var _attackPwr : Int = 10
    private var _name: String = "no name"
    private var _ability: String!
    var hp : Int {
        get{
            return _hp
        }
        set{
            if ability == "Healing"{
                _hp = newValue
            }
        }
    }
    var attackPwr: Int {
        get{
            return _attackPwr
        }
        set {
            if ability == "More Power"{
                _attackPwr = newValue
            }
        }
    }
    var name: String{
        return _name
    }
    var ability: String{
        get{
            return _ability
        }
        set{
            _ability = newValue
        }
    }
    
    init(hp: Int, acctackPwr: Int, name: String){
        _hp = hp
        _attackPwr = attackPwr
        _name = name
    }
    
    func attacked(power: Int) -> Bool{
        _hp -= power
        return true
    }

    func abilityUsed(){}
}