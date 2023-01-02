//
//  mferGenerator.swift
//  mfers
//
//  Created by HeresMySwift on 9/16/22.
//

import UIKit

class MferGenerator: NSObject {
    static let baseSeed: String = "0000000000000000000000000000"
    
    // base domain for image layers
    var baseURL = "https://raw.githubusercontent.com/thebadcc-eth/mfer-builder/main/images/"

    // repositories
    var projects: [String] = ["mfers",
                              "creyzies",
                              "eos",
                              "mfersAhead",
                              "mfersBehind",
                              "sketchyMfers"]

    var background: [String] = ["blue",
                                "yellow",
                                "green",
                                "orange",
                                "red",
                                "space",
                                "tree",
                                "graveyard"]

    var type: [String] = ["plainmfer",
                          "charcoalmfer",
                          "zombiemfer",
                          "apemfer",
                          "alienmfer"]

    var watch420: [String] = ["argoblack",
                              "argowhite",
                              "oystergold",
                              "oystersilver",
                              "subbatblueblack",
                              "subblack",
                              "subblue",
                              "subcolabluered",
                              "sublanterngreen",
                              "subred",
                              "subrose",
                              "subturquoise"]

    var beard: [String] = ["fullbeard",
                           "shadowbeard"]

    var eyes: [String] = ["3Dglasses",
                          "alieneyes",
                          "eyemask",
                          "eyepatch",
                          "nerdglasses",
                          "purpleshades",
                          "regulareyes",
                          "shades",
                          "vr",
                          "zombieeyes"]
    
    var hoodies: [String] = ["hoodie",
                             "bearhoodie",
                             "bullhoodie",
                             "foxhoodie",
                             "trexhoodie",
                             "dragonhoodie",
                             "chickenhoodie",
                             "pepehoodie",
                             "sharkhoodie",
                             "axolotlhoodie",
                             "mleehoodie",
                             "kikihoodie",
                             "masterchanhoodie",
                             "sonichoodie",
                             "rabbithoodie"]

    var headphones: [String] = ["RCSheadphones",
                                "blackheadphones",
                                "blueheadphones",
                                "goldheadphones",
                                "greenheadphones",
                                "linedheadphones",
                                "pinkheadphones",
                                "redheadphones",
                                "whiteheadphones"]

    var hatsUnder: [String] = ["bandanablue",
                               "bandanadarkgray",
                               "bandanared",
                               "beaniemonochrome",
                               "beanie",
                               "capmonochrome",
                               "cappurple",
                               "headbandblue_green",
                               "headbandblue_red",
                               "headbandblue_white",
                               "headbandgreen_white",
                               "headbandpink_white",
                               "knitatlanta",
                               "knitbaltimore",
                               "knitbuffalo",
                               "knitchicago",
                               "knitcleveland",
                               "knitdallas",
                               "knitkc",
                               "knitlasvegas",
                               "knitmiami",
                               "knitnewyork",
                               "knitpittsburgh",
                               "knitsanfran"]

    var hatsOver: [String] = ["cowboyhat",
                              "pilothelmet",
                              "tophat"]

    var shortHair: [String] = ["messyblack",
                               "messypurple",
                               "messyred",
                               "messyyellow",
                               "mohawkblack",
                               "mohawkblue",
                               "mohawkgreen",
                               "mohawkpink",
                               "mohawkpurple",
                               "mohawkred",
                               "mohawkyellow"]

    var longHair: [String] = ["longhairblack",
                              "longhairyellow"]

    var mouth: [String] = ["flat",
                           "smile"]

    var shirt: [String] = ["collaredshirtblue",
                           "collaredshirtgreen",
                           "collaredshirtpink",
                           "collaredshirtturquoise",
                           "collaredshirtwhite",
                           "collaredshirtyellow",
                           "hoodiedownblue",
                           "hoodiedowngray",
                           "hoodiedowngreen",
                           "hoodiedownpink",
                           "hoodiedownred",
                           "hoodiedownwhite",
                           "goldchain",
                           "silverchain"]

    var smoke: [String] = ["cigblack",
                           "cigwhite",
                           "pipe"]
    
    // for generation
    
    var baseProject: String
    var seed: String = baseSeed
    var quantity: Int = 1
    
    init(baseProject: String) {
        self.baseProject = baseProject
    }

    // function to generate mfers
    // number of mfers to generate
    // 28 character string
    func generateMfers(mfers: Int, seedinput: String) -> [UIImage] {
        guard seedinput.count == 28 else { return [] }
//        document.getElementsByClassName("html-content-holder")[0].style.display = "inherit"
        
        let t1 = Int(seedinput.substring(with: String.Index(encodedOffset: 0)..<String.Index(encodedOffset: 2))) ?? 0
        let t2 = Int(seedinput.substring(with: String.Index(encodedOffset: 2)..<String.Index(encodedOffset: 4))) ?? 0
        let t3 = Int(seedinput.substring(with: String.Index(encodedOffset: 4)..<String.Index(encodedOffset: 6))) ?? 0
        let t4 = Int(seedinput.substring(with: String.Index(encodedOffset: 6)..<String.Index(encodedOffset: 8))) ?? 0
        let t5 = Int(seedinput.substring(with: String.Index(encodedOffset: 8)..<String.Index(encodedOffset: 10))) ?? 0
        let t6 = Int(seedinput.substring(with: String.Index(encodedOffset: 10)..<String.Index(encodedOffset: 12))) ?? 0
        let t7 = Int(seedinput.substring(with: String.Index(encodedOffset: 12)..<String.Index(encodedOffset: 14))) ?? 0
        let t8 = Int(seedinput.substring(with: String.Index(encodedOffset: 14)..<String.Index(encodedOffset: 16))) ?? 0
        let t9 = Int(seedinput.substring(with: String.Index(encodedOffset: 16)..<String.Index(encodedOffset: 18))) ?? 0
        let t10 = Int(seedinput.substring(with: String.Index(encodedOffset: 18)..<String.Index(encodedOffset: 20))) ?? 0
        let t11 = Int(seedinput.substring(with: String.Index(encodedOffset: 20)..<String.Index(encodedOffset: 22))) ?? 0
        let t12 = Int(seedinput.substring(with: String.Index(encodedOffset: 22)..<String.Index(encodedOffset: 24))) ?? 0
        let t13 = Int(seedinput.substring(with: String.Index(encodedOffset: 24)..<String.Index(encodedOffset: 26))) ?? 0
        let t14 = Int(seedinput.substring(with: String.Index(encodedOffset: 26)..<String.Index(encodedOffset: 28))) ?? 0

//        const elements = document.getElementsByClassName('mferImg')
//        var div = document.createElement("div")
//        div.setAttribute('class', 'mferImg')
//        document.getElementsByClassName('mferWrapper')[0].appendChild(div)
//        elements[0].parentNode.removeChild(elements[0])
        
        var images: [UIImage] = []
        for _ in 0..<mfers {
            var base = ""
            var _background = ""
            var _type = ""
            var _eyes = ""
            var _mouth = ""
            var _headphones = ""
            var _smoke = ""
            var _watch420 = ""
            var _beard = ""
            var _hoodies = ""
            var _shirt = ""
            var _longHair = ""
            var _hatsUnder = ""
            var _hatsOver = ""
            var _shortHair = ""
            
            
            let baseID = baseProject
            if (baseID == "random") {
                base = projects[Int.random(in: 0..<6)]
            } else {
                base = baseID
            }
            if (t1 == 1) {
                _background = "url()"
            } else if (t1 == 0) {
                _background = background[Int.random(in: 0..<8)]
            } else if (t1 > 1) {
                _background = background[t1 - 2]
            }
            if (t2 == 1) {
                _type = ""
            } else if (t2 == 0) {
                _type = type[Int.random(in: 0..<5)]
            } else if (t2 > 1) {
                _type = type[t2 - 2]
            }
            if (t3 == 1) {
                _eyes = ""
            } else if (t3 == 0) {
                _eyes = eyes[Int.random(in: 0..<10)]
            } else if (t3 > 1) {
                _eyes = eyes[t3 - 2]
            }
            if (t4 == 1) {
                _mouth = ""
            } else if (t4 == 0) {
                _mouth = mouth[Int.random(in: 0..<2)]
            } else if (t4 > 1) {
                _mouth = mouth[t4 - 2]
            }
            if (t5 == 1) {
                _headphones = ""
            } else if (t5 == 0) {
                _headphones = headphones[Int.random(in: 0..<9)]
            } else if (t5 > 1) {
                _headphones = headphones[t5 - 2]
            }
            if (t6 == 1) {
                _smoke = ""
            } else if (t6 == 0) {
                let rollSmoke = Int.random(in: 0..<10)
                if (rollSmoke <= 7) {
                    _smoke = smoke[Int.random(in: 0..<3)]
                } else {
                    _smoke = ""
                }
            } else if (t6 > 1) {
                _smoke = smoke[t6 - 2]
            }
            if (t7 == 1) {
                _watch420 = ""
            } else if (t7 == 0) {
                let rollWatch = Int.random(in: 0..<10)
                if (rollWatch <= 5) {
                    _watch420 = watch420[Int.random(in: 0..<12)]
                } else {
                    _watch420 = ""
                }
            } else if (t7 > 1) {
                _watch420 = watch420[t7 - 2]
            }
            if (t8 == 1) {
                _beard = ""
            } else if (t8 == 0) {
                let rollBeard = Int.random(in: 0..<10)
                if (rollBeard <= 3) {
                    _beard = beard[Int.random(in: 0..<2)]
                } else {
                    _beard = ""
                }
            } else if (t8 > 1) {
                _beard = beard[t8 - 2]
            }
            if (t9 == 1) {
                _hoodies = ""
            } else if (t9 == 0) {
                _hoodies = hoodies[Int.random(in: 0..<15)]
            } else if (t9 > 1) {
                _hoodies = hoodies[t9 - 2]
            }
            if (t10 == 1) {
                _shirt = ""
            } else if (t10 == 0) {
                _shirt = shirt[Int.random(in: 0..<14)]
            } else if (t10 > 1) {
                _shirt = shirt[t10 - 2]
            }
            if (t11 == 1) {
                _longHair = ""
            } else if (t11 == 0) {
                _longHair = longHair[Int.random(in: 0..<2)]
            } else if (t11 > 1) {
                _longHair = longHair[t11 - 2]
            }
            if (t12 == 1) {
                _hatsUnder = ""
            } else if (t12 == 0) {
                _hatsUnder = hatsUnder[Int.random(in: 0..<24)]
            } else if (t12 > 1) {
                _hatsUnder = hatsUnder[t12 - 2]
            }
            if (t13 == 1) {
                _hatsOver = ""
            } else if (t13 == 0) {
                _hatsOver = hatsOver[Int.random(in: 0..<3)]
            } else if (t13 > 1) {
                _hatsOver = hatsOver[t13 - 2]
            }
            if (t14 == 1) {
                _shortHair = ""
            } else if (t14 == 0) {
                _shortHair = shortHair[Int.random(in: 0..<8)]
            } else if (t14 > 1) {
                _shortHair = shortHair[t14 - 2]
            }
            let rollHoodies = Int.random(in: 0..<10)
            if (rollHoodies <= 1 && t9 == 0) {
                _hatsOver = ""
                _hatsUnder = ""
                _shortHair = ""
                _longHair = ""
                _shirt = ""
            } else if (t9 > 1) {
                _hatsOver = ""
                _hatsUnder = ""
                _shortHair = ""
                _longHair = ""
                _shirt = ""
            } else {
                _hoodies = ""
                let rollShirts = Int.random(in: 0..<10)
                if (rollShirts <= 5 && t10 == 0) {
                } else if (t10 > 1) {
                } else {
                    _shirt = ""
                }
                let rollOverUnder = Int.random(in: 0..<10)
                if (rollOverUnder <= 2 && t12 == 0) {
                    _hatsOver = ""
                    _shortHair = ""
                    let rollLongHair = Int.random(in: 0..<10)
                    if (rollLongHair <= 3 && t11 == 0) {
                    } else if (t11 > 1) {
                    } else {
                        _longHair = ""
                    }
                } else if (t12 > 1) {
                    _hatsOver = ""
                    _shortHair = ""
                    let rollLongHair = Int.random(in: 0..<10)
                    if (rollLongHair <= 3 && t11 == 0) {
                    } else if (t11 > 1) {
                    } else {
                        _longHair = ""
                    }
                } else if (rollOverUnder >= 2 && rollOverUnder < 4 && t13 == 0){
                    _hatsUnder = ""
                    _shortHair = ""
                    let rollLongHair = Int.random(in: 0..<10)
                    if (rollLongHair <= 3 && t11 == 0) {
                    } else if (t11 > 1) {
                    } else {
                        _longHair = ""
                    }
                } else if (t13 > 1){
                    _hatsUnder = ""
                    _shortHair = ""
                    let rollLongHair = Int.random(in: 0..<10)
                    if (rollLongHair <= 3 && t11 == 0) {
                    } else if (t11 > 1) {
                    } else {
                        _longHair = ""
                    }
                } else if (rollOverUnder >= 4 && rollOverUnder < 6 && t11 == 0){
                    _hatsUnder = ""
                    _hatsOver = ""
                    _shortHair = ""
                    let rollLongHair = Int.random(in: 0..<10)
                    if (rollLongHair <= 3 && t11 == 0) {
                    } else if (t11 > 1) {
                    } else {
                        _longHair = ""
                    }
                } else if (t11 > 1){
                    _hatsUnder = ""
                    _hatsOver = ""
                    _shortHair = ""
                    let rollLongHair = Int.random(in: 0..<10)
                    if (rollLongHair <= 3 && t11 == 0) {
                    } else if (t11 > 1) {
                    } else {
                        _longHair = ""
                    }
                } else if (rollOverUnder >= 6 && t14 == 0) {
                    _hatsUnder = ""
                    _hatsOver = ""
                    _longHair = ""
                } else if (t14 > 1) {
                    _hatsUnder = ""
                    _hatsOver = ""
                    _longHair = ""
                }
            }
        
//        window.scrollTo(0,0)
            var seed: String
            if (base == "mfers" || base == "creyzies" || base == "eos") {
                seed = _hoodies + _watch420 + _smoke + _hatsOver + _headphones + _hatsUnder + _longHair + _shortHair + _shirt + _eyes + _mouth + _beard + _type + _background
            } else if (base == "mfersBehind") {
                seed = _hoodies + _watch420  + _hatsOver + _shortHair + _headphones + _hatsUnder + _longHair + _smoke + _shirt + _eyes + _mouth + _beard + _type + _background
            } else if (base == "mfersAhead") {
                seed = _smoke + _hoodies + _watch420  + _hatsOver + _shortHair + _headphones + _hatsUnder + _longHair + _shirt + _eyes + _mouth + _beard + _type + _background
            } else if (base == "sketchyMfers") {
                if (_hatsUnder == (hatsUnder[3]) || _hatsUnder == (hatsUnder[4]) || _hatsUnder == (hatsUnder[5]) || _hatsUnder == (hatsUnder[6])) {
                    if (_longHair == (longHair[0])) {
                        seed = _hoodies + _watch420 + _smoke + _hatsOver + _hatsUnder + _headphones + "url(https://raw.githubusercontent.com/thebadcc-eth/mfer-builder/main/images/sketchyMfers/longhair/longhairblackmod.png), " + _shirt + _longHair + _shortHair + _eyes + _mouth + _beard + _type + _background
                    } else if (_longHair == (longHair[1])) {
                        seed = _hoodies + _watch420 + _smoke + _hatsOver + _hatsUnder + _headphones + "url(https://raw.githubusercontent.com/thebadcc-eth/mfer-builder/main/images/sketchyMfers/longhair/longhairyellowmod.png), " + _shirt + _longHair + _shortHair + _eyes + _mouth + _beard + _type + _background
                    } else  {
                        seed = _hoodies + _watch420 + _smoke + _hatsOver + _hatsUnder + _headphones + _shirt + _longHair + _shortHair + _eyes + _mouth + _beard + _type + _background
                    }
                } else {
                    if (_longHair == (longHair[0])) {
                        seed = _hoodies + _watch420 + _smoke + _hatsOver + _headphones + _hatsUnder  + "url(https://raw.githubusercontent.com/thebadcc-eth/mfer-builder/main/images/sketchyMfers/longhair/longhairblackmod.png), " + _shirt + _longHair + _shortHair + _eyes + _mouth + _beard + _type + _background
                    } else if (_longHair == (longHair[1])) {
                        seed = _hoodies + _watch420 + _smoke + _hatsOver + _headphones + _hatsUnder + "url(https://raw.githubusercontent.com/thebadcc-eth/mfer-builder/main/images/sketchyMfers/longhair/longhairyellowmod.png), " + _shirt + _longHair + _shortHair + _eyes + _mouth + _beard + _type + _background
                    } else {
                        seed = _hoodies + _watch420 + _smoke + _hatsOver + _headphones + _hatsUnder + _shirt + _longHair + _shortHair + _eyes + _mouth + _beard + _type + _background
                    }
                }
            }
            
//        var dimension = document.getElementsByClassName("pixels")[0].value
//        document.getElementsByClassName("html-content-holder")[0].style.backgroundImage = seed
//        document.getElementsByClassName("html-content-holder")[0].style.width = dimension
//        document.getElementsByClassName("html-content-holder")[0].style.height = dimension

            print("Seed: \(base)")
            
            _background = _background.replacingOccurrences(of: "url(https://raw.githubusercontent.com/thebadcc-eth/mfer-builder/main/", with: "").replacingOccurrences(of: ".png)", with: "")
            _type = _type.replacingOccurrences(of: "url(https://raw.githubusercontent.com/thebadcc-eth/mfer-builder/main/", with: "").replacingOccurrences(of: ".png), ", with: "")
            _eyes = _eyes.replacingOccurrences(of: "url(https://raw.githubusercontent.com/thebadcc-eth/mfer-builder/main/", with: "").replacingOccurrences(of: ".png), ", with: "")
            _mouth = _mouth.replacingOccurrences(of: "url(https://raw.githubusercontent.com/thebadcc-eth/mfer-builder/main/", with: "").replacingOccurrences(of: ".png), ", with: "")
            _headphones = _headphones.replacingOccurrences(of: "url(https://raw.githubusercontent.com/thebadcc-eth/mfer-builder/main/", with: "").replacingOccurrences(of: ".png), ", with: "")
            _smoke = _smoke.replacingOccurrences(of: "url(https://raw.githubusercontent.com/thebadcc-eth/mfer-builder/main/", with: "").replacingOccurrences(of: ".png), ", with: "")
            _watch420 = _watch420.replacingOccurrences(of: "url(https://raw.githubusercontent.com/thebadcc-eth/mfer-builder/main/", with: "").replacingOccurrences(of: ".png), ", with: "")
            _beard = _beard.replacingOccurrences(of: "url(https://raw.githubusercontent.com/thebadcc-eth/mfer-builder/main/", with: "").replacingOccurrences(of: ".png), ", with: "")
            _hoodies = _hoodies.replacingOccurrences(of: "url(https://raw.githubusercontent.com/thebadcc-eth/mfer-builder/main/", with: "").replacingOccurrences(of: ".png), ", with: "")
            _shirt = _shirt.replacingOccurrences(of: "url(https://raw.githubusercontent.com/thebadcc-eth/mfer-builder/main/", with: "").replacingOccurrences(of: ".png), ", with: "")
            _longHair = _longHair.replacingOccurrences(of: "url(https://raw.githubusercontent.com/thebadcc-eth/mfer-builder/main/", with: "").replacingOccurrences(of: ".png), ", with: "")
            _hatsUnder = _hatsUnder.replacingOccurrences(of: "url(https://raw.githubusercontent.com/thebadcc-eth/mfer-builder/main/", with: "").replacingOccurrences(of: ".png), ", with: "")
            _hatsOver = _hatsOver.replacingOccurrences(of: "url(https://raw.githubusercontent.com/thebadcc-eth/mfer-builder/main/", with: "").replacingOccurrences(of: ".png), ", with: "")
            _shortHair = _shortHair.replacingOccurrences(of: "url(https://raw.githubusercontent.com/thebadcc-eth/mfer-builder/main/", with: "").replacingOccurrences(of: ".png), ", with: "")
            
            

            let backgroundImage = UIImage(named: (_background.components(separatedBy: "/").last?.replacingOccurrences(of: ".png", with: ""))!) ?? UIImage()
            let typeImage = UIImage(named: (_type.components(separatedBy: "/").last?.replacingOccurrences(of: ".png", with: ""))!) ?? UIImage()
            let eyesImage = UIImage(named: (_eyes.components(separatedBy: "/").last?.replacingOccurrences(of: ".png", with: ""))!) ?? UIImage()
            let mouthImage = UIImage(named: (_mouth.components(separatedBy: "/").last?.replacingOccurrences(of: ".png", with: ""))!) ?? UIImage()
            let headphonesImage = UIImage(named: (_headphones.components(separatedBy: "/").last?.replacingOccurrences(of: ".png", with: ""))!) ?? UIImage()
            let smokeImage = UIImage(named: (_smoke.components(separatedBy: "/").last?.replacingOccurrences(of: ".png", with: ""))!) ?? UIImage()
            let watch420Image = UIImage(named: (_watch420.components(separatedBy: "/").last?.replacingOccurrences(of: ".png", with: ""))!) ?? UIImage()
            let beardImage = UIImage(named: (_beard.components(separatedBy: "/").last?.replacingOccurrences(of: ".png", with: ""))!) ?? UIImage()
            let hoodiesImage = UIImage(named: (_hoodies.components(separatedBy: "/").last?.replacingOccurrences(of: ".png", with: ""))!) ?? UIImage()
            let shirtImage = UIImage(named: (_shirt.components(separatedBy: "/").last?.replacingOccurrences(of: ".png", with: ""))!) ?? UIImage()
            let longHairImage = UIImage(named: (_longHair.components(separatedBy: "/").last?.replacingOccurrences(of: ".png", with: ""))!) ?? UIImage()
            let hatsUnderImage = UIImage(named: (_hatsUnder.components(separatedBy: "/").last?.replacingOccurrences(of: ".png", with: ""))!) ?? UIImage()
            let hatsOverImage = UIImage(named: (_hatsOver.components(separatedBy: "/").last?.replacingOccurrences(of: ".png", with: ""))!) ?? UIImage()
            let shortHairImage = UIImage(named: (_shortHair.components(separatedBy: "/").last?.replacingOccurrences(of: ".png", with: ""))!) ?? UIImage()
            
            let image = generateMferImage(backgroundImage: backgroundImage,
                              typeImage: typeImage,
                              eyesImage: eyesImage,
                              mouthImage: mouthImage,
                              headphonesImage: headphonesImage,
                              smokeImage: smokeImage,
                              watch420Image: watch420Image,
                              beardImage: beardImage,
                              hoodiesImage: hoodiesImage,
                              shirtImage: shirtImage,
                              longHairImage: longHairImage,
                              hatsUnderImage: hatsUnderImage,
                              hatsOverImage: hatsOverImage,
                              shortHairImage: shortHairImage)
            
            images.append(image)
        }
        return images
    }
    
    func generateMferImage(backgroundImage: UIImage,
                         typeImage: UIImage,
                         eyesImage: UIImage,
                         mouthImage: UIImage,
                         headphonesImage: UIImage,
                         smokeImage: UIImage,
                         watch420Image: UIImage,
                         beardImage: UIImage,
                         hoodiesImage: UIImage,
                         shirtImage: UIImage,
                         longHairImage: UIImage,
                         hatsUnderImage: UIImage,
                         hatsOverImage: UIImage,
                         shortHairImage: UIImage) -> UIImage{
        return backgroundImage
            .mergeWith(topImage: typeImage)
            .mergeWith(topImage: eyesImage)
            .mergeWith(topImage: mouthImage)
            .mergeWith(topImage: beardImage)
            .mergeWith(topImage: headphonesImage)
            .mergeWith(topImage: smokeImage)
            .mergeWith(topImage: watch420Image)
            .mergeWith(topImage: hoodiesImage)
            .mergeWith(topImage: shirtImage)
            .mergeWith(topImage: longHairImage)
            .mergeWith(topImage: hatsUnderImage)
            .mergeWith(topImage: hatsOverImage)
            .mergeWith(topImage: shortHairImage)
    }
    
    func generate(from mfer: Mfer) -> UIImage {
        generateMferImage(backgroundImage: UIImage(named: mfer.background)!,
                          typeImage: UIImage(named: mfer.type)!,
                          eyesImage: UIImage(named: mfer.eyes)!,
                          mouthImage: UIImage(named: mfer.mouth)!,
                          headphonesImage: UIImage(named: mfer.headphones)!,
                          smokeImage: UIImage(named: mfer.smoke)!,
                          watch420Image: UIImage(named: mfer.watch)!,
                          beardImage: UIImage(named: mfer.beard)!,
                          hoodiesImage: UIImage(named: mfer.hoodie)!,
                          shirtImage: UIImage(named: mfer.shirt)!,
                          longHairImage: UIImage(named: mfer.longHair)!,
                          hatsUnderImage: UIImage(named: mfer.hatUnderHeadphones)!,
                          hatsOverImage: UIImage(named: mfer.hatOverHeadphones)!,
                          shortHairImage: UIImage(named: mfer.shortHair)!)
    }

    func updateSeed() {
        let _t1 = background[0]
        let _t2 = type[0]
        let _t3 = eyes[0]
        let _t4 = mouth[0]
        let _t5 = headphones[0]
        let _t6 = smoke[0]
        let _t7 = watch420[0]
        let _t8 = beard[0]
        let _t9 = hoodies[0]
        let _t10 = shirt[0]
        let _t11 = longHair[0]
        let _t12 = hatsUnder[0]
        let _t13 = hatsOver[0]
        let _t14 = shortHair[0]
        let _seed = _t1 + _t2 + _t3 + _t4 + _t5 + _t6 + _t7 + _t8 + _t9 + _t10 + _t11 + _t12 + _t13 + _t14
        self.seed = _seed
        generateMfers(mfers: quantity, seedinput: seed)
    }

    func wtf() {
        var filters: [String] = []
        filters[0] = "none"
        filters[1] = "invert(.8)"
        filters[2] = "grayscale(100%)"
        filters[3] = "saturate(10)"
        filters[4] = "sepia(1)"
        filters[5] = "contrast(5)"
        filters[6] = "hue-rotate(3.142rad)"
        
//        var currentFilter = document.getElementsByClassName("wtfButton")[0].value
//        console.log(currentFilter)
//        var imgLength = document.getElementsByClassName("mfers").length
//        console.log(imgLength)
//        var newFilter = parseFloat(currentFilter) + 1
//        console.log(newFilter)
//        for (var i = 0 i < imgLength i++) {
//            document.getElementsByClassName("mfers")[i].style.filter = filters[newFilter]
//        }
//        if (currentFilter >= 5) {
//            document.getElementsByClassName("wtfButton")[0].value = "-1"
//        } else {
//            document.getElementsByClassName("wtfButton")[0].value = newFilter
//        }
        
    }

    func dropdown() {
//      var x = document.getElementsByClassName("dropdown")[0]
//      var y = document.getElementsByClassName("fa-arrow-down-wide-short")[0]
//      var z = document.getElementsByClassName("fa-xmark")[0]
//      if (x.style.display == "none") {
//        x.style.display = "block"
//        y.style.display = "none"
//        z.style.display = "block"
//      } else {
//        x.style.display = "none"
//        y.style.display = "block"
//        z.style.display = "none"
//      }
    }
}
