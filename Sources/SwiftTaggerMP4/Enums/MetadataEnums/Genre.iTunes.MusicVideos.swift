//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 10/6/20.
//

import Foundation
extension Genre {
    public enum MusicVideos: CaseIterable {
        case musicVideos
        case podcasts
        case jPop
        case enka
        case anime
        case kayokyoku
        case disney
        case frenchPop
        case germanPop
        case germanFolk
        case fitnessAndWorkout
        case instrumental
        case karaoke
        case spokenWord
        case orchestral
        case marchingBands

        public static var allCases: [MusicVideos] {
            var cases: [MusicVideos] = [.anime, .disney, .enka, .fitnessAndWorkout, .frenchPop, .germanFolk, .germanPop, .instrumental, .jPop, .karaoke, .kayokyoku, .marchingBands, .musicVideos, .orchestral, .podcasts, .spokenWord]
            cases.append(contentsOf: Folk.allCases.map({ MusicVideos.folk($0)}))
            cases.append(contentsOf: Blues.allCases.map({ MusicVideos.blues($0)}))
            cases.append(contentsOf: Comedy.allCases.map({ MusicVideos.comedy($0)}))
            cases.append(contentsOf: ChildrensMusic.allCases.map({ MusicVideos.childrensMusic($0)}))
            cases.append(contentsOf: Classical.allCases.map({ MusicVideos.classical($0)}))
            cases.append(contentsOf: Country.allCases.map({ MusicVideos.country($0)}))
            cases.append(contentsOf: Electronic.allCases.map({ MusicVideos.electronic($0)}))
            cases.append(contentsOf: Holiday.allCases.map({ MusicVideos.holiday($0)}))
            cases.append(contentsOf: SingerSongwriter.allCases.map({ MusicVideos.singerSongwriter($0)}))
            cases.append(contentsOf: Jazz.allCases.map({ MusicVideos.jazz($0)}))
            cases.append(contentsOf: Latino.allCases.map({ MusicVideos.latino($0)}))
            cases.append(contentsOf: NewAge.allCases.map({ MusicVideos.newAge($0)}))
            cases.append(contentsOf: Pop.allCases.map({ MusicVideos.pop($0)}))
            cases.append(contentsOf: RandBSoul.allCases.map({ MusicVideos.rAndBSoul($0)}))
            cases.append(contentsOf: Soundtrack.allCases.map({ MusicVideos.soundtrack($0)}))
            cases.append(contentsOf: Dance.allCases.map({ MusicVideos.dance($0)}))
            cases.append(contentsOf: HipHopRap.allCases.map({ MusicVideos.hipHopRap($0)}))
            cases.append(contentsOf: World.allCases.map({ MusicVideos.world($0)}))
            cases.append(contentsOf: Alternative.allCases.map({ MusicVideos.alternative($0)}))
            cases.append(contentsOf: Rock.allCases.map({ MusicVideos.rock($0)}))
            cases.append(contentsOf: ChristianAndGospel.allCases.map({ MusicVideos.christianAndGospel($0)}))
            cases.append(contentsOf: Vocal.allCases.map({ MusicVideos.vocal($0)}))
            cases.append(contentsOf: Reggae.allCases.map({ MusicVideos.reggae($0)}))
            cases.append(contentsOf: EasyListening.allCases.map({ MusicVideos.easyListening($0)}))
            cases.append(contentsOf: Chinese.allCases.map({ MusicVideos.chinese($0)}))
            cases.append(contentsOf: Korean.allCases.map({ MusicVideos.korean($0)}))
            cases.append(contentsOf: Brazilian.allCases.map({ MusicVideos.brazilian($0)}))
            cases.append(contentsOf: Indian.allCases.map({ MusicVideos.indian($0)}))
            cases.append(contentsOf: Russian.allCases.map({ MusicVideos.russian($0)}))
            cases.append(contentsOf: Turkish.allCases.map({ MusicVideos.turkish($0)}))
            cases.append(contentsOf: African.allCases.map({ MusicVideos.african($0)}))
            cases.append(contentsOf: Arabic.allCases.map({ MusicVideos.arabic($0)}))
            cases.append(contentsOf: Cuban.allCases.map({ MusicVideos.cuban($0)}))
            cases.append(contentsOf: Tarab.allCases.map({ MusicVideos.tarab($0)}))
            return cases
        }
        var genreID: Int {
            switch self {
                case .musicVideos: return 31
                case .podcasts: return 1626
                case .jPop: return 1627
                case .enka: return 1628
                case .anime: return 1629
                case .kayokyoku: return 1630
                case .disney: return 1631
                case .frenchPop: return 1632
                case .germanPop: return 1633
                case .germanFolk: return 1634
                case .fitnessAndWorkout: return 1683
                case .instrumental: return 1684
                case .karaoke: return 1687
                case .spokenWord: return 1689
                case .orchestral: return 1720
                case .marchingBands: return 1721
                case .folk(let subgenre): return subgenre.rawValue
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
                case .chinese(let subgenre): return subgenre.rawValue
                case .korean(let subgenre): return subgenre.rawValue
                case .brazilian(let subgenre): return subgenre.rawValue
                case .indian(let subgenre): return subgenre.rawValue
                case .russian(let subgenre): return subgenre.rawValue
                case .turkish(let subgenre): return subgenre.rawValue
                case .african(let subgenre): return subgenre.rawValue
                case .arabic(let subgenre): return subgenre.rawValue
                case .cuban(let subgenre): return subgenre.rawValue
                case .tarab(let subgenre): return subgenre.rawValue
            }
        }
        
        var stringValue: String {
            switch self {
                case .musicVideos: return "Music Videos"
                case .podcasts: return "Music Videos|Podcasts"
                case .jPop: return "Music Videos|JPop"
                case .enka: return "Music Videos|Enka"
                case .anime: return "Music Videos|Anime"
                case .kayokyoku: return "Music Videos|Kayokyoku"
                case .disney: return "Music Videos|Disney"
                case .frenchPop: return "Music Videos|French Pop"
                case .germanPop: return "Music Videos|German Pop"
                case .germanFolk: return "Music Videos|German Folk"
                case .fitnessAndWorkout: return "Music Videos|Fitness And Workout"
                case .instrumental: return "Music Videos|Instrumental"
                case .karaoke: return "Music Videos|Karaoke"
                case .spokenWord: return "Music Videos|Spoken Word"
                case .orchestral: return "Music Videos|Orchestral"
                case .marchingBands: return "Music Videos|Marching"
                case .folk(let subgenre): return subgenre.stringValue
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
                case .chinese(let subgenre): return subgenre.stringValue
                case .korean(let subgenre): return subgenre.stringValue
                case .brazilian(let subgenre): return subgenre.stringValue
                case .indian(let subgenre): return subgenre.stringValue
                case .russian(let subgenre): return subgenre.stringValue
                case .turkish(let subgenre): return subgenre.stringValue
                case .african(let subgenre): return subgenre.stringValue
                case .arabic(let subgenre): return subgenre.stringValue
                case .cuban(let subgenre): return subgenre.stringValue
                case .tarab(let subgenre): return subgenre.stringValue
            }
        }
        
        case folk(Folk)
        public enum Folk: Int, CaseIterable {
            case folk = 1719
            case iraqiFolk = 2030
            case khaleejiFolk = 2031
            
            var stringValue: String {
                switch self {
                    case .folk: return "Music Videos|Folk"
                    case .iraqiFolk: return "Music Videos|Folk|Iraqi Folk"
                    case .khaleejiFolk: return "Music Videos|Folk|Khaleeji Folk"
                }
            }
        }

        case blues(Blues)
        public enum Blues: Int, CaseIterable {
            case blues = 1602
            case acousticBlues = 1737
            case chicagoBlues = 1738
            case classicBlues = 1739
            case cntemporaryBlues = 1740
            case countryBlues = 1741
            case deltaBlues = 1742
            case electricBlues = 1743
            
            var stringValue: String {
                switch self {
                    case .blues: return "Music Videos|Blues"
                    case .acousticBlues: return "Music Videos|Blues|Acoustic Blues"
                    case .chicagoBlues: return "Music Videos|Blues|Chicago Blues"
                    case .classicBlues: return "Music Videos|Blues|Classic Blues"
                    case .cntemporaryBlues: return "Music Videos|Blues|Contemporary Blues"
                    case .countryBlues: return "Music Videos|Blues|Country Blues"
                    case .deltaBlues: return "Music Videos|Blues|Delta Blues"
                    case .electricBlues: return "Music Videos|Blues|Electric Blues"
                }
            }
        }
        
        case comedy(Comedy)
        public enum Comedy: Int, CaseIterable {
            case comedy = 1603
            case novelty = 1773
            case standupComedy = 1774
            
            var stringValue: String {
                switch self {
                    case .comedy: return "Music Videos|Comedy"
                    case .novelty: return "Music Videos|Comedy|Novelty"
                    case .standupComedy: return "Music Videos|Comedy|Stand-up Comedy"
                }
            }
        }

        case childrensMusic(ChildrensMusic)
        public enum ChildrensMusic: Int, CaseIterable {
            case childrensMusic = 1604
            case lullabies = 1744
            case singAlong = 1745
            case stories = 1746
            
            var stringValue: String {
                switch self {
                    case .childrensMusic: return "Music Videos|Children's Music"
                    case .lullabies: return "Music Videos|Children's Music|Lullabies"
                    case .singAlong: return "Music Videos|Children's Music|Sing-Along"
                    case .stories: return "Music Videos|Children's Music|Stories"
                }
            }
        }

        case classical(Classical)
        public enum Classical: Int, CaseIterable {
            case classical = 1605
            case opera = 1609
            case piano = 1337
            case highClassical = 1682
            case avantGarde = 1758
            case baroqueEra = 1759
            case chamberMusic = 1760
            case chant = 1761
            case choral = 1762
            case classicalCrossover = 1763
            case earlyMusic = 1764
            case impressionist = 1765
            case medievalEra = 1766
            case minimalism = 1767
            case modernEra = 1768
            case orchestral = 1769
            case renaissance = 1770
            case romanticEra = 1771
            case weddingMusic = 1772
            case artSong = 1928
            case brassAndWoodwinds = 1929
            case soloInstrumental = 1930
            case contemporaryEra = 1931
            case oratorio = 1932
            case cantata = 1933
            case electronic = 1934
            case sacred = 1935
            case guitar = 1936
            case violin = 1938
            case cello = 1939
            case percussion = 1940
            
            var stringValue: String {
                switch self {
                    case .classical: return "Music Videos|Classical"
                    case .opera: return "Music Videos|Classical|Opera"
                    case .piano: return "Music Videos|Classical|Piano"
                    case .highClassical: return "Music Videos|Classical|HighClassical"
                    case .avantGarde: return "Music Videos|Classical|Avant Garde"
                    case .baroqueEra: return "Music Videos|Classical|Baroque Era"
                    case .chamberMusic: return "Music Videos|Classical|Chamber Music"
                    case .chant: return "Music Videos|Classical|Chant"
                    case .choral: return "Music Videos|Classical|Choral"
                    case .classicalCrossover: return "Music Videos|Classical| Classical Crossover"
                    case .earlyMusic: return "Music Videos|Classical|Early Music"
                    case .impressionist: return "Music Videos|Classical|Impressionist"
                    case .medievalEra: return "Music Videos|Classical|Medieval Era"
                    case .minimalism: return "Music Videos|Classical|Minimalism"
                    case .modernEra: return "Music Videos|Classical|Modern Era"
                    case .orchestral: return "Music Videos|Classical|Orchestral"
                    case .renaissance: return "Music Videos|Classical|Renaissance"
                    case .romanticEra: return "Music Videos|Classical|Romantic Era"
                    case .weddingMusic: return "Music Videos|Classical|Wedding Music"
                    case .artSong: return "Music Videos|Classical|Art Song"
                    case .brassAndWoodwinds: return "Music Videos|Classical|Brass And Woodwinds"
                    case .soloInstrumental: return "Music Videos|Classical|Solo Instrumental"
                    case .contemporaryEra: return "Music Videos|Classical|Contemporary Era"
                    case .oratorio: return "Music Videos|Classical|Oratorio"
                    case .cantata: return "Music Videos|Classical|Cantata"
                    case .electronic: return "Music Videos|Classical|Electronic"
                    case .sacred: return "Music Videos|Classical|Sacred"
                    case .guitar: return "Music Videos|Classical|Guitar"
                    case .violin: return "Music Videos|Classical|Violin"
                    case .cello: return "Music Videos|Classical|Cello"
                    case .percussion: return "Music Videos|Classical|Percussion"
                }
            }
        }
        
        case country(Country)
        public enum Country: Int, CaseIterable {
            case country = 1606
            case thaiCountry = 1724
            case alternativeCountry = 1775
            case americana = 1776
            case bluegrass = 1777
            case contemporaryBluegrass = 1778
            case contemporaryCountry = 1779
            case countryGospel = 1780
            case honkyTonk = 1781
            case outlawCountry = 1782
            case traditionalBluegrass = 1783
            case traditionalCountry = 1784
            case urbanCowboy = 1785
            
            var stringValue: String {
                switch self {
                    case .country: return "Music Videos|Country"
                    case .thaiCountry: return "Music Videos|Country|Thai Country"
                    case .alternativeCountry: return "Music Videos|Country|Alternative Country"
                    case .americana: return "Music Videos|Country|Americana"
                    case .bluegrass: return "Music Videos|Country|Bluegrass"
                    case .contemporaryBluegrass: return "Music Videos|Country|Contemporary Bluegrass"
                    case .contemporaryCountry: return "Music Videos|Country|Contemporary Country"
                    case .countryGospel: return "Music Videos|Country|Country Gospel"
                    case .honkyTonk: return "Music Videos|Country|Honky Tonk"
                    case .outlawCountry: return "Music Videos|Country|OutlawCountry"
                    case .traditionalBluegrass: return "Music Videos|Country|Traditional Bluegrass"
                    case .traditionalCountry: return "Music Videos|Country|Traditional Country"
                    case .urbanCowboy: return "Music Videos|Country|Urban Cowboy"
                }
            }
        }
        
        case electronic(Electronic)
        public enum Electronic: Int, CaseIterable {
            case electronic = 1607
            case ambient = 1796
            case downtempo = 1797
            case electronica = 1798
            case idmExperimental = 1799
            case industrial = 1800
            case dubstep = 1941
            case bass = 1942
            case levantElectronic = 2027
            case electroChaabi = 2028
            case maghrebElectronic = 2029
            
            var stringValue: String {
                switch self {
                    case .electronic: return "Music Videos|Electronic"
                    case .ambient: return "Music Videos|Electronic|Ambient"
                    case .downtempo: return "Music Videos|Electronic|Downtempo"
                    case .electronica: return "Music Videos|Electronic|Electronica"
                    case .idmExperimental: return "Music Videos|Electronic|IDM Experimental"
                    case .industrial: return "Music Videos|Electronic|Industrial"
                    case .dubstep: return "Music Videos|Electronic|dubstep"
                    case .bass: return "Music Videos|Electronic|Bass"
                    case .levantElectronic: return "Music Videos|Electronic|Levant Electronic"
                    case .electroChaabi: return "Music Videos|Electronic|Electro Chaabi"
                    case .maghrebElectronic: return "Music Videos|Electronic|Maghreb Electronic"
                }
            }
        }

        case holiday(Holiday)
        public enum Holiday: CaseIterable {
            case holiday
            case chanukah
            case christmas(Christmas)
            public enum Christmas: Int, CaseIterable {
                case christmas = 1813
                case childrens = 1814
                case classic = 1815
                case classical = 1816
                case jazz = 1817
                case modern = 1818
                case pop = 1819
                case rAndB = 1820
                case religious = 1821
                case rock = 1822
                
                var stringValue: String {
                    switch self {
                        case .christmas: return "Music Videos|Holiday|Christmas"
                        case .childrens: return "Music Videos|Holiday|Christmas|Children's"
                        case .classic: return "Music Videos|Holiday|Christmas|Classic"
                        case .classical: return "Music Videos|Holiday|Christmas|Classical"
                        case .jazz: return "Music Videos|Holiday|Christmas|Jazz"
                        case .modern: return "Music Videos|Holiday|Christmas|Modern"
                        case .pop: return "Music Videos|Holiday|Christmas|Pop"
                        case .rAndB: return "Music Videos|Holiday|Christmas|R&B"
                        case .religious: return "Music Videos|Holiday|Christmas|Religious"
                        case .rock: return "Music Videos|Holiday|Christmas|Rock"
                    }
                }
            }
            case easter
            case halloween
            case thanksgiving
            
            var rawValue: Int {
                switch self {
                    case .holiday: return 1608
                    case .chanukah: return 1812
                    case .christmas(let subgenre): return subgenre.rawValue
                    case .easter: return 1823
                    case .halloween: return 1824
                    case .thanksgiving: return 1825
                }
            }
            
            var stringValue: String {
                switch self {
                    case .holiday: return "Music Videos|Holiday"
                    case .chanukah: return "Music Videos|Holiday|Chanukah"
                    case .christmas(let subgenre): return subgenre.stringValue
                    case .easter: return "Music Videos|Holiday|Easter"
                    case .halloween: return "Music Videos|Holiday|Halloween"
                    case .thanksgiving: return "Music Videos|Holiday|Thanksgiving"
                }
            }
            
            public static var allCases: [Holiday] {
                var cases: [Holiday] = [.chanukah, .easter, .halloween, .holiday, .thanksgiving]
                cases.append(contentsOf: Christmas.allCases.map({ Holiday.christmas($0)}))
                return cases
            }
        }

        case singerSongwriter(SingerSongwriter)
        public enum SingerSongwriter: Int, CaseIterable {
            case singerSongwriter = 1610
            case alternativeFolk = 1889
            case contemporaryFolk = 1890
            case contemporarySingerSongwriter = 1891
            case folkRock = 1892
            case newAcoustic = 1893
            case traditionalFolk = 1894
            
            var stringValue: String {
                switch self {
                    case .singerSongwriter: return "Music Videos|Singer/Songwriter"
                    case .alternativeFolk: return "Music Videos|Singer/Songwriter|Alternative/Folk"
                    case .contemporaryFolk: return "Music Videos|Singer/Songwriter|Contemporary/Folk"
                    case .contemporarySingerSongwriter: return "Music Videos|Singer/Songwriter|Contemporary Singer/Songwriter"
                    case .folkRock: return "Music Videos|Singer/Songwriter|Folk Rock"
                    case .newAcoustic: return "Music Videos|Singer/Songwriter|New Acoustic"
                    case .traditionalFolk: return "Music Videos|Singer/Songwriter|Traditional Folk"
                }
            }
        }
        
        case jazz(Jazz)
        public enum Jazz: Int, CaseIterable {
            case jazz = 1611
            case avantGardeJazz = 1826
            case bop = 1828
            case contemporaryJazz = 1829
            case coolJazz = 1830
            case cossoverJazz = 1831
            case dixieland = 1832
            case fusion = 1833
            case hardBop = 1834
            case latinJazz = 1835
            case mainstreamJazz = 1836
            case ragtime = 1837
            case smoothJazz = 1838
            case tradJazz = 1839
            case vocalJazz = 1902
            case bigBand = 1685
            
            var stringValue: String {
                switch self {
                    case .jazz: return "Music Videos|Jazz"
                    case .avantGardeJazz: return "Music Videos|Jazz|Avant Garde Jazz"
                    case .bop: return "Music Videos|Jazz|Bop"
                    case .contemporaryJazz: return "Music Videos|Jazz|Contemporary Jazz"
                    case .coolJazz: return "Music Videos|Jazz|Cool Jazz"
                    case .cossoverJazz: return "Music Videos|Jazz|Cossover Jazz"
                    case .dixieland: return "Music Videos|Jazz|Dixieland"
                    case .fusion: return "Music Videos|Jazz|Fusion"
                    case .hardBop: return "Music Videos|Jazz|Hard Bop"
                    case .latinJazz: return "Music Videos|Jazz|Latin Jazz"
                    case .mainstreamJazz: return "Music Videos|Jazz|Mainstream Jazz"
                    case .ragtime: return "Music Videos|Jazz|Ragtime"
                    case .smoothJazz: return "Music Videos|Jazz|Smooth Jazz"
                    case .tradJazz: return "Music Videos|Jazz|Trad Jazz"
                    case .vocalJazz: return "Music Videos|Jazz|Vocal Jazz"
                    case .bigBand: return "Music Videos|Jazz|Big Band"
                }
            }
        }
        
        case latino(Latino)
        public enum Latino: Int, CaseIterable {
            case latino = 1612
            case alternativeandRockInSpanish = 1840
            case baladasyBoleros = 1841
            case contemporaryLatin = 1842
            case latinJazz = 1843
            case latinUrban = 1844
            case popInSpanish = 1845
            case raices = 1846
            case musicaMexicana = 1847
            case salsayTropical = 1848
            
            var stringValue: String {
                switch self {
                    case .latino: return "Music Videos|Latino"
                    case .alternativeandRockInSpanish: return "Music Videos|Latino|Alternativeand Rock in Spanish"
                    case .baladasyBoleros: return "Music Videos|Latino|Baladasy Boleros"
                    case .contemporaryLatin: return "Music Videos|Latino|Contemporary Latin"
                    case .latinJazz: return "Music Videos|Latino|Latin Jazz"
                    case .latinUrban: return "Music Videos|Latino|Latin Urban"
                    case .popInSpanish: return "Music Videos|Latino|Pop In Spanish"
                    case .raices: return "Music Videos|Latino|Latin Raices"
                    case .musicaMexicana: return "Music Videos|Latino|Musica Mexicana"
                    case .salsayTropical: return "Music Videos|Latino|Salsay Tropical"
                }
            }
        }
        
        case newAge(NewAge)
        public enum NewAge: Int, CaseIterable {
            case newAge = 1613
            case healing = 1849
            case meditation = 1850
            case nature = 1851
            case relaxation = 1852
            case travel = 1853
            case yoga = 1948
            
            var stringValue: String {
                switch self {
                    case .newAge: return "Music Videos|New Age"
                    case .healing: return "Music Videos|New Age|Healing"
                    case .meditation: return "Music Videos|New Age|Meditation"
                    case .nature: return "Music Videos|New Age|Nature"
                    case .relaxation: return "Music Videos|New Age|Relaxation"
                    case .travel: return "Music Videos|New Age|Travel"
                    case .yoga: return "Music Videos|New Age|Yoga"
                }
            }
        }

        case pop(Pop)
        public enum Pop: Int, CaseIterable {
            case pop = 1614
            case cPop = 1655
            case cantopopHKPop = 1656
            case koreanFolkPop = 1657
            case mandopop = 1658
            case taiPop = 1659
            case malaysianPop = 1660
            case pinoyPop = 1661
            case originalPilipinoMusic = 1662
            case manillaSound = 1663
            case indoPop = 1664
            case thaiPop = 1665
            case kPop = 1686
            case oldies = 1723
            case adultContemporary = 1854
            case britpop = 1855
            case popRock = 1856
            case softRock = 1857
            case teenPop = 1858
            case tribute = 1949
            case shows = 1950
            case turkishPop = 1996
            case levantPop = 2015
            case iraqiPop = 2016
            case egyptianPop = 2017
            case maghrebPop = 2018
            case khaleejiPop = 2019
            
            var stringValue: String {
                switch self {
                    case .pop: return "Music Videos|Pop"
                    case .cPop: return "Music Videos|Pop|CPop"
                    case .cantopopHKPop: return "Music Videos|Pop|Cantopop HK Pop"
                    case .koreanFolkPop: return "Music Videos|Pop|Korean Folk Pop"
                    case .mandopop: return "Music Videos|Pop|Mandopop"
                    case .taiPop: return "Music Videos|Pop|Tai Pop"
                    case .malaysianPop: return "Music Videos|Pop|Malaysian Pop"
                    case .pinoyPop: return "Music Videos|Pop|Pinoy Pop"
                    case .originalPilipinoMusic: return "Music Videos|Pop|Original Pilipino Music"
                    case .manillaSound: return "Music Videos|Pop|Manilla Sound"
                    case .indoPop: return "Music Videos|Pop|Indo Pop"
                    case .thaiPop: return "Music Videos|Pop|Thai Pop"
                    case .kPop: return "Music Videos|Pop|KPop"
                    case .oldies: return "Music Videos|Pop|Oldies"
                    case .adultContemporary: return "Music Videos|Pop|Adult Contemporary"
                    case .britpop: return "Music Videos|Pop|Brit pop"
                    case .popRock: return "Music Videos|Pop|Pop Rock"
                    case .softRock: return "Music Videos|Pop|Soft Rock"
                    case .teenPop: return "Music Videos|Pop|Teen Pop"
                    case .tribute: return "Music Videos|Pop|Tribute"
                    case .shows: return "Music Videos|Pop|Shows"
                    case .turkishPop: return "Music Videos|Pop|Turkish Pop"
                    case .levantPop: return "Music Videos|Pop|Levant Pop"
                    case .iraqiPop: return "Music Videos|Pop|Iraqi Pop"
                    case .egyptianPop: return "Music Videos|Pop|Egyptian Pop"
                    case .maghrebPop: return "Music Videos|Pop|Maghreb Pop"
                    case .khaleejiPop: return "Music Videos|Pop|Khaleej iPop"
                }
            }
        }

        case rAndBSoul(RandBSoul)
        public enum RandBSoul: Int, CaseIterable {
            case rAndBSoul = 1615
            case contemporaryRandB = 1859
            case disco = 1860
            case dooWop = 1861
            case funk = 1862
            case motown = 1863
            case neoSoul = 1864
            case soul = 1865
            
            var stringValue: String {
                switch self {
                    case .rAndBSoul: return "Music Videos|R&B/Soul"
                    case .contemporaryRandB: return "Music Videos|R&B/Soul|Contemporary R&B"
                    case .disco: return "Music Videos|R&B/Soul|Disco"
                    case .dooWop: return "Music Videos|R&B/Soul|DooWop"
                    case .funk: return "Music Videos|R&B/Soul|Funk"
                    case .motown: return "Music Videos|R&B/Soul|Motown"
                    case .neoSoul: return "Music Videos|R&B/Soul|NeoSoul"
                    case .soul: return "Music Videos|R&B/Soul|Soul"
                }
            }
        }

        case soundtrack(Soundtrack)
        public enum Soundtrack: Int, CaseIterable {
            case musicVideosSoundtrack = 1616
            case soundEffects = 1718
            case foreignCinema = 1895
            case musicals = 1896
            case originalScore = 1897
            case soundtrack = 1898
            case tvSoundtrack = 1899
            case videoGame = 1959
            
            var stringValue: String {
                switch self {
                    case .musicVideosSoundtrack: return "Music Videos|Soundtrack"
                    case .soundEffects: return "Music Videos|Soundtrack|Sound Effects"
                    case .foreignCinema: return "Music Videos|Soundtrack|Foreign Cinema"
                    case .musicals: return "Music Videos|Soundtrack|Musicals"
                    case .originalScore: return "Music Videos|Soundtrack|Original Score"
                    case .soundtrack: return "Music Videos|Soundtrack|Soundtrack"
                    case .tvSoundtrack: return "Music Videos|Soundtrack|TV Soundtrack"
                    case .videoGame: return "Music Videos|Soundtrack|Video Game"
                }
            }
        }

        case dance(Dance)
        public enum Dance: Int, CaseIterable {
            case dance = 1617
            case breakbeat = 1786
            case exercise = 1787
            case garage = 1788
            case hardcore = 1789
            case house = 1790
            case jungleDrumnbass = 1791
            case techno = 1792
            case trance = 1793
            case maghrebDance = 2032
            
            var stringValue: String {
                switch self {
                    case .dance: return "Music Videos|Dance"
                    case .breakbeat: return "Music Videos|Dance|Breakbeat"
                    case .exercise: return "Music Videos|Dance|Exercise"
                    case .garage: return "Music Videos|Dance|Garage"
                    case .hardcore: return "Music Videos|Dance|Hardcore"
                    case .house: return "Music Videos|Dance|House"
                    case .jungleDrumnbass: return "Music Videos|Dance|Jungle Drum&Bass"
                    case .techno: return "Music Videos|Dance|Techno"
                    case .trance: return "Music Videos|Dance|Trance"
                    case .maghrebDance: return "Music Videos|Dance|Maghreb Dance"
                }
            }
        }
        
        case hipHopRap(HipHopRap)
        public enum HipHopRap: Int, CaseIterable {
            case hipHopRap = 1618
            case chineseHipHop = 1646
            case koreanHipHop = 1647
            case alternativeRap = 1801
            case dirtySouth = 1802
            case eastCoastRap = 1803
            case gangstaRap = 1804
            case hardcoreRap = 1805
            case hipHop = 1806
            case latinRap = 1807
            case oldSchoolRap = 1808
            case rap = 1809
            case undergroundRap = 1810
            case westCoastRap = 1811
            case ukHipHop = 1943
            case turkishHipHopRap = 1999
            case levantHipHop = 2020
            case egyptianHipHop = 2021
            case maghrebHipHop = 2022
            case khaleejiHipHop = 2023
            
            var stringValue: String {
                switch self {
                    case .hipHopRap: return "Music Videos|HipHop/Rap"
                    case .chineseHipHop: return "Music Videos|HipHop/Rap|Chinese HipHop"
                    case .koreanHipHop: return "Music Videos|HipHop/Rap|Korean HipHop"
                    case .alternativeRap: return "Music Videos|HipHop/Rap|Alternative Rap"
                    case .dirtySouth: return "Music Videos|HipHop/Rap|Dirty South"
                    case .eastCoastRap: return "Music Videos|HipHop/Rap|East Coast Rap"
                    case .gangstaRap: return "Music Videos|HipHop/Rap|Gangsta Rap"
                    case .hardcoreRap: return "Music Videos|HipHop/Rap|Hardcore Rap"
                    case .hipHop: return "Music Videos|HipHop/Rap|HipHop"
                    case .latinRap: return "Music Videos|HipHop/Rap|Latin Rap"
                    case .oldSchoolRap: return "Music Videos|HipHop/Rap|Old School Rap"
                    case .rap: return "Music Videos|HipHop/Rap|Rap"
                    case .undergroundRap: return "Music Videos|HipHop/Rap|Underground Rap"
                    case .westCoastRap: return "Music Videos|HipHop/Rap|West Coast Rap"
                    case .ukHipHop: return "Music Videos|HipHop/Rap|UK HipHop"
                    case .turkishHipHopRap: return "Music Videos|HipHop/Rap|Turkish HipHop/Rap"
                    case .levantHipHop: return "Music Videos|HipHop/Rap|Levant HipHop"
                    case .egyptianHipHop: return "Music Videos|HipHop/Rap|Egyptian HipHop"
                    case .maghrebHipHop: return "Music Videos|HipHop/Rap|Maghreb HipHop"
                    case .khaleejiHipHop: return "Music Videos|HipHop/Rap|Khaleeji HipHop"

                }
            }
        }
            
        case world(World)
        public enum World: Int, CaseIterable {
            case world = 1619
            case dini = 1699
            case dangdut = 1702
            case indonesianReligious = 1703
            case calypso = 1705
            case soca = 1706
            case farsi = 1711
            case israeli = 1712
            case flamenco = 1725
            case tango = 1726
            case fado = 1727
            case iberia = 1728
            case asia = 1907
            case australia = 1908
            case cajun = 1909
            case caribbean = 1910
            case celtic = 1911
            case celticFolk = 1912
            case contemporaryCeltic = 1913
            case europe = 1914
            case france = 1915
            case hawaii = 1916
            case japan = 1917
            case klezmer = 1918
            case northAmerica = 1919
            case polka = 1920
            case southAfrica = 1921
            case southAmerica = 1922
            case traditionalCeltic = 1923
            case worldbeat = 1924
            case zydeco = 1925
            
            var stringValue: String {
                switch self {
                    case .world: return "Music Videos|World"
                    case .dini: return "Music Videos|World|Dini"
                    case .dangdut: return "Music Videos|World|Dangdut"
                    case .indonesianReligious: return "Music Videos|World|Indonesian Religious"
                    case .calypso: return "Music Videos|World|Calypso"
                    case .soca: return "Music Videos|World|Soca"
                    case .farsi: return "Music Videos|World|Farsi"
                    case .israeli: return "Music Videos|World|Israeli"
                    case .flamenco: return "Music Videos|World|Flamenco"
                    case .tango: return "Music Videos|World|Tango"
                    case .fado: return "Music Videos|World|Fado"
                    case .iberia: return "Music Videos|World|Iberia"
                    case .asia: return "Music Videos|World|Asia"
                    case .australia: return "Music Videos|World|Australia"
                    case .cajun: return "Music Videos|World|Cajun"
                    case .caribbean: return "Music Videos|World|Caribbean"
                    case .celtic: return "Music Videos|World|Celtic"
                    case .celticFolk: return "Music Videos|World|Celtic Folk"
                    case .contemporaryCeltic: return "Music Videos|World|Contemporary Celtic"
                    case .europe: return "Music Videos|World|Europe"
                    case .france: return "Music Videos|World|France"
                    case .hawaii: return "Music Videos|World|Hawaii"
                    case .japan: return "Music Videos|World|Japan"
                    case .klezmer: return "Music Videos|World|Klezmer"
                    case .northAmerica: return "Music Videos|World|North America"
                    case .polka: return "Music Videos|World|Polka"
                    case .southAfrica: return "Music Videos|World|SouthA frica"
                    case .southAmerica: return "Music Videos|World|South America"
                    case .traditionalCeltic: return "Music Videos|World|Traditional Celtic"
                    case .worldbeat: return "Music Videos|World|Worldbeat"
                    case .zydeco: return "Music Videos|World|Zydeco"
                }
            }
        }
        
        case alternative(Alternative)
        public enum Alternative: Int, CaseIterable {
            case alternative = 1620
            case chineseAlt = 1635
            case koreanIndie = 1636
            case collegeRock = 1731
            case gothRock = 1732
            case grunge = 1733
            case indieRock = 1734
            case newWave = 1735
            case alternativePunk = 1736
            case emo = 1945
            case popPunk = 1946
            case indiePop = 1947
            case turkishAlternative = 1998
            case indieLevant = 2024
            case indieEgyptian = 2025
            case indieMaghreb = 2026
            
            var stringValue: String {
                switch self {
                    case .alternative: return "Music Videos|Alternative"
                    case .chineseAlt: return "Music Videos|Alternative|Chinese Alt"
                    case .koreanIndie: return "Music Videos|Alternative|Korean Indie"
                    case .collegeRock: return "Music Videos|Alternative|College Rock"
                    case .gothRock: return "Music Videos|Alternative|Goth Rock"
                    case .grunge: return "Music Videos|Alternative|Grunge"
                    case .indieRock: return "Music Videos|Alternative|Indie Rock"
                    case .newWave: return "Music Videos|Alternative|New Wave"
                    case .alternativePunk: return "Music Videos|Alternative|Alternative Punk"
                    case .emo: return "Music Videos|Alternative|EMO"
                    case .popPunk: return "Music Videos|Alternative|Pop Punk"
                    case .indiePop: return "Music Videos|Alternative|Indie Pop"
                    case .turkishAlternative: return "Music Videos|Alternative|Turkish Alternative"
                    case .indieLevant: return "Music Videos|Alternative|Indie Levant"
                    case .indieEgyptian: return "Music Videos|Alternative|Indie Egyptian"
                    case .indieMaghreb: return "Music Videos|Alternative|Indie Maghreb"
                }
            }
        }
        
        case rock(Rock)
        public enum Rock: Int, CaseIterable {
            case rock = 1621
            case chineseRock = 1653
            case koreanRock = 1654
            case heavyMetal = 1688
            case adultAlternative = 1870
            case americanTradRock = 1871
            case arenaRock = 1872
            case bluesRock = 1873
            case britishInvasion = 1874
            case deathMetalBlackMetal = 1875
            case glamRock = 1876
            case hairMetal = 1877
            case hardRock = 1878
            case jamBands = 1879
            case progRockArtRock = 1880
            case psychedelic = 1881
            case rockandRoll = 1882
            case rockabilly = 1883
            case rootsRock = 1884
            case singerSongwriter = 1885
            case southernRock = 1886
            case rockSurf = 1887
            case texMex = 1888
            case turkishRock = 1997
            
            var stringValue: String {
                switch self {
                    case .rock: return "Music Videos|Rock"
                    case .chineseRock: return "Music Videos|Rock|Chinese Rock"
                    case .koreanRock: return "Music Videos|Rock|Korean Rock"
                    case .heavyMetal: return "Music Videos|Rock|Heavy Metal"
                    case .adultAlternative: return "Music Videos|Rock|Adult Alternative"
                    case .americanTradRock: return "Music Videos|Rock|American Trad Rock"
                    case .arenaRock: return "Music Videos|Rock|Arena Rock"
                    case .bluesRock: return "Music Videos|Rock|Blues Rock"
                    case .britishInvasion: return "Music Videos|Rock|British Invasion"
                    case .deathMetalBlackMetal: return "Music Videos|Rock|DeathMetal/Black Metal"
                    case .glamRock: return "Music Videos|Rock|Glam Rock"
                    case .hairMetal: return "Music Videos|Rock|Hair Metal"
                    case .hardRock: return "Music Videos|Rock|Hard Rock"
                    case .jamBands: return "Music Videos|Rock|Jam Bands"
                    case .progRockArtRock: return "Music Videos|Rock|Prog Rock/Art Rock"
                    case .psychedelic: return "Music Videos|Rock|Psychedelic"
                    case .rockandRoll: return "Music Videos|Rock|Rock & Roll"
                    case .rockabilly: return "Music Videos|Rock|Rockabilly"
                    case .rootsRock: return "Music Videos|Rock|Roots Rock"
                    case .singerSongwriter: return "Music Videos|Rock|Singer Songwriter"
                    case .southernRock: return "Music Videos|Rock|Southern Rock"
                    case .rockSurf: return "Music Videos|Rock|Rock Surf"
                    case .texMex: return "Music Videos|Rock|TexMex"
                    case .turkishRock: return "Music Videos|Rock|Turkish Rock"
                }
            }
        }
        
        case christianAndGospel(ChristianAndGospel)
        public enum ChristianAndGospel: Int, CaseIterable {
            case christianandGospel = 1622
            case ccm = 1747
            case christianMetal = 1748
            case christianPop = 1749
            case christianRap = 1750
            case christianRock = 1751
            case classicChristian = 1752
            case contemporaryGospel = 1753
            case gospel = 1754
            case praiseAndWorship = 1755
            case southernGospel = 1756
            case traditionalGospel = 1757
            
            var stringValue: String {
                switch self {
                    case .christianandGospel: return "Music Videos|Christian And Gospel"
                    case .ccm: return "Music Videos|Christian And Gospel|CCM"
                    case .christianMetal: return "Music Videos|Christian And Gospel|Christian Metal"
                    case .christianPop: return "Music Videos|Christian And Gospel|Christian Pop"
                    case .christianRap: return "Music Videos|Christian And Gospel|Christian Rap"
                    case .christianRock: return "Music Videos|Christian And Gospel|Christian Rock"
                    case .classicChristian: return "Music Videos|Christian And Gospel|Classic Christian"
                    case .contemporaryGospel: return "Music Videos|Christian And Gospel|Contemporary Gospel"
                    case .gospel: return "Music Videos|Christian And Gospel|Gospel"
                    case .praiseAndWorship: return "Music Videos|Christian And Gospel|Praise And Worship"
                    case .southernGospel: return "Music Videos|Christian And Gospel|Southern Gospel"
                    case .traditionalGospel: return "Music Videos|Christian And Gospel|Traditional Gospel"
                }
            }
        }
        
        case vocal(Vocal)
        public enum Vocal: Int, CaseIterable {
            case vocal = 1623
            case trot = 1666
            case standards = 1900
            case traditionalPop = 1901
            case vocalPop = 1903
            
            var stringValue: String {
                switch self {
                    case .vocal: return "Music Videos|Vocal"
                    case .trot: return "Music Videos|Vocal|Trot"
                    case .standards: return "Music Videos|Vocal|Standards"
                    case .traditionalPop: return "Music Videos|Vocal|Traditional Pop"
                    case .vocalPop: return "Music Videos|Vocal|Vocal Pop"
                }
            }
        }

        case reggae(Reggae)
        public enum Reggae: Int, CaseIterable {
            case reggae = 1624
            case modernDancehall = 1866
            case dub = 1867
            case rootsReggae = 1868
            case ska = 1869
            case loversRock = 1944
            
            var stringValue: String {
                switch self {
                    case .reggae: return "Music Videos|Reggae"
                    case .modernDancehall: return "Music Videos|Reggae|Modern Dancehall"
                    case .dub: return "Music Videos|Reggae|Dub"
                    case .rootsReggae: return "Music Videos|Reggae|RootsReggae"
                    case .ska: return "Music Videos|Reggae|Ska"
                    case .loversRock: return "Music Videos|Reggae|Lover's Rock"
                }
            }
        }

        case easyListening(EasyListening)
        public enum EasyListening: Int, CaseIterable {
            case easyListening = 1625
            case lounge = 1794
            case swing = 1795
            
            var stringValue: String {
                switch self {
                    case .easyListening: return "Music Videos|Easy Listening"
                    case .lounge: return "Music Videos|Easy Listening|Lounge"
                    case .swing: return "Music Videos|Easy Listening|Swing"
                }
            }
        }

        case chinese(Chinese)
        public enum Chinese: Int, CaseIterable {
            case chinese = 1637
            case classical = 1638
            case flute = 1639
            case opera = 1640
            case orchestral = 1641
            case regionalFolk = 1642
            case strings = 1643
            case taiwaneseFolk = 1644
            case tibetanNativeMusic = 1645
            
            var stringValue: String {
                switch self {
                    case .chinese: return "Music Videos|Chinese"
                    case .classical: return "Music Videos|Chinese|Classical"
                    case .flute: return "Music Videos|Chinese|Flute"
                    case .opera: return "Music Videos|Chinese|Opera"
                    case .orchestral: return "Music Videos|Chinese|Orchestral"
                    case .regionalFolk: return "Music Videos|Chinese|Regional Folk"
                    case .strings: return "Music Videos|Chinese|Strings"
                    case .taiwaneseFolk: return "Music Videos|Chinese|Taiwanese Folk"
                    case .tibetanNativeMusic: return "Music Videos|Chinese|Tibetan Native Music"
                }
            }
        }

        case korean(Korean)
        public enum Korean: Int, CaseIterable {
            case korean = 1648
            case classical = 1649
            case tradSong = 1650
            case tradInstrumental = 1651
            case tradTheater = 1652
            
            var stringValue: String {
                switch self {
                    case .korean: return "Music Videos|Korean"
                    case .classical:return "Music Videos|Korean|Classical"
                    case .tradSong:return "Music Videos|Korean|TradSong"
                    case .tradInstrumental:return "Music Videos|Korean|TradInstrumental"
                    case .tradTheater:return "Music Videos|Korean|TradTheater"
                }
            }
        }

        case brazilian(Brazilian)
        public enum Brazilian: Int, CaseIterable {
            case brazilian = 1671
            case axe = 1672
            case baileFunk = 1673
            case bossaNova = 1674
            case choro = 1675
            case forro = 1676
            case frevo = 1677
            case mpb = 1678
            case pagode = 1679
            case samba = 1680
            case sertanejo = 1681
            
            var stringValue: String {
                switch self {
                    case .brazilian: return "Music Videos|Brazilian"
                    case .axe: return "Music Videos|Brazilian|Axe"
                    case .baileFunk: return "Music Videos|Brazilian|Baile Funk"
                    case .bossaNova: return "Music Videos|Brazilian|Bossa Nova"
                    case .choro: return "Music Videos|Brazilian|Choro"
                    case .forro: return "Music Videos|Brazilian|Forro"
                    case .frevo: return "Music Videos|Brazilian|Frevo"
                    case .mpb: return "Music Videos|Brazilian|MPB"
                    case .pagode: return "Music Videos|Brazilian|Pagode"
                    case .samba: return "Music Videos|Brazilian|Samba"
                    case .sertanejo: return "Music Videos|Brazilian|Sertanejo"
                }
            }
        }

        case indian(Indian)
        public enum Indian: CaseIterable {
            case indian
            case bollywood
            case regionalIndian(RegionalIndian)
            
            public enum RegionalIndian: CaseIterable {
                case regionalIndian
                case tamil
                case telugu
                case punjabi(Punjabi)
                public enum Punjabi: Int, CaseIterable {
                    case punjabi = 1972
                    case punjabiPop = 1960
                    
                    var stringValue: String {
                        switch self {
                            case .punjabi: return "Music Videos|Indian|RegionalIndian|Punjabi"
                            case .punjabiPop: return "Music Videos|Indian|RegionalIndian|Punjabi|Punjabi Pop"
                        }
                    }
                }
                case bengali(Bengali)
                public enum Bengali: Int, CaseIterable {
                    case bengali = 1973
                    case rabindraSangeet = 1961
                    
                    var stringValue: String {
                        switch self {
                            case .bengali: return "Music Videos|Indian|RegionalIndian|Bengali"
                            case .rabindraSangeet: return "Music Videos|Indian|RegionalIndian|Bengali|Rabindra Sangeet"
                        }
                    }
                }
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
                var rawValue: Int {
                    switch self {
                        case .regionalIndian: return 1694
                        case .tamil: return 1692
                        case .telugu: return 1693
                        case .punjabi(let subgenre): return subgenre.rawValue
                        case .bengali(let subgenre): return subgenre.rawValue
                        case .malayalam: return 1962
                        case .kannada: return 1963
                        case .marathi: return 1964
                        case .gujarati: return 1965
                        case .assamese: return 1966
                        case .bhojpuri: return 1967
                        case .haryanvi: return 1968
                        case .odia: return 1969
                        case .rajasthani: return 1970
                        case .urdu: return 1971
                    }
                }
                
                var stringValue: String {
                    switch self {
                        case .regionalIndian: return "Music Videos|Indian|RegionalIndian"
                        case .tamil: return "Music Videos|Indian|RegionalIndian|Tamil"
                        case .telugu: return "Music Videos|Indian|RegionalIndian|Telgu"
                        case .punjabi(let subgenre): return subgenre.stringValue
                        case .bengali(let subgenre): return subgenre.stringValue
                        case .malayalam: return "Music Videos|Indian|RegionalIndian|Malayalam"
                        case .kannada: return "Music Videos|Indian|RegionalIndian|Kannada"
                        case .marathi: return "Music Videos|Indian|RegionalIndian|Marathi"
                        case .gujarati: return "Music Videos|Indian|RegionalIndian|Gujarati"
                        case .assamese: return "Music Videos|Indian|RegionalIndian|Assamese"
                        case .bhojpuri: return "Music Videos|Indian|RegionalIndian|Bhojpuri"
                        case .haryanvi: return "Music Videos|Indian|RegionalIndian|Haryanvi"
                        case .odia: return "Music Videos|Indian|RegionalIndian|Odia"
                        case .rajasthani: return "Music Videos|Indian|RegionalIndian|Rajasthani"
                        case .urdu: return "Music Videos|Indian|RegionalIndian|Urdu"
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
                case classical = 1697
                case carnaticClassical = 1974
                case hindustaniClassical = 1975
                
                var stringValue: String {
                    switch self {
                        case .classical: return "Music Videos|Indian|Classical"
                        case .carnaticClassical: return "Music Videos|Indian|Classical|Carnatic Classical"
                        case .hindustaniClassical: return "Music Videos|Indian|Classical|Hindustani Classical"
                    }
                }
            }
            case devotionalAndSpiritual
            case sufi
            case pop
            case ghazals
            case folk
            
            var rawValue: Int {
                switch self {
                    case .indian: return 1690
                    case .bollywood: return 1691
                    case .regionalIndian(let subgenre): return subgenre.rawValue
                    case .classical(let subgenre): return subgenre.rawValue
                    case .devotionalAndSpiritual: return 1695
                    case .sufi: return 1696
                    case .pop: return 1704
                    case .ghazals: return 1707
                    case .folk: return 1708
                }
            }
            
            var stringValue: String {
                switch self {
                    case .indian: return "Music Videos|Indian"
                    case .bollywood: return "Music Videos|Indian|Bollywood"
                    case .regionalIndian(let subgenre): return subgenre.stringValue
                    case .classical(let subgenre): return subgenre.stringValue
                    case .devotionalAndSpiritual: return "Music Videos|Indian|Devotional And Spiritual"
                    case .sufi: return "Music Videos|Indian|Sufi"
                    case .pop: return "Music Videos|Indian|Pop"
                    case .ghazals: return "Music Videos|Indian|Ghazals"
                    case .folk: return "Music Videos|Indian|Folk"
                }
            }
            
            public static var allCases: [Indian] {
                var cases: [Indian] = [.bollywood, .devotionalAndSpiritual, .folk, .ghazals, .indian, .pop, .sufi]
                cases.append(contentsOf: RegionalIndian.allCases.map({ Indian.regionalIndian($0)}))
                cases.append(contentsOf: Classical.allCases.map({ Indian.classical($0)}))
                return cases
            }
        }

        case russian(Russian)
        public enum Russian: Int, CaseIterable {
            case russian = 1729
            case chanson = 1698
            case romance = 2001
            case bard = 2002
            case pop = 2003
            case rock = 2004
            case hipHop = 2005
            
            var stringValue: String {
                switch self {
                    case .russian: return "Music Videos|Russian"
                    case .chanson: return "Music Videos|Russian|Chanson"
                    case .romance: return "Music Videos|Russian|Romance"
                    case .bard: return "Music Videos|Russian|Bard"
                    case .pop: return "Music Videos|Russian|Pop"
                    case .rock: return "Music Videos|Russian|Rock"
                    case .hipHop: return "Music Videos|Russian|HipHop"
                }
            }
        }

        case turkish(Turkish)
        public enum Turkish: Int, CaseIterable {
            case turkish = 1730
            case halk = 1700
            case sanat = 1701
            case arabesque = 1709
            case ozgun = 1993
            case fantezi = 1994
            case religious = 1995
            
            var stringValue: String {
                switch self {
                    case .turkish: return "Music Videos|Turkish"
                    case .halk: return "Music Videos|Turkish|Halk"
                    case .sanat: return "Music Videos|Turkish|Sanat"
                    case .arabesque: return "Music Videos|Turkish|Arabesque"
                    case .ozgun: return "Music Videos|Turkish|Ozgun"
                    case .fantezi: return "Music Videos|Turkish|Fantezi"
                    case .religious: return "Music Videos|Turkish|Religious"
                }
            }
        }
        
        case african(African)
        public enum African: Int, CaseIterable {
            case african = 1904
            case afroBeat = 1905
            case afroPop = 1906
            case afrikaans = 1710
            case afroHouse = 1976
            case afroSoul = 1977
            case afrobeats = 1978
            case benga = 1979
            case bongoFlava = 1980
            case coupeDecale = 1981
            case gqom = 1982
            case highlife = 1983
            case kuduro = 1984
            case kizomba = 1985
            case kwaito = 1986
            case mbalax = 1987
            case ndombolo = 1988
            case shangaanElectro = 1989
            case soukous = 1990
            case taarab = 1991
            case zouglou = 1992
            case maskandi = 2000
            
            var stringValue: String {
                switch self {
                    case .african: return "Music Videos|African"
                    case .afroBeat: return "Music Videos|African|Afro Beat"
                    case .afroPop: return "Music Videos|African|Afro Pop"
                    case .afrikaans: return "Music Videos|African|Afrikaans"
                    case .afroHouse: return "Music Videos|African|Afro House"
                    case .afroSoul: return "Music Videos|African|Afro Soul"
                    case .afrobeats: return "Music Videos|African|Afro Beats"
                    case .benga: return "Music Videos|African|Benga"
                    case .bongoFlava: return "Music Videos|African|Bongo Flava"
                    case .coupeDecale: return "Music Videos|African|Coupe Decale"
                    case .gqom: return "Music Videos|African|Gqom"
                    case .highlife: return "Music Videos|African|Highlife"
                    case .kuduro: return "Music Videos|African|Kuduro"
                    case .kizomba: return "Music Videos|African|Kizomba"
                    case .kwaito: return "Music Videos|African|Kwaito"
                    case .mbalax: return "Music Videos|African|Mbalax"
                    case .ndombolo: return "Music Videos|African|Ndombolo"
                    case .shangaanElectro: return "Music Videos|African|Shangaan Electro"
                    case .soukous: return "Music Videos|African|Soukous"
                    case .taarab: return "Music Videos|African|Taarab"
                    case .zouglou: return "Music Videos|African|Zouglou"
                    case .maskandi: return "Music Videos|African|Maskandi"
                }
            }
        }

        case arabic(Arabic)
        public enum Arabic: CaseIterable {
            case arabic
            case khaleeji(Khaleeji)
            public enum Khaleeji: Int, CaseIterable {
                case khaleeji = 1714
                case jalsat = 2009
                case shailat = 2010
                
                var stringValue: String {
                    switch self {
                        case .khaleeji: return "Music Videos|Arabic|Khaleeji"
                        case .jalsat: return "Music Videos|Arabic|Khaleeji|Jalsat"
                        case .shailat: return "Music Videos|Arabic|Khaleeji|Shailat"
                    }
                }
            }
            case northAfrican
            case arabicPop
            case islamic
            case levant(Levant)
            public enum Levant: Int, CaseIterable {
                case levant = 2006
                case dabke = 2007
                
                var stringValue: String {
                    switch self {
                        case .levant: return "Music Videos|Arabic|Levant"
                        case .dabke:return "Music Videos|Arabic|Levant|Dabke"
                    }
                }
            }
            case maghrebRai
            
            var rawValue: Int {
                switch self {
                    case .arabic: return 1713
                    case .khaleeji(let subgenre): return subgenre.rawValue
                    case .northAfrican: return 1715
                    case .arabicPop: return 1716
                    case .islamic: return 1717
                    case .levant(let subgenre): return subgenre.rawValue
                    case .maghrebRai: return 2008
                }
            }
            var stringValue: String {
                switch self {
                    case .arabic: return "Music Videos|Arabic"
                    case .khaleeji(let subgenre): return subgenre.stringValue
                    case .northAfrican: return "Music Videos|Arabic|North African"
                    case .arabicPop: return "Music Videos|Arabic|Arabic Pop"
                    case .islamic: return "Music Videos|Arabic|Islamic"
                    case .levant(let subgenre): return subgenre.stringValue
                    case .maghrebRai: return "Music Videos|Arabic|Maghreb Rai"
                }
            }
            
            public static var allCases: [Arabic] {
                var cases: [Arabic] = [.arabic, .arabicPop, .islamic, .maghrebRai, .northAfrican]
                cases.append(contentsOf: Khaleeji.allCases.map({ Arabic.khaleeji($0)}))
                cases.append(contentsOf: Levant.allCases.map({ Arabic.levant($0)}))
                return cases
            }
        }
        
        case cuban(Cuban)
        public enum Cuban: Int, CaseIterable {
            case cuban = 1951
            case mambo = 1952
            case chachacha = 1953
            case guajira = 1954
            case son = 1955
            case bolero = 1956
            case guaracha = 1957
            case timba = 1958
            
            var stringValue: String {
                switch self {
                    case .cuban: return "Music Videos|Cuban"
                    case .mambo: return "Music Videos|Cuban|Mambo"
                    case .chachacha: return "Music Videos|Cuban|Chachacha"
                    case .guajira: return "Music Videos|Cuban|Guajira"
                    case .son: return "Music Videos|Cuban|Son"
                    case .bolero: return "Music Videos|Cuban|Bolero"
                    case .guaracha: return "Music Videos|Cuban|Guaracha"
                    case .timba: return "Music Videos|Cuban|Timba"
                }
            }
        }
        
        case tarab(Tarab)
        public enum Tarab: Int, CaseIterable {
            case tarab = 2011
            case iraqiTarab = 2012
            case egyptianTarab = 2013
            case khaleejiTarab = 2014
            
            var stringValue: String {
                switch self {
                    case .tarab: return "Music Videos|Tarab"
                    case .iraqiTarab: return "Music Videos|Tarab|Iraqi Tarab"
                    case .egyptianTarab: return "Music Videos|Tarab|Egyptian Tarab"
                    case .khaleejiTarab: return "Music Videos|Tarab|Khaleeji Tarab"
                }
            }
        }
    }
}
