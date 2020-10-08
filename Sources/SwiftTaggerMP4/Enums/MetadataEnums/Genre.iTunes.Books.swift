//
//  File.swift
//
//
//  Created by Nolaine Crusher on 10/5/20.
//

import Foundation

extension Genre {
    public enum Books: CaseIterable {
        case books
        case nonfiction(NonFiction)
        case romance(Romance)
        case travelAndAdventure(TravelAndAdventure)
        case artsAndEntertainment(ArtsAndEntertainment)
        case biographiesAndMemoirs(BiographiesAndMemoirs)
        case businessAndPersonalFinance (BusinessAndPersonalFinance)
        case childrenAndTeens(ChildrenAndTeens)
        case humor(Humor)
        case history(History)
        case religionAndSpirituality(ReligionAndSpirituality)
        case scienceAndNature(ScienceAndNature)
        case sciFiAndFantasy(SciFiAndFantasy)
        case lifestyleAndHome(LifestyleAndHome)
        case selfDevelopment(SelfDevelopment)
        case comicsAndGraphicNovels(ComicsAndGraphicNovels)
        case computersAndInternet(ComputersAndInternet)
        case cookbooksFoodAndWine(CookbooksFoodAndWine)
        case professionalAndTechnical(ProfessionalAndTechnical)
        case parenting
        case fictionAndLiterature(FictionAndLiterature)
        case mysteriesAndThrillers(MysteryAndThrillers)
        case reference(Reference)
        case politicalAndCurrentEvents(PoliticalAndCurrentEvents)
        case sportsAndOutdoors(SportsAndOutdoors)
        case communicationsandMedia(CommunicationsAndMedia)
        case kids(Kids)
        case youngAdult(YoungAdult)
        case militaryAndWarfare

        public static var allCases: [Books] {
            var cases: [Books] = [.books, .parenting, .militaryAndWarfare]
            cases.append(contentsOf: NonFiction.allCases.map({ Books.nonfiction($0)}))
            cases.append(contentsOf: Romance.allCases.map({ Books.romance($0)}))
            cases.append(contentsOf: TravelAndAdventure.allCases.map({ Books.travelAndAdventure($0)}))
            cases.append(contentsOf: ArtsAndEntertainment.allCases.map({ Books.artsAndEntertainment($0)}))
            cases.append(contentsOf: BiographiesAndMemoirs.allCases.map({ Books.biographiesAndMemoirs($0)}))
            cases.append(contentsOf: BusinessAndPersonalFinance.allCases.map({ Books.businessAndPersonalFinance($0)}))
            cases.append(contentsOf: ChildrenAndTeens.allCases.map({ Books.childrenAndTeens($0)}))
            cases.append(contentsOf: Humor.allCases.map({ Books.humor($0)}))
            cases.append(contentsOf: History.allCases.map({ Books.history($0)}))
            cases.append(contentsOf: ReligionAndSpirituality.allCases.map({ Books.religionAndSpirituality($0)}))
            cases.append(contentsOf: ScienceAndNature.allCases.map({ Books.scienceAndNature($0)}))
            cases.append(contentsOf: SciFiAndFantasy.allCases.map({ Books.sciFiAndFantasy($0)}))
            cases.append(contentsOf: LifestyleAndHome.allCases.map({ Books.lifestyleAndHome($0)}))
            cases.append(contentsOf: SelfDevelopment.allCases.map({ Books.selfDevelopment($0)}))
            cases.append(contentsOf: ComicsAndGraphicNovels.allCases.map({ Books.comicsAndGraphicNovels($0)}))
            cases.append(contentsOf: ComputersAndInternet.allCases.map({ Books.computersAndInternet($0)}))
            cases.append(contentsOf: CookbooksFoodAndWine.allCases.map({ Books.cookbooksFoodAndWine($0)}))
            cases.append(contentsOf: ProfessionalAndTechnical.allCases.map({ Books.professionalAndTechnical($0)}))
            cases.append(contentsOf: FictionAndLiterature.allCases.map({ Books.fictionAndLiterature($0)}))
            cases.append(contentsOf: MysteryAndThrillers.allCases.map({ Books.mysteriesAndThrillers($0)}))
            cases.append(contentsOf: Reference.allCases.map({ Books.reference($0)}))
            cases.append(contentsOf: PoliticalAndCurrentEvents.allCases.map({ Books.politicalAndCurrentEvents($0)}))
            cases.append(contentsOf: SportsAndOutdoors.allCases.map({ Books.sportsAndOutdoors($0)}))
            cases.append(contentsOf: CommunicationsAndMedia.allCases.map({ Books.communicationsandMedia($0)}))
            cases.append(contentsOf: Kids.allCases.map({ Books.kids($0)}))
            cases.append(contentsOf: YoungAdult.allCases.map({ Books.youngAdult($0)}))
            return cases
        }
        
        var genreID: Int {
            switch self {
                case .books: return 38
                case .romance(let subject): return subject.rawValue
                case .travelAndAdventure(let subject): return subject.rawValue
                case .artsAndEntertainment(let subject): return subject.rawValue
                case .biographiesAndMemoirs(let subject): return subject.rawValue
                case .businessAndPersonalFinance(let subject): return subject.rawValue
                case .childrenAndTeens(let subject): return subject.rawValue
                case .history(let subject): return subject.rawValue
                case .religionAndSpirituality(let subject): return subject.rawValue
                case .scienceAndNature(let subject): return subject.rawValue
                case .sciFiAndFantasy(let subject): return subject.rawValue
                case .selfDevelopment(let subject): return subject.rawValue
                case .comicsAndGraphicNovels(let subject): return subject.rawValue
                case .computersAndInternet(let subject): return subject.rawValue
                case .cookbooksFoodAndWine(let subject): return subject.rawValue
                case .professionalAndTechnical(let subject): return subject.rawValue
                case .parenting: return 9030
                case .fictionAndLiterature(let subject): return subject.rawValue
                case .mysteriesAndThrillers(let subject): return subject.rawValue
                case .reference(let subject): return subject.rawValue
                case .sportsAndOutdoors(let subject): return subject.rawValue
                case .communicationsandMedia(let subject): return subject.rawValue
                case .kids(let subject): return subject.rawValue
                case .youngAdult(let subject): return subject.rawValue
                case .militaryAndWarfare: return 11228
                case .nonfiction(let subject): return subject.rawValue
                case .humor(let subject): return subject.rawValue
                case .lifestyleAndHome(let subject): return subject.rawValue
                case .politicalAndCurrentEvents(let subject): return subject.rawValue
            }
        }
        
        var stringValue: String {
            switch self {
                case .books: return "Books"
                case .nonfiction(let subject): return subject.stringValue
                case .romance(let genre): return genre.stringValue
                case .travelAndAdventure(let subject): return subject.stringValue
                case .artsAndEntertainment(let subject): return subject.stringValue
                case .biographiesAndMemoirs(let subject): return subject.stringValue
                case .businessAndPersonalFinance(let subject): return subject.stringValue
                case .childrenAndTeens(let subject): return subject.stringValue
                case .humor: return "Books|Humor"
                case .history(let subject): return subject.stringValue
                case .religionAndSpirituality(let subject): return subject.stringValue
                case .scienceAndNature(let subject): return subject.stringValue
                case .sciFiAndFantasy(let genre): return genre.stringValue
                case .lifestyleAndHome: return "Books|Lifestyle & Home"
                case .selfDevelopment(let subject): return subject.stringValue
                case .comicsAndGraphicNovels(let genre): return genre.stringValue
                case .computersAndInternet(let subject): return subject.stringValue
                case .cookbooksFoodAndWine(let subject): return subject.stringValue
                case .professionalAndTechnical(let subject): return subject.stringValue
                case .parenting: return "Books|Parenting"
                case .fictionAndLiterature(let genre): return genre.stringValue
                case .mysteriesAndThrillers(let genre): return genre.stringValue
                case .reference(let subject): return subject.stringValue
                case .politicalAndCurrentEvents: return "Books|Politics & Current Events"
                case .sportsAndOutdoors(let subject): return subject.stringValue
                case .communicationsandMedia(let subject): return subject.stringValue
                case .kids(let subject): return subject.stringValue
                case .youngAdult(let subject): return subject.stringValue
                case .militaryAndWarfare: return "Books|Military & Warfare"
            }
        }

        public enum Humor: Int, CaseIterable {
            case humor = 9012
            case jokesandRiddles = 11246
            
            var stringValue: String {
                switch self {
                    case .humor: return "Books|Humor"
                    case .jokesandRiddles: return "Books|Humor|Jokes & Riddles"
                }
            }
        }

        public enum LifestyleAndHome: Int, CaseIterable {
            case lifestyleAndHome = 9024
            case antiquesAndCollectibles = 10001
            case craftsAndHobbies = 10034
            case gardening = 10068
            case pets = 10090
            
            var stringValue: String {
                switch self {
                    case .lifestyleAndHome: return "Books|Lifestyle & Home"
                    case .antiquesAndCollectibles: return "Books|Lifestyle & Home|Antiques & Collectibles"
                    case .craftsAndHobbies: return "Books|Lifestyle & Home|Crafts & Hobbies"
                    case .gardening: return "Books|Lifestyle & Home|Gardening"
                    case .pets: return "Books|Lifestyle & Home|Pets"
                }
            }
        }
        
        public enum PoliticalAndCurrentEvents: Int, CaseIterable {
            case politicalAndCurrentEvents = 9034
            case currentEvents = 11260
            case foreignPolicyAndInternationalRelations = 11261
            case localGovernment = 11262
            case nationalGovernment = 11263
            case politicalScience = 11264
            case publicAdministration = 11265
            case worldAffairs = 11266
            
            var stringValue: String {
                switch self {
                    case .politicalAndCurrentEvents: return "Books|Politics & Current Events"
                    case .currentEvents: return "Books|Politics & Current Events|Current Events"
                    case .foreignPolicyAndInternationalRelations: return "Books|Politics & Current Events|Foreign Policy & International Relations"
                    case .localGovernment: return "Books|Politics & Current Events|Local Government"
                    case .nationalGovernment: return "Books|Politics & Current Events|National Government"
                    case .politicalScience: return "Books|Politics & Current Events|Political Science"
                    case .publicAdministration: return "Books|Politics & Current Events|Public Administration"
                    case .worldAffairs: return "Books|Politics & Current Events|World Affairs"
                }
            }
        }

        public enum ComputersAndInternet: Int, CaseIterable {
            case computersAndInternet = 9027
            case computers = 10017
            case databases = 10018
            case digitalMedia = 10019
            case internet = 10020
            case network = 10021
            case operatingSystems = 10022
            case programming = 10023
            case software = 10024
            case systemAdministration = 10025
            
            var stringValue: String {
                switch self {
                    case .computersAndInternet: return "Books|Computers & Internet"
                    case .computers: return "Books|Computers & Internet|Computers"
                    case .databases: return "Books|Computers & Internet|Databases"
                    case .digitalMedia: return "Books|Computers & Internet|Digital Media"
                    case .internet: return "Books|Computers & Internet|Internet"
                    case .network: return "Books|Computers & Internet|Network"
                    case .operatingSystems: return "Books|Computers & Internet|Operating Systems"
                    case .programming: return "Books|Computers & Internet|Programming"
                    case .software: return "Books|Computers & Internet|Software"
                    case .systemAdministration: return "Books|Computers & Internet|System Administration"
                }
            }
        }

        public enum CookbooksFoodAndWine: Int, CaseIterable {
            case cookbooksFoodAndWine = 9028
            case culinaryArts = 11255
            case beverages = 10026
            case coursesAndDishes = 10027
            case specialDiet = 10028
            case specialOccasions = 10029
            case methods = 10030
            case reference = 10031
            case regionalAndEthnic = 10032
            case specificIngredients = 10033

            var stringValue: String {
                switch self {
                    case .cookbooksFoodAndWine: return "Books|Cookbooks, Food & Wine"
                    case .culinaryArts: return "Books|Cookbooks, Food & Wine|Culinary Arts"
                    case .beverages: return "Books|Cookbooks, Food & Wine|Beverages"
                    case .coursesAndDishes: return "Books|Cookbooks, Food & Wine|Courses & Dishes"
                    case .specialDiet: return "Books|Cookbooks, Food & Wine|Special Diet"
                    case .specialOccasions: return "Books|Cookbooks, Food & Wine|Special Occasions"
                    case .methods: return "Books|Cookbooks, Food & Wine|Methods"
                    case .reference: return "Books|Cookbooks, Food & Wine|Reference"
                    case .regionalAndEthnic: return "Books|Cookbooks, Food & Wine|Regional & Ethnic"
                    case .specificIngredients: return "Books|Cookbooks, Food & Wine|Specific Ingredients"
                }
            }
        }

        public enum History: Int, CaseIterable {
            case history = 9015
            case africa = 10070
            case americas = 10071
            case ancient = 10072
            case asia = 10073
            case australiaAndOceania = 10074
            case europe = 10075
            case latinAmerica = 10076
            case middleEast = 10077
            case military = 10078
            case unitedStates = 10079
            case world = 10080
            
            var stringValue: String {
                switch self {
                    case .history: return "Books|History"
                    case .africa: return "Books|History|Africa"
                    case .americas: return "Books|History|Americas"
                    case .ancient: return "Books|History|Ancient"
                    case .asia: return "Books|History|Asia"
                    case .australiaAndOceania: return "Books|History|Australia & Oceania"
                    case .europe: return "Books|History|Europe"
                    case .latinAmerica: return "Books|History|Latin America"
                    case .middleEast: return "Books|History|Middle East"
                    case .military: return "Books|History|Military"
                    case .unitedStates: return "Books|History|United States"
                    case .world: return "Books|History|World"
                }
            }
        }

        public enum ChildrenAndTeens: CaseIterable {
            case childrenAndTeens
            case children(Children)
            
            var rawValue: Int {
                switch self {
                    case .childrenAndTeens: return 9010
                    case .children(let genre): return genre.rawValue
                }
            }
            var stringValue: String {
                switch self {
                    case .childrenAndTeens: return "Books|Children & Teens"
                    case .children(let subject): return subject.stringValue
                }
            }
            
            public static var allCases: [ChildrenAndTeens] {
                var cases: [ChildrenAndTeens] = [.childrenAndTeens]
                cases.append(contentsOf: Children.allCases.map({ ChildrenAndTeens.children($0)}))
                return cases
            }
            
            public enum Children: Int, CaseIterable {
                case fiction = 10081
                case nonfiction = 10082

                var stringValue: String {
                    switch self {
                        case .fiction: return "Books|Children & Teens|Children's Fiction"
                        case .nonfiction: return "Books|Children & Teens|Children's Nonfiction"
                    }
                }
            }
        }

        public enum SelfDevelopment: Int, CaseIterable {
            case selfDevelopment = 9025
            case spirituality = 10004
            case healthAndFitness = 10069
            case psychology = 10094
            case selfImprovement = 10119
            case dietAndNutrition = 11062
            
            var stringValue: String {
                switch self {
                    case .selfDevelopment: return "Books|Self-Development"
                    case .spirituality: return "Books|Self-Development|Spirituality"
                    case .healthAndFitness: return "Books|Self-Development|Health & Fitness"
                    case .psychology: return "Books|Self-Development|Psychology"
                    case .selfImprovement: return "Books|Self-Development|Self-Improvement"
                    case .dietAndNutrition: return "Books|Self-Development|Diet & Nutrition"

                }
            }
        }

        public enum TravelAndAdventure: Int, CaseIterable {
            case travelAndAdventure = 9004
            case africa = 10139
            case asia = 10140
            case specialtyTravel = 10141
            case canada = 10142
            case caribbean = 10143
            case latinAmerica = 10144
            case essaysandMemoirs = 10145
            case europe = 10146
            case middleEast = 10147
            case unitedStates = 10148
            
            var stringValue: String {
                switch self {
                    case .travelAndAdventure: return "Books|Travel & Adventure"
                    case .africa: return "Books|Travel & Adventure|Africa"
                    case .asia: return "Books|Travel & Adventure|Asia"
                    case .specialtyTravel: return "Books|Travel & Adventure|Specialty Travel"
                    case .canada: return "Books|Travel & Adventure|Canada"
                    case .caribbean: return "Books|Travel & Adventure|Caribbean"
                    case .latinAmerica: return "Books|Travel & Adventure|Latin America"
                    case .essaysandMemoirs: return "Books|Travel & Adventure|Essays & Memoirs"
                    case .europe: return "Books|Travel & Adventure|Europe"
                    case .middleEast: return "Books|Travel & Adventure|Middle East"
                    case .unitedStates: return "Books|Travel & Adventure|United States"
                }
            }
        }

        public enum CommunicationsAndMedia: Int, CaseIterable {
            case communicationsAndMedia = 11010
            case broadcasting = 11011
            case digitalMedia = 11012
            case journalism = 11013
            case photojournalism = 11014
            case print = 11015
            case speech = 11016
            case writing = 11017

            var stringValue: String {
                switch self {
                    case .communicationsAndMedia: return "Books|Communications & Media"
                    case .broadcasting: return "Books|Communications & Media|Broadcasting"
                    case .digitalMedia: return "Books|Communications & Media|Digital Media"
                    case .journalism: return "Books|Communications & Media|Journalism"
                    case .photojournalism: return "Books|Communications & Media|Photojournalism"
                    case .print: return "Books|Communications & Media|Print"
                    case .speech: return "Books|Communications & Media|Speech"
                    case .writing: return "Books|Communications & Media|Writing"
                }
            }
        }
 
        public enum BiographiesAndMemoirs: Int, CaseIterable {
            case biographiesAndMemoirs =  9008
            case artsAndEntertainment = 11027
            case business = 11028
            case culinary = 11029
            case gayAndLesbian = 11030
            case historical = 11031
            case literary = 11032
            case mediaAndJournalism = 11033
            case military = 11034
            case politics = 11035
            case religious = 11036
            case scienceAndTechnology = 11037
            case sports = 11038
            case women = 11039

            var stringValue: String {
                switch self {
                    case .biographiesAndMemoirs: return "Books|Biographies & Memoirs"
                    case .artsAndEntertainment: return "Books|Biographies & Memoirs|Arts & Entertainment"
                    case .business: return "Books|Biographies & Memoirs|Business"
                    case .culinary: return "Books|Biographies & Memoirs|Culinary"
                    case .gayAndLesbian: return "Books|Biographies & Memoirs|Gay & Lesbian"
                    case .historical: return "Books|Biographies & Memoirs|Historical"
                    case .literary: return "Books|Biographies & Memoirs|Literary"
                    case .mediaAndJournalism: return "Books|Biographies & Memoirs|Media & Journalism"
                    case .military: return "Books|Biographies & Memoirs|Military"
                    case .politics: return "Books|Biographies & Memoirs|Politics"
                    case .religious: return "Books|Biographies & Memoirs|Religious"
                    case .scienceAndTechnology: return "Books|Biographies & Memoirs|Science & Technology"
                    case .sports: return "Books|Biographies & Memoirs|Sports"
                    case .women: return "Books|Biographies & Memoirs|Women"
                }
            }
        }

        public enum SportsAndOutdoors: Int, CaseIterable {
            case sportsAndOutdoors =  9035
            case baseball = 10121
            case basketball = 10122
            case coaching = 10123
            case extremeSports = 10124
            case football = 10125
            case golf = 10126
            case hockey = 10127
            case mountaineering = 10128
            case outdoors = 10129
            case racketSports = 10130
            case reference = 10131
            case soccer = 10132
            case training = 10133
            case wterSports = 10134
            case winterSports = 10135
            case boxing = 11054
            case cricket = 11055
            case cycling = 11056
            case equestrian = 11057
            case martialArtsAndSelfDefense = 11058
            case motorSports = 11059
            case rugby = 11060
            case running = 11061

            var stringValue: String {
                switch self {
                    case .sportsAndOutdoors: return "Books|Sports & Outdoors"
                    case .baseball: return "Books|Sports & Outdoors|Baseball"
                    case .basketball: return "Books|Sports & Outdoors|Basketball"
                    case .coaching: return "Books|Sports & Outdoors|Coaching"
                    case .extremeSports: return "Books|Sports & Outdoors|Extreme Sports"
                    case .football: return "Books|Sports & Outdoors|Football"
                    case .golf: return "Books|Sports & Outdoors|Golf"
                    case .hockey: return "Books|Sports & Outdoors|Hockey"
                    case .mountaineering: return "Books|Sports & Outdoors|Mountaineering"
                    case .outdoors: return "Books|Sports & Outdoors|Outdoors"
                    case .racketSports: return "Books|Sports & Outdoors|Racket Sports"
                    case .reference: return "Books|Sports & Outdoors|Reference"
                    case .soccer: return "Books|Sports & Outdoors|Soccer"
                    case .training: return "Books|Sports & Outdoors|Training"
                    case .wterSports: return "Books|Sports & Outdoors|Water Sports"
                    case .winterSports: return "Books|Sports & Outdoors|Winter Sports"
                    case .boxing: return "Books|Sports & Outdoors|Boxing"
                    case .cricket: return "Books|Sports & Outdoors|Cricket"
                    case .cycling: return "Books|Sports & Outdoors|Cycling"
                    case .equestrian: return "Books|Sports & Outdoors|Equestrian"
                    case .martialArtsAndSelfDefense: return "Books|Sports & Outdoors|Martial Arts & Self Defense"
                    case .motorSports: return "Books|Sports & Outdoors|Motor Sports"
                    case .rugby: return "Books|Sports & Outdoors|Rugby"
                    case .running: return "Books|Sports & Outdoors|Running"
                }
            }
        }

        public enum Kids: CaseIterable {
            case kids
            case animals
            case basicConcepts(BasicConcepts)
            case biography
            case careersAndOccupations
            case computersAndTechnology
            case cookingAndFood
            case artsAndEntertainment(ArtsAndEntertainment)
            case family
            case fiction(Fiction)
            case gamesAndActivities
            case generalNonfiction
            case health
            case history
            case holidaysAndCelebrations(HolidaysAndCelebrations)
            case humor(Humor)
            case poetry
            case learningToRead(LearningToRead)
            case nurseryRhymes
            case government
            case reference
            case religion
            case scienceAndNature
            case socialIssues
            case socialStudies
            case sportsAndRecreation
            case transportation
            
            public static var allCases: [Kids] {
                var cases: [Kids] = [.animals, .biography, .careersAndOccupations, .computersAndTechnology, .cookingAndFood, .family, .gamesAndActivities, .generalNonfiction, .government, .health, .history, .kids, .nurseryRhymes, .poetry, .reference, .reference, .reference, .religion, .scienceAndNature, .socialIssues, .sportsAndRecreation, .transportation]
                cases.append(contentsOf: ArtsAndEntertainment.allCases.map({ Kids.artsAndEntertainment($0)}))
                cases.append(contentsOf: BasicConcepts.allCases.map({ Kids.basicConcepts($0)}))
                cases.append(contentsOf: HolidaysAndCelebrations.allCases.map({ Kids.holidaysAndCelebrations($0)}))
                cases.append(contentsOf: Humor.allCases.map({ Kids.humor($0)}))
                cases.append(contentsOf: LearningToRead.allCases.map({ Kids.learningToRead($0)}))
                return cases
            }
            
            var rawValue: Int {
                switch self {
                    case .kids: return 11086
                    case .animals: return 11087
                    case .basicConcepts(let subgenre): return subgenre.rawValue
                    case .biography: return 11102
                    case .careersAndOccupations: return 11103
                    case .computersAndTechnology: return 11104
                    case .cookingAndFood: return 11105
                    case .artsAndEntertainment(let subgenre): return subgenre.rawValue
                    case .family: return 11111
                    case .fiction(let subgenre): return subgenre.rawValue
                    case .gamesAndActivities: return 11132
                    case .generalNonfiction: return 11133
                    case .health: return 11134
                    case .history: return 11135
                    case .holidaysAndCelebrations(let subgenre): return subgenre.rawValue
                    case .humor(let subgenre): return subgenre.rawValue
                    case .poetry: return 11151
                    case .learningToRead(let subgenre): return subgenre.rawValue
                    case .nurseryRhymes: return 11156
                    case .government: return 11157
                    case .reference: return 11158
                    case .religion: return 11159
                    case .scienceAndNature: return 11160
                    case .socialIssues: return 11161
                    case .socialStudies: return 11162
                    case .sportsAndRecreation: return 11163
                    case .transportation: return 11164
                }
            }
            
            var stringValue: String {
                switch self {
                    case .kids: return "Books|Kids"
                    case .animals: return "Books|Kids|Animals"
                    case .basicConcepts(let subject): return subject.stringValue
                    case .biography: return "Books|Kids|Biography"
                    case .careersAndOccupations: return "Books|Kids|Careers & Occupations"
                    case .computersAndTechnology: return "Books|Kids|Computers & Technology"
                    case .cookingAndFood: return "Books|Kids|Cooking & Food"
                    case .artsAndEntertainment(let subject): return subject.stringValue
                    case .family: return "Books|Kids|Family"
                    case .fiction(let genre): return genre.stringValue
                    case .gamesAndActivities: return "Books|Kids|Games & Activities"
                    case .generalNonfiction: return "Books|Kids|General Nonfiction"
                    case .health: return "Books|Kids|Health"
                    case .history: return "Books|Kids|History"
                    case .holidaysAndCelebrations(let subject): return subject.stringValue
                    case .humor(let subject): return subject.stringValue
                    case .poetry: return "Books|Kids|Poetry"
                    case .learningToRead(let subject): return subject.stringValue
                    case .nurseryRhymes: return "Books|Kids|Nursery Rhymes"
                    case .government: return "Books|Kids|Government"
                    case .reference: return "Books|Kids|Reference"
                    case .religion: return "Books|Kids|Religion"
                    case .scienceAndNature: return "Books|Kids|Science & Nature"
                    case .socialIssues: return "Books|Kids|Social Issues"
                    case .socialStudies: return "Books|Kids|Social Studies"
                    case .sportsAndRecreation: return "Books|Kids|Sports & Recreation"
                    case .transportation: return "Books|Kids|Transportation"
                }
            }

            public enum ArtsAndEntertainment: Int, CaseIterable {
                case artsAndEntertainment = 11106
                case art = 11107
                case crafts = 11108
                case music = 11109
                case performingArts = 11110

                var stringValue: String {
                    switch self {
                        case .artsAndEntertainment: return "Books|Kids|Arts & Entertainment"
                        case .art: return "Books|Kids|Arts & Entertainment|Art"
                        case .crafts: return "Books|Kids|Arts & Entertainment|Crafts"
                        case .music: return "Books|Kids|Arts & Entertainment|Music"
                        case .performingArts: return "Books|Kids|Arts & Entertainment|Performing Arts"
                    }
                }
            }
 
            public enum BasicConcepts: Int, CaseIterable {
                case basicConcepts = 11088
                case alphabet = 11089
                case body = 11090
                case colors = 11091
                case countingAndNumbers = 11092
                case dateAndTime = 11093
                case general = 11094
                case money = 11095
                case opposites = 11096
                case seasons = 11097
                case sensesAndSensation = 11098
                case sizeAndShape = 11099
                case sounds = 11100
                case words = 11101

                var stringValue: String {
                    switch self {
                        case .basicConcepts: return "Books|Kids|Basic Concepts"
                        case .alphabet: return "Books|Kids|Basic Concepts|Alphabet"
                        case .body: return "Books|Kids|Basic Concepts|Body"
                        case .colors: return "Books|Kids|Basic Concepts|Colors"
                        case .countingAndNumbers: return "Books|Kids|Basic Concepts|Counting & Numbers"
                        case .dateAndTime: return "Books|Kids|Basic Concepts|Date & Time"
                        case .general: return "Books|Kids|Basic Concepts|General"
                        case .money: return "Books|Kids|Basic Concepts|Money"
                        case .opposites: return "Books|Kids|Basic Concepts|Opposites"
                        case .seasons: return "Books|Kids|Basic Concepts|Seasons"
                        case .sensesAndSensation: return "Books|Kids|Basic Concepts|Senses & Sensation"
                        case .sizeAndShape: return "Books|Kids|Basic Concepts|Size & Shape"
                        case .sounds: return "Books|Kids|Basic Concepts|Sounds"
                        case .words: return "Books|Kids|Basic Concepts|Words"
                    }
                }
            }

            public enum Fiction: Int, CaseIterable {
                case fiction = 11112
                case actionAndAdventure = 11113
                case animals = 11114
                case classics = 11115
                case comicsAndGraphicNovels = 11116
                case FculturePlacesAndPeople = 11117
                case familyAndRelationships = 11118
                case fantasy = 11119
                case fairyTalesMythsAndFables = 11120
                case favoriteCharacters = 11121
                case historical = 11122
                case holidaysAndCelebrations = 11123
                case monstersAndGhosts = 11124
                case mysteries = 11125
                case nature = 11126
                case religion = 11127
                case sciFi = 11128
                case socialIssues = 11129
                case sportsAndRecreation = 11130
                case transportation = 11131

                var stringValue: String {
                    switch self {
                        case .fiction: return "Books|Kids|Fiction"
                        case .actionAndAdventure: return "Books|Kids|Fiction|Action & Adventure"
                        case .animals: return "Books|Kids|Fiction|Animals"
                        case .classics: return "Books|Kids|Fiction|Classics"
                        case .comicsAndGraphicNovels: return "Books|Kids|Fiction|Comics & Graphic Novels"
                        case .FculturePlacesAndPeople: return "Books|Kids|Fiction|Culture, Places & People"
                        case .familyAndRelationships: return "Books|Kids|Fiction|Family & Relationships"
                        case .fantasy: return "Books|Kids|Fiction|Fantasy"
                        case .fairyTalesMythsAndFables: return "Books|Kids|Fiction|Fairy Tales, Myths & Fables"
                        case .favoriteCharacters: return "Books|Kids|Fiction|Favorite Characters"
                        case .historical: return "Books|Kids|Fiction|Historical"
                        case .holidaysAndCelebrations: return "Books|Kids|Fiction|Holidays & Celebrations"
                        case .monstersAndGhosts: return "Books|Kids|Fiction|Monsters & Ghosts"
                        case .mysteries: return "Books|Kids|Fiction|Mysteries"
                        case .nature: return "Books|Kids|Fiction|Nature"
                        case .religion: return "Books|Kids|Fiction|Religion"
                        case .sciFi: return "Books|Kids|Fiction|Sci-Fi"
                        case .socialIssues: return "Books|Kids|Fiction|Social Issues"
                        case .sportsAndRecreation: return "Books|Kids|Fiction|Sports & Recreation"
                        case .transportation: return "Books|Kids|Fiction|Transportation"
                    }
                }
            }

            public enum HolidaysAndCelebrations: Int, CaseIterable {
                case holidaysAndCelebrations = 11136
                case birthdays = 11137
                case christmasAndAdvent = 11138
                case easterAndLent = 11139
                case general = 11140
                case halloween = 11141
                case hanukkah = 11142
                case other = 11143
                case passover = 11144
                case patrioticHolidays = 11145
                case ramadan = 11146
                case thanksgiving = 11147
                case valentinesDay = 11148

                var stringValue: String {
                    switch self {
                        case .holidaysAndCelebrations: return "Books|Kids|Holidays & Celebrations"
                        case .birthdays: return "Books|Kids|Holidays & Celebrations|Birthdays"
                        case .christmasAndAdvent: return "Books|Kids|Holidays & Celebrations|Christmas & Advent"
                        case .easterAndLent: return "Books|Kids|Holidays & Celebrations|Easter & Lent"
                        case .general: return "Books|Kids|Holidays & Celebrations|General"
                        case .halloween: return "Books|Kids|Holidays & Celebrations|Halloween"
                        case .hanukkah: return "Books|Kids|Holidays & Celebrations|Hanukkah"
                        case .other: return "Books|Kids|Holidays & Celebrations|Other"
                        case .passover: return "Books|Kids|Holidays & Celebrations|Passover"
                        case .patrioticHolidays: return "Books|Kids|Holidays & Celebrations|Patriotic Holidays"
                        case .ramadan: return "Books|Kids|Holidays & Celebrations|Ramadan"
                        case .thanksgiving: return "Books|Kids|Holidays & Celebrations|Thanksgiving"
                        case .valentinesDay: return "Books|Kids|Holidays & Celebrations|Valentine's Day"
                    }
                }
            }
            
            public enum Humor: Int, CaseIterable {
                case humor = 11149
                case jokesAndRiddles = 11150

                var stringValue: String {
                    switch self {
                        case .humor: return "Books|Kids|Humor"
                        case .jokesAndRiddles: return "Books|Kids|Humor|Jokes & Riddles"
                    }
                }
            }

            public enum LearningToRead: Int, CaseIterable {
                case learningToRead = 11152
                case chapterBooks = 11153
                case earlyReaders = 11154
                case intermediateReaders = 11155

                var stringValue: String {
                    switch self {
                        case .learningToRead: return "Books|Kids|Learning to Read"
                        case .chapterBooks: return "Books|Kids|Learning to Read|Chapter Books"
                        case .earlyReaders: return "Books|Kids|Learning to Read|Early Readers"
                        case .intermediateReaders: return "Books|Kids|Learning to Read|Intermediate Readers"
                    }
                }
            }
        }
        
        public enum YoungAdult: CaseIterable {
            case youngAdult
            case animals
            case biography
            case careersAndOccupations
            case computersAndTechnology
            case cookingAndFood
            case artsAndEntertainment(ArtsAndEntertainment)
            case family
            case fiction(Fiction)
            case gamesAndActivities
            case generalNonfiction
            case health
            case history
            case holidaysAndCelebrations(HolidaysAndCelebrations)
            case humor(Humor)
            case poetry
            case politicsAndGovernment
            case reference
            case religion
            case scienceAndNature
            case comingOfAge
            case socialStudies
            case sportsAndRecreation
            case transportation

            public static var allCases: [YoungAdult] {
                var cases: [YoungAdult] = [.animals, .biography, .careersAndOccupations, .comingOfAge, .computersAndTechnology, .cookingAndFood, .family, .gamesAndActivities, .generalNonfiction, .health, .history, .poetry, .politicsAndGovernment, .reference, .reference, .religion, .scienceAndNature, .socialStudies, .sportsAndRecreation, .transportation, .youngAdult]
                cases.append(contentsOf: ArtsAndEntertainment.allCases.map({ YoungAdult.artsAndEntertainment($0)}))
                cases.append(contentsOf: Fiction.allCases.map({ YoungAdult.fiction($0)}))
                cases.append(contentsOf: HolidaysAndCelebrations.allCases.map({ YoungAdult.holidaysAndCelebrations($0)}))
                cases.append(contentsOf: Humor.allCases.map({ YoungAdult.humor($0)}))
                return cases
            }
            
            var rawValue: Int {
                switch self {
                    case .youngAdult: return 11165
                    case .animals: return 11166
                    case .biography: return 11167
                    case .careersAndOccupations: return 11168
                    case .computersAndTechnology: return 11169
                    case .cookingAndFood: return 11170
                    case .artsAndEntertainment(let subgenre): return subgenre.rawValue
                    case .family: return 11176
                    case .fiction(let subgenre): return subgenre.rawValue
                    case .gamesAndActivities: return 11199
                    case .generalNonfiction: return 11200
                    case .health: return 11201
                    case .history: return 11202
                    case .holidaysAndCelebrations(let subgenre): return subgenre.rawValue
                    case .humor(let subgenre): return subgenre.rawValue
                    case .poetry: return 11218
                    case .politicsAndGovernment: return 11219
                    case .reference: return 11220
                    case .religion: return 11221
                    case .scienceAndNature: return 11222
                    case .comingOfAge: return 11223
                    case .socialStudies: return 11224
                    case .sportsAndRecreation: return 11225
                    case .transportation: return 11226
                }
            }

            var stringValue: String {
                switch self {
                    case .youngAdult: return "Books|Young Adult"
                    case .animals: return "Books|Young Adult|Animals"
                    case .biography: return "Books|Young Adult|Biography"
                    case .careersAndOccupations: return "Books|Young Adult|Careers & Occupations"
                    case .computersAndTechnology: return  "Books|Young Adult|Computers & Technology"
                    case .cookingAndFood: return "Books|Young Adult|Cooking & Food"
                    case .artsAndEntertainment(let subject): return subject.stringValue
                    case .family: return "Books|Young Adult|Family"
                    case .fiction(let genre): return genre.stringValue
                    case .gamesAndActivities: return  "Books|Young Adult|Games & Activities"
                    case .generalNonfiction: return "Books|Young Adult|General Nonfiction"
                    case .health: return "Books|Young Adult|Health"
                    case .history: return "Books|Young Adult|History"
                    case .holidaysAndCelebrations(let subject): return subject.stringValue
                    case .humor(let subject): return subject.stringValue
                    case .poetry: return "Books|Young Adult|Poetry"
                    case .politicsAndGovernment: return "Books|Young Adult|Politics & Government"
                    case .reference: return "Books|Young Adult|Reference"
                    case .religion: return "Books|Young Adult|Religion"
                    case .scienceAndNature: return "Books|Young Adult|Science & Nature"
                    case .comingOfAge: return "Books|Young Adult|Coming of Age"
                    case .socialStudies: return "Books|Young Adult|Social Studies"
                    case .sportsAndRecreation: return "Books|Young Adult|Sports & Recreation"
                    case .transportation: return "Books|Young Adult|Transportation"
                }
            }
            public enum ArtsAndEntertainment: Int, CaseIterable {
                case artsAndEntertainment = 11171
                case art = 11172
                case crafts = 11173
                case music = 11174
                case performingArts = 11175

                var stringValue: String {
                    switch self {
                        case .artsAndEntertainment: return "Books|Young Adult|Arts & Entertainment"
                        case .art: return "Books|Young Adult|Arts & Entertainment|Art"
                        case .crafts: return "Books|Young Adult|Arts & Entertainment|Crafts"
                        case .music: return "Books|Young Adult|Arts & Entertainment|Music"
                        case .performingArts: return "Books|Young Adult|Arts & Entertainment|Performing Arts"
                    }
                }
            }
            public enum Fiction: Int, CaseIterable {
                case fiction = 11177
                case actionAndAdventure = 11178
                case animals = 11179
                case classics = 11180
                case comicsAndGraphicNovels = 11181
                case culturePlacesAndPeople = 11182
                case dystopian = 11183
                case familyAndRelationships = 11184
                case fantasy = 11185
                case fairyTalesMythsAndFables = 11186
                case favoriteCharacters = 11187
                case Yhistorical = 11188
                case holidaysAndCelebrations = 11189
                case horrorMonstersAndGhosts = 11190
                case crimeAndMystery = 11191
                case nature = 11192
                case religion = 11193
                case romance = 11194
                case sciFi = 11195
                case comingOfAge = 11196
                case sportsAndRecreation = 11197
                case transportation = 11198

                var stringValue: String {
                    switch self {
                        case .fiction: return "Books|Young Adult|Fiction"
                        case .actionAndAdventure: return "Books|Young Adult|Fiction|Action & Adventure"
                        case .animals: return "Books|Young Adult|Fiction|Animals"
                        case .classics: return "Books|Young Adult|Fiction|Classics"
                        case .comicsAndGraphicNovels: return "Books|Young Adult|Fiction|Comics & Graphic Novels"
                        case .culturePlacesAndPeople: return "Books|Young Adult|Fiction|Culture, Places & People"
                        case .dystopian: return "Books|Young Adult|Fiction|Dystopian"
                        case .familyAndRelationships: return "Books|Young Adult|Fiction|Family & Relationships"
                        case .fantasy: return "Books|Young Adult|Fiction|Fantasy"
                        case .fairyTalesMythsAndFables: return "Books|Young Adult|Fiction|Fairy Tales, Myths & Fables"
                        case .favoriteCharacters: return "Books|Young Adult|Fiction|Favorite Characters"
                        case .Yhistorical: return "Books|Young Adult|Fiction|Historical"
                        case .holidaysAndCelebrations: return "Books|Young Adult|Fiction|Holidays & Celebrations"
                        case .horrorMonstersAndGhosts: return "Books|Young Adult|Fiction|Horror, Monsters & Ghosts"
                        case .crimeAndMystery: return "Books|Young Adult|Fiction|Crime & Mystery"
                        case .nature: return "Books|Young Adult|Fiction|Nature"
                        case .religion: return "Books|Young Adult|Fiction|Religion"
                        case .romance: return "Books|Young Adult|Fiction|Romance"
                        case .sciFi: return "Books|Young Adult|Fiction|Sci-Fi"
                        case .comingOfAge: return "Books|Young Adult|Fiction|Coming of Age"
                        case .sportsAndRecreation: return "Books|Young Adult|Fiction|Sports & Recreation"
                        case .transportation: return "Books|Young Adult|Fiction|Transportation"
                    }
                }
            }

            public enum HolidaysAndCelebrations: Int, CaseIterable {
                case holidaysAndCelebrations = 11203
                case birthdays = 11204
                case christmasAndAdvent = 11205
                case easterAndLent = 11206
                case general = 11207
                case halloween = 11208
                case hanukkah = 11209
                case oher = 11210
                case passover = 11211
                case patrioticHolidays = 11212
                case ramadan = 11213
                case thanksgiving = 11214
                case valentinesDay = 11215

                var stringValue: String {
                    switch self {
                        case .holidaysAndCelebrations: return "Books|Young Adult|Holidays & Celebrations"
                        case .birthdays: return "Books|Young Adult|Holidays & Celebrations|Birthdays"
                        case .christmasAndAdvent: return "Books|Young Adult|Holidays & Celebrations|Christmas & Advent"
                        case .easterAndLent: return "Books|Young Adult|Holidays & Celebrations|Easter & Lent"
                        case .general: return "Books|Young Adult|Holidays & Celebrations|General"
                        case .halloween: return "Books|Young Adult|Holidays & Celebrations|Halloween"
                        case .hanukkah: return "Books|Young Adult|Holidays & Celebrations|Hanukkah"
                        case .oher: return "Books|Young Adult|Holidays & Celebrations|Other"
                        case .passover: return "Books|Young Adult|Holidays & Celebrations|Passover"
                        case .patrioticHolidays: return "Books|Young Adult|Holidays & Celebrations|Patriotic Holidays"
                        case .ramadan: return "Books|Young Adult|Holidays & Celebrations|Ramadan"
                        case .thanksgiving: return "Books|Young Adult|Holidays & Celebrations|Thanksgiving"
                        case .valentinesDay: return "Books|Young Adult|Holidays & Celebrations|Valentine's Day"
                    }
                }
            }

            public enum Humor: Int, CaseIterable {
                case humor = 11216
                case jokesAndRiddles = 11217

                var stringValue: String {
                    switch self {
                        case .humor: return "Books|Young Adult|Humor"
                        case .jokesAndRiddles: return "Books|Young Adult|Humor|Jokes & Riddles"
                    }
                }
            }
        }
        
        public enum ArtsAndEntertainment: CaseIterable {
            case artsAndEntertainment
            case theater
            case games
            case music
            case performingArts
            case photography
            case dance
            case fashion
            case film
            case interiorDesign
            case mediaArts
            case radio
            case tv
            case visualArts
            case artAndArchitecture(ArtAndArchitecture)
            case artHistory
            case design

            public static var allCases: [ArtsAndEntertainment] {
                var cases: [ArtsAndEntertainment] = [.artHistory, .artsAndEntertainment, .dance, .design, .fashion, .film, .games, .interiorDesign, .mediaArts, .music, .music, .performingArts, .photography, .radio, .theater, .tv, .visualArts]
                cases.append(contentsOf: ArtAndArchitecture.allCases.map({ ArtsAndEntertainment.artAndArchitecture($0)}))
                return cases
            }
            
            public enum ArtAndArchitecture: Int, CaseIterable {
                case artAndArchitecture = 10002
                case urbanPlanning = 11018

                var stringValue: String {
                    switch self {
                        case .artAndArchitecture: return "Books|Arts & Entertainment|Art & Architecture"
                        case .urbanPlanning: return "Books|Arts & Entertainment|Art & Architecture|Urban Planning"
                    }
                }
            }

            var rawValue: Int {
                switch self {
                    case .artsAndEntertainment: return 9007
                    case .theater: return 10036
                    case .games: return 10067
                    case .music: return 10087
                    case .performingArts: return 10089
                    case .photography: return 10092
                    case .dance: return 11019
                    case .fashion: return 11020
                    case .film: return 11021
                    case .interiorDesign: return 11022
                    case .mediaArts: return 11023
                    case .radio: return 11024
                    case .tv: return 11025
                    case .visualArts: return 11026
                    case .artAndArchitecture(let subgenre): return subgenre.rawValue
                    case .artHistory: return 11234
                    case .design: return 11236
                }
            }

            var stringValue: String {
                switch self {
                    case .artsAndEntertainment: return "Books|Arts & Entertainment"
                    case .theater: return "Books|Arts & Entertainment|Theater"
                    case .games: return "Books|Arts & Entertainment|Games"
                    case .music: return "Books|Arts & Entertainment|Music"
                    case .performingArts: return "Books|Arts & Entertainment|Performing Arts"
                    case .photography: return "Books|Arts & Entertainment|Photography"
                    case .dance: return "Books|Arts & Entertainment|Dance"
                    case .fashion: return "Books|Arts & Entertainment|Fashion"
                    case .film: return "Books|Arts & Entertainment|Film"
                    case .interiorDesign: return "Books|Arts & Entertainment|Interior Design"
                    case .mediaArts: return "Books|Arts & Entertainment|Media Arts"
                    case .radio: return "Books|Arts & Entertainment|Radio"
                    case .tv: return "Books|Arts & Entertainment|TV"
                    case .visualArts: return "Books|Arts & Entertainment|Visual Arts"
                    case .artAndArchitecture(let subject): return subject.stringValue
                    case .artHistory: return "Books|Arts & Entertainment|Art History"
                    case .design: return "Books|Arts & Entertainment|Design"
                }
            }
        }

        public enum BusinessAndPersonalFinance: Int, CaseIterable {
            case businessAndPersonalFinance = 9009
            case industriesAndProfessions = 10005
            case marketingandSales = 10006
            case smallBusinessAndEntrepreneurship = 10007
            case personalFinance = 10008
            case reference = 10009
            case careers = 10010
            case economics = 10011
            case investing = 10012
            case finance = 10013
            case managementAndLeadership = 10014
            case accounting = 11243
            case hospitality = 11244
            case realEstate = 11245

            var stringValue: String {
                switch self {
                    case .businessAndPersonalFinance: return "Books|Business & Personal Finance"
                    case .industriesAndProfessions: return "Books|Business & Personal Finance|Industries & Professions"
                    case .marketingandSales: return "Books|Business & Personal Finance|Marketing & Sales"
                    case .smallBusinessAndEntrepreneurship: return "Books|Business & Personal Finance|Small Business & Entrepreneurship"
                    case .personalFinance: return "Books|Business & Personal Finance|Personal Finance"
                    case .reference: return "Books|Business & Personal Finance|Reference"
                    case .careers: return "Books|Business & Personal Finance|Careers"
                    case .economics: return "Books|Business & Personal Finance|Economics"
                    case .investing: return "Books|Business & Personal Finance|Investing"
                    case .finance: return "Books|Business & Personal Finance|Finance"
                    case .managementAndLeadership: return "Books|Business & Personal Finance|Management & Leadership"
                    case .accounting: return "Books|Business & Personal Finance|Accounting"
                    case .hospitality: return "Books|Business & Personal Finance|Hospitality"
                    case .realEstate: return "Books|Business & Personal Finance|Real Estate"
                }
            }
        }
        
        public enum ReligionAndSpirituality: Int, CaseIterable {
            case religionAndSpirituality = 9018
            case bibleStudies = 10105
            case buddhism = 10106
            case christianity = 10107
            case hinduism = 10108
            case islam = 10109
            case judaism = 10110
            case bibles = 10003
            case comparativeReligion = 11247

            var stringValue: String {
                switch self {
                    case .religionAndSpirituality: return "Books|Religion & Spirituality"
                    case .bibleStudies: return "Books|Religion & Spirituality|Bible Studies"
                    case .buddhism: return "Books|Religion & Spirituality|Buddhism"
                    case .christianity: return "Books|Religion & Spirituality|Christianity"
                    case .hinduism: return "Books|Religion & Spirituality|Hinduism"
                    case .islam: return "Books|Religion & Spirituality|Islam"
                    case .judaism: return "Books|Religion & Spirituality|Judaism"
                    case .bibles: return "Books|Religion & Spirituality|Bibles"
                    case .comparativeReligion: return "Books|Religion & Spirituality|Comparative Religion"
                }
            }
        }
        
        public enum MysteryAndThrillers: Int, CaseIterable {
            case mysteryAndThrillers = 9032
            case hardBoiled = 10050
            case historical = 10051
            case policeProcedural = 10052
            case shortStories = 10053
            case britishDetectives = 10054
            case womenSleuths = 10055
            case cozy = 11259

            var stringValue: String {
                switch self {
                    case .mysteryAndThrillers: return "Books|Mysteries & Thrillers"
                    case .hardBoiled: return "Books|Mysteries & Thrillers|Hard-Boiled"
                    case .historical: return "Books|Mysteries & Thrillers|Historical"
                    case .policeProcedural: return "Books|Mysteries & Thrillers|Police Procedural"
                    case .shortStories: return "Books|Mysteries & Thrillers|Short Stories"
                    case .britishDetectives: return "Books|Mysteries & Thrillers|British Detectives"
                    case .womenSleuths: return "Books|Mysteries & Thrillers|Women Sleuths"
                    case .cozy: return "Books|Mysteries & Thrillers|Cozy"
                }
            }
        }
        
        public enum SciFiAndFantasy: CaseIterable {
            case sciFiAndFantasy
            case scienceFiction
            case scienceFictionAndLiterature(ScienceFictionAndLiterature)
            case fantasy(Fantasy)

            public static var allCases: [SciFiAndFantasy] {
                var cases: [SciFiAndFantasy] = [.sciFiAndFantasy, .scienceFiction]
                cases.append(contentsOf: Fantasy.allCases.map({ SciFiAndFantasy.fantasy($0)}))
                cases.append(contentsOf: ScienceFictionAndLiterature.allCases.map({ SciFiAndFantasy.scienceFictionAndLiterature($0)}))
                return cases
            }
            
            public enum ScienceFictionAndLiterature: Int, CaseIterable {
                case scienceFictionAndLiterature = 10064
                case adventure = 11006
                case highTech = 11007
                case shortStories = 11008

                var stringValue: String {
                    switch self {
                        case .scienceFictionAndLiterature: return "Books|Sci-Fi & Fantasy|Science Fiction & Literature"
                        case .adventure: return "Books|Sci-Fi & Fantasy|Science Fiction & Literature|Adventure"
                        case .highTech: return "Books|Sci-Fi & Fantasy|Science Fiction & Literature|High Tech"
                        case .shortStories: return "Books|Sci-Fi & Fantasy|Science Fiction & Literature|Short Stories"
                    }
                }
            }
            
            public enum Fantasy: Int, CaseIterable {
                case fantasy = 10044
                case contemporary = 11001
                case epic = 11002
                case historical = 11003
                case paranormal = 11004
                case shortStories = 11005
                case urban = 11275

                var stringValue: String {
                    switch self {
                        case .fantasy: return "Books|Sci-Fi & Fantasy|Fantasy"
                        case .contemporary: return "Books|Sci-Fi & Fantasy|Fantasy|Contemporary"
                        case .epic: return "Books|Sci-Fi & Fantasy|Fantasy|Epic"
                        case .historical: return "Books|Sci-Fi & Fantasy|Fantasy|Historical"
                        case .paranormal: return "Books|Sci-Fi & Fantasy|Fantasy|Paranormal"
                        case .shortStories: return "Books|Sci-Fi & Fantasy|Fantasy|Short Stories"
                        case .urban: return "Books|Sci-Fi & Fantasy|Fantasy|Urban"
                    }
                }
            }

            var rawValue: Int {
                switch self {
                    case .sciFiAndFantasy: return 9020
                    case .scienceFiction: return 10063
                    case .scienceFictionAndLiterature(let subgenre): return subgenre.rawValue
                    case .fantasy(let subgenre): return subgenre.rawValue
                }
            }

            var stringValue: String {
                switch self {
                    case .sciFiAndFantasy: return "Books|Sci-Fi & Fantasy"
                    case .scienceFiction: return "Books|Sci-Fi & Fantasy|Science Fiction"
                    case .scienceFictionAndLiterature(let genre): return genre.stringValue
                    case .fantasy(let genre): return genre.stringValue
                }
            }
        }
        
        public enum Reference {
            case reference
            case almanacsAndYearbooks
            case atlasesAndMaps
            case catalogsAndDirectories
            case consumerGuides
            case dictionariesAndThesauruses
            case encyclopedias
            case etiquette
            case quotations
            case wordsAndLanguage
            case witing
            case studyAids
            case manuals
            case foreignLanguages(ForeignLanguages)

            public static var allCases: [Reference] {
                var cases: [Reference] = [.almanacsAndYearbooks, .atlasesAndMaps, .catalogsAndDirectories, .consumerGuides, .dictionariesAndThesauruses, .encyclopedias, .etiquette, .manuals, .quotations, .reference, .studyAids, .witing, .witing, .wordsAndLanguage]
                cases.append(contentsOf: ForeignLanguages.allCases.map({ Reference.foreignLanguages($0)}))
                return cases
            }
            
            var rawValue: Int {
                switch self {
                    case .reference: return 9033
                    case .almanacsAndYearbooks: return 10095
                    case .atlasesAndMaps: return 10096
                    case .catalogsAndDirectories: return 10097
                    case .consumerGuides: return 10098
                    case .dictionariesAndThesauruses: return 10099
                    case .encyclopedias: return 10100
                    case .etiquette: return 10101
                    case .quotations: return 10102
                    case .wordsAndLanguage: return 10103
                    case .witing: return 10104
                    case .studyAids: return 10136
                    case .manuals: return 11085
                    case .foreignLanguages(let subject): return subject.rawValue
                }
            }

            var stringValue: String {
                switch self {
                    case .reference: return "Books|Reference"
                    case .almanacsAndYearbooks: return "Books|Reference|Almanacs & Yearbooks"
                    case .atlasesAndMaps: return "Books|Reference|Atlases & Maps"
                    case .catalogsAndDirectories: return "Books|Reference|Catalogs & Directories"
                    case .consumerGuides: return "Books|Reference|Consumer Guides"
                    case .dictionariesAndThesauruses: return "Books|Reference|Dictionaries & Thesauruses"
                    case .encyclopedias: return "Books|Reference|Encyclopedias"
                    case .etiquette: return "Books|Reference|Etiquette"
                    case .quotations: return "Books|Reference|Quotations"
                    case .wordsAndLanguage: return "Books|Reference|Words & Language"
                    case .witing: return "Books|Reference|Writing"
                    case .studyAids: return "Books|Reference|Study Aids"
                    case .manuals: return "Books|Reference|Manuals"
                    case .foreignLanguages(let subject): return subject.stringValue
                }
            }

            public enum ForeignLanguages: Int, CaseIterable {
                case foreignLanguages = 10066
                case arabic = 11276
                case bilingualEditions = 11277
                case africanLanguages = 11278
                case ancientLanguages = 11279
                case chinese = 11280
                case english = 11281
                case french = 11282
                case german = 11283
                case hebrew = 11284
                case hindi = 11285
                case italian = 11286
                case japanese = 11287
                case korean = 11288
                case linguistics = 11289
                case otherLanguages = 11290
                case portuguese = 11291
                case russian = 11292
                case spanish = 11293
                case speechPathology = 11294

                var stringValue: String {
                    switch self {
                        case .foreignLanguages: return "Books|Reference|Foreign Languages"
                        case .arabic: return "Books|Reference|Foreign Languages|Arabic"
                        case .bilingualEditions: return "Books|Reference|Foreign Languages|Bilingual Editions"
                        case .africanLanguages: return "Books|Reference|Foreign Languages|African Languages"
                        case .ancientLanguages: return "Books|Reference|Foreign Languages|Ancient Languages"
                        case .chinese: return "Books|Reference|Foreign Languages|Chinese"
                        case .english: return "Books|Reference|Foreign Languages|English"
                        case .french: return "Books|Reference|Foreign Languages|French"
                        case .german: return "Books|Reference|Foreign Languages|German"
                        case .hebrew: return "Books|Reference|Foreign Languages|Hebrew"
                        case .hindi: return "Books|Reference|Foreign Languages|Hindi"
                        case .italian: return "Books|Reference|Foreign Languages|Italian"
                        case .japanese: return "Books|Reference|Foreign Languages|Japanese"
                        case .korean: return "Books|Reference|Foreign Languages|Korean"
                        case .linguistics: return "Books|Reference|Foreign Languages|Linguistics"
                        case .otherLanguages: return "Books|Reference|Foreign Languages|Other Languages"
                        case .portuguese: return "Books|Reference|Foreign Languages|Portuguese"
                        case .russian: return "Books|Reference|Foreign Languages|Russian"
                        case .spanish: return "Books|Reference|Foreign Languages|Spanish"
                        case .speechPathology: return "Books|Reference|Foreign Languages|Speech Pathology"
                    }
                }
            }
        }
        
        public enum Romance: Int, CaseIterable {
            case romance = 9003
            case eroticRomance = 10056
            case contemporary = 10057
            case paranormal = 10058
            case historical = 10059
            case shortStories = 10060
            case suspense = 10061
            case western = 10062
            case newAdult = 11040
            case romanticComedy = 11042
            case gayAndLesbian = 11043
            case inspirational = 11229
            case holiday = 11231
            case wholesome = 11232
            case military = 11233
            case multicultural = 50000091

            var stringValue: String {
                switch self {
                    case .romance: return "Books|Romance"
                    case .eroticRomance: return "Books|Romance|Erotic Romance"
                    case .contemporary: return "Books|Romance|Contemporary"
                    case .paranormal: return "Books|Romance|Paranormal"
                    case .historical: return "Books|Romance|Historical"
                    case .shortStories: return "Books|Romance|Short Stories"
                    case .suspense: return "Books|Romance|Suspense"
                    case .western: return "Books|Romance|Western"
                    case .newAdult: return "Books|Romance|New Adult"
                    case .romanticComedy: return "Books|Romance|Romantic Comedy"
                    case .gayAndLesbian: return "Books|Romance|Gay & Lesbian"
                    case .inspirational: return "Books|Romance|Inspirational"
                    case .holiday: return "Books|Romance|Holiday"
                    case .wholesome: return "Books|Romance|Wholesome"
                    case .military: return "Books|Romance|Military"
                    case .multicultural: return "Books|Romance|Multicultural"
                }
            }
        }
        
        public enum FictionAndLiterature: Int, CaseIterable {
            case fictionAndLiterature = 9031
            case actionAndAdventure = 10039
            case africanAmerican = 10040
            case religious = 10041
            case classics = 10042
            case erotica = 10043
            case gay = 10045
            case ghost = 10046
            case historical = 10047
            case horror = 10048
            case literary = 10049
            case shortStories = 10065
            case literaryCriticism = 10084
            case poetry = 10093
            case essays = 11044
            case anthologies = 11045
            case comparativeLiterature = 11046
            case drama = 11047
            case fairyTalesMythsAndFables = 11049
            case family = 11050
            case lightNovels = 50000088

            var stringValue: String {
                switch self {
                    case .fictionAndLiterature: return "Books|Fiction & Literature"
                    case .actionAndAdventure: return "Books|Fiction & Literature|Action & Adventure"
                    case .africanAmerican: return "Books|Fiction & Literature|African American"
                    case .religious: return "Books|Fiction & Literature|Religious"
                    case .classics: return "Books|Fiction & Literature|Classics"
                    case .erotica: return "Books|Fiction & Literature|Erotica"
                    case .gay: return "Books|Fiction & Literature|Gay"
                    case .ghost: return "Books|Fiction & Literature|Ghost"
                    case .historical: return "Books|Fiction & Literature|Historical"
                    case .horror: return "Books|Fiction & Literature|Horror"
                    case .literary: return "Books|Fiction & Literature|Literary"
                    case .shortStories: return "Books|Fiction & Literature|Short Stories"
                    case .literaryCriticism: return "Books|Fiction & Literature|Literary Criticism"
                    case .poetry: return "Books|Fiction & Literature|Poetry"
                    case .essays: return "Books|Fiction & Literature|Essays"
                    case .anthologies: return "Books|Fiction & Literature|Anthologies"
                    case .comparativeLiterature: return "Books|Fiction & Literature|Comparative Literature"
                    case .drama: return "Books|Fiction & Literature|Drama"
                    case .fairyTalesMythsAndFables: return "Books|Fiction & Literature|Fairy Tales, Myths & Fables"
                    case .family: return "Books|Fiction & Literature|Family"
                    case .lightNovels: return "Books|Fiction & Literature|Light Novels"
                }
            }
        }
        
        public enum ScienceAndNature: CaseIterable {
            case scienceAndNature
            case nature
            case astronomy
            case chemistry
            case earthSciences
            case essays
            case history
            case lifeSciences
            case physics
            case reference
            case agriculture
            case atmosphere
            case biology
            case ecology
            case environment
            case geography
            case geology
            case mathematics(Mathematics)
            
            public static var allCases: [ScienceAndNature] {
                var cases: [ScienceAndNature] = [.agriculture, .astronomy, .atmosphere, .biology, .chemistry, .earthSciences, .ecology, .environment, .essays, .geography, .geology, .history, .lifeSciences, .nature, .physics, .reference, .scienceAndNature]
                cases.append(contentsOf: Mathematics.allCases.map({ ScienceAndNature.mathematics($0)}))
                return cases
            }
            
            var rawValue: Int {
                switch self {
                    case .scienceAndNature: return 9019
                    case .nature: return 10088
                    case .astronomy: return 10111
                    case .chemistry: return 10112
                    case .earthSciences: return 10113
                    case .essays: return 10114
                    case .history: return 10115
                    case .lifeSciences: return 10116
                    case .physics: return 10117
                    case .reference: return 10118
                    case .agriculture: return 11063
                    case .atmosphere: return 11064
                    case .biology: return 11065
                    case .ecology: return 11066
                    case .environment: return 11067
                    case .geography: return 11068
                    case .geology: return 11069
                    case .mathematics(let subject): return subject.rawValue
                }
            }

            var stringValue: String {
                switch self {
                    case .scienceAndNature: return "Books|Science & Nature"
                    case .nature: return "Books|Science & Nature|Nature"
                    case .astronomy: return "Books|Science & Nature|Astronomy"
                    case .chemistry: return "Books|Science & Nature|Chemistry"
                    case .earthSciences: return "Books|Science & Nature|Earth Sciences"
                    case .essays: return "Books|Science & Nature|Essays"
                    case .history: return "Books|Science & Nature|History"
                    case .lifeSciences: return "Books|Science & Nature|Life Sciences"
                    case .physics: return "Books|Science & Nature|Physics"
                    case .reference: return "Books|Science & Nature|Reference"
                    case .agriculture: return "Books|Science & Nature|Agriculture"
                    case .atmosphere: return "Books|Science & Nature|Atmosphere"
                    case .biology: return "Books|Science & Nature|Biology"
                    case .ecology: return "Books|Science & Nature|Ecology"
                    case .environment: return "Books|Science & Nature|Environment"
                    case .geography: return "Books|Science & Nature|Geography"
                    case .geology: return "Books|Science & Nature|Geology"
                    case .mathematics(let subject): return subject.stringValue
                }
            }
            
            public enum Mathematics: Int, CaseIterable {
                case mathematics = 10085
                case advancedMathematics = 11295
                case algebra = 11296
                case arithmetic = 11297
                case calculus = 11298
                case geometry = 11299
                case statistics = 11300

                var stringValue: String {
                    switch self {
                        case .mathematics: return "Books|Science & Nature|Mathematics"
                        case .advancedMathematics: return "Books|Science & Nature|Mathematics|Advanced Mathematics"
                        case .algebra: return "Books|Science & Nature|Mathematics|Algebra"
                        case .arithmetic: return "Books|Science & Nature|Mathematics|Arithmetic"
                        case .calculus: return "Books|Science & Nature|Mathematics|Calculus"
                        case .geometry: return "Books|Science & Nature|Mathematics|Geometry"
                        case .statistics: return "Books|Science & Nature|Mathematics|Statistics"
                    }
                }
            }
        }
                
        public enum NonFiction: CaseIterable {
            case nonfiction
            case familyAndRelationships(FamilyAndRelationships)
            case philosophy(Philosophy)
            case socialScience(SocialScience)
            case transportation
            case trueCrime
            
            public static var allCases: [NonFiction] {
                var cases: [NonFiction] = [.nonfiction, .transportation, .trueCrime]
                cases.append(contentsOf: FamilyAndRelationships.allCases.map({ NonFiction.familyAndRelationships($0)}))
                cases.append(contentsOf: Philosophy.allCases.map({ NonFiction.philosophy($0)}))
                cases.append(contentsOf: SocialScience.allCases.map({ NonFiction.socialScience($0)}))
                return cases
            }
            
            var rawValue: Int {
                switch self {
                    case .nonfiction: return 9002
                    case .familyAndRelationships(let subject): return subject.rawValue
                    case .philosophy(let subject): return subject.rawValue
                    case .socialScience(let subject): return subject.rawValue
                    case .transportation: return 10138
                    case .trueCrime: return 10149
                }
            }

            var stringValue: String {
                switch self {
                    case .nonfiction: return "Books|Nonfiction"
                    case .familyAndRelationships(let subject): return subject.stringValue
                    case .philosophy(let subject): return subject.stringValue
                    case .socialScience(let subject): return subject.stringValue
                    case .transportation: return "Books|Nonfiction|Transportation"
                    case .trueCrime: return "Books|Nonfiction|True Crime"
                }
            }
            
            public enum FamilyAndRelationships: Int, CaseIterable {
                case familyAndRelationships = 10038
                case familyAndChildcare = 11273
                case loveAndRomance = 11274

                var stringValue: String {
                    switch self {
                        case .familyAndRelationships: return "Books|Nonfiction|Family & Relationships"
                        case .familyAndChildcare: return "Books|Nonfiction|Family & Relationships|Family & Childcare"
                        case .loveAndRomance: return "Books|Nonfiction|Family & Relationships|Love & Romance"
                    }
                }
            }
            
            public enum Philosophy: Int, CaseIterable {
                case philosophy = 10091
                case aesthetics = 11077
                case epistemology = 11078
                case ethics = 11079
                case language = 11080
                case logic = 11081
                case metaphysics = 11082
                case political = 11083
                case religion = 11084
                case politicalPhilosophy = 11317
                case philosophyOfLanguage = 11319
                case philosophyOfReligion = 11320

                var stringValue: String {
                    switch self {
                        case .philosophy: return "Books|Nonfiction|Philosophy"
                        case .aesthetics: return "Books|Nonfiction|Philosophy|Aesthetics"
                        case .epistemology: return "Books|Nonfiction|Philosophy|Epistemology"
                        case .ethics: return "Books|Nonfiction|Philosophy|Ethics"
                        case .language: return "Books|Nonfiction|Philosophy|Language"
                        case .logic: return "Books|Nonfiction|Philosophy|Logic"
                        case .metaphysics: return "Books|Nonfiction|Philosophy|Metaphysics"
                        case .political: return "Books|Nonfiction|Philosophy|Political"
                        case .religion: return "Books|Nonfiction|Philosophy|Religion"
                        case .politicalPhilosophy: return "Books|Nonfiction|Philosophy|Political Philosophy"
                        case .philosophyOfLanguage: return "Books|Nonfiction|Philosophy|Philosophy of Language"
                        case .philosophyOfReligion: return "Books|Nonfiction|Philosophy|Philosophy of Religion"
                    }
                }
            }
            
            public enum SocialScience: Int, CaseIterable {
                case socialScience = 10120
                case anthropology = 11070
                case archaeology = 11071
                case civics = 11072
                case government = 11073
                case socialStudies = 11074
                case socialWelfare = 11075
                case society = 11076
                case sociology = 11327

                var stringValue: String {
                    switch self {
                        case .socialScience: return "Books|Nonfiction|Social Science"
                        case .anthropology: return "Books|Nonfiction|Social Science|Anthropology"
                        case .archaeology: return "Books|Nonfiction|Social Science|Archaeology"
                        case .civics: return "Books|Nonfiction|Social Science|Civics"
                        case .government: return "Books|Nonfiction|Social Science|Government"
                        case .socialStudies: return "Books|Nonfiction|Social Science|Social Studies"
                        case .socialWelfare: return "Books|Nonfiction|Social Science|Social Welfare"
                        case .society: return "Books|Nonfiction|Social Science|Society"
                        case .sociology: return "Books|Nonfiction|Social Science|Sociology"
                    }
                }
            }
        }
        
        public enum ProfessionalAndTechnical: CaseIterable {
            case professionalAndTechnical
            case design
            case education(Education)
            case engineering(Engineering)
            case law
            case medical(Medical)
            
            public static var allCases: [ProfessionalAndTechnical] {
                var cases: [ProfessionalAndTechnical] = [.design, .law, .professionalAndTechnical]
                cases.append(contentsOf: Education.allCases.map({ ProfessionalAndTechnical.education($0)}))
                cases.append(contentsOf: Engineering.allCases.map({ ProfessionalAndTechnical.engineering($0)}))
                cases.append(contentsOf: Medical.allCases.map({ ProfessionalAndTechnical.medical($0)}))
                return cases
            }
            
            var rawValue: Int {
                switch self {
                    case .professionalAndTechnical: return 9029
                    case .design: return 10035
                    case .education(let subject): return subject.rawValue
                    case .engineering(let subject): return subject.rawValue
                    case .law: return 10083
                    case .medical(let subject): return subject.rawValue
                }
            }

            var stringValue: String {
                switch self {
                    case .professionalAndTechnical: return "Books|Professional & Technical"
                    case .design: return "Books|Professional & Technical|Design"
                    case .education(let subject): return subject.stringValue
                    case .engineering(let subject): return subject.stringValue
                    case .law: return "Books|Professional & Technical|Law"
                    case .medical(let subject): return subject.stringValue
                }
            }
            
            public enum Education: Int, CaseIterable {
                case education = 10037
                case languageArtsAndDisciplines = 11009

                var stringValue: String {
                    switch self {
                        case .education: return "Books|Professional & Technical|Education"
                        case .languageArtsAndDisciplines: return "Books|Professional & Technical|Education|Language Arts & Disciplines"
                    }
                }
            }
            
            public enum Medical: Int, CaseIterable {
                case medical = 10086
                case veterinary = 11301
                case neuroscience = 11302
                case immunology = 11303
                case nursing = 11304
                case pharmacologyAndToxicology = 11305
                case anatomyAndPhysiology = 11306
                case dentistry = 11307
                case emergencyMedicine = 11308
                case genetics = 11309
                case psychiatry = 11310
                case radiology = 11311
                case alternativeMedicine = 11312

                var stringValue: String {
                    switch self {
                        case .medical: return "Books|Professional & Technical|Medical"
                        case .veterinary: return "Books|Professional & Technical|Medical|Veterinary"
                        case .neuroscience: return "Books|Professional & Technical|Medical|Neuroscience"
                        case .immunology: return "Books|Professional & Technical|Medical|Immunology"
                        case .nursing: return "Books|Professional & Technical|Medical|Nursing"
                        case .pharmacologyAndToxicology: return "Books|Professional & Technical|Medical|Pharmacology & Toxicology"
                        case .anatomyAndPhysiology: return "Books|Professional & Technical|Medical|Anatomy & Physiology"
                        case .dentistry: return "Books|Professional & Technical|Medical|Dentistry"
                        case .emergencyMedicine: return "Books|Professional & Technical|Medical|Emergency Medicine"
                        case .genetics: return "Books|Professional & Technical|Medical|Genetics"
                        case .psychiatry: return "Books|Professional & Technical|Medical|Psychiatry"
                        case .radiology: return "Books|Professional & Technical|Medical|Radiology"
                        case .alternativeMedicine: return "Books|Professional & Technical|Medical|Alternative Medicine"
                    }
                }
            }
            
            public enum Engineering: Int, CaseIterable {
                case engineering = 10137
                case aeronautics = 11329
                case chemicalAndPetroleumEngineering = 11330
                case civilEngineering = 11331
                case computerScience = 11332
                case electricalEngineering = 11333
                case environmentalEngineering = 11334
                case mechanicalEngineering = 11335
                case powerResources = 11336

                var stringValue: String {
                    switch self {
                        case .engineering: return "Books|Professional & Technical|Engineering"
                        case .aeronautics: return "Books|Professional & Technical|Engineering|Aeronautics"
                        case .chemicalAndPetroleumEngineering: return "Books|Professional & Technical|Engineering|Chemical & Petroleum Engineering"
                        case .civilEngineering: return "Books|Professional & Technical|Engineering|Civil Engineering"
                        case .computerScience: return "Books|Professional & Technical|Engineering|Computer Science"
                        case .electricalEngineering: return "Books|Professional & Technical|Engineering|Electrical Engineering"
                        case .environmentalEngineering: return "Books|Professional & Technical|Engineering|Environmental Engineering"
                        case .mechanicalEngineering: return "Books|Professional & Technical|Engineering|Mechanical Engineering"
                        case .powerResources: return "Books|Professional & Technical|Engineering|Power Resources"
                    }
                }
            }
        }
        
        public enum ComicsAndGraphicNovels: CaseIterable {
            case comicsAndGraphicNovels
            case graphicNovels
            case manga(Manga)
            case comics
            
            public static var allCases: [ComicsAndGraphicNovels] {
                var cases: [ComicsAndGraphicNovels] = [.comics, .comicsAndGraphicNovels, .graphicNovels]
                cases.append(contentsOf: Manga.allCases.map({ ComicsAndGraphicNovels.manga($0)}))
                return cases
            }
            
            var rawValue: Int {
                switch self {
                    case .comicsAndGraphicNovels: return 9026
                    case .graphicNovels: return 10015
                    case .manga(let genre): return genre.rawValue
                    case .comics: return 50000090
                }
            }
            
            var stringValue: String {
                switch self {
                    case .comicsAndGraphicNovels: return "Books|Comics & Graphic Novels"
                    case .graphicNovels: return "Books|Comics & Graphic Novels|Graphic Novels"
                    case .manga(let genre): return genre.stringValue
                    case .comics: return "Books|Comics & Graphic Novels|Comics"
                }
            }
            
            public enum Manga: Int, CaseIterable {
                case manga = 10016
                case schoolDrama = 11051
                case humanDrama = 11052
                case familyDrama = 11053
                case boys = 11337
                case men = 11338
                case girls = 11339
                case women = 11340
                case other = 11341
                case yaoi = 11342
                case comicEssays = 11343
                case action = 50000071
                case comedy = 50000072
                case erotica = 50000073
                case fantasy = 50000074
                case fourCellManga = 50000075
                case gayAndLesbian = 50000076
                case hardBoiled = 50000077
                case heroes = 50000078
                case historicalFiction = 50000079
                case mecha = 50000080
                case mystery = 50000081
                case nonfiction = 50000082
                case religious = 50000083
                case romance = 50000084
                case romanticComedy = 50000085
                case scienceFiction = 50000086
                case sports = 50000087
                case horror = 50000089

                var stringValue: String {
                    switch self {
                        case .manga: return "Books|Comics & Graphic Novels|Manga"
                        case .schoolDrama: return "Books|Comics & Graphic Novels|Manga|School Drama"
                        case .humanDrama: return "Books|Comics & Graphic Novels|Manga|Human Drama"
                        case .familyDrama: return "Books|Comics & Graphic Novels|Manga|Family Drama"
                        case .boys: return "Books|Comics & Graphic Novels|Manga|Boys"
                        case .men: return "Books|Comics & Graphic Novels|Manga|Men"
                        case .girls: return "Books|Comics & Graphic Novels|Manga|Girls"
                        case .women: return "Books|Comics & Graphic Novels|Manga|Women"
                        case .other: return "Books|Comics & Graphic Novels|Manga|Other"
                        case .yaoi: return "Books|Comics & Graphic Novels|Manga|Yaoi"
                        case .comicEssays: return "Books|Comics & Graphic Novels|Manga|Comic Essays"
                        case .action: return "Books|Comics & Graphic Novels|Manga|Action"
                        case .comedy: return "Books|Comics & Graphic Novels|Manga|Comedy"
                        case .erotica: return "Books|Comics & Graphic Novels|Manga|Erotica"
                        case .fantasy: return "Books|Comics & Graphic Novels|Manga|Fantasy"
                        case .fourCellManga: return "Books|Comics & Graphic Novels|Manga|Four Cell Manga"
                        case .gayAndLesbian: return "Books|Comics & Graphic Novels|Manga|Gay & Lesbian"
                        case .hardBoiled: return "Books|Comics & Graphic Novels|Manga|Hard-Boiled"
                        case .heroes: return "Books|Comics & Graphic Novels|Manga|Heroes"
                        case .historicalFiction: return "Books|Comics & Graphic Novels|Manga|Historical Fiction"
                        case .mecha: return "Books|Comics & Graphic Novels|Manga|Mecha"
                        case .mystery: return "Books|Comics & Graphic Novels|Manga|Mystery"
                        case .nonfiction: return "Books|Comics & Graphic Novels|Manga|Nonfiction"
                        case .religious: return "Books|Comics & Graphic Novels|Manga|Religious"
                        case .romance: return "Books|Comics & Graphic Novels|Manga|Romance"
                        case .romanticComedy: return "Books|Comics & Graphic Novels|Manga|Romantic Comedy"
                        case .scienceFiction: return "Books|Comics & Graphic Novels|Manga|Science Fiction"
                        case .sports: return "Books|Comics & Graphic Novels|Manga|Sports"
                        case .horror: return "Books|Comics & Graphic Novels|Manga|Horror"
                    }
                }
            }
        }
    }
}
