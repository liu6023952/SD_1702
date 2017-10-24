//
//  Yaku.swift
//  MjTest
//
//  Created by oike toshiyuki on 2017/10/20.
//  Copyright © 2017年 oike toshiyuki. All rights reserved.
//

enum NormalYaku: Int {
    // 1 han
    case Reach = 0
    case Ippatu
    case Tumo
    case Pinhu
    case Tanyao
    case Ipeiko
    case Haku
    case Hatu
    case Tyun
    case Jikaze
    case Bakaze
    case Rinsyan
    case Tyankan
    case Haitei
    case Houtei
    // 2han
    case DoubleReach
    case Tyanta
    case Honroutou
    case SansyokuDoujun
    case Ittuu
    case ToiToi
    case SansyokuDoukou
    case Sanankou
    case Sankantu
    case Syousangen
    case Titoitu
    // 3han
    case Ryanpeikou
    case Juntyan
    case Honitu
    // 6han
    case Tinitu
    // Dora
    case Dora
    
    func getHan() -> Int {
        switch self {
        case .Reach, .Ippatu, .Tumo, .Pinhu, .Tanyao, .Ipeiko, .Haku, .Hatu, .Tyun, .Jikaze, .Bakaze, .Rinsyan, .Tyankan, .Haitei, .Houtei, .Dora: return 1
        case .DoubleReach, .Tyanta, .Honroutou, .SansyokuDoujun, .Ittuu, .ToiToi, .SansyokuDoukou, .Sanankou, .Sankantu, .Syousangen, .Titoitu: return 2
        case .Ryanpeikou, .Juntyan, .Honitu: return 3
        case .Tinitu: return 6
        }
    }
    
    func isKuisagari() -> Bool {
        switch self {
        case .Tyanta, .SansyokuDoujun, .SansyokuDoukou, .Ittuu, .Juntyan, .Honitu, .Tinitu: return true
        default: return false
        }
    }
    
    func getName() -> String {
        switch self {
        case .Reach: return "リーチ"
        case .Ippatu: return "一発"
        case .Tumo: return "門前清模和"
        case .Pinhu: return "平和"
        case .Tanyao: return "断ヤオ"
        case .Ipeiko: return "一盃口"
        case .Haku: return "白"
        case .Hatu: return "發"
        case .Tyun: return "中"
        case .Jikaze: return"門風牌"
        case .Bakaze: return "門風牌"
        case .Rinsyan: return "嶺上開花"
        case .Tyankan: return "槍槓"
        case .Haitei: return "海底撈月"
        case .Houtei: return "河底撈魚"
        case .DoubleReach: return "ダブルリーチ"
        case .Tyanta: return "全帯"
        case .Honroutou: return "混老頭"
        case .SansyokuDoujun: return "三色同順"
        case .Ittuu: return "一気通貫"
        case .ToiToi: return "対々和"
        case .SansyokuDoukou: return "三色同刻"
        case .Sanankou: return "三暗刻"
        case .Sankantu: return "三槓子"
        case .Syousangen: return "小三元"
        case .Titoitu: return "七対子"
        case .Ryanpeikou: return "二盃口"
        case .Juntyan: return "純全帯"
        case .Honitu: return "混一色"
        case .Tinitu: return "清一色"
        case .Dora: return "ドラ"
        }
    }
    
    
}

enum Yakuman: Int {
    case Suankou = 0
    case SuankouTanki
    case Daisangen
    case Tuisou
    case Susihou
    case Daisusi
    case Ryuisou
    case Tyurenpoutou
    case JunseiTyurenpoutou
    case Tinroutou
    case Sukantu
    case Kokusimusou
    case Kokusimusou13
    case Tenhou
    case Tihou
    
    func isDoubleYakuman() -> Bool {
        switch self {
        case .SuankouTanki, .Daisusi, .JunseiTyurenpoutou, .Sukantu, .Kokusimusou13: return true
        default: return false
        }
    }
}