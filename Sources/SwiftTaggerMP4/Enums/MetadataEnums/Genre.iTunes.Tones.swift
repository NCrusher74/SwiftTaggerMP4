//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 10/7/20.
//

import Foundation
extension Genre {
    public enum Tones: CaseIterable {
        case tones
        case alertTones(AlertTones)
        case ringTones(RingTones)

        public static var allCases: [Tones] {
            var cases = AlertTones.allCases.map({ Tones.alertTones($0)})
            cases.append(contentsOf: RingTones.allCases.map({ Tones.ringTones($0)}))
            return cases
        }
        
        var genreID: Int {
            switch self {
                case .tones: return 37
                case .alertTones(let type): return type.rawValue
                case .ringTones(let type): return type.rawValue
            }
        }
        
        var stringValue: String {
            switch self {
                case .tones: return "Tones"
                case .alertTones(let type): return type.stringValue
                case .ringTones(let type): return type.stringValue
            }
        }
        
        public enum AlertTones: Int, CaseIterable {
            case alertTones = 8054
            case soundEffects = 8050
            case dialogue = 8051
            case music = 8052
            
            var stringValue: String {
                switch self {
                    case .alertTones: return "Tones|Alert Tones"
                    case .soundEffects: return "Tones|Alert Tones|Sound Effects"
                    case .dialogue: return "Tones|Alert Tones|Dialogue"
                    case .music: return "Tones|Alert Tones|Music"
                }
            }
        }
        
        public enum RingTones: CaseIterable {
            case ringTones
            case jPop
            case enka
            case inspirational
            case anime
            case kayokyoku
            case fitnessAndWorkout
            case karaoke
            case instrumental
            case orchestral
            case marchingBands
            case spokenWord
            case disney
            case frenchPop
            case germanPop
            case germanFolk

            public static var allCases: [RingTones] {
                var tones: [RingTones] = [.ringTones, .anime, .disney, .enka, .fitnessAndWorkout, .frenchPop, .germanFolk, .germanPop, .inspirational, .instrumental, .jPop, .karaoke, .kayokyoku, .marchingBands, .orchestral, .spokenWord]
                tones.append(contentsOf: African.allCases.map({ RingTones.african($0)}))
                tones.append(contentsOf: Alternative.allCases.map({RingTones.alternative($0)}))
                tones.append(contentsOf: Blues.allCases.map({RingTones.blues($0)}))
                tones.append(contentsOf: Comedy.allCases.map({RingTones.comedy($0)}))
                tones.append(contentsOf: ChildrensMusic.allCases.map({RingTones.childrensMusic($0)}))
                tones.append(contentsOf: Classical.allCases.map({RingTones.classical($0)}))
                tones.append(contentsOf: Country.allCases.map({RingTones.country($0)}))
                tones.append(contentsOf: Electronic.allCases.map({RingTones.electronic($0)}))
                tones.append(contentsOf: Holiday.allCases.map({RingTones.holiday($0)}))
                tones.append(contentsOf: SingerSongwriter.allCases.map({RingTones.singerSongwriter($0)}))
                tones.append(contentsOf: Jazz.allCases.map({RingTones.jazz($0)}))
                tones.append(contentsOf: Latino.allCases.map({RingTones.latino($0)}))
                tones.append(contentsOf: NewAge.allCases.map({RingTones.newAge($0)}))
                tones.append(contentsOf: Pop.allCases.map({RingTones.pop($0)}))
                tones.append(contentsOf: RAndBSoul.allCases.map({RingTones.rAndBSoul($0)}))
                tones.append(contentsOf: Soundtrack.allCases.map({RingTones.soundtrack($0)}))
                tones.append(contentsOf: Dance.allCases.map({RingTones.dance($0)}))
                tones.append(contentsOf: HipHopRap.allCases.map({RingTones.hipHopRap($0)}))
                tones.append(contentsOf: World.allCases.map({RingTones.world($0)}))
                tones.append(contentsOf: Rock.allCases.map({RingTones.rock($0)}))
                tones.append(contentsOf: ChristianAndGospel.allCases.map({RingTones.christianAndGospel($0)}))
                tones.append(contentsOf: Vocal.allCases.map({RingTones.vocal($0)}))
                tones.append(contentsOf: Reggae.allCases.map({RingTones.reggae($0)}))
                tones.append(contentsOf: EasyListening.allCases.map({RingTones.easyListening($0)}))
                tones.append(contentsOf: Brazilian.allCases.map({RingTones.brazilian($0)}))
                tones.append(contentsOf: Chinese.allCases.map({RingTones.chinese($0)}))
                tones.append(contentsOf: Korean.allCases.map({RingTones.korean($0)}))
                tones.append(contentsOf: Indian.allCases.map({RingTones.indian($0)}))
                tones.append(contentsOf: Arabic.allCases.map({RingTones.arabic($0)}))
                tones.append(contentsOf: Russian.allCases.map({RingTones.russian($0)}))
                tones.append(contentsOf: Turkish.allCases.map({RingTones.turkish($0)}))
                tones.append(contentsOf: Cuban.allCases.map({RingTones.cuban($0)}))
                tones.append(contentsOf: Folk.allCases.map({RingTones.folk($0)}))
                tones.append(contentsOf: Tarab.allCases.map({RingTones.tarab($0)}))
                return tones
            }
            
            var rawValue: Int {
                switch self {
                    case .ringTones: return 8016
                    case .jPop: return 8053
                    case .enka: return 8009
                    case .anime: return 8063
                    case .kayokyoku: return 8018
                    case .karaoke: return 8215
                    case .instrumental: return 8198
                    case .orchestral: return 8236
                    case .marchingBands: return 8230
                    case .spokenWord: return 8028
                    case .disney: return 8049
                    case .frenchPop: return 8010
                    case .germanPop: return 8012
                    case .germanFolk: return 8011
                    case .inspirational: return 8015
                    case .fitnessAndWorkout: return 8158
                    case .blues(let subgenre): return subgenre.rawValue
                    case .comedy(let subgenre): return subgenre.rawValue
                    case .childrensMusic(let subgenre): return subgenre.rawValue
                    case .classical(let subgenre): return subgenre.rawValue
                    case .country(let subgenre): return subgenre.rawValue
                    case .electronic(let subgenre): return subgenre.rawValue
                    case .holiday(let subgenre): return subgenre.rawValue
                    case .singerSongwriter(let subgenre): return subgenre.rawValue
                    case .jazz(let subgenre): return subgenre.rawValue
                    case .latino(let subgenre): return subgenre.rawValue
                    case .newAge(let subgenre): return subgenre.rawValue
                    case .pop(let subgenre): return subgenre.rawValue
                    case .rAndBSoul(let subgenre): return subgenre.rawValue
                    case .soundtrack(let subgenre): return subgenre.rawValue
                    case .dance(let subgenre): return subgenre.rawValue
                    case .hipHopRap(let subgenre): return subgenre.rawValue
                    case .world(let subgenre): return subgenre.rawValue
                    case .alternative(let subgenre): return subgenre.rawValue
                    case .rock(let subgenre): return subgenre.rawValue
                    case .christianAndGospel(let subgenre): return subgenre.rawValue
                    case .vocal(let subgenre): return subgenre.rawValue
                    case .reggae(let subgenre): return subgenre.rawValue
                    case .easyListening(let subgenre): return subgenre.rawValue
                    case .african(let subgenre): return subgenre.rawValue
                    case .brazilian(let subgenre): return subgenre.rawValue
                    case .chinese(let subgenre): return subgenre.rawValue
                    case .korean(let subgenre): return subgenre.rawValue
                    case .indian(let subgenre): return subgenre.rawValue
                    case .arabic(let subgenre): return subgenre.rawValue
                    case .russian(let subgenre): return subgenre.rawValue
                    case .turkish(let subgenre): return subgenre.rawValue
                    case .cuban(let subgenre): return subgenre.rawValue
                    case .folk(let subgenre): return subgenre.rawValue
                    case .tarab(let subgenre): return subgenre.rawValue
                }
            }
            
            var stringValue: String {
                switch self {
                    case .ringTones: return "RingTones"
                    case .jPop: return "Tones|RingTones|JPop"
                    case .enka: return "Tones|RingTones|Enka"
                    case .anime: return "Tones|RingTones|Anime"
                    case .kayokyoku: return "Tones|RingTones|Kayokyoku"
                    case .karaoke: return "Tones|RingTones|Karaoke"
                    case .instrumental: return "Tones|RingTones|Instrumental"
                    case .orchestral: return "Tones|RingTones|Orchestral"
                    case .marchingBands: return "Tones|RingTones|Marching"
                    case .spokenWord: return "Tones|RingTones|Spoken Word"
                    case .disney: return "Tones|RingTones|Disney"
                    case .frenchPop: return "Tones|RingTones|French Pop"
                    case .germanPop: return "Tones|RingTones|German Pop"
                    case .germanFolk: return "Tones|RingTones|German Folk"
                    case .blues(let subgenre): return subgenre.stringValue
                    case .comedy(let subgenre): return subgenre.stringValue
                    case .childrensMusic(let subgenre): return subgenre.stringValue
                    case .classical(let subgenre): return subgenre.stringValue
                    case .country(let subgenre): return subgenre.stringValue
                    case .electronic(let subgenre): return subgenre.stringValue
                    case .holiday(let subgenre): return subgenre.stringValue
                    case .singerSongwriter(let subgenre): return subgenre.stringValue
                    case .jazz(let subgenre): return subgenre.stringValue
                    case .latino(let subgenre): return subgenre.stringValue
                    case .newAge(let subgenre): return subgenre.stringValue
                    case .pop(let subgenre): return subgenre.stringValue
                    case .rAndBSoul(let subgenre): return subgenre.stringValue
                    case .soundtrack(let subgenre): return subgenre.stringValue
                    case .dance(let subgenre): return subgenre.stringValue
                    case .hipHopRap(let subgenre): return subgenre.stringValue
                    case .world(let subgenre): return subgenre.stringValue
                    case .alternative(let subgenre): return subgenre.stringValue
                    case .rock(let subgenre): return subgenre.stringValue
                    case .christianAndGospel(let subgenre): return subgenre.stringValue
                    case .vocal(let subgenre): return subgenre.stringValue
                    case .reggae(let subgenre): return subgenre.stringValue
                    case .easyListening(let subgenre): return subgenre.stringValue
                    case .african(let subgenre): return subgenre.stringValue
                    case .brazilian(let subgenre): return subgenre.stringValue
                    case .chinese(let subgenre): return subgenre.stringValue
                    case .korean(let subgenre): return subgenre.stringValue
                    case .indian(let subgenre): return subgenre.stringValue
                    case .arabic(let subgenre): return subgenre.stringValue
                    case .russian(let subgenre): return subgenre.stringValue
                    case .turkish(let subgenre): return subgenre.stringValue
                    case .cuban(let subgenre): return subgenre.stringValue
                    case .folk(let subgenre): return subgenre.stringValue
                    case .tarab(let subgenre): return subgenre.stringValue
                    case .inspirational: return "Tones|RingTones|Inspirational"
                    case .fitnessAndWorkout: return "Tones|RingTones|Fitness and Workout"
                }
            }

            case blues(Blues)
            public enum Blues: Int, CaseIterable {
                case blues = 8002
                case chicagoBlues = 8070
                case classicBlues = 8071
                case contemporaryBlues = 8072
                case countryBlues = 8073
                case deltaBlues = 8074
                case electricBlues = 8075
                
                var stringValue: String {
                    switch self {
                        case .blues: return "Tones|RingTones|Blues"
                        case .chicagoBlues: return "Tones|RingTones|Blues|Chicago Blues"
                        case .classicBlues: return "Tones|RingTones|Blues|Classic Blues"
                        case .contemporaryBlues: return "Tones|RingTones|Blues|Contemporary Blues"
                        case .countryBlues: return "Tones|RingTones|Blues|Country Blues"
                        case .deltaBlues: return "Tones|RingTones|Blues|Delta Blues"
                        case .electricBlues: return "Tones|RingTones|Blues|Electric Blues"
                    }
                }
            }

            case comedy(Comedy)
            public enum Comedy: Int, CaseIterable {
                case comedy = 8005
                case novelty = 8127
                case standupComedy = 8128
                
                var stringValue: String {
                    switch self {
                        case .comedy: return "Tones|RingTones|Comedy"
                        case .novelty: return "Tones|RingTones|Comedy|Novelty"
                        case .standupComedy: return "Tones|RingTones|Comedy|Standup Comedy"
                            
                    }
                }
            }
 
            case childrensMusic(ChildrensMusic)
            public enum ChildrensMusic: Int, CaseIterable {
                case childrensMusic = 8003
                case lullabies = 8087
                case singAlong = 8088
                case stories = 8089
                
                var stringValue: String {
                    switch self {
                        case .childrensMusic: return "Tones|RingTones|Children's Music"
                        case .lullabies: return "Tones|RingTones|Children's Tones|RingTones|Lullabies"
                        case .singAlong: return "Tones|RingTones|Children's Tones|RingTones|Sing-Along"
                        case .stories: return "Tones|RingTones|Children's Tones|RingTones|Stories"
                    }
                }
            }

            case classical(Classical)
            public enum Classical: Int, CaseIterable {
                case classical = 8004
                case opera = 8021
                case avantGarde = 8111
                case baroqueEra = 8112
                case chamberMusic = 8113
                case chant = 8114
                case choral = 8115
                case classicalCrossover = 8116
                case earlyMusic = 8117
                case impressionist = 8119
                case medievalEra = 8120
                case minimalism = 8121
                case modernEra = 8122
                case orchestral = 8123
                case renaissance = 8124
                case romanticEra = 8125
                case weddingMusic = 8126
                case highClassical = 8118
                case artSong = 8345
                case brassAndWoodwinds = 8346
                case soloInstrumental = 8347
                case contemporaryEra = 8348
                case oratorio = 8349
                case cantata = 8350
                case electronic = 8351
                case sacred = 8352
                case guitar = 8353
                case piano = 8354
                case violin = 8355
                case cello = 8356
                case percussion = 8357
                
                var stringValue: String {
                    switch self {
                        case .classical: return "Tones|RingTones|Classical"
                        case .opera: return "Tones|RingTones|Classical|Opera"
                        case .avantGarde: return "Tones|RingTones|Classical|Avant Garde"
                        case .baroqueEra: return "Tones|RingTones|Classical|Baroque Era"
                        case .chamberMusic: return "Tones|RingTones|Classical|Chamber Music"
                        case .chant: return "Tones|RingTones|Classical|Chant"
                        case .choral: return "Tones|RingTones|Classical|Choral"
                        case .classicalCrossover: return "Tones|RingTones|Classical|Classical Crossover"
                        case .earlyMusic: return "Tones|RingTones|Classical|Early Music"
                        case .impressionist: return "Tones|RingTones|Classical|Impressionist"
                        case .medievalEra: return "Tones|RingTones|Classical|Medieval Era"
                        case .minimalism: return "Tones|RingTones|Classical|Minimalism"
                        case .modernEra: return "Tones|RingTones|Classical|Modern Era"
                        case .orchestral: return "Tones|RingTones|Classical|Orchestral"
                        case .renaissance: return "Tones|RingTones|Classical|Renaissance"
                        case .romanticEra: return "Tones|RingTones|Classical|Romantic Era"
                        case .weddingMusic: return "Tones|RingTones|Classical|Wedding Music"
                        case .highClassical: return "Tones|RingTones|Classical|High Classical"
                        case .artSong: return "Tones|RingTones|Classical|Art Song"
                        case .brassAndWoodwinds: return "Tones|RingTones|Classical|Brass and Woodwinds"
                        case .soloInstrumental: return "Tones|RingTones|Classical|Solo Instrumental"
                        case .contemporaryEra: return "Tones|RingTones|Classical|Contemporary Era"
                        case .oratorio: return "Tones|RingTones|Classical|Oratorio"
                        case .cantata: return "Tones|RingTones|Classical|Cantata"
                        case .electronic: return "Tones|RingTones|Classical|Rlectronic"
                        case .sacred: return "Tones|RingTones|Classical|Sacred"
                        case .guitar: return "Tones|RingTones|Classical|Guitar"
                        case .piano: return "Tones|RingTones|Classical|Piano"
                        case .violin: return "Tones|RingTones|Classical|Violin"
                        case .cello: return "Tones|RingTones|Classical|Cello"
                        case .percussion: return "Tones|RingTones|Classical|Percussion"
                            
                    }
                }
            }

            case country(Country)
            public enum Country: Int, CaseIterable {
                case country = 8006
                case alternativeCountry = 8129
                case americana = 8130
                case bluegrass = 8131
                case contemporaryBluegrass = 8132
                case contemporaryCountry = 8133
                case countryGospel = 8134
                case honkyTonk = 8135
                case outlawCountry = 8136
                case traditionalBluegrass = 8138
                case traditionalCountry = 8139
                case urbanCowboy = 8140
                case thaiCountry = 8137
                
                var stringValue: String {
                    switch self {
                        case .country: return "Tones|RingTones|Country"
                        case .alternativeCountry: return "Tones|RingTones|Country|Alternative Country"
                        case .americana: return "Tones|RingTones|Country|Americana"
                        case .bluegrass: return "Tones|RingTones|Country|Bluegrass"
                        case .contemporaryBluegrass: return "Tones|RingTones|Country|Contemporary Bluegrass"
                        case .contemporaryCountry: return "Tones|RingTones|Country|Contemporary Country"
                        case .countryGospel: return "Tones|RingTones|Country|Country Gospel"
                        case .honkyTonk: return "Tones|RingTones|Country|Honky Tonk"
                        case .outlawCountry: return "Tones|RingTones|Country|Outlaw Country"
                        case .traditionalBluegrass: return "Tones|RingTones|Country|Traditional Bluegrass"
                        case .traditionalCountry: return "Tones|RingTones|Country|Traditional Country"
                        case .urbanCowboy: return "Tones|RingTones|Country|Urban Cowboy"
                        case .thaiCountry: return "Tones|RingTones|Country|Thai Country"
                    }
                }
            }

            case electronic(Electronic)
            public enum Electronic: Int, CaseIterable {
                case electronic = 8008
                case ambient = 8153
                case downtempo = 8154
                case electronica = 8155
                case idmExperimental = 8156
                case industrial = 8157
                case dubstep = 8358
                case bass = 8359
                case levantElectronic = 8444
                case electroChaabi = 8445
                case maghrebElectronic = 8446
                
                var stringValue: String {
                    switch self {
                        case .electronic: return "Tones|RingTones|Electronic"
                        case .ambient: return "Tones|RingTones|Electronic|Ambient"
                        case .downtempo: return "Tones|RingTones|Electronic|Downtempo"
                        case .electronica: return "Tones|RingTones|Electronic|Electronica"
                        case .idmExperimental: return "Tones|RingTones|Electronic|IDM Experimental"
                        case .industrial: return "Tones|RingTones|Electronic|Industrial"
                        case .dubstep: return "Tones|RingTones|Electronic|Dubstep"
                        case .bass: return "Tones|RingTones|Electronic|Bass"
                        case .levantElectronic: return "Tones|RingTones|Electronic|Levant Electronic"
                        case .electroChaabi: return "Tones|RingTones|Electronic|Electro Chaabi"
                        case .maghrebElectronic: return "Tones|RingTones|Electronic|Maghreb Electronic"
                    }
                }
            }

            case holiday(Holiday)
            public enum Holiday: CaseIterable {
                public static var allCases: [Holiday] {
                    var holiday: [Holiday] = [.chanukah, .easter, .halloween, .thanksgiving]
                    let christmas = Christmas.allCases.map({Holiday.christmas($0)})
                    holiday.append(contentsOf: christmas)
                    return holiday
                }
                case holiday
                case chanukah
                case christmas(Christmas)
                public enum Christmas: Int, CaseIterable {
                    case christmas = 8174
                    case childrens = 8175
                    case classic = 8176
                    case classical = 8177
                    case jazz = 8178
                    case modern = 8179
                    case pop = 8180
                    case rAndB = 8181
                    case religious = 8182
                    case rock = 8183
                    
                    var stringValue: String {
                        switch self {
                            case .christmas: return "Tones|RingTones|Holiday|Christmas"
                            case .childrens: return "Tones|RingTones|Holiday|Christmas|Children's"
                            case .classic: return "Tones|RingTones|Holiday|Christmas|Classic"
                            case .classical: return "Tones|RingTones|Holiday|Christmas|Classical"
                            case .jazz: return "Tones|RingTones|Holiday|Christmas|Jazz"
                            case .modern: return "Tones|RingTones|Holiday|Christmas|Modern"
                            case .pop: return "Tones|RingTones|Holiday|Christmas|Pop"
                            case .rAndB: return "Tones|RingTones|Holiday|Christmas|R&B"
                            case .religious: return "Tones|RingTones|Holiday|Christmas|Religious"
                            case .rock: return "Tones|RingTones|Holiday|Christmas|Rock"
                        }
                    }
                }
                case easter
                case halloween
                case thanksgiving
                
                var stringValue: String {
                    switch self {
                        case .holiday: return "Tones|RingTones|Holiday"
                        case .chanukah: return "Tones|RingTones|Holiday|chanukah"
                        case .christmas(let subgenre): return subgenre.stringValue
                        case .easter: return "Tones|RingTones|Holiday|easter"
                        case .halloween: return "Tones|RingTones|Holiday|halloween"
                        case .thanksgiving: return "Tones|RingTones|Holiday|thanksgiving"
                    }
                }

                var rawValue: Int {
                    switch self {
                        case .holiday: return 8014
                        case .chanukah: return 8173
                        case .christmas(let subgenre): return subgenre.rawValue
                        case .easter: return 8184
                        case .halloween: return 8185
                        case .thanksgiving: return 8186
                    }
                }
            }

            case singerSongwriter(SingerSongwriter)
            public enum SingerSongwriter: Int, CaseIterable {
                case singerSongwriter = 8026
                case alternativeFolk = 8287
                case contemporaryFolk = 8288
                case contemporarySingerSongwriter = 8289
                case folkRock = 8290
                case newAcoustic = 8291
                case traditionalFolk = 8292
                
                var stringValue: String {
                    switch self {
                        case .singerSongwriter: return "Tones|RingTones|Singer/Songwriter"
                        case .alternativeFolk: return "Tones|RingTones|Singer/Songwriter|Alternative Folk"
                        case .contemporaryFolk: return "Tones|RingTones|Singer/Songwriter|Contemporary Folk"
                        case .contemporarySingerSongwriter: return "Tones|RingTones|Singer/Songwriter|Contemporary Singer/Songwriter"
                        case .folkRock: return "Tones|RingTones|Singer/Songwriter|Folk Rock"
                        case .newAcoustic: return "Tones|RingTones|Singer/Songwriter|New Acoustic"
                        case .traditionalFolk: return "Tones|RingTones|Singer/Songwriter|Traditional Folk"
                    }
                }
            }

            case jazz(Jazz)
            public enum Jazz: Int, CaseIterable {
                case jazz = 8017
                case bigBand = 8201
                case bop = 8202
                case avantGardeJazz = 8199
                case contemporaryJazz = 8203
                case crossoverJazz = 8205
                case dixieland = 8206
                case fusion = 8207
                case latinJazz = 8209
                case mainstreamJazz = 8210
                case ragtime = 8211
                case smoothJazz = 8212
                case vocalJazz = 8302
                case hardBop = 8208
                case tradJazz = 8213
                case coolJazz = 8204
                
                var stringValue: String {
                    switch self {
                        case .jazz: return "Tones|RingTones|Jazz"
                        case .bigBand: return "Tones|RingTones|Jazz|Big Band"
                        case .bop: return "Tones|RingTones|Jazz|Bop"
                        case .avantGardeJazz: return "Tones|RingTones|Jazz|Avant Garde Jazz"
                        case .contemporaryJazz: return "Tones|RingTones|Jazz|Contemporary Jazz"
                        case .crossoverJazz: return "Tones|RingTones|Jazz|Crossover Jazz"
                        case .dixieland: return "Tones|RingTones|Jazz|Dixieland"
                        case .fusion: return "Tones|RingTones|Jazz|Fusion"
                        case .latinJazz: return "Tones|RingTones|Jazz|Latin Jazz"
                        case .mainstreamJazz: return "Tones|RingTones|Jazz|Mainstream Jazz"
                        case .ragtime: return "Tones|RingTones|Jazz|Ragtime"
                        case .smoothJazz: return "Tones|RingTones|Jazz|Smooth Jazz"
                        case .vocalJazz: return "Tones|RingTones|Jazz|Vocal Jazz"
                        case .hardBop: return "Tones|RingTones|Jazz|Hard Bop"
                        case .tradJazz: return "Tones|RingTones|Jazz|Trad Jazz"
                        case .coolJazz: return "Tones|RingTones|Jazz|Cool Jazz"
                    }
                }
            }

            case latino(Latino)
            public enum Latino: Int, CaseIterable {
                case latino = 8019
                case latinJazz = 8224
                case contemporaryLatin = 8223
                case popLatino = 8226
                case raices = 8227
                case urbanoLatino = 8225
                case baladasyBoleros = 8222
                case rockyAlternativo = 8221
                case musicaMexicana = 8228
                case musicaSalsayTropical = 8229
                
                var stringValue: String {
                    switch self {
                        case .latino: return "Tones|RingTones|Latino"
                        case .latinJazz: return "Tones|RingTones|Latino|Latin Jazz"
                        case .contemporaryLatin: return "Tones|RingTones|Latino|Contemporary Latin"
                        case .popLatino: return "Tones|RingTones|Latino|Pop Latino"
                        case .raices: return "Tones|RingTones|Latino|Raices"
                        case .urbanoLatino: return "Tones|RingTones|Latino|Urbano Latino"
                        case .baladasyBoleros: return "Tones|RingTones|Latino|Baladasy Boleros"
                        case .rockyAlternativo: return "Tones|RingTones|Latino|Rocky Alternativo"
                        case .musicaMexicana: return "Tones|RingTones|Latino|Musica Mexicana"
                        case .musicaSalsayTropical: return "Tones|RingTones|Latino|Musica Tropical"
                    }
                }
            }

            case newAge(NewAge)
            public enum NewAge: Int, CaseIterable {
                case newAge = 8020
                case healing = 8231
                case meditation = 8232
                case nature = 8233
                case relaxation = 8234
                case travel = 8235
                case yoga = 8365
                
                var stringValue: String {
                    switch self {
                        case .newAge: return "Tones|RingTones|NewAge"
                        case .healing: return "Tones|RingTones|NewAge|Healing"
                        case .meditation: return "Tones|RingTones|NewAge|Meditation"
                        case .nature: return "Tones|RingTones|NewAge|Nature"
                        case .relaxation: return "Tones|RingTones|NewAge|Relaxation"
                        case .travel: return "Tones|RingTones|NewAge|Travel"
                        case .yoga: return "Tones|RingTones|NewAge|Yoga"
                    }
                }
            }

            case pop(Pop)
            public enum Pop: Int, CaseIterable {
                case pop = 8022
                case kPop = 8214
                case adultContemporary = 8237
                case britpop = 8238
                case softRock = 8250
                case teenPop = 8252
                case cPop = 8239
                case cantopopHKPop = 8240
                case koreanFolkPop = 8242
                case mandopop = 8244
                case taiPop = 8251
                case malaysianPop = 8243
                case pinoyPop = 8248
                case originalPilipinoMusic = 8247
                case manillaSound = 8245
                case indoPop = 8241
                case thaiPop = 8253
                case oldies = 8246
                case tribute = 8366
                case shows = 8367
                case turkishPop = 8413
                case levantPop = 8432
                case iraqiPop = 8433
                case egyptianPop = 8434
                case maghrebPop = 8435
                case khaleejiPop = 8436
                
                var stringValue: String {
                    switch self {
                        case .pop: return "Tones|RingTones|Pop"
                        case .kPop: return "Tones|RingTones|Pop|KPop"
                        case .adultContemporary: return "Tones|RingTones|Pop|Adult Contemporary"
                        case .britpop: return "Tones|RingTones|Pop|Brit Pop"
                        case .softRock: return "Tones|RingTones|Pop|Soft Rock"
                        case .teenPop: return "Tones|RingTones|Pop|Teen Pop"
                        case .cPop: return "Tones|RingTones|Pop|CPop"
                        case .cantopopHKPop: return "Tones|RingTones|Pop|CantoPop/HK Pop"
                        case .koreanFolkPop: return "Tones|RingTones|Pop|Korean Folk Pop"
                        case .mandopop: return "Tones|RingTones|Pop|Mandopop"
                        case .taiPop: return "Tones|RingTones|Pop|Tai Pop"
                        case .malaysianPop: return "Tones|RingTones|Pop|Malaysian Pop"
                        case .pinoyPop: return "Tones|RingTones|Pop|Pinoy Pop"
                        case .originalPilipinoMusic: return "Tones|RingTones|Pop|Original Pilipino Music"
                        case .manillaSound: return "Tones|RingTones|Pop|Manilla Sound"
                        case .indoPop: return "Tones|RingTones|Pop|Indo Pop"
                        case .thaiPop: return "Tones|RingTones|Pop|Thai Pop"
                        case .oldies: return "Tones|RingTones|Pop|Oldies"
                        case .tribute: return "Tones|RingTones|Pop|Tribute"
                        case .shows: return "Tones|RingTones|Pop|Shows"
                        case .turkishPop: return "Tones|RingTones|Pop|Turkish Pop"
                        case .levantPop: return "Tones|RingTones|Pop|Levant Pop"
                        case .iraqiPop: return "Tones|RingTones|Pop|Iraqi Pop"
                        case .egyptianPop: return "Tones|RingTones|Pop|Egyptian Pop"
                        case .maghrebPop: return "Tones|RingTones|Pop|Maghreb Pop"
                        case .khaleejiPop: return "Tones|RingTones|Pop|Khaleeji Pop"
                    }
                }
            }

            case rAndBSoul(RAndBSoul)
            public enum RAndBSoul: Int, CaseIterable {
                case rAndBSoul = 8023
                case contemporaryRandB = 8254
                case disco = 8255
                case dooWop = 8256
                case funk = 8257
                case motown = 8258
                case neoSoul = 8259
                case soul = 8260
                
                var stringValue: String {
                    switch self {
                        case .rAndBSoul: return "Tones|RingTones|R&B/Soul"
                        case .contemporaryRandB: return "Tones|RingTones|R&B/Soul|Contemporary R&B"
                        case .disco: return "Tones|RingTones|R&B/Soul|Sisco"
                        case .dooWop: return "Tones|RingTones|R&B/Soul|DooWop"
                        case .funk: return "Tones|RingTones|R&B/Soul|Funk"
                        case .motown: return "Tones|RingTones|R&B/Soul|Motown"
                        case .neoSoul: return "Tones|RingTones|R&B/Soul|NeoSoul"
                        case .soul: return "Tones|RingTones|R&B/Soul|Soul"
                    }
                }
            }

            case soundtrack(Soundtrack)
            public enum Soundtrack: Int, CaseIterable {
                case musicSoundtrack = 8027
                case foreignCinema = 8293
                case musicals = 8294
                case originalScore = 8295
                case soundtrack = 8297
                case tvSoundtrack = 8298
                case soundEffects = 8296
                case videoGame = 8376
                
                var stringValue: String {
                    switch self {
                        case .musicSoundtrack: return "Tones|RingTones|Soundtrack"
                        case .foreignCinema: return "Tones|RingTones|Soundtrack|Foreign Cinema"
                        case .musicals: return "Tones|RingTones|Soundtrack|Musicals"
                        case .originalScore: return "Tones|RingTones|Soundtrack|Original Score"
                        case .soundtrack: return "Tones|RingTones|Soundtrack|Soundtrack"
                        case .tvSoundtrack: return "Tones|RingTones|Soundtrack|TV Soundtrack"
                        case .soundEffects: return "Tones|RingTones|Soundtrack|Sound Effects"
                        case .videoGame: return "Tones|RingTones|Soundtrack|Video Game"
                    }
                }
            }

            case dance(Dance)
            public enum Dance: Int, CaseIterable {
                case dance = 8007
                case breakbeat = 8141
                case exercise = 8142
                case garage = 8143
                case hardcore = 8144
                case house = 8145
                case jungleDrumnbass = 8146
                case techno = 8147
                case trance = 8148
                case maghrebDance = 8449
                
                var stringValue: String {
                    switch self {
                        case .dance: return "Tones|RingTones|Dance"
                        case .breakbeat: return "Tones|RingTones|Dance|Breakbeat"
                        case .exercise: return "Tones|RingTones|Dance|Exercise"
                        case .garage: return "Tones|RingTones|Dance|Garage"
                        case .hardcore: return "Tones|RingTones|Dance|Hardcore"
                        case .house: return "Tones|RingTones|Dance|House"
                        case .jungleDrumnbass: return "Tones|RingTones|Dance|Jungle Drum&Bass"
                        case .techno: return "Tones|RingTones|Dance|Techno"
                        case .trance: return "Tones|RingTones|Dance|Trance"
                        case .maghrebDance: return "Tones|RingTones|Dance|Maghreb Dance"
                    }
                }
            }

            case hipHopRap(HipHopRap)
            public enum HipHopRap: Int, CaseIterable {
                case hipHopRap = 8013
                case alternativeRap = 8160
                case dirtySouth = 8162
                case eastCoastRap = 8163
                case gangstaRap = 8164
                case hardcoreRap = 8165
                case hipHop = 8166
                case latinRap = 8168
                case oldSchoolRap = 8169
                case rap = 8170
                case undergroundRap = 8171
                case westCoastRap = 8172
                case chineseHipHop = 8161
                case koreanHipHop = 8167
                case ukHipHop = 8360
                case turkishHipHopRap = 8416
                case levantHipHop = 8437
                case egyptianHipHop = 8438
                case maghrebHipHop = 8439
                case khaleejiHipHop = 8440
                
                var stringValue: String {
                    switch self {
                        case .hipHopRap: return "Tones|RingTones|HipHop/Rap"
                        case .alternativeRap: return "Tones|RingTones|HipHop/Rap|Alternative Rap"
                        case .dirtySouth: return "Tones|RingTones|HipHop/Rap|Dirty South"
                        case .eastCoastRap: return "Tones|RingTones|HipHop/Rap|East Coast Rap"
                        case .gangstaRap: return "Tones|RingTones|HipHop/Rap|Gangsta Rap"
                        case .hardcoreRap: return "Tones|RingTones|HipHop/Rap|Hardcore Rap"
                        case .hipHop: return "Tones|RingTones|HipHop/Rap|HipHop"
                        case .latinRap: return "Tones|RingTones|HipHop/Rap|Latin Rap"
                        case .oldSchoolRap: return "Tones|RingTones|HipHop/Rap|Old School Rap"
                        case .rap: return "Tones|RingTones|HipHop/Rap|Rap"
                        case .undergroundRap: return "Tones|RingTones|HipHop/Rap|Underground Rap"
                        case .westCoastRap: return "Tones|RingTones|HipHop/Rap|West Coast Rap"
                        case .chineseHipHop: return "Tones|RingTones|HipHop/Rap|Chinese HipHop"
                        case .koreanHipHop: return "Tones|RingTones|HipHop/Rap|Korean HipHop"
                        case .ukHipHop: return "Tones|RingTones|HipHop/Rap|UK HipHop"
                        case .turkishHipHopRap: return "Tones|RingTones|HipHop/Rap|Turkish HipHop/Rap"
                        case .levantHipHop: return "Tones|RingTones|HipHop/Rap|Levant HipHop"
                        case .egyptianHipHop: return "Tones|RingTones|HipHop/Rap|Egyptian HipHop"
                        case .maghrebHipHop: return "Tones|RingTones|HipHop/Rap|Maghreb HipHop"
                        case .khaleejiHipHop: return "Tones|RingTones|HipHop/Rap|Khaleeji HipHop"
                    }
                }
            }
            
            case world(World)
            public enum World: CaseIterable {
                case world
                case cajun
                case celtic(Celtic)
                public enum Celtic: Int, CaseIterable {
                    case celtic = 8314
                    case folk = 8315
                    case contemporaryCeltic = 8316
                    case traditionalCeltic = 8340
                    
                    var stringValue: String {
                        switch self {
                            case .celtic: return "Tones|RingTones|World|Celtic"
                            case .folk: return "Tones|RingTones|World|Celtic|Folk"
                            case .contemporaryCeltic: return "Tones|RingTones|World|Celtic|Contemporary Celtic"
                            case .traditionalCeltic: return "Tones|RingTones|World|Celtic|Traditional Celtic"
                        }
                    }
                }
                case klezmer
                case polka
                case worldbeat
                case zydeco
                case caribbean
                case southAmerica
                case northAmerica
                case hawaii
                case australia
                case japan
                case france
                case asia
                case europe
                case southAfrica
                case dini
                case dangdut
                case indonesianReligious
                case calypso
                case soca
                case farsi
                case israeli
                case flamenco
                case tango
                case fado
                case iberia
                
                var stringValue: String {
                    switch self {
                        case .world: return "Tones|RingTones|World"
                        case .cajun: return "Tones|RingTones|World|Cajun"
                        case .celtic(let subgenre): return subgenre.stringValue
                        case .klezmer: return "Tones|RingTones|World|Klezmer"
                        case .polka: return "Tones|RingTones|World|Polka"
                        case .worldbeat: return "Tones|RingTones|World|World Beat"
                        case .zydeco: return "Tones|RingTones|World|Zydeco"
                        case .caribbean: return "Tones|RingTones|World|Caribbean"
                        case .southAmerica: return "Tones|RingTones|World|South America"
                        case .northAmerica: return "Tones|RingTones|World|North America"
                        case .hawaii: return "Tones|RingTones|World|Hawaii"
                        case .australia: return "Tones|RingTones|World|Australia"
                        case .japan: return "Tones|RingTones|World|Japan"
                        case .france: return "Tones|RingTones|World|France"
                        case .asia: return "Tones|RingTones|World|Asia"
                        case .europe: return "Tones|RingTones|World|Europe"
                        case .southAfrica: return "Tones|RingTones|World|SouthAfrica"
                        case .dini: return "Tones|RingTones|World|Dini"
                        case .dangdut: return "Tones|RingTones|World|Dangdut"
                        case .indonesianReligious: return "Tones|RingTones|World|Indonesian Religious"
                        case .calypso: return "Tones|RingTones|World|Calypso"
                        case .soca: return "Tones|RingTones|World|Soca"
                        case .farsi: return "Tones|RingTones|World|Farsi"
                        case .israeli: return "Tones|RingTones|World|Israeli"
                        case .flamenco: return "Tones|RingTones|World|Flamenco"
                        case .tango: return "Tones|RingTones|World|Tango"
                        case .fado: return "Tones|RingTones|World|Fado"
                        case .iberia: return "Tones|RingTones|World|Iberia"
                    }
                }
                
                var rawValue: Int {
                    switch self {
                        case .world: return 8030
                        case .cajun: return 8311
                        case .celtic(let subgenre): return subgenre.rawValue
                        case .klezmer: return 8330
                        case .polka: return 8332
                        case .worldbeat: return 8342
                        case .zydeco: return 8343
                        case .caribbean: return 8313
                        case .southAmerica: return 8338
                        case .northAmerica: return 8331
                        case .hawaii: return 8325
                        case .australia: return 8310
                        case .japan: return 8329
                        case .france: return 8323
                        case .asia: return 8309
                        case .europe: return 8319
                        case .southAfrica: return 8337
                        case .dini: return 8318
                        case .dangdut: return 8317
                        case .indonesianReligious: return 8327
                        case .calypso: return 8312
                        case .soca: return 8336
                        case .farsi: return 8321
                        case .israeli: return 8328
                        case .flamenco: return 8322
                        case .tango: return 8339
                        case .fado: return 8320
                        case .iberia: return 8326
                    }
                }
                
                public static var allCases: [World] {
                    var array: [World] = [.asia, .australia, .cajun, .calypso, .caribbean, .dangdut, .dini, .europe, .fado, .farsi, .flamenco, .france, .hawaii, .iberia, .indonesianReligious, .israeli, .japan, .klezmer, .northAmerica, .polka, .soca, .southAfrica, .southAmerica, .tango, .world, .worldbeat, .zydeco]
                    let celtic = Celtic.allCases.map({World.celtic($0)})
                    array.append(contentsOf: celtic)
                    return array
                }
            }

            case alternative(Alternative)
            public enum Alternative: Int, CaseIterable {
                case alternative = 8001
                case collegeRock = 8056
                case gothRock = 8057
                case grunge = 8058
                case indieRock = 8059
                case newWave = 8061
                case punk = 8062
                case chineseAlt = 8055
                case koreanIndie = 8060
                case emo = 8362
                case popPunk = 8363
                case indiePop = 8364
                case turkishAlternative = 8415
                case indieLevant = 8441
                case indieEgyptian = 8442
                case indieMaghreb = 8443
                
                var stringValue: String {
                    switch self {
                        case .alternative: return "Tones|RingTones|Alternative"
                        case .collegeRock: return "Tones|RingTones|Alternative|College Rock"
                        case .gothRock: return "Tones|RingTones|Alternative|Goth Rock"
                        case .grunge: return "Tones|RingTones|Alternative|Grunge"
                        case .indieRock: return "Tones|RingTones|Alternative|Indie Rock"
                        case .newWave: return "Tones|RingTones|Alternative|New Wave"
                        case .punk: return "Tones|RingTones|Alternative|Punk"
                        case .chineseAlt: return "Tones|RingTones|Alternative|Chinese Alt"
                        case .koreanIndie: return "Tones|RingTones|Alternative|Korean Indie"
                        case .emo: return "Tones|RingTones|Alternative|EMO"
                        case .popPunk: return "Tones|RingTones|Alternative|Pop Punk"
                        case .indiePop: return "Tones|RingTones|Alternative|Indie Pop"
                        case .turkishAlternative: return "Tones|RingTones|Alternative|Turkish Alternative"
                        case .indieLevant: return "Tones|RingTones|Alternative|Indie Levant"
                        case .indieEgyptian: return "Tones|RingTones|Alternative|Indie Egyptian"
                        case .indieMaghreb: return "Tones|RingTones|Alternative|Indie Maghreb"
                    }
                }
            }

            case rock(Rock)
            public enum Rock: Int, CaseIterable {
                case rock = 8025
                case adultAlternative = 8265
                case americanTradRock = 8266
                case arenaRock = 8267
                case bluesRock = 8268
                case britishInvasion = 8269
                case deathMetalBlackMetal = 8271
                case glamRock = 8272
                case hairMetal = 8273
                case hardRock = 8274
                case metal = 8275
                case jamBands = 8276
                case progRockArtRock = 8278
                case psychedelic = 8279
                case rockAndRoll = 8280
                case rockabilly = 8281
                case rootsRock = 8282
                case singerSongwriter = 8283
                case southernRock = 8284
                case surf = 8285
                case texMex = 8286
                case chineseRock = 8270
                case turkishRock = 8414
                
                var stringValue: String {
                    switch self {
                        case .rock: return "Tones|RingTones|Rock"
                        case .adultAlternative: return "Tones|RingTones|Rock|Adult Alternative"
                        case .americanTradRock: return "Tones|RingTones|Rock|American Trad Rock"
                        case .arenaRock: return "Tones|RingTones|Rock|Arena Rock"
                        case .bluesRock: return "Tones|RingTones|Rock|Blues Rock"
                        case .britishInvasion: return "Tones|RingTones|Rock|British Invasion"
                        case .deathMetalBlackMetal: return "Tones|RingTones|Rock|Death Metal/Black Metal"
                        case .glamRock: return "Tones|RingTones|Rock|Glam Rock"
                        case .hairMetal: return "Tones|RingTones|Rock|Hair Metal"
                        case .hardRock: return "Tones|RingTones|Rock|Hard Rock"
                        case .metal: return "Tones|RingTones|Rock|Metal"
                        case .jamBands: return "Tones|RingTones|Rock|Jam Bands"
                        case .progRockArtRock: return "Tones|RingTones|Rock|Prog Rock/ArtRock"
                        case .psychedelic: return "Tones|RingTones|Rock|Psychedelic"
                        case .rockAndRoll: return "Tones|RingTones|Rock|Rock & Roll"
                        case .rockabilly: return "Tones|RingTones|Rock|Rockabilly"
                        case .rootsRock: return "Tones|RingTones|Rock|Roots Rock"
                        case .singerSongwriter: return "Tones|RingTones|Rock|Singer Songwriter"
                        case .southernRock: return "Tones|RingTones|Rock|Southern Rock"
                        case .surf: return "Tones|RingTones|Rock|Surf"
                        case .texMex: return "Tones|RingTones|Rock|TexMex"
                        case .chineseRock: return "Tones|RingTones|Rock|Chinese Rock"
                        case .turkishRock: return "Tones|RingTones|Rock|Turkish Rock"
                    }
                }
            }
            
            case christianAndGospel(ChristianAndGospel)
            public enum ChristianAndGospel: Int, CaseIterable {
                case christianAndGospel = 8099
                case ccm = 8100
                case christianMetal = 8101
                case christianPop = 8102
                case christianRap = 8103
                case christianRock = 8104
                case classicChristian = 8105
                case contemporaryGospel = 8106
                case gospel = 8107
                case praiseAndWorship = 8108
                case southernGospel = 8109
                case traditionalGospel = 8110
                
                var stringValue: String {
                    switch self {
                        case .christianAndGospel: return "Tones|RingTones|Christian & Gospel"
                        case .ccm: return "Tones|RingTones|Christian & Gospel|CCM"
                        case .christianMetal: return "Tones|RingTones|Christian & Gospel|Christian Metal"
                        case .christianPop: return "Tones|RingTones|Christian & Gospel|Christian Pop"
                        case .christianRap: return "Tones|RingTones|Christian & Gospel|Christian Rap"
                        case .christianRock: return "Tones|RingTones|Christian & Gospel|Christian Rock"
                        case .classicChristian: return "Tones|RingTones|Christian & Gospel|Classical Christian"
                        case .contemporaryGospel: return "Tones|RingTones|Christian & Gospel|Contemporary Gospel"
                        case .gospel: return "Tones|RingTones|Christian & Gospel|Gospel"
                        case .praiseAndWorship: return "Tones|RingTones|Christian & Gospel|Praise & Worship"
                        case .southernGospel: return "Tones|RingTones|Christian & Gospel|Southern Gospel"
                        case .traditionalGospel: return "Tones|RingTones|Christian & Gospel|Traditional Gospel"
                    }
                }
            }

            case vocal(Vocal)
            public enum Vocal: Int, CaseIterable {
                case vocal = 8029
                case standards = 8299
                case traditionalPop = 8300
                case vocalPop = 8303
                case trot = 8301
                
                var stringValue: String {
                    switch self {
                        case .vocal: return "Tones|RingTones|Vocal"
                        case .standards: return "Tones|RingTones|Vocal|Standards"
                        case .traditionalPop: return "Tones|RingTones|Vocal|Traditional Pop"
                        case .vocalPop: return "Tones|RingTones|Vocal|Vocal Pop"
                        case .trot: return "Tones|RingTones|Vocal|Trot"
                    }
                }
            }

            case reggae(Reggae)
            public enum Reggae: Int, CaseIterable {
                case reggae = 8024
                case modernDancehall = 8261
                case rootsReggae = 8263
                case dub = 8262
                case ska = 8264
                case loversRock = 8361
                
                var stringValue: String {
                    switch self {
                        case .reggae: return "Tones|RingTones|Reggae"
                        case .modernDancehall: return "Tones|RingTones|Reggae|Modern Dancehall"
                        case .rootsReggae: return "Tones|RingTones|Reggae|Roots Reggae"
                        case .dub: return "Tones|RingTones|Reggae|Dub"
                        case .ska: return "Tones|RingTones|Reggae|Ska"
                        case .loversRock: return "Tones|RingTones|Reggae|Lovers Rock"
                            
                    }
                }
            }

            case easyListening(EasyListening)
            public enum EasyListening: Int, CaseIterable {
                case easyListening = 8150
                case lounge = 8151
                case swing = 8152
                
                var stringValue: String {
                    switch self {
                        case .easyListening: return "Tones|RingTones|Easy Listening"
                        case .lounge: return "Tones|RingTones|Tones|RingTones|Easy Listening|Lounge"
                        case .swing: return "Tones|RingTones|Tones|RingTones|Easy Listening|Swing"
                    }
                }
            }

            case african(African)
            public enum African: Int, CaseIterable {
                case african = 8304
                case afroBeat = 8306
                case afroPop = 8307
                case afrikaans = 8305
                case afroHouse = 8393
                case afroSoul = 8394
                case afrobeats = 8395
                case benga = 8396
                case bongoFlava = 8397
                case coupeDecale = 8398
                case gqom = 8399
                case highlife = 8400
                case kuduro = 8401
                case kizomba = 8402
                case kwaito = 8403
                case mbalax = 8404
                case ndombolo = 8405
                case shangaanElectro = 8406
                case soukous = 8407
                case taarab = 8408
                case zouglou = 8409
                case maskandi = 8417
                
                var stringValue: String {
                    switch self {
                        case .african: return "Tones|RingTones|African"
                        case .afroBeat: return "Tones|RingTones|African|AfroBeat"
                        case .afroPop: return "Tones|RingTones|African|AfroPop"
                        case .afrikaans: return "Tones|RingTones|African|Afrikaans"
                        case .afroHouse: return "Tones|RingTones|African|AfroHouse"
                        case .afroSoul: return "Tones|RingTones|African|AfroSoul"
                        case .afrobeats: return "Tones|RingTones|African|Afrobeats"
                        case .benga: return "Tones|RingTones|African|Benga"
                        case .bongoFlava: return "Tones|RingTones|African|Bongo Flava"
                        case .coupeDecale: return "Tones|RingTones|African|Coupe Decale"
                        case .gqom: return "Tones|RingTones|African|gQom"
                        case .highlife: return "Tones|RingTones|African|Highlife"
                        case .kuduro: return "Tones|RingTones|African|Kuduro"
                        case .kizomba: return "Tones|RingTones|African|Kizomba"
                        case .kwaito: return "Tones|RingTones|African|Kwaito"
                        case .mbalax: return "Tones|RingTones|African|Mbalax"
                        case .ndombolo: return "Tones|RingTones|African|Ndombolo"
                        case .shangaanElectro: return "Tones|RingTones|African|Shangaan Electro"
                        case .soukous: return "Tones|RingTones|African|Soukous"
                        case .taarab: return "Tones|RingTones|African|Taarab"
                        case .zouglou: return "Tones|RingTones|African|Zouglou"
                        case .maskandi: return "Tones|RingTones|African|Maskandi"
                            
                    }
                }
            }

            case brazilian(Brazilian)
            public enum Brazilian: Int, CaseIterable {
                case brazilian = 8076
                case axe = 8077
                case bossaNova = 8079
                case choro = 8080
                case forro = 8081
                case frevo = 8082
                case mpb = 8083
                case pagode = 8084
                case samba = 8085
                case sertanejo = 8086
                case baileFunk = 8078
                
                var stringValue: String {
                    switch self {
                        case .brazilian: return "Tones|RingTones|Brazilian"
                        case .axe: return "Tones|RingTones|Brazilian|Axe"
                        case .bossaNova: return "Tones|RingTones|Brazilian|Bossa Nova"
                        case .choro: return "Tones|RingTones|Brazilian|Choro"
                        case .forro: return "Tones|RingTones|Brazilian|Forro"
                        case .frevo: return "Tones|RingTones|Brazilian|Frevo"
                        case .mpb: return "Tones|RingTones|Brazilian|MPB"
                        case .pagode: return "Tones|RingTones|Brazilian|Pagode"
                        case .samba: return "Tones|RingTones|Brazilian|Samba"
                        case .sertanejo: return "Tones|RingTones|Brazilian|Sertanejo"
                        case .baileFunk: return "Tones|RingTones|Brazilian|Baile Funk"
                            
                    }
                }
            }
 
            case chinese(Chinese)
            public enum Chinese: Int, CaseIterable {
                case chinese = 8090
                case chineseClassical = 8091
                case chineseFlute = 8092
                case chineseOpera = 8093
                case chineseOrchestral = 8094
                case chineseRegionalFolk = 8095
                case chineseStrings = 8096
                case taiwaneseFolk = 8097
                case tibetanNativeMusic = 8098
                
                var stringValue: String {
                    switch self {
                        case .chinese: return "Tones|RingTones|Chinese"
                        case .chineseClassical: return "Tones|RingTones|Chinese|Chinese Classical"
                        case .chineseFlute: return "Tones|RingTones|Chinese|Chinese Flute"
                        case .chineseOpera: return "Tones|RingTones|Chinese|Chinese Opera"
                        case .chineseOrchestral: return "Tones|RingTones|Chinese|Chinese Orchestral"
                        case .chineseRegionalFolk: return "Tones|RingTones|Chinese|Chinese Regional Folk"
                        case .chineseStrings: return "Tones|RingTones|Chinese|Chinese Strings"
                        case .taiwaneseFolk: return "Tones|RingTones|Chinese|Taiwanese Folk"
                        case .tibetanNativeMusic: return "Tones|RingTones|Chinese|Tibetan Native Music"
                            
                    }
                }
            }

            case korean(Korean)
            public enum Korean: Int, CaseIterable {
                case korean = 8216
                case koreanClassical = 8217
                case koreanTradSong = 8219
                case koreanTradInstrumental = 8218
                case koreanTradTheater = 8220
                
                var stringValue: String {
                    switch self {
                        case .korean: return "Tones|RingTones|Korean"
                        case .koreanClassical: return "Tones|RingTones|Korean|Classical"
                        case .koreanTradSong: return "Tones|RingTones|Korean|Trad Song"
                        case .koreanTradInstrumental: return "Tones|RingTones|Korean|Trad Instrumental"
                        case .koreanTradTheater: return "Tones|RingTones|Korean|Trad Theater"
                            
                    }
                }
            }

            case indian(Indian)
            public enum Indian: CaseIterable {
                case pop
                case indian
                case bollywood
                case regionalIndian(RegionalIndian)
                public enum RegionalIndian: CaseIterable {
                    case regionalIndian
                    case tamil
                    case telugu
                    case malayalam
                    case kannada
                    case marathi
                    case gujarati
                    case assamese
                    case bhojpuri
                    case haryanvi
                    case odia
                    case rajasthani
                    case urdu
                    
                    case punjabi(Punjabi)
                    public enum Punjabi: Int, CaseIterable {
                        case pop = 8377
                        case punjabi = 8389
                        
                        var stringValue: String {
                            switch self {
                                case .pop:  return "Tones|RingTones|Indian|RegionalIndian|Punjabi|Punjabi Pop"
                                case .punjabi: return "Tones|RingTones|Indian|RegionalIndian|Punjabi"
                            }
                        }
                    }

                    case bengali(Bengali)
                    public enum Bengali: Int, CaseIterable {
                        case bengali = 8390
                        case rabindraSangeet = 8378
                        
                        var stringValue: String {
                            switch self {
                                case .bengali: return "Tones|RingTones|Indian|RegionalIndian|Begali"
                                case .rabindraSangeet: return "Tones|RingTones|Indian|RegionalIndian|Begali|Rabindra Sangeet"
                            }
                        }
                    }
                    
                    public static var allCases: [RegionalIndian] {
                        var regional: [RegionalIndian] = [.regionalIndian, .assamese, .bhojpuri, .gujarati, .haryanvi, .kannada, .malayalam, .marathi, .odia, .rajasthani, .tamil, .telugu, .urdu]
                        let punjabi = Punjabi.allCases.map({RegionalIndian.punjabi($0)})
                        regional.append(contentsOf: punjabi)
                        let bengali = Bengali.allCases.map({RegionalIndian.bengali($0)})
                        regional.append(contentsOf: bengali)
                        return regional
                    }
                    var stringValue: String {
                        switch self {
                            case .tamil: return "Tones|RingTones|Indian|RegionalIndian|Tamil"
                            case .telugu: return "Tones|RingTones|Indian|RegionalIndian|Telugu"
                            case .regionalIndian: return "Tones|RingTones|Indian|RegionalIndian"
                            case .malayalam: return "Tones|RingTones|Indian|RegionalIndian|Malayam"
                            case .kannada: return "Tones|RingTones|Indian|RegionalIndian|Kannada"
                            case .marathi: return "Tones|RingTones|Indian|RegionalIndian|Marathi"
                            case .gujarati: return "Tones|RingTones|Indian|RegionalIndian|Gujarati"
                            case .assamese: return "Tones|RingTones|Indian|RegionalIndian|Assamese"
                            case .bhojpuri: return "Tones|RingTones|Indian|RegionalIndian|Bhojpuri"
                            case .haryanvi: return "Tones|RingTones|Indian|RegionalIndian|Haryanvi"
                            case .odia: return "Tones|RingTones|Indian|RegionalIndian|Odia"
                            case .rajasthani: return "Tones|RingTones|Indian|RegionalIndian|Rajasthani"
                            case .urdu: return "Tones|RingTones|Indian|RegionalIndian|Urdu"
                            case .punjabi(let subgenre): return subgenre.stringValue
                            case .bengali(let subgenre): return subgenre.stringValue
                        }
                    }
                    
                    var rawValue: Int {
                        switch self {
                            case .regionalIndian: return 8194
                            case .tamil: return 8196
                            case .telugu: return 8197
                            case .malayalam: return 8379
                            case .kannada: return 8380
                            case .marathi: return 8381
                            case .gujarati: return 8382
                            case .assamese: return 8383
                            case .bhojpuri: return 8384
                            case .haryanvi: return 8385
                            case .odia: return 8386
                            case .rajasthani: return 8387
                            case .urdu: return 8388
                            case .punjabi(let subgenre): return subgenre.rawValue
                            case .bengali(let subgenre): return subgenre.rawValue
                        }
                    }
                }
                case devotionalAndSpiritual
                case sufi

                case classical(Classical)
                public enum Classical: Int, CaseIterable {
                    case classical = 8191
                    case carnaticClassical = 8391
                    case hindustaniClassical = 8392
                    
                    var stringValue: String {
                        switch self {
                            case .classical: return "Tones|RingTones|Indian|Classical"
                            case .carnaticClassical: return "Tones|RingTones|Indian|RegionalIndian|Canatic Classical"
                            case .hindustaniClassical: return "Tones|RingTones|Indian|RegionalIndian|Hindustani Classical"
                        }
                    }
                }
                case ghazals
                case folk
                
                var stringValue: String {
                    switch self {
                        case .pop: return "Tones|RingTones|Indian|Pop"
                        case .indian: return "Tones|RingTones|Indian"
                        case .bollywood: return "Tones|RingTones|Indian|Bollywood"
                        case .regionalIndian(let subgenre): return subgenre.stringValue
                        case .devotionalAndSpiritual: return "Tones|RingTones|Indian|Devotional And Spiritual"
                        case .sufi: return "Tones|RingTones|Indian|Sufi"
                        case .ghazals: return "Tones|RingTones|Indian|Ghazals"
                        case .folk: return "Tones|RingTones|Indian|Folk"
                        case .classical(let subgenre): return subgenre.stringValue
                    }
                }
                
                var rawValue: Int {
                    switch self {
                        case .pop: return 8193
                        case .indian: return 8187
                        case .bollywood: return 8188
                        case .regionalIndian(let subgenre): return subgenre.rawValue
                        case .devotionalAndSpiritual: return 8189
                        case .sufi: return 8195
                        case .classical: return 1269
                        case .ghazals: return 8190
                        case .folk: return 8192
                    }
                }
                
                public static var allCases: [Indian] {
                    var indian: [Indian] = [.indian, .bollywood, .devotionalAndSpiritual, .folk, .ghazals, .pop, .sufi]
                    let regional = RegionalIndian.allCases.map({Indian.regionalIndian($0)})
                    indian.append(contentsOf: regional)
                    let classical = Classical.allCases.map({Indian.classical($0)})
                    indian.append(contentsOf: classical)
                    return indian
                }
            }

            case arabic(Arabic)
            public enum Arabic: CaseIterable {
                case arabic
                case khaleeji(Khaleeji)
                public enum Khaleeji: Int, CaseIterable {
                    case khaleeji = 8067
                    case jalsat = 8426
                    case shailat = 8427
                    
                    var stringValue: String {
                        switch self {
                            case .khaleeji: return "Tones|RingTones|Arabic|Khaleeji"
                            case .jalsat: return "Tones|RingTones|Arabic|Khaleeji|Jalsat"
                            case .shailat: return "Tones|RingTones|Arabic|Khaleeji|Shailat"
                        }
                    }
                }
                case northAfrican
                case arabicPop
                case islamic
                case levant(Levant)
                public enum Levant: Int, CaseIterable {
                    case levant = 8423
                    case dabke = 8424
                    
                    var stringValue: String {
                        switch self {
                            case .levant: return "Tones|RingTones|Arabic|Levant"
                            case .dabke: return "Tones|RingTones|Arabic|Levant|Dabke"
                        }
                    }
                }
                case maghrebRai
                
                var stringValue: String {
                    switch self {
                        case .arabic: return "Tones|RingTones|Arabic"
                        case .khaleeji(let subgenre): return subgenre.stringValue
                        case .northAfrican: return "Tones|RingTones|Arabic|North African"
                        case .arabicPop: return "Tones|RingTones|Arabic|Pop"
                        case .islamic: return "Tones|RingTones|Arabic|Islamic"
                        case .levant(let subgenre): return subgenre.stringValue
                        case .maghrebRai: return "Tones|RingTones|Arabic|Maghreb Rai"
                            
                    }
                }
                
                var rawValue: Int {
                    switch self {
                        case .arabic: return 8064
                        case .khaleeji(let subgenre): return subgenre.rawValue
                        case .northAfrican: return 8068
                        case .arabicPop: return 8065
                        case .islamic: return 8066
                        case .levant(let subgenre): return subgenre.rawValue
                        case .maghrebRai: return 8425
                    }
                }
                
                public static var allCases: [Arabic] {
                    var arabic: [Arabic] = [.arabic, .arabicPop, .islamic, .maghrebRai, .northAfrican]
                    let levant = Levant.allCases.map({Arabic.levant($0)})
                    arabic.append(contentsOf: levant)
                    let khaleeji = Khaleeji.allCases.map({Arabic.khaleeji($0)})
                    arabic.append(contentsOf: khaleeji)
                    return arabic
                }
            }

            case russian(Russian)
            public enum Russian: Int, CaseIterable {
                case russian = 8333
                case russianChanson = 8334
                case russianRomance = 8418
                case russianBard = 8419
                case russianPop = 8420
                case russianRock = 8421
                case russianHipHop = 8422
                
                var stringValue: String {
                    switch self {
                        case .russian: return "Tones|RingTones|Russian"
                        case .russianChanson: return "Tones|RingTones|Russian|Chanson"
                        case .russianRomance: return "Tones|RingTones|Russian|Romance"
                        case .russianBard: return "Tones|RingTones|Russian|Bard"
                        case .russianPop: return "Tones|RingTones|Russian|Pop"
                        case .russianRock: return "Tones|RingTones|Russian|Rock"
                        case .russianHipHop: return "Tones|RingTones|Russian|HipHop"
                            
                    }
                }
            }

            case turkish(Turkish)
            public enum Turkish: Int, CaseIterable {
                case turkish = 8341
                case halk = 8324
                case sanat = 8335
                case arabesque = 8308
                case ozgun = 8410
                case fantezi = 8411
                case religious = 8412
                
                var stringValue: String {
                    switch self {
                        case .turkish: return "Tones|RingTones|Turkish"
                        case .halk: return "Tones|RingTones|Turkish|Halk"
                        case .sanat: return "Tones|RingTones|Turkish|Sanat"
                        case .arabesque: return "Tones|RingTones|Turkish|Arabesque"
                        case .ozgun: return "Tones|RingTones|Turkish|Ozgun"
                        case .fantezi: return "Tones|RingTones|Turkish|Fantezi"
                        case .religious: return "Tones|RingTones|Turkish|Religious"
                            
                    }
                }
            }

            case cuban(Cuban)
            public enum Cuban: Int, CaseIterable {
                case cuban = 8368
                case mambo = 8369
                case chachacha = 8370
                case guajira = 8371
                case son = 8372
                case bolero = 8373
                case guaracha = 8374
                case timba = 8375
                
                var stringValue: String {
                    switch self {
                        case .cuban: return "Tones|RingTones|Cuban"
                        case .mambo: return "Tones|RingTones|Cuban|Mambo"
                        case .chachacha: return "Tones|RingTones|Cuban|Chachacha"
                        case .guajira: return "Tones|RingTones|Cuban|Guajira"
                        case .son: return "Tones|RingTones|Cuban|Son"
                        case .bolero: return "Tones|RingTones|Cuban|Bolero"
                        case .guaracha: return "Tones|RingTones|Cuban|Guaracha"
                        case .timba: return "Tones|RingTones|Cuban|Timba"
                            
                    }
                }
            }

            case folk(Folk)
            public enum Folk: Int, CaseIterable {
                case folk = 8159
                case iraqiFolk = 8447
                case khaleejiFolk = 8448
                
                var stringValue: String {
                    switch self {
                        case .folk: return "Tones|RingTones|Folk"
                        case .iraqiFolk: return "Tones|RingTones|Folk|Iraqi Folk"
                        case .khaleejiFolk: return "Tones|RingTones|Folk|Khaleeji Folk"
                    }
                }
            }

            case tarab(Tarab)
            public enum Tarab: Int, CaseIterable {
                case tarab = 8428
                case iraqiTarab = 8429
                case egyptianTarab = 8430
                case khaleejiTarab = 8431
                
                var stringValue: String {
                    switch self {
                        case .tarab: return "Tones|RingTones|Tarab"
                        case .iraqiTarab: return "Tones|RingTones|Tarab|Iraqi Tarab"
                        case .egyptianTarab: return "Tones|RingTones|Tarab|Egyptian Tarab"
                        case .khaleejiTarab: return "Tones|RingTones|Tarab|Khaleeji Tarab"
                    }
                }
            }
        }
    }
}
