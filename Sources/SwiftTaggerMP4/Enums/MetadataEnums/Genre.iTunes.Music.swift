//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 10/6/20.
//

import Foundation
extension Genre {
    public enum Music: CaseIterable {
        case music
        case jPop
        case enka
        case anime
        case kayokyoku
        case karaoke
        case instrumental
        case orchestral
        case marchingBands
        case spokenWord
        case disney
        case frenchPop
        case germanPop
        case germanFolk
        
        public var genreID: Int {
            switch self {
                case .music: return 34
                case .jPop: return 27
                case .enka: return 28
                case .anime: return 29
                case .kayokyoku: return 30
                case .karaoke: return 52
                case .instrumental: return 53
                case .orchestral: return 1290
                case .marchingBands: return 1291
                case .spokenWord: return 50000061
                case .disney: return 50000063
                case .frenchPop: return 50000064
                case .germanPop: return 50000066
                case .germanFolk: return 50000068
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
                case .fitnessAndWorkout(let subgenre): return subgenre.rawValue
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
        
        public var stringValue: String {
            switch self {
                case .music: return "Music"
                case .jPop: return "Music|JPop"
                case .enka: return "Music|Enka"
                case .anime: return "Music|Anime"
                case .kayokyoku: return "Music|Kayokyoku"
                case .karaoke: return "Music|Karaoke"
                case .instrumental: return "Music|Instrumental"
                case .orchestral: return "Music|Orchestral"
                case .marchingBands: return "Music|Marching"
                case .spokenWord: return "Music|Spoken Word"
                case .disney: return "Music|Disney"
                case .frenchPop: return "Music|French Pop"
                case .germanPop: return "Music|German Pop"
                case .germanFolk: return "Music|German Folk"
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
                case .fitnessAndWorkout(let subgenre): return subgenre.stringValue
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
            }
        }
        
        public static var allCases: [Music] {
            var cases: [Music] = [.anime, .disney, .enka, .frenchPop, .germanFolk, .germanPop, .instrumental, .jPop, .karaoke, .kayokyoku, .marchingBands, .music, .orchestral, .spokenWord]
            cases.append(contentsOf: Blues.allCases.map({ Music.blues($0)}))
            cases.append(contentsOf: Comedy.allCases.map({ Music.comedy($0)}))
            cases.append(contentsOf: ChildrensMusic.allCases.map({ Music.childrensMusic($0)}))
            cases.append(contentsOf: Classical.allCases.map({ Music.classical($0)}))
            cases.append(contentsOf: Country.allCases.map({ Music.country($0)}))
            cases.append(contentsOf: Electronic.allCases.map({ Music.electronic($0)}))
            cases.append(contentsOf: Holiday.allCases.map({ Music.holiday($0)}))
            cases.append(contentsOf: SingerSongwriter.allCases.map({ Music.singerSongwriter($0)}))
            cases.append(contentsOf: Jazz.allCases.map({ Music.jazz($0)}))
            cases.append(contentsOf: Latino.allCases.map({ Music.latino($0)}))
            cases.append(contentsOf: NewAge.allCases.map({ Music.newAge($0)}))
            cases.append(contentsOf: Pop.allCases.map({ Music.pop($0)}))
            cases.append(contentsOf: RAndBSoul.allCases.map({ Music.rAndBSoul($0)}))
            cases.append(contentsOf: Soundtrack.allCases.map({ Music.soundtrack($0)}))
            cases.append(contentsOf: Dance.allCases.map({ Music.dance($0)}))
            cases.append(contentsOf: HipHopRap.allCases.map({ Music.hipHopRap($0)}))
            cases.append(contentsOf: World.allCases.map({ Music.world($0)}))
            cases.append(contentsOf: Alternative.allCases.map({ Music.alternative($0)}))
            cases.append(contentsOf: Rock.allCases.map({ Music.rock($0)}))
            cases.append(contentsOf: ChristianAndGospel.allCases.map({ Music.christianAndGospel($0)}))
            cases.append(contentsOf: Vocal.allCases.map({ Music.vocal($0)}))
            cases.append(contentsOf: Reggae.allCases.map({ Music.reggae($0)}))
            cases.append(contentsOf: EasyListening.allCases.map({ Music.easyListening($0)}))
            cases.append(contentsOf: FitnessAndWorkout.allCases.map({ Music.fitnessAndWorkout($0)}))
            cases.append(contentsOf: African.allCases.map({ Music.african($0)}))
            cases.append(contentsOf: Brazilian.allCases.map({ Music.brazilian($0)}))
            cases.append(contentsOf: Chinese.allCases.map({ Music.chinese($0)}))
            cases.append(contentsOf: Korean.allCases.map({ Music.korean($0)}))
            cases.append(contentsOf: Indian.allCases.map({ Music.indian($0)}))
            cases.append(contentsOf: Arabic.allCases.map({ Music.arabic($0)}))
            cases.append(contentsOf: Russian.allCases.map({ Music.russian($0)}))
            cases.append(contentsOf: Turkish.allCases.map({ Music.turkish($0)}))
            cases.append(contentsOf: Cuban.allCases.map({ Music.cuban($0)}))
            cases.append(contentsOf: Folk.allCases.map({ Music.folk($0)}))
            cases.append(contentsOf: Tarab.allCases.map({ Music.tarab($0)}))
            return cases
        }

        case blues(Blues)
        public enum Blues: Int, CaseIterable {
            case blues = 2
            case chicagoBlues = 1007
            case classicBlues = 1009
            case contemporaryBlues = 1010
            case countryBlues = 1011
            case deltaBlues = 1012
            case electricBlues = 1013
            case acousticBlues = 1210

            var stringValue: String {
                switch self {
                    case .blues: return "Music|Blues"
                    case .chicagoBlues: return "Music|Blues|Chicago Blues"
                    case .classicBlues: return "Music|Blues|Classic Blues"
                    case .contemporaryBlues: return "Music|Blues|Contemporary Blues"
                    case .countryBlues: return "Music|Blues|Country Blues"
                    case .deltaBlues: return "Music|Blues|Delta Blues"
                    case .electricBlues: return "Music|Blues|Electric Blues"
                    case .acousticBlues: return "Music|Blues|Acoustic Blues"

                }
            }
        }
        
        case comedy(Comedy)
        public enum Comedy: Int, CaseIterable {
            case comedy = 3
            case novelty = 1167
            case standUpComedy = 1171

            var stringValue: String {
                switch self {
                    case .comedy: return "Music|Comedy"
                    case .novelty: return "Music|Comedy|Novelty"
                    case .standUpComedy: return "Music|Comedy|Standup Comedy"

                }
            }
        }
        
        case childrensMusic(ChildrensMusic)
        public enum ChildrensMusic: Int, CaseIterable {
            case childrensMusic = 4
            case lullabies = 1014
            case singAlong = 1015
            case stories = 1016

            var stringValue: String {
                switch self {
                    case .childrensMusic: return "Music|Children's Music"
                    case .lullabies: return "Music|Children's Music|Lullabies"
                    case .singAlong: return "Music|Children's Music|Sing-Along"
                    case .stories: return "Music|Children's Music|Stories"
                }
            }
        }
        
        case classical(Classical)
        public enum Classical: Int, CaseIterable {
            case classical = 5
            case opera = 9
            case avantGarde = 1017
            case baroqueEra = 1018
            case chamberMusic = 1019
            case chant = 1020
            case choral = 1021
            case classicalCrossover = 1022
            case earlyMusic = 1023
            case impressionist = 1024
            case medievalEra = 1025
            case minimalism = 1026
            case modernEra = 1027
            case orchestral = 1029
            case renaissance = 1030
            case romanticEra = 1031
            case weddingMusic = 1032
            case highClassical = 1211
            case artSong = 100001
            case brassAndWoodwinds = 100002
            case soloInstrumental = 100003
            case contemporaryEra = 100004
            case oratorio = 100005
            case cantata = 100006
            case electronic = 100007
            case sacred = 100008
            case guitar = 100009
            case piano = 100010
            case violin = 100011
            case cello = 100012
            case percussion = 100013

            var stringValue: String {
                switch self {
                    case .classical: return "Music|Classical"
                    case .opera: return "Music|Classical|Opera"
                    case .avantGarde: return "Music|Classical|Avant Garde"
                    case .baroqueEra: return "Music|Classical|Baroque Era"
                    case .chamberMusic: return "Music|Classical|Chamber Music"
                    case .chant: return "Music|Classical|Chant"
                    case .choral: return "Music|Classical|Choral"
                    case .classicalCrossover: return "Music|Classical|Classical Crossover"
                    case .earlyMusic: return "Music|Classical|Early Music"
                    case .impressionist: return "Music|Classical|Impressionist"
                    case .medievalEra: return "Music|Classical|Medieval Era"
                    case .minimalism: return "Music|Classical|Minimalism"
                    case .modernEra: return "Music|Classical|Modern Era"
                    case .orchestral: return "Music|Classical|Orchestral"
                    case .renaissance: return "Music|Classical|Renaissance"
                    case .romanticEra: return "Music|Classical|Romantic Era"
                    case .weddingMusic: return "Music|Classical|Wedding Music"
                    case .highClassical: return "Music|Classical|High Classical"
                    case .artSong: return "Music|Classical|Art Song"
                    case .brassAndWoodwinds: return "Music|Classical|Brass and Woodwinds"
                    case .soloInstrumental: return "Music|Classical|Solo Instrumental"
                    case .contemporaryEra: return "Music|Classical|Contemporary Era"
                    case .oratorio: return "Music|Classical|Oratorio"
                    case .cantata: return "Music|Classical|Cantata"
                    case .electronic: return "Music|Classical|Rlectronic"
                    case .sacred: return "Music|Classical|Sacred"
                    case .guitar: return "Music|Classical|Guitar"
                    case .piano: return "Music|Classical|Piano"
                    case .violin: return "Music|Classical|Violin"
                    case .cello: return "Music|Classical|Cello"
                    case .percussion: return "Music|Classical|Percussion"

                }
            }
        }
        
        case country(Country)
        public enum Country: Int, CaseIterable {
            case country = 6
            case alternativeCountry = 1033
            case americana = 1034
            case bluegrass = 1035
            case contemporaryBluegrass = 1036
            case contemporaryCountry = 1037
            case countryGospel = 1038
            case honkyTonk = 1039
            case outlawCountry = 1040
            case traditionalBluegrass = 1041
            case traditionalCountry = 1042
            case urbanCowboy = 1043
            case thaiCountry = 1294

            var stringValue: String {
                switch self {
                    case .country: return "Music|Country"
                    case .alternativeCountry: return "Music|Country|Alternative Country"
                    case .americana: return "Music|Country|Americana"
                    case .bluegrass: return "Music|Country|Bluegrass"
                    case .contemporaryBluegrass: return "Music|Country|Contemporary Bluegrass"
                    case .contemporaryCountry: return "Music|Country|Contemporary Country"
                    case .countryGospel: return "Music|Country|Country Gospel"
                    case .honkyTonk: return "Music|Country|Honky Tonk"
                    case .outlawCountry: return "Music|Country|Outlaw Country"
                    case .traditionalBluegrass: return "Music|Country|Traditional Bluegrass"
                    case .traditionalCountry: return "Music|Country|Traditional Country"
                    case .urbanCowboy: return "Music|Country|Urban Cowboy"
                    case .thaiCountry: return "Music|Country|Thai Country"
                }
            }
        }
        
        case electronic(Electronic)
        public enum Electronic: Int, CaseIterable {
            case electronic = 7
            case ambient = 1056
            case downtempo = 1057
            case electronica = 1058
            case idmExperimental = 1060
            case industrial = 1061
            case dubstep = 100014
            case bass = 100015
            case levantElectronic = 100100
            case electroChaabi = 100101
            case maghrebElectronic = 100102

            var stringValue: String {
                switch self {
                    case .electronic: return "Music|Electronic"
                    case .ambient: return "Music|Electronic|Ambient"
                    case .downtempo: return "Music|Electronic|Downtempo"
                    case .electronica: return "Music|Electronic|Electronica"
                    case .idmExperimental: return "Music|Electronic|IDM Experimental"
                    case .industrial: return "Music|Electronic|Industrial"
                    case .dubstep: return "Music|Electronic|Dubstep"
                    case .bass: return "Music|Electronic|Bass"
                    case .levantElectronic: return "Music|Electronic|Levant Electronic"
                    case .electroChaabi: return "Music|Electronic|Electro Chaabi"
                    case .maghrebElectronic: return "Music|Electronic|Maghreb Electronic"
                }
            }
        }
        
        case holiday(Holiday)
        public enum Holiday: CaseIterable {
            case holiday
            case chanukah
            case christmas(Christmas)
            public enum Christmas: Int, CaseIterable {
                case christmas = 1080
                case childrens = 1081
                case classic = 1082
                case classical = 1083
                case jazz = 1084
                case modern = 1085
                case pop = 1086
                case rAndB = 1087
                case religious = 1088
                case rock = 1089

                var stringValue: String {
                    switch self {
                        case .christmas: return "Music|Holiday|Christmas"
                        case .childrens: return "Music|Holiday|Christmas|Children's"
                        case .classic: return "Music|Holiday|Christmas|Classic"
                        case .classical: return "Music|Holiday|Christmas|Classical"
                        case .jazz: return "Music|Holiday|Christmas|Jazz"
                        case .modern: return "Music|Holiday|Christmas|Modern"
                        case .pop: return "Music|Holiday|Christmas|Pop"
                        case .rAndB: return "Music|Holiday|Christmas|R&B"
                        case .religious: return "Music|Holiday|Christmas|Religious"
                        case .rock: return "Music|Holiday|Christmas|Rock"
                    }
                }
            }
            case easter
            case halloween
            case holidayOther
            case thanksgiving

            var stringValue: String {
                switch self {
                    case .holiday: return "Music|Holiday"
                    case .chanukah: return "Music|Holiday|chanukah"
                    case .christmas(let subgenre): return subgenre.stringValue
                    case .easter: return "Music|Holiday|easter"
                    case .halloween: return "Music|Holiday|halloween"
                    case .holidayOther: return "Music|Holiday|holidayOther"
                    case .thanksgiving: return "Music|Holiday|thanksgiving"
                }
            }
            
            var rawValue: Int {
                switch self {
                    case .holiday: return 8
                    case .chanukah: return 1079
                    case .christmas(let subgenre): return subgenre.rawValue
                    case .easter: return 1090
                    case .halloween: return 1091
                    case .holidayOther: return 1092
                    case .thanksgiving: return 1093
                }
            }
            
            public static var allCases: [Holiday] {
                var cases: [Holiday] = [.chanukah, .easter, .halloween, .holiday, .holidayOther, .thanksgiving]
                cases.append(contentsOf: Christmas.allCases.map({ Holiday.christmas($0)}))
                return cases
            }
        }
        
        case singerSongwriter(SingerSongwriter)
        public enum SingerSongwriter: Int, CaseIterable {
            case singerSongwriter = 10
            case alternativeFolk = 1062
            case contemporaryFolk = 1063
            case contemporarySingerSongwriter = 1064
            case folkRock = 1065
            case newAcoustic = 1066
            case traditionalFolk = 1067

            var stringValue: String {
                switch self {
                    case .singerSongwriter: return "Music|Singer/Songwriter"
                    case .alternativeFolk: return "Music|Singer/Songwriter|Alternative Folk"
                    case .contemporaryFolk: return "Music|Singer/Songwriter|Contemporary Folk"
                    case .contemporarySingerSongwriter: return "Music|Singer/Songwriter|Contemporary Singer/Songwriter"
                    case .folkRock: return "Music|Singer/Songwriter|Folk Rock"
                    case .newAcoustic: return "Music|Singer/Songwriter|New Acoustic"
                    case .traditionalFolk: return "Music|Singer/Songwriter|Traditional Folk"
                }
            }
        }
        
        case jazz(Jazz)
        public enum Jazz: Int, CaseIterable {
            case jazz = 11
            case bigBand = 1052
            case bop = 1053
            case avantGardeJazz = 1106
            case contemporaryJazz = 1107
            case crossoverJazz = 1108
            case dixieland = 1109
            case fusion = 1110
            case latinJazz = 1111
            case mainstreamJazz = 1112
            case ragtime = 1113
            case smoothJazz = 1114
            case vocalJazz = 1175
            case hardBop = 1207
            case tradJazz = 1208
            case coolJazz = 1209

            var stringValue: String {
                switch self {
                    case .jazz: return "Music|Jazz"
                    case .bigBand: return "Music|Jazz|Big Band"
                    case .bop: return "Music|Jazz|Bop"
                    case .avantGardeJazz: return "Music|Jazz|Avant Garde Jazz"
                    case .contemporaryJazz: return "Music|Jazz|Contemporary Jazz"
                    case .crossoverJazz: return "Music|Jazz|Crossover Jazz"
                    case .dixieland: return "Music|Jazz|Dixieland"
                    case .fusion: return "Music|Jazz|Fusion"
                    case .latinJazz: return "Music|Jazz|Latin Jazz"
                    case .mainstreamJazz: return "Music|Jazz|Mainstream Jazz"
                    case .ragtime: return "Music|Jazz|Ragtime"
                    case .smoothJazz: return "Music|Jazz|Smooth Jazz"
                    case .vocalJazz: return "Music|Jazz|Vocal Jazz"
                    case .hardBop: return "Music|Jazz|Hard Bop"
                    case .tradJazz: return "Music|Jazz|Trad Jazz"
                    case .coolJazz: return "Music|Jazz|Cool Jazz"
                }
            }
        }
        
        case latino(Latino)
        public enum Latino: Int, CaseIterable {
            case latino = 12
            case latinJazz = 1115
            case contemporaryLatin = 1116
            case popLatino = 1117
            case raices = 1118
            case urbanoLatino = 1119
            case baladasyBoleros = 1120
            case rockyAlternativo = 1121
            case musicaMexicana = 1123
            case musicatropical = 1124

            var stringValue: String {
                switch self {
                    case .latino: return "Music|Latino"
                    case .latinJazz: return "Music|Latino|Latin Jazz"
                    case .contemporaryLatin: return "Music|Latino|Contemporary Latin"
                    case .popLatino: return "Music|Latino|Pop Latino"
                    case .raices: return "Music|Latino|Raices"
                    case .urbanoLatino: return "Music|Latino|Urbano Latino"
                    case .baladasyBoleros: return "Music|Latino|Baladasy Boleros"
                    case .rockyAlternativo: return "Music|Latino|Rocky Alternativo"
                    case .musicaMexicana: return "Music|Latino|Musica Mexicana"
                    case .musicatropical: return "Music|Latino|Musica Tropical"
                }
            }
        }
        
        case newAge(NewAge)
        public enum NewAge: Int, CaseIterable {
            case newAge = 13
            case environmental = 1125
            case healing = 1126
            case meditation = 1127
            case nature = 1128
            case relaxation = 1129
            case travel = 1130
            case yoga = 100021

            var stringValue: String {
                switch self {
                    case .newAge: return "Music|NewAge"
                    case .environmental: return "Music|NewAge|Environmental"
                    case .healing: return "Music|NewAge|Healing"
                    case .meditation: return "Music|NewAge|Meditation"
                    case .nature: return "Music|NewAge|Nature"
                    case .relaxation: return "Music|NewAge|Relaxation"
                    case .travel: return "Music|NewAge|Travel"
                    case .yoga: return "Music|NewAge|Yoga"
                }
            }
        }
        
        case pop(Pop)
        public enum Pop: Int, CaseIterable {
            case pop = 14
            case kPop = 51
            case adultContemporary = 1131
            case britpop = 1132
            case popRock = 1133
            case softRock = 1134
            case teenPop = 1135
            case cPop = 1250
            case cantopopHKPop = 1251
            case koreanFolkPop = 1252
            case mandopop = 1253
            case taiPop = 1254
            case malaysianPop = 1255
            case pinoyPop = 1256
            case originalPilipinoMusic = 1257
            case manillaSound = 1258
            case indoPop = 1259
            case thaiPop = 1260
            case oldies = 1293
            case tribute = 100022
            case shows = 100023
            case turkishPop = 100069
            case levantPop = 100088
            case iraqiPop = 100089
            case egyptianPop = 100090
            case maghrebPop = 100091
            case khaleejiPop = 100092

            var stringValue: String {
                switch self {
                    case .pop: return "Music|Pop"
                    case .kPop: return "Music|Pop|KPop"
                    case .adultContemporary: return "Music|Pop|Adult Contemporary"
                    case .britpop: return "Music|Pop|Brit Pop"
                    case .popRock: return "Music|Pop|Pop Rock"
                    case .softRock: return "Music|Pop|Soft Rock"
                    case .teenPop: return "Music|Pop|Teen Pop"
                    case .cPop: return "Music|Pop|CPop"
                    case .cantopopHKPop: return "Music|Pop|CantoPop/HK Pop"
                    case .koreanFolkPop: return "Music|Pop|Korean Folk Pop"
                    case .mandopop: return "Music|Pop|Mandopop"
                    case .taiPop: return "Music|Pop|Tai Pop"
                    case .malaysianPop: return "Music|Pop|Malaysian Pop"
                    case .pinoyPop: return "Music|Pop|Pinoy Pop"
                    case .originalPilipinoMusic: return "Music|Pop|Original Pilipino Music"
                    case .manillaSound: return "Music|Pop|Manilla Sound"
                    case .indoPop: return "Music|Pop|Indo Pop"
                    case .thaiPop: return "Music|Pop|Thai Pop"
                    case .oldies: return "Music|Pop|Oldies"
                    case .tribute: return "Music|Pop|Tribute"
                    case .shows: return "Music|Pop|Shows"
                    case .turkishPop: return "Music|Pop|Turkish Pop"
                    case .levantPop: return "Music|Pop|Levant Pop"
                    case .iraqiPop: return "Music|Pop|Iraqi Pop"
                    case .egyptianPop: return "Music|Pop|Egyptian Pop"
                    case .maghrebPop: return "Music|Pop|Maghreb Pop"
                    case .khaleejiPop: return "Music|Pop|Khaleeji Pop"
                }
            }
        }
        
        case rAndBSoul(RAndBSoul)
        public enum RAndBSoul: Int, CaseIterable {
            case rAndBSoul = 15
            case contemporaryRandB = 1136
            case disco = 1137
            case dooWop = 1138
            case funk = 1139
            case motown = 1140
            case neoSoul = 1141
            case quietStorm = 1142
            case soul = 1143

            var stringValue: String {
                switch self {
                    case .rAndBSoul: return "Music|R&B/Soul"
                    case .contemporaryRandB: return "Music|R&B/Soul|Contemporary R&B"
                    case .disco: return "Music|R&B/Soul|Sisco"
                    case .dooWop: return "Music|R&B/Soul|DooWop"
                    case .funk: return "Music|R&B/Soul|Funk"
                    case .motown: return "Music|R&B/Soul|Motown"
                    case .neoSoul: return "Music|R&B/Soul|NeoSoul"
                    case .quietStorm: return "Music|R&B/Soul|Quiet Storm"
                    case .soul: return "Music|R&B/Soul|Soul"
                }
            }
        }
        
        case soundtrack(Soundtrack)
        public enum Soundtrack: Int, CaseIterable {
            case musicSoundtrack = 16
            case foreignCinema = 1165
            case musicals = 1166
            case originalScore = 1168
            case soundtrack = 1169
            case tvSoundtrack = 1172
            case soundEffects = 1288
            case videoGame = 100032

            var stringValue: String {
                switch self {
                    case .musicSoundtrack: return "Music|Soundtrack"
                    case .foreignCinema: return "Music|Soundtrack|Foreign Cinema"
                    case .musicals: return "Music|Soundtrack|Musicals"
                    case .originalScore: return "Music|Soundtrack|Original Score"
                    case .soundtrack: return "Music|Soundtrack|Soundtrack"
                    case .tvSoundtrack: return "Music|Soundtrack|TV Soundtrack"
                    case .soundEffects: return "Music|Soundtrack|Sound Effects"
                    case .videoGame: return "Music|Soundtrack|Video Game"
                }
            }
        }
        
        case dance(Dance)
        public enum Dance: Int, CaseIterable {
            case dance = 17
            case breakbeat = 1044
            case exercise = 1045
            case garage = 1046
            case hardcore = 1047
            case house = 1048
            case jungleDrumAndBass = 1049
            case techno = 1050
            case trance = 1051
            case maghrebDance = 100105

            var stringValue: String {
                switch self {
                    case .dance: return "Music|Dance"
                    case .breakbeat: return "Music|Dance|Breakbeat"
                    case .exercise: return "Music|Dance|Exercise"
                    case .garage: return "Music|Dance|Garage"
                    case .hardcore: return "Music|Dance|Hardcore"
                    case .house: return "Music|Dance|House"
                    case .jungleDrumAndBass: return "Music|Dance|Jungle Drum&Bass"
                    case .techno: return "Music|Dance|Techno"
                    case .trance: return "Music|Dance|Trance"
                    case .maghrebDance: return "Music|Dance|Maghreb Dance"
                }
            }
        }
        
        case hipHopRap(HipHopRap)
        public enum HipHopRap: Int, CaseIterable {
            case hipHopRap = 18
            case alternativeRap = 1068
            case dirtySouth = 1069
            case eastCoastRap = 1070
            case gangstaRap = 1071
            case hardcoreRap = 1072
            case hipHop = 1073
            case latinRap = 1074
            case oldSchoolRap = 1075
            case rap = 1076
            case undergroundRap = 1077
            case westCoastRap = 1078
            case chineseHipHop = 1241
            case koreanHipHop = 1242
            case ukHipHop = 100016
            case turkishHipHopRap = 100072
            case levantHipHop = 100093
            case egyptianHipHop = 100094
            case maghrebHipHop = 100095
            case khaleejiHipHop = 100096

            var stringValue: String {
                switch self {
                    case .hipHopRap: return "Music|HipHop/Rap"
                    case .alternativeRap: return "Music|HipHop/Rap|Alternative Rap"
                    case .dirtySouth: return "Music|HipHop/Rap|Dirty South"
                    case .eastCoastRap: return "Music|HipHop/Rap|East Coast Rap"
                    case .gangstaRap: return "Music|HipHop/Rap|Gangsta Rap"
                    case .hardcoreRap: return "Music|HipHop/Rap|Hardcore Rap"
                    case .hipHop: return "Music|HipHop/Rap|HipHop"
                    case .latinRap: return "Music|HipHop/Rap|Latin Rap"
                    case .oldSchoolRap: return "Music|HipHop/Rap|Old School Rap"
                    case .rap: return "Music|HipHop/Rap|Rap"
                    case .undergroundRap: return "Music|HipHop/Rap|Underground Rap"
                    case .westCoastRap: return "Music|HipHop/Rap|West Coast Rap"
                    case .chineseHipHop: return "Music|HipHop/Rap|Chinese HipHop"
                    case .koreanHipHop: return "Music|HipHop/Rap|Korean HipHop"
                    case .ukHipHop: return "Music|HipHop/Rap|UK HipHop"
                    case .turkishHipHopRap: return "Music|HipHop/Rap|Turkish HipHop/Rap"
                    case .levantHipHop: return "Music|HipHop/Rap|Levant HipHop"
                    case .egyptianHipHop: return "Music|HipHop/Rap|Egyptian HipHop"
                    case .maghrebHipHop: return "Music|HipHop/Rap|Maghreb HipHop"
                    case .khaleejiHipHop: return "Music|HipHop/Rap|Khaleeji HipHop"
                }
            }
        }
        
        case world(World)
        public enum World: CaseIterable {
            case world
            case cajun
            case celtic(Celtic)
            public enum Celtic: Int, CaseIterable {
                case celtic = 1180
                case folk = 1181
                case contemporaryCeltic = 1182
                case drinkingSongs = 1184
                case traditionalCeltic = 1189

                var stringValue: String {
                    switch self {
                        case .celtic: return "Music|World|Celtic"
                        case .folk: return "Music|World|Celtic|Folk"
                        case .contemporaryCeltic: return "Music|World|Celtic|Contemporary Celtic"
                        case .drinkingSongs: return "Music|World|Celtic|Drinking Songs"
                        case .traditionalCeltic: return "Music|World|Celtic|Traditional Celtic"
                    }
                }
            }
            case japanesePop
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
                    case .world: return "Music|World"
                    case .cajun: return "Music|World|Cajun"
                    case .celtic(let subgenre): return subgenre.stringValue
                    case .japanesePop: return "Music|World|Japanese Pop"
                    case .klezmer: return "Music|World|Klezmer"
                    case .polka: return "Music|World|Polka"
                    case .worldbeat: return "Music|World|World Beat"
                    case .zydeco: return "Music|World|Zydeco"
                    case .caribbean: return "Music|World|Caribbean"
                    case .southAmerica: return "Music|World|South America"
                    case .northAmerica: return "Music|World|North America"
                    case .hawaii: return "Music|World|Hawaii"
                    case .australia: return "Music|World|Australia"
                    case .japan: return "Music|World|Japan"
                    case .france: return "Music|World|France"
                    case .asia: return "Music|World|Asia"
                    case .europe: return "Music|World|Europe"
                    case .southAfrica: return "Music|World|SouthAfrica"
                    case .dini: return "Music|World|Dini"
                    case .dangdut: return "Music|World|Dangdut"
                    case .indonesianReligious: return "Music|World|Indonesian Religious"
                    case .calypso: return "Music|World|Calypso"
                    case .soca: return "Music|World|Soca"
                    case .farsi: return "Music|World|Farsi"
                    case .israeli: return "Music|World|Israeli"
                    case .flamenco: return "Music|World|Flamenco"
                    case .tango: return "Music|World|Tango"
                    case .fado: return "Music|World|Fado"
                    case .iberia: return "Music|World|Iberia"
                }
            }
            
            var rawValue: Int {
                switch self {
                    case .world: return 19
                    case .cajun: return 1179
                    case .celtic(let subgenre): return subgenre.rawValue
                    case .japanesePop: return 1186
                    case .klezmer: return 1187
                    case .polka: return 1188
                    case .worldbeat: return 1190
                    case .zydeco: return 1191
                    case .caribbean: return 1195
                    case .southAmerica: return 1196
                    case .northAmerica: return 1198
                    case .hawaii: return 1199
                    case .australia: return 1200
                    case .japan: return 1201
                    case .france: return 1202
                    case .asia: return 1204
                    case .europe: return 1205
                    case .southAfrica: return 1206
                    case .dini: return 1271
                    case .dangdut: return 1274
                    case .indonesianReligious: return 1275
                    case .calypso: return 1276
                    case .soca: return 1277
                    case .farsi: return 1282
                    case .israeli: return 1283
                    case .flamenco: return 1295
                    case .tango: return 1296
                    case .fado: return 1297
                    case .iberia: return 1298
                }
            }
            
            public static var allCases: [World] {
                var array: [World] = [.asia, .australia, .cajun, .calypso, .caribbean, .dangdut, .dini, .europe, .fado, .farsi, .flamenco, .france, .hawaii, .iberia, .indonesianReligious, .israeli, .japan, .klezmer, .northAmerica, .polka, .soca, .southAfrica, .southAmerica, .tango, .world, .worldbeat, .zydeco, .japanesePop]
                let celtic = Celtic.allCases.map({World.celtic($0)})
                array.append(contentsOf: celtic)
                return array
            }
        }
        
        case alternative(Alternative)
        public enum Alternative: Int, CaseIterable {
            case alternative = 20
            case collegeRock = 1001
            case gothRock = 1002
            case grunge = 1003
            case indieRock = 1004
            case newWave = 1005
            case punk = 1006
            case chineseAlt = 1230
            case koreanIndie = 1231
            case emo = 100018
            case popPunk = 100019
            case indiePop = 100020
            case turkishAlternative = 100071
            case indieLevant = 100097
            case indieEgyptian = 100098
            case indieMaghreb = 100099

            var stringValue: String {
                switch self {
                    case .alternative: return "Music|Alternative"
                    case .collegeRock: return "Music|Alternative|College Rock"
                    case .gothRock: return "Music|Alternative|Goth Rock"
                    case .grunge: return "Music|Alternative|Grunge"
                    case .indieRock: return "Music|Alternative|Indie Rock"
                    case .newWave: return "Music|Alternative|New Wave"
                    case .punk: return "Music|Alternative|Punk"
                    case .chineseAlt: return "Music|Alternative|Chinese Alt"
                    case .koreanIndie: return "Music|Alternative|Korean Indie"
                    case .emo: return "Music|Alternative|EMO"
                    case .popPunk: return "Music|Alternative|Pop Punk"
                    case .indiePop: return "Music|Alternative|Indie Pop"
                    case .turkishAlternative: return "Music|Alternative|Turkish Alternative"
                    case .indieLevant: return "Music|Alternative|Indie Levant"
                    case .indieEgyptian: return "Music|Alternative|Indie Egyptian"
                    case .indieMaghreb: return "Music|Alternative|Indie Maghreb"
                }
            }
        }
        
        case rock(Rock)
        public enum Rock: Int, CaseIterable {
            case rock = 21
            case adultAlternative = 1144
            case americanTradRock = 1145
            case arenaRock = 1146
            case bluesRock = 1147
            case britishInvasion = 1148
            case deathMetalBlackMetal = 1149
            case glamRock = 1150
            case hairMetal = 1151
            case hardRock = 1152
            case metal = 1153
            case jamBands = 1154
            case progRockArtRock = 1155
            case psychedelic = 1156
            case rockAndRoll = 1157
            case rockabilly = 1158
            case rootsRock = 1159
            case singerSongwriter = 1160
            case southernRock = 1161
            case surf = 1162
            case texMex = 1163
            case chineseRock = 1248
            case koreanRock = 1249
            case turkishRock = 100070

            var stringValue: String {
                switch self {
                    case .rock: return "Music|Rock"
                    case .adultAlternative: return "Music|Rock|Adult Alternative"
                    case .americanTradRock: return "Music|Rock|American Trad Rock"
                    case .arenaRock: return "Music|Rock|Arena Rock"
                    case .bluesRock: return "Music|Rock|Blues Rock"
                    case .britishInvasion: return "Music|Rock|British Invasion"
                    case .deathMetalBlackMetal: return "Music|Rock|Death Metal/Black Metal"
                    case .glamRock: return "Music|Rock|Glam Rock"
                    case .hairMetal: return "Music|Rock|Hair Metal"
                    case .hardRock: return "Music|Rock|Hard Rock"
                    case .metal: return "Music|Rock|Metal"
                    case .jamBands: return "Music|Rock|Jam Bands"
                    case .progRockArtRock: return "Music|Rock|Prog Rock/ArtRock"
                    case .psychedelic: return "Music|Rock|Psychedelic"
                    case .rockAndRoll: return "Music|Rock|Rock & Roll"
                    case .rockabilly: return "Music|Rock|Rockabilly"
                    case .rootsRock: return "Music|Rock|Roots Rock"
                    case .singerSongwriter: return "Music|Rock|Singer Songwriter"
                    case .southernRock: return "Music|Rock|Southern Rock"
                    case .surf: return "Music|Rock|Surf"
                    case .texMex: return "Music|Rock|TexMex"
                    case .chineseRock: return "Music|Rock|Chinese Rock"
                    case .koreanRock: return "Music|Rock|Korean Rock"
                    case .turkishRock: return "Music|Rock|Turkish Rock"
                }
            }
        }
        
        case christianAndGospel(ChristianAndGospel)
        public enum ChristianAndGospel: Int, CaseIterable {
            case christianAndGospel = 22
            case ccm = 1094
            case christianMetal = 1095
            case christianPop = 1096
            case christianRap = 1097
            case christianRock = 1098
            case classicChristian = 1099
            case contemporaryGospel = 1100
            case gospel = 1101
            case praiseAndWorship = 1103
            case southernGospel = 1104
            case traditionalGospel = 1105

            var stringValue: String {
                switch self {
                    case .christianAndGospel: return "Music|Christian & Gospel"
                    case .ccm: return "Music|Christian & Gospel|CCM"
                    case .christianMetal: return "Music|Christian & Gospel|Christian Metal"
                    case .christianPop: return "Music|Christian & Gospel|Christian Pop"
                    case .christianRap: return "Music|Christian & Gospel|Christian Rap"
                    case .christianRock: return "Music|Christian & Gospel|Christian Rock"
                    case .classicChristian: return "Music|Christian & Gospel|Classical Christian"
                    case .contemporaryGospel: return "Music|Christian & Gospel|Contemporary Gospel"
                    case .gospel: return "Music|Christian & Gospel|Gospel"
                    case .praiseAndWorship: return "Music|Christian & Gospel|Praise & Worship"
                    case .southernGospel: return "Music|Christian & Gospel|Southern Gospel"
                    case .traditionalGospel: return "Music|Christian & Gospel|Traditional Gospel"
                }
            }
        }
        
        case vocal(Vocal)
        public enum Vocal: Int, CaseIterable {
            case vocal = 23
            case standards = 1173
            case traditionalPop = 1174
            case vocalPop = 1176
            case trot = 1261

            var stringValue: String {
                switch self {
                    case .vocal: return "Music|Vocal"
                    case .standards: return "Music|Vocal|Standards"
                    case .traditionalPop: return "Music|Vocal|Traditional Pop"
                    case .vocalPop: return "Music|Vocal|Vocal Pop"
                    case .trot: return "Music|Vocal|Trot"
                }
            }
        }
        
        case reggae(Reggae)
        public enum Reggae: Int, CaseIterable {
            case reggae
            case modernDancehall = 1183
            case rootsReggae = 1192
            case dub = 1193
            case ska = 1194
            case loversRock = 100017

            var stringValue: String {
                switch self {
                    case .reggae: return "Music|Reggae"
                    case .modernDancehall: return "Music|Reggae|Modern Dancehall"
                    case .rootsReggae: return "Music|Reggae|Roots Reggae"
                    case .dub: return "Music|Reggae|Dub"
                    case .ska: return "Music|Reggae|Ska"
                    case .loversRock: return "Music|Reggae|Lovers Rock"

                }
            }
        }
        
        case easyListening(EasyListening)
        public enum EasyListening: Int, CaseIterable {
            case easyListening = 25
            case lounge = 1054
            case swing = 1055

            var stringValue: String {
                switch self {
                    case .easyListening: return "Music|Easy Listening"
                    case .lounge: return "Music|Music|Easy Listening|Lounge"
                    case .swing: return "Music|Music|Easy Listening|Swing"
                }
            }
        }
        
        
        case fitnessAndWorkout(FitnessAndWorkout)
        public enum FitnessAndWorkout: CaseIterable {
            case fitnessAndWorkout
            case fitnessMusic(FitnessMusic)
            public enum FitnessMusic: Int, CaseIterable {
                case fitnessMusic = 500
                case pop = 501
                case dance = 502
                case hipHop = 503
                case rock = 504
                case altIndie = 505
                case latino = 506
                case country = 507
                case world = 508
                case newAge = 509
                case classical = 510
                
                var stringValue: String {
                    switch self {
                        case .fitnessMusic: return "Music|Fitness And Workout|FitnessMusic"
                        case .pop: return "Music|Fitness Music|Pop"
                        case .dance: return "Music|Fitness Music|Dance"
                        case .hipHop: return "Music|Fitness Music|HipHop"
                        case .rock: return "Music|Fitness Music|Rock"
                        case .altIndie: return "Music|Fitness Music|AltIndie"
                        case .latino: return "Music|Fitness Music|Latino"
                        case .country: return "Music|Fitness Music|Country"
                        case .world: return "Music|Fitness Music|World"
                        case .newAge: return "Music|Fitness Music|NewAge"
                        case .classical: return "Music|Fitness Music|Classical"
                    }
                }
            }

            var stringValue: String {
                switch self {
                    case .fitnessAndWorkout: return "Music|Fitness And Workout"
                    case .fitnessMusic(let subgenre): return subgenre.stringValue
                }
            }
            
            var rawValue: Int {
                switch self {
                    case .fitnessAndWorkout: return 50
                    case .fitnessMusic(let subgenre): return subgenre.rawValue
                }
            }
            
            public static var allCases: [FitnessAndWorkout] {
                var cases: [FitnessAndWorkout] = [.fitnessAndWorkout]
                cases.append(contentsOf: FitnessMusic.allCases.map({ FitnessAndWorkout.fitnessMusic($0)}))
                return cases
            }
        }
        
        case african(African)
        public enum African: Int, CaseIterable {
            case african = 1203
            case afroBeat = 1177
            case afroPop = 1178
            case afrikaans = 1281
            case afroHouse = 100049
            case afroSoul = 100050
            case afrobeats = 100051
            case benga = 100052
            case bongoFlava = 100053
            case coupeDecale = 100054
            case gqom = 100055
            case highlife = 100056
            case kuduro = 100057
            case kizomba = 100058
            case kwaito = 100059
            case mbalax = 100060
            case ndombolo = 100061
            case shangaanElectro = 100062
            case soukous = 100063
            case taarab = 100064
            case zouglou = 100065
            case maskandi = 100073

            var stringValue: String {
                switch self {
                    case .african: return "Music|African"
                    case .afroBeat: return "Music|African|AfroBeat"
                    case .afroPop: return "Music|African|AfroPop"
                    case .afrikaans: return "Music|African|Afrikaans"
                    case .afroHouse: return "Music|African|AfroHouse"
                    case .afroSoul: return "Music|African|AfroSoul"
                    case .afrobeats: return "Music|African|Afrobeats"
                    case .benga: return "Music|African|Benga"
                    case .bongoFlava: return "Music|African|Bongo Flava"
                    case .coupeDecale: return "Music|African|Coupe Decale"
                    case .gqom: return "Music|African|gQom"
                    case .highlife: return "Music|African|Highlife"
                    case .kuduro: return "Music|African|Kuduro"
                    case .kizomba: return "Music|African|Kizomba"
                    case .kwaito: return "Music|African|Kwaito"
                    case .mbalax: return "Music|African|Mbalax"
                    case .ndombolo: return "Music|African|Ndombolo"
                    case .shangaanElectro: return "Music|African|Shangaan Electro"
                    case .soukous: return "Music|African|Soukous"
                    case .taarab: return "Music|African|Taarab"
                    case .zouglou: return "Music|African|Zouglou"
                    case .maskandi: return "Music|African|Maskandi"

                }
            }
        }
        
        case brazilian(Brazilian)
        public enum Brazilian: Int, CaseIterable {
            case brazilian = 1122
            case axe = 1220
            case bossaNova = 1221
            case choro = 1222
            case forro = 1223
            case frevo = 1224
            case mpb = 1225
            case pagode = 1226
            case samba = 1227
            case sertanejo = 1228
            case baileFunk = 1229

            var stringValue: String {
                switch self {
                    case .brazilian: return "Music|Brazilian"
                    case .axe: return "Music|Brazilian|Axe"
                    case .bossaNova: return "Music|Brazilian|Bossa Nova"
                    case .choro: return "Music|Brazilian|Choro"
                    case .forro: return "Music|Brazilian|Forro"
                    case .frevo: return "Music|Brazilian|Frevo"
                    case .mpb: return "Music|Brazilian|MPB"
                    case .pagode: return "Music|Brazilian|Pagode"
                    case .samba: return "Music|Brazilian|Samba"
                    case .sertanejo: return "Music|Brazilian|Sertanejo"
                    case .baileFunk: return "Music|Brazilian|Baile Funk"

                }
            }
        }
        
        case chinese(Chinese)
        public enum Chinese: Int, CaseIterable {
            case chinese = 1232
            case chineseClassical = 1233
            case chineseFlute = 1234
            case chineseOpera = 1235
            case chineseOrchestral = 1236
            case chineseRegionalFolk = 1237
            case chineseStrings = 1238
            case taiwaneseFolk = 1239
            case tibetanNativeMusic = 1240

            var stringValue: String {
                switch self {
                    case .chinese: return "Music|Chinese"
                    case .chineseClassical: return "Music|Chinese|Chinese Classical"
                    case .chineseFlute: return "Music|Chinese|Chinese Flute"
                    case .chineseOpera: return "Music|Chinese|Chinese Opera"
                    case .chineseOrchestral: return "Music|Chinese|Chinese Orchestral"
                    case .chineseRegionalFolk: return "Music|Chinese|Chinese Regional Folk"
                    case .chineseStrings: return "Music|Chinese|Chinese Strings"
                    case .taiwaneseFolk: return "Music|Chinese|Taiwanese Folk"
                    case .tibetanNativeMusic: return "Music|Chinese|Tibetan Native Music"

                }
            }
        }
        
        case korean(Korean)
        public enum Korean: Int, CaseIterable {
            case korean = 1243
            case koreanClassical = 1244
            case koreanTradSong = 1245
            case koreanTradInstrumental = 1246
            case koreanTradTheater = 1247

            var stringValue: String {
                switch self {
                    case .korean: return "Music|Korean"
                    case .koreanClassical: return "Music|Korean|Classical"
                    case .koreanTradSong: return "Music|Korean|Trad Song"
                    case .koreanTradInstrumental: return "Music|Korean|Trad Instrumental"
                    case .koreanTradTheater: return "Music|Korean|Trad Theater"

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
                case tamil
                case telugu
                case regionalIndian
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
                    case pop = 100033
                    case punjabi = 100045

                    var stringValue: String {
                        switch self {
                            case .pop:  return "Music|Indian|Regional Indian|Punjabi|Punjabi Pop"
                            case .punjabi: return "Music|Indian|Regional Indian|Punjabi"
                        }
                    }
                }
                case bengali(Bengali)
                public enum Bengali: Int, CaseIterable {
                    case bengali = 100046
                    case rabindraSangeet = 100034

                    var stringValue: String {
                        switch self {
                            case .bengali: return "Music|Indian|Regional Indian|Begali"
                            case .rabindraSangeet: return "Music|Indian|Regional Indian|Begali|Rabindra Sangeet"
                        }
                    }
                }

                var stringValue: String {
                    switch self {
                        case .tamil: return "Music|Indian|Regional Indian|Tamil"
                        case .telugu: return "Music|Indian|Regional Indian|Telugu"
                        case .regionalIndian: return "Music|Indian|Regional Indian"
                        case .malayalam: return "Music|Indian|Regional Indian|Malayam"
                        case .kannada: return "Music|Indian|Regional Indian|Kannada"
                        case .marathi: return "Music|Indian|Regional Indian|Marathi"
                        case .gujarati: return "Music|Indian|Regional Indian|Gujarati"
                        case .assamese: return "Music|Indian|Regional Indian|Assamese"
                        case .bhojpuri: return "Music|Indian|Regional Indian|Bhojpuri"
                        case .haryanvi: return "Music|Indian|Regional Indian|Haryanvi"
                        case .odia: return "Music|Indian|Regional Indian|Odia"
                        case .rajasthani: return "Music|Indian|Regional Indian|Rajasthani"
                        case .urdu: return "Music|Indian|Regional Indian|Urdu"
                        case .punjabi(let subgenre): return subgenre.stringValue
                        case .bengali(let subgenre): return subgenre.stringValue
                    }
                }
                
                var rawValue: Int {
                    switch self {
                        case .tamil: return 1264
                        case .telugu: return 1265
                        case .regionalIndian: return 1266
                        case .malayalam: return 100035
                        case .kannada: return 100036
                        case .marathi: return 100037
                        case .gujarati: return 100038
                        case .assamese: return 100039
                        case .bhojpuri: return 100040
                        case .haryanvi: return 100041
                        case .odia: return 100042
                        case .rajasthani: return 100043
                        case .urdu: return 100044
                        case .punjabi(let subgenre): return subgenre.rawValue
                        case .bengali(let subgenre): return subgenre.rawValue
                    }
                }
                
                public static var allCases: [RegionalIndian] {
                    var cases: [RegionalIndian] = [.assamese, .bhojpuri, .gujarati, .haryanvi, .kannada, .malayalam, .marathi, .odia, .rajasthani, .regionalIndian, .tamil, .telugu, .urdu]
                    cases.append(contentsOf: Punjabi.allCases.map({ RegionalIndian.punjabi($0)}))
                    cases.append(contentsOf: Bengali.allCases.map({ RegionalIndian.bengali($0)}))
                    return cases
                }
            }
            
            case classical(Classical)
            public enum Classical: Int, CaseIterable {
                case classical = 1269
                case carnaticClassical = 100047
                case hindustaniClassical = 100048
                
                var stringValue: String {
                    switch self {
                        case .classical: return "Music|Indian|Classical"
                        case .carnaticClassical: return "Music|Indian|Classical|Canatic Classical"
                        case .hindustaniClassical: return "Music|Indian|Classical|Hindustani Classical"
                    }
                }
            }

            case devotionalAndSpiritual
            case sufi
            case ghazals
            case folk

            var stringValue: String {
                switch self {
                    case .pop: return "Music|Indian|Pop"
                    case .indian: return "Music|Indian"
                    case .bollywood: return "Music|Indian|Bollywood"
                    case .regionalIndian(let subgenre): return subgenre.stringValue
                    case .devotionalAndSpiritual: return "Music|Indian|Devotional And Spiritual"
                    case .sufi: return "Music|Indian|Sufi"
                    case .ghazals: return "Music|Indian|Ghazals"
                    case .folk: return "Music|Indian|Folk"
                    case .classical(let subgenre): return subgenre.stringValue
                }
            }
            
            var rawValue: Int {
                switch self {
                    case .pop: return 1185
                    case .indian: return 1262
                    case .bollywood: return 1263
                    case .regionalIndian(let subgenre): return subgenre.rawValue
                    case .devotionalAndSpiritual: return 1267
                    case .sufi: return 1268
                    case .ghazals: return 1278
                    case .folk: return 1279
                    case .classical(let subgenre): return subgenre.rawValue
                }
            }
            
            public static var allCases: [Indian] {
                var cases: [Indian] = [.bollywood, .devotionalAndSpiritual, .folk, .ghazals, .indian, .pop, .sufi]
                cases.append(contentsOf: RegionalIndian.allCases.map({ Indian.regionalIndian($0)}))
                cases.append(contentsOf: Classical.allCases.map({ Indian.classical($0)}))
                return cases
            }
        }
        
        case arabic(Arabic)
        public enum Arabic: CaseIterable {
            case arabic
            case khaleeji(Khaleeji)
            public enum Khaleeji: Int, CaseIterable {
                case khaleeji = 1284
                case jalsat = 100082
                case shailat = 100083

                var stringValue: String {
                    switch self {
                        case .khaleeji: return "Music|Arabic|Khaleeji"
                        case .jalsat: return "Music|Arabic|Khaleeji|Jalsat"
                        case .shailat: return "Music|Arabic|Khaleeji|Shailat"
                    }
                }
            }
            case northAfrican
            case arabicPop
            case islamic
            case levant(Levant)
            public enum Levant: Int, CaseIterable {
                case levant = 100079
                case dabke = 100080

                var stringValue: String {
                    switch self {
                        case .levant: return "Music|Arabic|Levant"
                        case .dabke: return "Music|Arabic|Levant|Dabke"
                    }
                }
            }
            case maghrebRai

            var stringValue: String {
                switch self {
                    case .arabic: return "Music|Arabic"
                    case .khaleeji(let subgenre): return subgenre.stringValue
                    case .northAfrican: return "Music|Arabic|North African"
                    case .arabicPop: return "Music|Arabic|Pop"
                    case .islamic: return "Music|Arabic|Islamic"
                    case .levant(let subgenre): return subgenre.stringValue
                    case .maghrebRai: return "Music|Arabic|Maghreb Rai"

                }
            }
            
            var rawValue: Int {
                switch self {
                    case .arabic: return 1197
                    case .khaleeji(let subgenre): return subgenre.rawValue
                    case .northAfrican: return 1285
                    case .arabicPop: return 1286
                    case .islamic: return 1287
                    case .levant(let subgenre): return subgenre.rawValue
                    case .maghrebRai: return 100081
                }
            }
            
            public static var allCases: [Arabic] {
                var cases: [Arabic] = [.arabic, .arabicPop, .islamic, .maghrebRai, .northAfrican]
                cases.append(contentsOf: Levant.allCases.map({ Arabic.levant($0)}))
                cases.append(contentsOf: Khaleeji.allCases.map({ Arabic.khaleeji($0)}))
                return cases
            }
        }
        
        case russian(Russian)
        public enum Russian: Int, CaseIterable {
            case russian = 1299
            case russianChanson = 1270
            case russianRomance = 100074
            case russianBard = 100075
            case russianPop = 100076
            case russianRock = 100077
            case russianHipHop = 100078

            var stringValue: String {
                switch self {
                    case .russian: return "Music|Russian"
                    case .russianChanson: return "Music|Russian|Chanson"
                    case .russianRomance: return "Music|Russian|Romance"
                    case .russianBard: return "Music|Russian|Bard"
                    case .russianPop: return "Music|Russian|Pop"
                    case .russianRock: return "Music|Russian|Rock"
                    case .russianHipHop: return "Music|Russian|HipHop"

                }
            }
        }
        
        case turkish(Turkish)
        public enum Turkish: Int, CaseIterable {
            case turkish = 1300
            case halk = 1272
            case sanat = 1273
            case arabesque = 1280
            case ozgun = 100066
            case fantezi = 100067
            case religious = 100068

            var stringValue: String {
                switch self {
                    case .turkish: return "Music|Turkish"
                    case .halk: return "Music|Turkish|Halk"
                    case .sanat: return "Music|Turkish|Sanat"
                    case .arabesque: return "Music|Turkish|Arabesque"
                    case .ozgun: return "Music|Turkish|Ozgun"
                    case .fantezi: return "Music|Turkish|Fantezi"
                    case .religious: return "Music|Turkish|Religious"

                }
            }
        }
        
        case cuban(Cuban)
        public enum Cuban: Int, CaseIterable {
            case cuban = 100024
            case mambo = 100025
            case chachacha = 100026
            case guajira = 100027
            case son = 100028
            case bolero = 100029
            case guaracha = 100030
            case timba = 100031
            
            var stringValue: String {
                switch self {
                    case .cuban: return "Music|Cuban"
                    case .mambo: return "Music|Cuban|Mambo"
                    case .chachacha: return "Music|Cuban|Chachacha"
                    case .guajira: return "Music|Cuban|Guajira"
                    case .son: return "Music|Cuban|Son"
                    case .bolero: return "Music|Cuban|Bolero"
                    case .guaracha: return "Music|Cuban|Guaracha"
                    case .timba: return "Music|Cuban|Timba"

                }
            }
        }
        
        case folk(Folk)
        public enum Folk: Int, CaseIterable {
            case folk = 1289
            case iraqiFolk = 100103
            case khaleejiFolk = 100104
            
            var stringValue: String {
                switch self {
                    case .folk: return "Music|Folk"
                    case .iraqiFolk: return "Music|Folk|Iraqi Folk"
                    case .khaleejiFolk: return "Music|Folk|Khaleeji Folk"
                }
            }
        }
        
        case tarab(Tarab)
        public enum Tarab: Int, CaseIterable {
            case tarab = 100084
            case iraqiTarab = 100085
            case egyptianTarab = 100086
            case khaleejiTarab = 100087
            
            var stringValue: String {
                switch self {
                    case .tarab: return "Music|Tarab"
                    case .iraqiTarab: return "Music|Tarab|Iraqi Tarab"
                    case .egyptianTarab: return "Music|Tarab|Egyptian Tarab"
                    case .khaleejiTarab: return "Music|Tarab|Khaleeji Tarab"
                }
            }
        }
    }
}
