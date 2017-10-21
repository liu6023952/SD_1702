//
//  Syuntsu.swift
//  
//
//  Created by oike toshiyuki on 2017/10/17.
//

import Foundation

class Syuntsu: Mentsu, Equatable, Comparable {
    static func <(lhs: Syuntsu, rhs: Syuntsu) -> Bool {
        if Int(lhs.identifierTile.rawValue) < Int(rhs.identifierTile.rawValue) {
            return true
        }
        return false
    }
    
    static func ==(lhs: Syuntsu, rhs: Syuntsu) -> Bool {
        return (lhs.isOpen == rhs.isOpen) && (lhs.isMentsu == rhs.isMentsu) && (lhs.identifierTile == rhs.identifierTile)
    }
    
    var isOpen = false
    var isMentsu = false
    //順子はどっかしら決めて持っとく
    var identifierTile: Tile
    
    init() {
        self.identifierTile = Tile.null
        self.isOpen = false
        self.isMentsu = false
    }
    
    init(isOpen: Bool, identifierTile: Tile) {
        self.isOpen = isOpen
        self.identifierTile = identifierTile
        self.isMentsu = true
    }
    
    init(isOpen: Bool, tile1: Tile, tile2: Tile, tile3: Tile) {
        self.isOpen = isOpen
        
        var _tile1 = tile1, _tile2 = tile2, _tile3 = tile3
        if (tile1.getNumber() > tile2.getNumber()) {
            _tile1 = tile2
            _tile2 = tile1
        }
        if (tile1.getNumber() > tile3.getNumber()) {
            _tile1 = tile3
            _tile3 = tile1
        }
        if (tile2.getNumber() > tile3.getNumber()) {
            _tile2 = tile3
            _tile3 = tile2
        }
        self.isMentsu = Syuntsu.check(tile1: _tile1, tile2: _tile2, tile3: _tile3)
        if (self.isMentsu) {
            identifierTile = tile2
        } else {
            identifierTile = Tile(rawValue: -1)!
        }
    }
    
    // ソート済みのものを渡してほしい
    class func check(tile1: Tile, tile2: Tile, tile3: Tile) -> Bool {
        
        if (tile1.getType() != tile2.getType() || tile2.getType() != tile3.getType()) {
            return false
        }
        
        if (tile1.getNumber() == 0 || tile2.getNumber() == 0 || tile3.getNumber() == 0) {
            return false
        }
        
        //判定
        return tile1.getNumber() + 1 == tile2.getNumber() && tile2.getNumber() + 1 == tile3.getNumber()
    }
    
    func getFu() -> Int {
        return 0
    }
    
    func hashCode() -> Int {
        var result: Int = identifierTile.getCode() != -1 ? identifierTile.hashValue : 0
        result = 31 * result + (isMentsu ? 1 : 0)
        result = 31 * result + (isOpen ? 1 : 0)
        return result
    }
    
}
