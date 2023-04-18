//
//  Instrumentals.swift
//  Deong
//
//  Created by 예슬 on 2023/04/10.
//

struct Instrumentals {
    var type:
    
}

enum InstrumentalsType {
    
    case none
    case buk
    case janggu
    case kkwaenggwari
    case jing
    
}

extension InstrumentalsType{

    var name: String {
        switch self {
        case .none:
            return ""
        case .buk:
            return "buk"
        case .janggu:
            return "janggu"
        case .kkwaenggwari:
            <#code#>
        case .jing:
            <#code#>
        }
    }
}





enum Sounds {
    case none
    case deong
    case gideok
    case deoreoreoreo
    case kung
    case deok
    case deo
    case gaeng
    case gae
    case ji
    case gaen
    case gaet
    case jigaeng
    case dung
    case du
    case ttak
    case jing
}

extension Sounds {
    
    var name: String {
        switch self {
        case .none:
            return ""
        case .deong:
            return "deong"
        case .gideok:
            return "gideok"
        case .deoreoreoreo:
            return "reo"
        case .kung:
            return "kung"
        case .deok:
            return "deok"
        case .deo:
            return "deo"
        case .gaeng:
            return "gaeng"
        case .gae:
            return "gae"
        case .ji:
            return "ji"
        case .gaen:
            return "gaen"
        case .gaet:
            return "gaet"
        case .jigaeng:
            return "jigaeng"
        case .dung:
            return "dung"
        case .du:
            return "du"
        case .ttak:
            return "ttak"
        case .jing:
            return "jing"
        }
    }
    
    var type: SoundType {
        switch self {
            
        case .none:
            return .none
        case .deong, .gideok, .deo, .kung, .deoreoreoreo, .deok:
            return .janggu
        case .gae, .gaen, .gaeng, .ji, .gaet, .jigaeng:
            return .kkwaenggwari
        case .dung, .du, .ttak:
            return .buk
        case .jing:
            return .jing
        }
    }
    
    
    static var jajinmorijanggu: [Sounds] =
    [
        .deong, .none, .none, .kung, .none, .none, .kung, .none, .deok, .kung, .none, .none, .deong, .none, .none, .kung, .none, .none, .kung, .none, .deok, .kung, .none, .none
    ]
    
    static var byeoldalgeorijanggu: [Sounds] =
    [
        .deong, .none, .deong, .none, .kung, .deok, .kung, .none, .kung, .deok, .kung, .deok, .kung, .deok, .kung, .none,
        .kung, .deok, .kung, .none, .kung, .deok, .kung, .none, .kung, .deok, .kung, .deok, .kung, .deok, .kung, .none
    ]
    
    static var gutgeorijanggu: [Sounds] =
    [
        .deong, .none, .gideok, .kung, .deoreoreoreo, .none, .kung, .none, .gideok, .kung, .deoreoreoreo, .none, .deong, .none, .gideok, .kung, .deoreoreoreo, .none, .kung, .none, .gideok, .kung, .deok, .none
    ]
    
    static var hwimorijanggu: [Sounds] =
    [
        .deong, .none, .deok, .deok, .kung, .deok, .kung, .none, .deok, .kung, .kung, .deok, .kung, .deok, .kung, .none,
        .deong, .none, .deok, .deok, .kung, .deok, .kung, .none, .deo, .deo, .deo, .deo, .kung, .deok, .kung, .none
    ]
 
    static var semachijanggu: [Sounds] =
    [
        .deong, .none, .none, .deong, .none, .deok, .kung, .deok, .none, .deong, .none, .none, .deong, .none, .deok, .kung, .deok, .none
    ]
    
    
    static var jajinmoriKkwaenggwari: [Sounds] =
    [
        .gaen, .ji, .none, .gaen, .ji, .none, .gaen, .ji, .none, .gae, .gaeng, .none, .ji, .gaeng, .none, .gaen, .ji, .none, .gaen, .ji, .none, .gae, .gaeng, .none
    ]
    
    static var byeoldalgeoriKkwaenggwari: [Sounds] =
    [
        .gaeng, .none, .gaeng, .none, .gae, .gae, .gaeng, .none, .gae, .gae, .gae, .gae, .gae, .gae, .gaeng, .none, .gae, .gae, .gaeng, .none, .gae, .gae, .gaeng, .none, .gae, .gae, .gae, .gae, .gae, .gae, .gaeng, .none
    ]
    
    static var gutgeoriKkwaenggwari: [Sounds] =
    [
        .gaeng, .none, .ji, .gaeng, .none, .ji, .gaeng, .none, .jigaeng, .gaeng, .none, .gaeng, .gaeng, .none, .ji, .gaeng, .none, .ji, .gaeng, .none, .jigaeng, .gaeng, .none, .gaeng
    ]
    
    static var hwimoriKkwaenggwari: [Sounds] =
    [
        .gaen, .ji, .gaen, .none, .none, .ji, .gaen, .none, .gae, .gae, .gae, .gaen, .none, .ji, .gaen, .none, .gaen, .ji, .gaen, .none, .none, .ji, .gaen, .none, .gae, .gae, .gae, .gaen, .none, .ji, .gaen, .none
    ]
    
    static var semachiKkwaenggwari: [Sounds] =
    [
        .gaeng, .none, .none, .gaen, .none, .ji, .gae, .gaeng, .none, .gaeng, .none, .none, .gaen, .none, .ji, .gae, .gaeng, .none
    ]
    
    
    static var jajinmoribuk: [Sounds] =
    [
        .dung, .none, .none, .dung, .none, .none, .dung, .none, .dung, .none, .none, .none, .dung, .none, .none, .dung, .none, .none, .dung, .none, .dung, .none, .none, .none
    ]
    
    static var byeoldalgeoribuk: [Sounds] =
    [
        .dung, .none, .dung, .none, .du, .none, .du, .none, .dung, .none, .du, .none, .du, .none, .du, .none, .dung, .none, .du, .none, .dung, .none, .du, .none, .dung, .none, .du, .none, .du, .none, .du, .none
    ]
    
    static var gutgeoribuk: [Sounds] =
    [
        .dung, .none, .none, .dung, .none, .none, .dung, .none, .dung, .none, .dung, .none, .dung, .none, .none, .dung, .none, .none, .dung, .none, .dung, .none, .dung, .none
    ]
    
    static var hwimoribuk: [Sounds] =
    [
        .dung, .none, .du, .none, .dung, .none, .du, .none, .dung, .none, .du, .none, .dung, .none, .du, .none, .dung, .none, .du, .none, .dung, .none, .du, .none, .dung, .none, .du, .none, .dung, .none, .du, .none
    ]
    
    static var semachibuk: [Sounds] =
    [
        .dung, .none, .none, .dung, .none, .dung, .none, .none, .none, .dung, .none, .none, .dung, .none, .dung, .none, .none, .none
    ]
    
    static var jajinmorijing: [Sounds] =
    [
        .jing, .none, .none, .none, .none, .none, .none, .none, .none, .none, .none, .none, .jing, .none, .none, .none, .none, .none, .none, .none, .none, .none, .none, .none
    ]
    
    static var byeoldalgeorijing: [Sounds] =
    [
        .jing, .none, .none, .none, .none, .none, .none, .none, .jing, .none, .none, .none, .none, .none, .none, .none, .jing, .none, .none, .none, .jing, .none, .none, .none, .jing, .none, .none, .none, .none, .none, .none, .none
    ]
    
    static var gutgeorijing: [Sounds] =
    [
        .jing, .none, .none, .none, .none, .none, .none, .none, .none, .none, .none, .none, .jing, .none, .none, .none, .none, .none, .none, .none, .none, .none, .none, .none
    ]
    
    static var hwimorijing: [Sounds] =
    [
        .jing, .none, .none, .none, .none, .none, .none, .none, .jing, .none, .none, .none, .none, .none, .none, .none, .jing, .none, .none, .none, .none, .none, .none, .none, .jing, .none, .none, .none, .none, .none, .none, .none
    ]
    
    static var semachijing: [Sounds] =
    [
        .jing, .none, .none, .none, .none, .none, .none, .none, .none, .jing, .none, .none, .none, .none, .none, .none, .none, .none
    ]
    
}

extension Sounds {
    
    enum SoundType {
        case none
        case buk
        case janggu
        case kkwaenggwari
        case jing
        
    }
    
}

enum TotalSound {
    case semachi
    case gutgeori
    case byeoldalgeori
    
}

extension TotalSound {
    var total: [[Sounds]] {
        switch self {
        case .semachi:
            return [Sounds.semachiKkwaenggwari, Sounds.semachijanggu, Sounds.semachibuk, Sounds.semachijing]
            
        case .gutgeori:
            return [Sounds.gutgeoriKkwaenggwari, Sounds.gutgeorijanggu, Sounds.gutgeoribuk, Sounds.gutgeorijing]
            
        case .byeoldalgeori:
            return [Sounds.byeoldalgeoriKkwaenggwari, Sounds.byeoldalgeorijanggu, Sounds.byeoldalgeoribuk, Sounds.byeoldalgeorijing]
        }
    }
}
