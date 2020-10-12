//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 10/7/20.
//

import Foundation
extension Genre {
    public enum Textbooks {
        case textbooks
        case artsAndEntertainment(ArtsAndEntertainment)
        case biographiesAndMemoirs
        case businessAndPersonalFinance(BusinessAndPersonalFinance)
        case childrenAndTeens(ChildrenAndTeens)
        case comicsAndGraphicNovels(ComicsAndGraphicNovels)
        case communicationsAndMedia(CommunicationsAndMedia)
        case computersAndInternet(ComputersAndInternet)
        case cookbooksFoodAndWine(CookbooksFoodAndWine)
        case engineering(Engineering)
        case fictionAndLiterature(FictionAndLiterature)
        case healthMindAndBody(HealthMindAndBody)
        case history(History)
        case humor
        case languageStudies(LanguageStudies)
        case lifestyleAndHome(LifeStyleAndHome)
        case mathematics(Mathematics)
        case medicine(Medicine)
        case mysteriesAndThrillers(MysteriesAndThrillers)
        case nonfiction(NonFiction)
        case parenting
        case philosophy(Philosophy)
        case politicsAndCurrentEvents(PoliticsAndCurrentEvents)
        case professionalAndTechnical(ProfessionalAndTechnical)
        case reference(Reference)
        case religionAndSpirituality(ReligionAndSpirtuality)
        case romance(Romance)
        case sciFiAndFantasy(SciFiAndFantasy)
        case scienceAndNature(ScienceAndNature)
        case socialScience(SocialScience)
        case sportsAndOutdoors(SportsAndOutdoors)
        case teachingAndLearning(TeachingAndLearning)
        case travelAndAdventure(TravelAndAdventure)
        
        public static var allCases: [Textbooks] {
            var cases: [Textbooks] = [.biographiesAndMemoirs, .humor, .parenting, .textbooks]
            cases.append(contentsOf: ArtsAndEntertainment.allCases.map({ Textbooks.artsAndEntertainment($0)}))
            cases.append(contentsOf: BusinessAndPersonalFinance.allCases.map({ Textbooks.businessAndPersonalFinance($0)}))
            cases.append(contentsOf: ChildrenAndTeens.allCases.map({ Textbooks.childrenAndTeens($0)}))
            cases.append(contentsOf: ComicsAndGraphicNovels.allCases.map({ Textbooks.comicsAndGraphicNovels($0)}))
            cases.append(contentsOf: CommunicationsAndMedia.allCases.map({ Textbooks.communicationsAndMedia($0)}))
            cases.append(contentsOf: ComputersAndInternet.allCases.map({ Textbooks.computersAndInternet($0)}))
            cases.append(contentsOf: CookbooksFoodAndWine.allCases.map({ Textbooks.cookbooksFoodAndWine($0)}))
            cases.append(contentsOf: Engineering.allCases.map({ Textbooks.engineering($0)}))
            cases.append(contentsOf: FictionAndLiterature.allCases.map({ Textbooks.fictionAndLiterature($0)}))
            cases.append(contentsOf: HealthMindAndBody.allCases.map({ Textbooks.healthMindAndBody($0)}))
            cases.append(contentsOf: History.allCases.map({ Textbooks.history($0)}))
            cases.append(contentsOf: LanguageStudies.allCases.map({ Textbooks.languageStudies($0)}))
            cases.append(contentsOf: LifeStyleAndHome.allCases.map({ Textbooks.lifestyleAndHome($0)}))
            cases.append(contentsOf: Mathematics.allCases.map({ Textbooks.mathematics($0)}))
            cases.append(contentsOf: Medicine.allCases.map({ Textbooks.medicine($0)}))
            cases.append(contentsOf: MysteriesAndThrillers.allCases.map({ Textbooks.mysteriesAndThrillers($0)}))
            cases.append(contentsOf: NonFiction.allCases.map({ Textbooks.nonfiction($0)}))
            cases.append(contentsOf: Philosophy.allCases.map({ Textbooks.philosophy($0)}))
            cases.append(contentsOf: PoliticsAndCurrentEvents.allCases.map({ Textbooks.politicsAndCurrentEvents($0)}))
            cases.append(contentsOf: ProfessionalAndTechnical.allCases.map({ Textbooks.professionalAndTechnical($0)}))
            cases.append(contentsOf: Reference.allCases.map({ Textbooks.reference($0)}))
            cases.append(contentsOf: ReligionAndSpirtuality.allCases.map({ Textbooks.religionAndSpirituality($0)}))
            cases.append(contentsOf: Romance.allCases.map({ Textbooks.romance($0)}))
            cases.append(contentsOf: SciFiAndFantasy.allCases.map({ Textbooks.sciFiAndFantasy($0)}))
            cases.append(contentsOf: ScienceAndNature.allCases.map({ Textbooks.scienceAndNature($0)}))
            cases.append(contentsOf: SocialScience.allCases.map({ Textbooks.socialScience($0)}))
            cases.append(contentsOf: SportsAndOutdoors.allCases.map({ Textbooks.sportsAndOutdoors($0)}))
            cases.append(contentsOf: TeachingAndLearning.allCases.map({ Textbooks.teachingAndLearning($0)}))
            cases.append(contentsOf: TravelAndAdventure.allCases.map({ Textbooks.travelAndAdventure($0)}))
            return cases
        }

        public var genreID: Int {
            switch self {
                case .textbooks: return 40
                case .artsAndEntertainment(let subject): return subject.rawValue
                case .biographiesAndMemoirs: return 15017
                case .businessAndPersonalFinance(let subject): return subject.rawValue
                case .childrenAndTeens(let subject): return subject.rawValue
                case .comicsAndGraphicNovels(let subject): return subject.rawValue
                case .communicationsAndMedia(let subject): return subject.rawValue
                case .computersAndInternet(let subject): return subject.rawValue
                case .cookbooksFoodAndWine(let subject): return subject.rawValue
                case .engineering(let subject): return subject.rawValue
                case .fictionAndLiterature(let subject): return subject.rawValue
                case .healthMindAndBody(let subject): return subject.rawValue
                case .history(let subject): return subject.rawValue
                case .humor: return 15108
                case .languageStudies(let subject): return subject.rawValue
                case .lifestyleAndHome(let subject): return subject.rawValue
                case .mathematics(let subject): return subject.rawValue
                case .medicine(let subject): return subject.rawValue
                case .mysteriesAndThrillers(let subject): return subject.rawValue
                case .nonfiction(let subject): return subject.rawValue
                case .parenting: return 15166
                case .philosophy(let subject): return subject.rawValue
                case .politicsAndCurrentEvents(let subject): return subject.rawValue
                case .professionalAndTechnical(let subject): return subject.rawValue
                case .reference(let subject): return subject.rawValue
                case .religionAndSpirituality(let subject): return subject.rawValue
                case .romance(let subject): return subject.rawValue
                case .sciFiAndFantasy(let subject): return subject.rawValue
                case .scienceAndNature(let subject): return subject.rawValue
                case .socialScience(let subject): return subject.rawValue
                case .sportsAndOutdoors(let subject): return subject.rawValue
                case .teachingAndLearning(let subject): return subject.rawValue
                case .travelAndAdventure(let subject): return subject.rawValue
            }
        }
        
        public var stringValue: String {
            switch self {
                case .textbooks: return "Textbooks"
                case .artsAndEntertainment(let subject): return subject.stringValue
                case .biographiesAndMemoirs: return "Textbooks|Biographies & Memoirs"
                case .businessAndPersonalFinance(let subject): return subject.stringValue
                case .childrenAndTeens(let subject): return subject.stringValue
                case .comicsAndGraphicNovels(let subject): return subject.stringValue
                case .communicationsAndMedia(let subject): return subject.stringValue
                case .computersAndInternet(let subject): return subject.stringValue
                case .cookbooksFoodAndWine(let subject): return subject.stringValue
                case .engineering(let subject): return subject.stringValue
                case .fictionAndLiterature(let subject): return subject.stringValue
                case .healthMindAndBody(let subject): return subject.stringValue
                case .history(let subject): return subject.stringValue
                case .humor: return "Textbooks|Humor"
                case .languageStudies(let subject): return subject.stringValue
                case .lifestyleAndHome(let subject): return subject.stringValue
                case .mathematics(let subject): return subject.stringValue
                case .medicine(let subject): return subject.stringValue
                case .mysteriesAndThrillers(let subject): return subject.stringValue
                case .nonfiction(let subject): return subject.stringValue
                case .parenting: return "Textbooks|Parenting"
                case .philosophy(let subject): return subject.stringValue
                case .politicsAndCurrentEvents(let subject): return subject.stringValue
                case .professionalAndTechnical(let subject): return subject.stringValue
                case .reference(let subject): return subject.stringValue
                case .religionAndSpirituality(let subject): return subject.stringValue
                case .romance(let subject): return subject.stringValue
                case .sciFiAndFantasy(let subject): return subject.stringValue
                case .scienceAndNature(let subject): return subject.stringValue
                case .socialScience(let subject): return subject.stringValue
                case .sportsAndOutdoors(let subject): return subject.stringValue
                case .teachingAndLearning(let subject): return subject.stringValue
                case .travelAndAdventure(let subject): return subject.stringValue
            }
        }
        
        public enum ArtsAndEntertainment: Int, CaseIterable {
            case artsAndEntertainment = 15000
            case artAndArchitecture = 15001
            case artAndArchitectureUrbanPlanning = 15002
            case artHistory = 15003
            case dance = 15004
            case design = 15005
            case fashion = 15006
            case film = 15007
            case games = 15008
            case interiorDesign = 15009
            case mediaArts = 15010
            case music = 15011
            case performingArts = 15012
            case photography = 15013
            case theater = 15014
            case tv = 15015
            case visualArts = 15016
            
            var stringValue: String {
                switch self {
                    case .artsAndEntertainment: return "Textbooks|Arts & Entertainment"
                    case .artAndArchitecture: return "Textbooks|Arts & Entertainment|Art & Architecture"
                    case .artAndArchitectureUrbanPlanning: return "Textbooks|Arts & Entertainment|Art & Architecture|Urban Planning"
                    case .artHistory: return "Textbooks|Arts & Entertainment|Art History"
                    case .dance: return "Textbooks|Arts & Entertainment|Dance"
                    case .design: return "Textbooks|Arts & Entertainment|Design"
                    case .fashion: return "Textbooks|Arts & Entertainment|Fashion"
                    case .film: return "Textbooks|Arts & Entertainment|Film"
                    case .games: return "Textbooks|Arts & Entertainment|Games"
                    case .interiorDesign: return "Textbooks|Arts & Entertainment|Interior Design"
                    case .mediaArts: return "Textbooks|Arts & Entertainment|Media Arts"
                    case .music: return "Textbooks|Arts & Entertainment|Music"
                    case .performingArts: return "Textbooks|Arts & Entertainment|Performing Arts"
                    case .photography: return "Textbooks|Arts & Entertainment|Photography"
                    case .theater: return "Textbooks|Arts & Entertainment|Theater"
                    case .tv: return "Textbooks|Arts & Entertainment|TV"
                    case .visualArts: return "Textbooks|Arts & Entertainment|Visual Arts"
                }
            }
        }
        
        public enum BusinessAndPersonalFinance: Int, CaseIterable {
            case businessAndPersonalFinance = 15018
            case accounting = 15019
            case careers = 15020
            case economics = 15021
            case finance = 15022
            case hospitality = 15023
            case industriesAndProfessions = 15024
            case investing = 15025
            case managementAndLeadership = 15026
            case marketingAndSales = 15027
            case personalFinance = 15028
            case realEstate = 15029
            case reference = 15030
            case smallBusinessAndEntrepreneurship = 15031
            
            var stringValue: String {
                switch self {
                    case .businessAndPersonalFinance: return "Textbooks|Business & Personal Finance"
                    case .accounting: return "Textbooks|Business & Personal Finance|Accounting"
                    case .careers: return "Textbooks|Business & Personal Finance|Careers"
                    case .economics: return "Textbooks|Business & Personal Finance|Economics"
                    case .finance: return "Textbooks|Business & Personal Finance|Finance"
                    case .hospitality: return "Textbooks|Business & Personal Finance|Hospitality"
                    case .industriesAndProfessions: return "Textbooks|Business & Personal Finance|Industries & Professions"
                    case .investing: return "Textbooks|Business & Personal Finance|Investing"
                    case .managementAndLeadership: return "Textbooks|Business & Personal Finance|Management & Leadership"
                    case .marketingAndSales: return "Textbooks|Business & Personal Finance|Marketing & Sales"
                    case .personalFinance: return "Textbooks|Business & Personal Finance|Personal Finance"
                    case .realEstate: return "Textbooks|Business & Personal Finance|Real Estate"
                    case .reference: return "Textbooks|Business & Personal Finance|Reference"
                    case .smallBusinessAndEntrepreneurship: return "Textbooks|Business & Personal Finance|Small Business & Entrepreneurship"
                }
            }
        }
        
        public enum ChildrenAndTeens: Int, CaseIterable {
            case childrenAndTeens = 15032
            case fiction = 15033
            case nonfiction = 15034
            
            var stringValue: String {
                switch self {
                    case .childrenAndTeens: return "Textbooks|Children & Teens"
                    case .fiction: return "Textbooks|Children & Teens|Fiction"
                    case .nonfiction: return "Textbooks|Children & Teens|Nonfiction"
                }
            }
        }

        public enum ComicsAndGraphicNovels: Int, CaseIterable {
            case comicsAndGraphicNovels = 15035
            case graphicNovels = 15036
            case manga = 15037
            case comics = 15311

            var stringValue: String {
                switch self {
                    case .comicsAndGraphicNovels: return "Textbooks|Comics & Graphic Novels"
                    case .graphicNovels: return "Textbooks|Comics & Graphic Novels|Graphic Novels"
                    case .manga: return "Textbooks|Comics & Graphic Novels|Manga"
                    case .comics: return "Textbooks|Comics & Graphic Novels|Comics"
                }
            }
        }

        public enum CommunicationsAndMedia: Int, CaseIterable {
            case communicationsAndMedia = 15038
            case broadcasting = 15039
            case digitalMedia = 15040
            case journalism = 15041
            case photojournalism = 15042
            case print = 15043
            case speech = 15044
            case writing = 15045
            
            var stringValue: String {
                switch self {
                    case .communicationsAndMedia: return "Textbooks|Communications & Media"
                    case .broadcasting: return "Textbooks|Communications & Media|Broadcasting"
                    case .digitalMedia: return "Textbooks|Communications & Media|Digital Media"
                    case .journalism: return "Textbooks|Communications & Media|Journalism"
                    case .photojournalism: return "Textbooks|Communications & Media|Photojournalism"
                    case .print: return "Textbooks|Communications & Media|Print"
                    case .speech: return "Textbooks|Communications & Media|Speech"
                    case .writing: return "Textbooks|Communications & Media|Writing"
                }
            }
        }

        public enum ComputersAndInternet: Int, CaseIterable {
            case computersAndInternet = 15046
            case computers = 15047
            case databases = 15048
            case digitalMedia = 15049
            case internet = 15050
            case network = 15051
            case pperatingSystems = 15052
            case programming = 15053
            case software = 15054
            case systemAdministration = 15055
            
            var stringValue: String {
                switch self {
                    case .computersAndInternet: return "Textbooks|Computers & Internet"
                    case .computers: return "Textbooks|Computers & Internet|Computers"
                    case .databases: return "Textbooks|Computers & Internet|Databases"
                    case .digitalMedia: return "Textbooks|Computers & Internet|Digital Media"
                    case .internet: return "Textbooks|Computers & Internet|Internet"
                    case .network: return "Textbooks|Computers & Internet|Network"
                    case .pperatingSystems: return "Textbooks|Computers & Internet|Operating Systems"
                    case .programming: return "Textbooks|Computers & Internet|Programming"
                    case .software: return "Textbooks|Computers & Internet|Software"
                    case .systemAdministration: return "Textbooks|Computers & Internet|System Administration"
                }
            }
        }
        
        public enum CookbooksFoodAndWine: Int, CaseIterable {
            case cookbooksFoodAndWine = 15056
            case beverages = 15057
            case coursesAndDishes = 15058
            case culinaryArts = 15059
            case methods = 15060
            case reference = 15061
            case regionalAndEthnic = 15062
            case specialDiet = 15063
            case specialOccasions = 15064
            case specificIngredients = 15065
            
            var stringValue: String {
                switch self {
                    case .cookbooksFoodAndWine: return "Textbooks|Cookbooks, Food & Wine"
                    case .beverages: return "Textbooks|Cookbooks, Food & Wine|Beverages"
                    case .coursesAndDishes: return "Textbooks|Cookbooks, Food & Wine|Courses & Dishes"
                    case .culinaryArts: return "Textbooks|Cookbooks, Food & Wine|Culinary Arts"
                    case .methods: return "Textbooks|Cookbooks, Food & Wine|Methods"
                    case .reference: return "Textbooks|Cookbooks, Food & Wine|Reference"
                    case .regionalAndEthnic: return "Textbooks|Cookbooks, Food & Wine|Regional & Ethnic"
                    case .specialDiet: return "Textbooks|Cookbooks, Food & Wine|Special Diet"
                    case .specialOccasions: return "Textbooks|Cookbooks, Food & Wine|Special Occasions"
                    case .specificIngredients: return "Textbooks|Cookbooks, Food & Wine|Specific Ingredients"
                }
            }
        }
        
        public enum Engineering: Int, CaseIterable {
            case engineering = 15066
            case aeronautics = 15067
            case chemicalAndPetroleumEngineering = 15068
            case civilEngineering = 15069
            case computerScience = 15070
            case electricalEngineering = 15071
            case environmentalEngineering = 15072
            case mechanicalEngineering = 15073
            case powerResources = 15074
            
            var stringValue: String {
                switch self {
                    case .engineering: return "Textbooks|Engineering"
                    case .aeronautics: return "Textbooks|Engineering|Aeronautics"
                    case .chemicalAndPetroleumEngineering: return "Textbooks|Engineering|Chemical & Petroleum Engineering"
                    case .civilEngineering: return "Textbooks|Engineering|Civil Engineering"
                    case .computerScience: return "Textbooks|Engineering|Computer Science"
                    case .electricalEngineering: return "Textbooks|Engineering|Electrical Engineering"
                    case .environmentalEngineering: return "Textbooks|Engineering|Environmental Engineering"
                    case .mechanicalEngineering: return "Textbooks|Engineering|Mechanical Engineering"
                    case .powerResources: return "Textbooks|Engineering|Power Resources"
                }
            }
        }

        public enum FictionAndLiterature: Int, CaseIterable {
            case fictionAndLiterature = 15075
            case latino = 15076
            case actionAndAdventure = 15077
            case africanAmerican = 15078
            case anthologies = 15079
            case classics = 15080
            case comparativeLiterature = 15081
            case erotica = 15082
            case gay = 15083
            case ghost = 15084
            case historical = 15085
            case horror = 15086
            case literary = 15087
            case literaryCriticism = 15088
            case poetry = 15089
            case religious = 15090
            case shortStories = 15091
            
            var stringValue: String {
                switch self {
                    case .fictionAndLiterature: return "Textbooks|Fiction & Literature"
                    case .latino: return "Textbooks|Fiction & Literature|Latino"
                    case .actionAndAdventure: return "Textbooks|Fiction & Literature|Action & Adventure"
                    case .africanAmerican: return "Textbooks|Fiction & Literature|African American"
                    case .anthologies: return "Textbooks|Fiction & Literature|Anthologies"
                    case .classics: return "Textbooks|Fiction & Literature|Classics"
                    case .comparativeLiterature: return "Textbooks|Fiction & Literature|Comparative Literature"
                    case .erotica: return "Textbooks|Fiction & Literature|Erotica"
                    case .gay: return "Textbooks|Fiction & Literature|Gay"
                    case .ghost: return "Textbooks|Fiction & Literature|Ghost"
                    case .historical: return "Textbooks|Fiction & Literature|Historical"
                    case .horror: return "Textbooks|Fiction & Literature|Horror"
                    case .literary: return "Textbooks|Fiction & Literature|Literary"
                    case .literaryCriticism: return "Textbooks|Fiction & Literature|Literary Criticism"
                    case .poetry: return "Textbooks|Fiction & Literature|Poetry"
                    case .religious: return "Textbooks|Fiction & Literature|Religious"
                    case .shortStories: return "Textbooks|Fiction & Literature|Short Stories"
                }
            }
        }
        
        public enum HealthMindAndBody: Int, CaseIterable {
            case healthMindAndBody = 15092
            case fitness = 15093
            case selfImprovement = 15094
            
            var stringValue: String {
                switch self {
                    case .healthMindAndBody: return "Textbooks|Health, Mind & Body"
                    case .fitness: return "Textbooks|Health, Mind & Body|Fitness"
                    case .selfImprovement: return "Textbooks|Health, Mind & Body|Self-Improvement"
                }
            }
        }
        
        public enum History: CaseIterable {
            case history
            case africa
            case americas(Americas)
            case ancient
            case asia
            case australiaAndOceania
            case europe
            case middleEast
            case military
            case world
            
            public static var allCases: [History] {
                var cases: [History] = [.africa, .ancient, .asia, .australiaAndOceania, .europe, .history, .middleEast, .military, .world]
                cases.append(contentsOf: Americas.allCases.map({ History.americas($0)}))
                return cases
            }
            
            var rawValue: Int {
                switch self {
                    case .history: return 15095
                    case .africa: return 15096
                    case .americas(let subject): return subject.rawValue
                    case .ancient: return 15101
                    case .asia: return 15102
                    case .australiaAndOceania: return 15103
                    case .europe: return 15104
                    case .middleEast: return 15105
                    case .military: return 15106
                    case .world: return 15107
                }
            }
            
            var stringValue: String {
                switch self {
                    case .history: return "Textbooks|History"
                    case .africa: return "Textbooks|History|Africa"
                    case .americas(let subject): return subject.stringValue
                    case .ancient: return "Textbooks|History|Ancient"
                    case .asia: return "Textbooks|History|Asia"
                    case .australiaAndOceania: return "Textbooks|History|Australia & Oceania"
                    case .europe: return "Textbooks|History|Europe"
                    case .middleEast: return "Textbooks|History|Middle East"
                    case .military: return "Textbooks|History|Military"
                    case .world: return "Textbooks|History|World"
                }
            }
            public enum Americas: Int, CaseIterable {
                case americas = 15097
                case canada = 15098
                case latinAmerica = 15099
                case unitedStates = 15100
                
                var stringValue: String {
                    switch self {
                        case .americas: return "Textbooks|History|Americas"
                        case .canada: return "Textbooks|History|Americas|Canada"
                        case .latinAmerica: return "Textbooks|History|Americas|Latin America"
                        case .unitedStates: return "Textbooks|History|Americas|United States"
                    }
                }
            }
        }
  
        public enum LanguageStudies: Int, CaseIterable {
            case languageStudies = 15109
            case africanLanguages = 15110
            case ancientLanguages = 15111
            case arabic = 15112
            case bilingualEditions = 15113
            case chinese = 15114
            case english = 15115
            case french = 15116
            case german = 15117
            case hebrew = 15118
            case hindi = 15119
            case indigenousLanguages = 15120
            case italian = 15121
            case japanese = 15122
            case korean = 15123
            case linguistics = 15124
            case otherLanguage = 15125
            case portuguese = 15126
            case russian = 15127
            case spanish = 15128
            case speechPathology = 15129
            
            var stringValue: String {
                switch self {
                    case .languageStudies: return "Textbooks|Language Studies"
                    case .africanLanguages: return "Textbooks|Language Studies|African Languages"
                    case .ancientLanguages: return "Textbooks|Language Studies|Ancient Languages"
                    case .arabic: return "Textbooks|Language Studies|Arabic"
                    case .bilingualEditions: return "Textbooks|Language Studies|Bilingual Editions"
                    case .chinese: return "Textbooks|Language Studies|Chinese"
                    case .english: return "Textbooks|Language Studies|English"
                    case .french: return "Textbooks|Language Studies|French"
                    case .german: return "Textbooks|Language Studies|German"
                    case .hebrew: return "Textbooks|Language Studies|Hebrew"
                    case .hindi: return "Textbooks|Language Studies|Hindi"
                    case .indigenousLanguages: return "Textbooks|Language Studies|Indigenous Languages"
                    case .italian: return "Textbooks|Language Studies|Italian"
                    case .japanese: return "Textbooks|Language Studies|Japanese"
                    case .korean: return "Textbooks|Language Studies|Korean"
                    case .linguistics: return "Textbooks|Language Studies|Linguistics"
                    case .otherLanguage: return "Textbooks|Language Studies|Other Language"
                    case .portuguese: return "Textbooks|Language Studies|Portuguese"
                    case .russian: return "Textbooks|Language Studies|Russian"
                    case .spanish: return "Textbooks|Language Studies|Spanish"
                    case .speechPathology: return "Textbooks|Language Studies|Speech Pathology"
                }
            }
        }
        
        public enum LifeStyleAndHome: Int, CaseIterable {
            case lifeStyleAndHome = 15130
            case antiquesAndCollectibles = 15131
            case craftsAndHobbies = 15132
            case gardening = 15133
            case pets = 15134
            
            var stringValue: String {
                switch self {
                    case .lifeStyleAndHome: return "Textbooks|Lifestyle & Home"
                    case .antiquesAndCollectibles: return "Textbooks|Lifestyle & Home|Antiques & Collectibles"
                    case .craftsAndHobbies: return "Textbooks|Lifestyle & Home|Crafts & Hobbies"
                    case .gardening: return "Textbooks|Lifestyle & Home|Gardening"
                    case .pets: return "Textbooks|Lifestyle & Home|Pets"
                }
            }
        }

        public enum Mathematics: Int, CaseIterable {
            case mathematics = 15135
            case advancedMathematics = 15136
            case algebra = 15137
            case arithmetic = 15138
            case calculus = 15139
            case geometry = 15140
            case statistics = 15141
            
            var stringValue: String {
                switch self {
                    case .mathematics: return "Textbooks|Mathematics"
                    case .advancedMathematics: return "Textbooks|Mathematics|Advanced Mathematics"
                    case .algebra: return "Textbooks|Mathematics|Algebra"
                    case .arithmetic: return "Textbooks|Mathematics|Arithmetic"
                    case .calculus: return "Textbooks|Mathematics|Calculus"
                    case .geometry: return "Textbooks|Mathematics|Geometry"
                    case .statistics: return "Textbooks|Mathematics|Statistics"

                }
            }
        }
        
        public enum Medicine: Int, CaseIterable {
            case medicine = 15142
            case anatomyAndPhysiology = 15143
            case dentistry = 15144
            case emergencyMedicine = 15145
            case genetics = 15146
            case immunology = 15147
            case neuroscience = 15148
            case nursing = 15149
            case tpharmacologyAndToxicology = 15150
            case psychiatry = 15151
            case psychology = 15152
            case radiology = 15153
            case veterinary = 15154
            
            var stringValue: String {
                switch self {
                    case .medicine: return "Textbooks|Medicine"
                    case .anatomyAndPhysiology: return "Textbooks|Medicine|Anatomy & Physiology"
                    case .dentistry: return "Textbooks|Medicine|Dentistry"
                    case .emergencyMedicine: return "Textbooks|Medicine|Emergency Medicine"
                    case .genetics: return "Textbooks|Medicine|Genetics"
                    case .immunology: return "Textbooks|Medicine|Immunology"
                    case .neuroscience: return "Textbooks|Medicine|Neuroscience"
                    case .nursing: return "Textbooks|Medicine|Nursing"
                    case .tpharmacologyAndToxicology: return "Textbooks|Medicine|Pharmacology & Toxicology"
                    case .psychiatry: return "Textbooks|Medicine|Psychiatry"
                    case .psychology: return "Textbooks|Medicine|Psychology"
                    case .radiology: return "Textbooks|Medicine|Radiology"
                    case .veterinary: return "Textbooks|Medicine|Veterinary"
                }
            }
        }

        public enum MysteriesAndThrillers: Int, CaseIterable {
            case mysteriesAndThrillers = 15155
            case britishDetectives = 15156
            case hardBoiled = 15157
            case historical = 15158
            case policeProcedural = 15159
            case shortStories = 15160
            case womenSleuths = 15161
            
            var stringValue: String {
                switch self {
                    case .mysteriesAndThrillers: return "Textbooks|Mysteries & Thrillers"
                    case .britishDetectives: return "Textbooks|Mysteries & Thrillers|British Detectives"
                    case .hardBoiled: return "Textbooks|Mysteries & Thrillers|Hard-Boiled"
                    case .historical: return "Textbooks|Mysteries & Thrillers|Historical"
                    case .policeProcedural: return "Textbooks|Mysteries & Thrillers|Police Procedural"
                    case .shortStories: return "Textbooks|Mysteries & Thrillers|Short Stories"
                    case .womenSleuths: return "Textbooks|Mysteries & Thrillers|Women Sleuths"
                }
            }
        }
        
        public enum NonFiction: Int, CaseIterable {
            case nonfiction = 15162
            case familyAndRelationships = 15163
            case transportation = 15164
            case trueCrime = 15165
            
            var stringValue: String {
                switch self {
                    case .nonfiction: return "Textbooks|Nonfiction"
                    case .familyAndRelationships: return "Textbooks|Nonfiction|Family & Relationships"
                    case .transportation: return "Textbooks|Nonfiction|Transportation"
                    case .trueCrime: return "Textbooks|Nonfiction|True Crime"
                }
            }
        }

        public enum Philosophy: Int, CaseIterable {
            case philosphy = 15167
            case aesthetics = 15168
            case epistemology = 15169
            case philosophyEthics = 15170
            case philosophyOfLanguage = 15171
            case logic = 15172
            case metaphysics = 15173
            case politicalPhilosophy = 15174
            case philosophyOfReligion = 15175
            
            var stringValue: String {
                switch self {
                    case .philosphy: return "Textbooks|Philosophy"
                    case .aesthetics: return "Textbooks|Philosophy|Aesthetics"
                    case .epistemology: return "Textbooks|Philosophy|Epistemology"
                    case .philosophyEthics: return "Textbooks|Philosophy|Ethics"
                    case .philosophyOfLanguage: return "Textbooks|Philosophy|Philosophy of Language"
                    case .logic: return "Textbooks|Philosophy|Logic"
                    case .metaphysics: return "Textbooks|Philosophy|Metaphysics"
                    case .politicalPhilosophy: return "Textbooks|Philosophy|Political Philosophy"
                    case .philosophyOfReligion: return "Textbooks|Philosophy|Philosophy of Religion"
                }
            }
        }

        public enum PoliticsAndCurrentEvents: Int, CaseIterable {
            case politicsAndCurrentEvents = 15176
            case currentEvents = 15177
            case foreignPolicyAndInternationalRelations = 15178
            case localGovernments = 15179
            case nationalGovernments = 15180
            case politicalScience = 15181
            case publicAdministration = 15182
            case worldAffairs = 15183
            
            var stringValue: String {
                switch self {
                    case .politicsAndCurrentEvents: return "Textbooks|Politics & Current Events"
                    case .currentEvents: return "Textbooks|Politics & Current Events|Current Events"
                    case .foreignPolicyAndInternationalRelations: return "Textbooks|Politics & Current Events|Foreign Policy & International Relations"
                    case .localGovernments: return "Textbooks|Politics & Current Events|Local Governments"
                    case .nationalGovernments: return "Textbooks|Politics & Current Events|National Governments"
                    case .politicalScience: return "Textbooks|Politics & Current Events|Political Science"
                    case .publicAdministration: return "Textbooks|Politics & Current Events|Public Administration"
                    case .worldAffairs: return "Textbooks|Politics & Current Events|World Affairs"
                }
            }
        }
        
        public enum ProfessionalAndTechnical: Int, CaseIterable {
            case professionalAndTechnical = 15184
            case design = 15185
            case languageArtsAndDisciplines = 15186
            case engineering = 15187
            case law = 15188
            case medical = 15189
            
            var stringValue: String {
                switch self {
                    case .professionalAndTechnical: return "Textbooks|Professional & Technical"
                    case .design: return "Textbooks|Professional & Technical|Design"
                    case .languageArtsAndDisciplines: return "Textbooks|Professional & Technical|Language Arts & Disciplines"
                    case .engineering: return "Textbooks|Professional & Technical|Engineering"
                    case .law: return "Textbooks|Professional & Technical|Law"
                    case .medical: return "Textbooks|Professional & Technical|Medical"
                }
            }
        }
 
        public enum Reference: Int, CaseIterable {
            case reference = 15190
            case almanacsAndYearbooks = 15191
            case atlasesAndMaps = 15192
            case catalogsAndDirectories = 15193
            case consumerGuides = 15194
            case dictionariesAndThesauruses = 15195
            case encyclopedias = 15196
            case etiquette = 15197
            case quotations = 15198
            case studyAids = 15199
            case wordsAndLanguage = 15200
            case writing = 15201
            case manuals = 15312

            var stringValue: String {
                switch self {
                    case .reference: return "Textbooks|Reference"
                    case .almanacsAndYearbooks: return "Textbooks|Reference|Almanacs & Yearbooks"
                    case .atlasesAndMaps: return "Textbooks|Reference|Atlases & Maps"
                    case .catalogsAndDirectories: return "Textbooks|Reference|Catalogs & Directories"
                    case .consumerGuides: return "Textbooks|Reference|Consumer Guides"
                    case .dictionariesAndThesauruses: return "Textbooks|Reference|Dictionaries & Thesauruses"
                    case .encyclopedias: return "Textbooks|Reference|Encyclopedias"
                    case .etiquette: return "Textbooks|Reference|Etiquette"
                    case .quotations: return "Textbooks|Reference|Quotations"
                    case .studyAids: return "Textbooks|Reference|Study Aids"
                    case .wordsAndLanguage: return "Textbooks|Reference|Words & Language"
                    case .writing: return "Textbooks|Reference|Writing"
                    case .manuals: return "Textbooks|Reference|Manuals"
                }
            }
        }

        public enum ReligionAndSpirtuality: Int, CaseIterable {
            case religionAndSpirituality = 15202
            case bibleStudies = 15203
            case bibles = 15204
            case buddhism = 15205
            case christianity = 15206
            case comparativeReligion = 15207
            case hinduism = 15208
            case islam = 15209
            case judaism = 15210
            case spirituality = 15211
            
            var stringValue: String {
                switch self {
                    case .religionAndSpirituality: return "Textbooks|Religion & Spirituality"
                    case .bibleStudies: return "Textbooks|Religion & Spirituality|Bible Studies"
                    case .bibles: return "Textbooks|Religion & Spirituality|Bibles"
                    case .buddhism: return "Textbooks|Religion & Spirituality|Buddhism"
                    case .christianity: return "Textbooks|Religion & Spirituality|Christianity"
                    case .comparativeReligion: return "Textbooks|Religion & Spirituality|Comparative Religion"
                    case .hinduism: return "Textbooks|Religion & Spirituality|Hinduism"
                    case .islam: return "Textbooks|Religion & Spirituality|Islam"
                    case .judaism: return "Textbooks|Religion & Spirituality|Judaism"
                    case .spirituality: return "Textbooks|Religion & Spirituality|Spirituality"
                }
            }
        }

        public enum Romance: Int, CaseIterable {
            case romance = 15212
            case contemporary = 15213
            case eroticRomance = 15214
            case paranormal = 15215
            case historical = 15216
            case shortStories = 15217
            case suspense = 15218
            case western = 15219
            
            var stringValue: String {
                switch self {
                    case .romance: return "Textbooks|Romance"
                    case .contemporary: return "Textbooks|Romance|Contemporary"
                    case .eroticRomance: return "Textbooks|Romance|Erotic Romance"
                    case .paranormal: return "Textbooks|Romance|Paranormal"
                    case .historical: return "Textbooks|Romance|Historical"
                    case .shortStories: return "Textbooks|Romance|Short Stories"
                    case .suspense: return "Textbooks|Romance|Suspense"
                    case .western: return "Textbooks|Romance|Western"
                }
            }
        }
   
        public enum SciFiAndFantasy: CaseIterable {
            case sciFiAndFantasy
            case fantasy(Fantasy)
            case scienceFiction
            case scienceFictionAndLiterature(ScienceFictionAndLiterature)
            
            public static var allCases: [SciFiAndFantasy] {
                var cases: [SciFiAndFantasy] = [.sciFiAndFantasy, .scienceFiction]
                cases.append(contentsOf: Fantasy.allCases.map({ SciFiAndFantasy.fantasy($0)}))
                cases.append(contentsOf: ScienceFictionAndLiterature.allCases.map({ SciFiAndFantasy.scienceFictionAndLiterature($0)}))
                return cases
            }
            
            var rawValue: Int {
                switch self {
                    case .sciFiAndFantasy: return 15220
                    case .fantasy(let subject):
                        return subject.rawValue
                    case .scienceFiction: return 15227
                    case .scienceFictionAndLiterature(let subject):
                        return subject.rawValue
                }
            }
            
            var stringValue: String {
                switch self {
                    case .sciFiAndFantasy: return "Textbooks|Sci-Fi & Fantasy"
                    case .fantasy(let subject):
                        return subject.stringValue
                    case .scienceFiction: return  "Textbooks|Sci-Fi & Fantasy|Science Fiction"
                    case .scienceFictionAndLiterature(let subject):
                        return subject.stringValue
                }
            }

            public enum Fantasy: Int, CaseIterable {
                case fantasy = 15221
                case contemporary = 15222
                case epic = 15223
                case historical = 15224
                case paranormal = 15225
                case shortStories = 15226

                var stringValue: String {
                    switch self {
                        case .fantasy: return "Textbooks|Sci-Fi & Fantasy|Fantasy"
                        case .contemporary: return "Textbooks|Sci-Fi & Fantasy|Fantasy|Contemporary"
                        case .epic: return "Textbooks|Sci-Fi & Fantasy|Fantasy|Epic"
                        case .historical: return "Textbooks|Sci-Fi & Fantasy|Fantasy|Historical"
                        case .paranormal: return "Textbooks|Sci-Fi & Fantasy|Fantasy|Paranormal"
                        case .shortStories: return "Textbooks|Sci-Fi & Fantasy|Fantasy|Short Stories"
                    }
                }
            }

            public enum ScienceFictionAndLiterature: Int, CaseIterable {
                case scienceFictionAndLiterature = 15228
                case adventure = 15229
                case highTech = 15230
                case shortStories = 15231
                
                var stringValue: String {
                    switch self {
                        case .scienceFictionAndLiterature: return "Textbooks|Sci-Fi & Fantasy|Science Fiction & Literature"
                        case .adventure: return "Textbooks|Sci-Fi & Fantasy|Science Fiction & Literature|Adventure"
                        case .highTech: return "Textbooks|Sci-Fi & Fantasy|Science Fiction & Literature|High Tech"
                        case .shortStories: return "Textbooks|Sci-Fi & Fantasy|Science Fiction & Literature|Short Stories"
                    }
                }
            }
        }
        
        public enum ScienceAndNature: Int, CaseIterable {
            case scienceAndNature = 15232
            case agriculture = 15233
            case astronomy = 15234
            case atmosphere = 15235
            case biology = 15236
            case chemistry = 15237
            case earthSciences = 15238
            case ecology = 15239
            case environment = 15240
            case essays = 15241
            case geography = 15242
            case geology = 15243
            case history = 15244
            case lifeSciences = 15245
            case nature = 15246
            case physics = 15247
            case reference = 15248

            var stringValue: String {
                switch self {
                    case .scienceAndNature: return "Textbooks|Science & Nature"
                    case .agriculture: return "Textbooks|Science & Nature|Agriculture"
                    case .astronomy: return "Textbooks|Science & Nature|Astronomy"
                    case .atmosphere: return "Textbooks|Science & Nature|Atmosphere"
                    case .biology: return "Textbooks|Science & Nature|Biology"
                    case .chemistry: return "Textbooks|Science & Nature|Chemistry"
                    case .earthSciences: return "Textbooks|Science & Nature|Earth Sciences"
                    case .ecology: return "Textbooks|Science & Nature|Ecology"
                    case .environment: return "Textbooks|Science & Nature|Environment"
                    case .essays: return "Textbooks|Science & Nature|Essays"
                    case .geography: return "Textbooks|Science & Nature|Geography"
                    case .geology: return "Textbooks|Science & Nature|Geology"
                    case .history: return "Textbooks|Science & Nature|History"
                    case .lifeSciences: return "Textbooks|Science & Nature|Life Sciences"
                    case .nature: return "Textbooks|Science & Nature|Nature"
                    case .physics: return "Textbooks|Science & Nature|Physics"
                    case .reference: return "Textbooks|Science & Nature|Reference"
                }
            }
        }
        
        public enum SocialScience: CaseIterable {
            case socialScience
            case anthropology
            case archaeology
            case civics
            case government
            case socialStudies
            case socialWelfare
            case sociology
            case society(Society)
            
            public static var allCases: [SocialScience] {
                var cases: [SocialScience] = [.anthropology, .archaeology, .civics, .government, .socialScience, .socialStudies, .socialWelfare, .sociology]
                cases.append(contentsOf: Society.allCases.map({ SocialScience.society($0)}))
                return cases
            }
            
            var rawValue: Int {
                switch self {
                    case .socialScience: return 25249
                    case .anthropology: return 15250
                    case .archaeology: return 15251
                    case .civics: return 15252
                    case .government: return 15253
                    case .socialStudies: return 15254
                    case .socialWelfare: return 15255
                    case .sociology: return 15269
                    case .society(let subject): return subject.rawValue
                }
            }
            
            var stringValue: String {
                switch self {
                    case .socialScience: return "Textbooks|Social Science"
                    case .anthropology: return "Textbooks|Social Science|Anthropology"
                    case .archaeology: return "Textbooks|Social Science|Archaeology"
                    case .civics: return "Textbooks|Social Science|Civics"
                    case .government: return "Textbooks|Social Science|Government"
                    case .socialStudies: return "Textbooks|Social Science|Social Studies"
                    case .socialWelfare: return "Textbooks|Social Science|Social Welfare"
                    case .sociology: return "Textbooks|Social Science|Sociology"
                    case .society(let subject): return subject.stringValue
                }
            }
            
            public enum Society: Int, CaseIterable {
                case society = 15256
                case africanStudies = 15257
                case americanStudies = 15258
                case asiaPacificStudies = 15259
                case crossCulturalStudies = 15260
                case europeanStudies = 15261
                case immigrationAndEmigration = 15262
                case indigenousStudies = 15263
                case latinAndCaribbeanStudies = 15264
                case middleEasternStudies = 15265
                case raceAndEthnicityStudies = 15266
                case sexualityStudies = 15267
                case womensStudies = 15268

                var stringValue: String {
                    switch self {
                        case .society: return "Textbooks|Social Science|Society"
                        case .africanStudies: return "Textbooks|Social Science|Society|African Studies"
                        case .americanStudies: return "Textbooks|Social Science|Society|American Studies"
                        case .asiaPacificStudies: return "Textbooks|Social Science|Society|Asia Pacific Studies"
                        case .crossCulturalStudies: return "Textbooks|Social Science|Society|Cross-Cultural Studies"
                        case .europeanStudies: return "Textbooks|Social Science|Society|European Studies"
                        case .immigrationAndEmigration: return "Textbooks|Social Science|Society|Immigration & Emigration"
                        case .indigenousStudies: return "Textbooks|Social Science|Society|Indigenous Studies"
                        case .latinAndCaribbeanStudies: return "Textbooks|Social Science|Society|Latin & Caribbean Studies"
                        case .middleEasternStudies: return "Textbooks|Social Science|Society|Middle Eastern Studies"
                        case .raceAndEthnicityStudies: return "Textbooks|Social Science|Society|Race & Ethnicity Studies"
                        case .sexualityStudies: return "Textbooks|Social Science|Society|Sexuality Studies"
                        case .womensStudies: return "Textbooks|Social Science|Society|Women's Studies"
                    }
                }
            }
        }
        
        public enum SportsAndOutdoors: Int, CaseIterable {
            case sportsAndOutdoors = 15270
            case baseball = 15271
            case basketball = 15272
            case coaching = 15273
            case equestrian = 15274
            case extremeSports = 15275
            case football = 15276
            case golf = 15277
            case hockey = 15278
            case motorSports = 15279
            case mountaineering = 15280
            case outdoors = 15281
            case racketSports = 15282
            case reference = 15283
            case soccer = 15284
            case training = 15285
            case waterSports = 15286
            case winterSports = 15287
            
            var stringValue: String {
                switch self {
                    case .sportsAndOutdoors: return "Textbooks|Sports & Outdoors"
                    case .baseball: return "Textbooks|Sports & Outdoors|Baseball"
                    case .basketball: return "Textbooks|Sports & Outdoors|Basketball"
                    case .coaching: return "Textbooks|Sports & Outdoors|Coaching"
                    case .equestrian: return "Textbooks|Sports & Outdoors|Equestrian"
                    case .extremeSports: return "Textbooks|Sports & Outdoors|Extreme Sports"
                    case .football: return "Textbooks|Sports & Outdoors|Football"
                    case .golf: return "Textbooks|Sports & Outdoors|Golf"
                    case .hockey: return "Textbooks|Sports & Outdoors|Hockey"
                    case .motorSports: return "Textbooks|Sports & Outdoors|Motor Sports"
                    case .mountaineering: return "Textbooks|Sports & Outdoors|Mountaineering"
                    case .outdoors: return "Textbooks|Sports & Outdoors|Outdoors"
                    case .racketSports: return "Textbooks|Sports & Outdoors|Racket Sports"
                    case .reference: return "Textbooks|Sports & Outdoors|Reference"
                    case .soccer: return "Textbooks|Sports & Outdoors|Soccer"
                    case .training: return "Textbooks|Sports & Outdoors|Training"
                    case .waterSports: return "Textbooks|Sports & Outdoors|Water Sports"
                    case .winterSports: return "Textbooks|Sports & Outdoors|Winter Sports"
                }
            }
        }
        
        public enum TeachingAndLearning: Int, CaseIterable {
            case teachingAndLearning = 15288
            case adultEducation = 15289
            case curriculumAndTeaching = 15290
            case educationalLeadership = 15291
            case educationalTechnology = 15292
            case familyAndChildcare = 15293
            case informationAndLibraryScience = 15294
            case learningResources = 15295
            case psychologyAndResearch = 15296
            case specialEducation = 15297

            var stringValue: String {
                switch self {
                    case .teachingAndLearning: return "Textbooks|Teaching & Learning"
                    case .adultEducation: return "Textbooks|Teaching & Learning|Adult Education"
                    case .curriculumAndTeaching: return "Textbooks|Teaching & Learning|Curriculum & Teaching"
                    case .educationalLeadership: return "Textbooks|Teaching & Learning|Educational Leadership"
                    case .educationalTechnology: return "Textbooks|Teaching & Learning|Educational Technology"
                    case .familyAndChildcare: return "Textbooks|Teaching & Learning|Family & Childcare"
                    case .informationAndLibraryScience: return "Textbooks|Teaching & Learning|Information & Library Science"
                    case .learningResources: return "Textbooks|Teaching & Learning|Learning Resources"
                    case .psychologyAndResearch: return "Textbooks|Teaching & Learning|Psychology & Research"
                    case .specialEducation: return "Textbooks|Teaching & Learning|Special Education"
                }
            }
        }
        
        public enum TravelAndAdventure: CaseIterable {
            case travelAndAdventure
            case africa
            case americas(Americas)
            case asia
            case caribbean
            case essaysAndMemoirs
            case adventureEurope
            case middleEast
            case oceania
            case specialtyTravel
            
            public static var allCases: [TravelAndAdventure] {
                var cases: [TravelAndAdventure] = [.adventureEurope, .africa, .asia, .caribbean, .essaysAndMemoirs, .middleEast, .oceania, .specialtyTravel, .travelAndAdventure]
                cases.append(contentsOf: Americas.allCases.map({ TravelAndAdventure.americas($0)}))
                return cases
            }
            
            var rawValue: Int {
                switch self {
                    case .travelAndAdventure: return 15298
                    case .africa: return 15299
                    case .americas(let subject): return subject.rawValue
                    case .asia: return 15304
                    case .caribbean: return 15305
                    case .essaysAndMemoirs: return 15306
                    case .adventureEurope: return 15307
                    case .middleEast: return 15308
                    case .oceania: return 15308
                    case .specialtyTravel: return 15310
                }
            }
            var stringValue: String {
                switch self {
                    case .travelAndAdventure: return "Textbooks|Travel & Adventure"
                    case .africa: return "Textbooks|Travel & Adventure|Africa"
                    case .americas(let subject): return subject.stringValue
                    case .asia: return "Textbooks|Travel & Adventure|Asia"
                    case .caribbean: return "Textbooks|Travel & Adventure|Caribbean"
                    case .essaysAndMemoirs: return "Textbooks|Travel & Adventure|Essays & Memoirs"
                    case .adventureEurope: return "Textbooks|Travel & Adventure|Europe"
                    case .middleEast: return "Textbooks|Travel & Adventure|Middle East"
                    case .oceania: return "Textbooks|Travel & Adventure|Oceania"
                    case .specialtyTravel: return "Textbooks|Travel & Adventure|Specialty Travel"
                }
            }

            public enum Americas: Int, CaseIterable {
                case americas = 15300
                case canada = 15301
                case latinAmerica = 15302
                case unitedStates = 15303
                
                var stringValue: String {
                    switch self {
                        case .americas: return "Textbooks|Travel & Adventure|Americas"
                        case .canada: return "Textbooks|Travel & Adventure|Americas|Canada"
                        case .latinAmerica: return "Textbooks|Travel & Adventure|Americas|Latin America"
                        case .unitedStates: return "Textbooks|Travel & Adventure|Americas|United States"
                    }
                }
            }
        }
    }
}
