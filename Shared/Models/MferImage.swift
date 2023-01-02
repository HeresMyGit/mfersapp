//
//  MferImage.swift
//  mfers
//
//  Created by HeresMySwift on 9/20/22.
//

import SwiftUI

struct MferImage: Identifiable {
    var id = UUID()
    var image: Image
}

struct Mfer {
    var background = "none"
    var beard = "none"
    var chain = "none"
    var eyes = "none"
    var hatOverHeadphones = "none"
    var hatUnderHeadphones = "none"
    var headphones = "none"
    var hoodie = "none"
    var longHair = "none"
    var mouth = "none"
    var shirt = "none"
    var shortHair = "none"
    var smoke = "none"
    var type = "none"
    var watch = "none"
    
    var traits: [String] {
        return [background,
                type,
                eyes,
                mouth,
                headphones,
                smoke,
                watch,
                beard,
                hoodie,
                shirt,
                longHair,
                hatUnderHeadphones,
                hatOverHeadphones,
                shortHair]
    }
    
    mutating func set(imageName: String, for trait: MferTrait) {
        switch trait {
        case .background:
            self.background = imageName
        case .beard:
            self.beard = imageName
        case .eyes:
            self.eyes = imageName
        case .hatOverHeadphones:
            self.hatOverHeadphones = imageName
        case .hatUnderHeadphones:
            self.hatUnderHeadphones = imageName
        case .headphones:
            self.headphones = imageName
        case .hoodie:
            self.hoodie = imageName
        case .longHair:
            self.longHair = imageName
        case .mouth:
            self.mouth = imageName
        case .shirt:
            self.shirt = imageName
        case .shortHair:
            self.shortHair = imageName
        case .smoke:
            self.smoke = imageName
        case .type:
            self.type = imageName
        case .watch:
            self.watch = imageName
        }
    }
}

enum MferTrait: String, CaseIterable {
    case background
    case type
    case eyes
    case mouth
    case headphones
    case smoke
    case watch
    case beard
    case hoodie
    case shirt
    case longHair
    case hatUnderHeadphones
    case hatOverHeadphones
    case shortHair
}
