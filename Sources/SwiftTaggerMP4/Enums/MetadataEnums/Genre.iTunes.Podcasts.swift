//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 10/6/20.
//

import Foundation
extension Genre {
    public enum Podcasts: CaseIterable {
        
        public static var allCases: [Podcasts] {
            var cases: [Podcasts] = [.government, .history, .podcasts, .trueCrime]
            cases.append(contentsOf: Arts.allCases.map({ Podcasts.arts($0)}))
            cases.append(contentsOf: SocietyAndCulture.allCases.map({ Podcasts.societyAndCulture($0)}))
            cases.append(contentsOf: ReligionAndSpirituality.allCases.map({ Podcasts.religionAndSpirituality($0)}))
            cases.append(contentsOf: Comedy.allCases.map({ Podcasts.comedy($0)}))
            cases.append(contentsOf: Education.allCases.map({ Podcasts.education($0)}))
            cases.append(contentsOf: KidsAndFamily.allCases.map({ Podcasts.kidsAndFamily($0)}))
            cases.append(contentsOf: Health.allCases.map({ Podcasts.health($0)}))
            cases.append(contentsOf: TVAndFilm.allCases.map({ Podcasts.tvAndFilm($0)}))
            cases.append(contentsOf: Music.allCases.map({ Podcasts.music($0)}))
            cases.append(contentsOf: NewsAndPolitics.allCases.map({ Podcasts.newsAndPolitics($0)}))
            cases.append(contentsOf: ScienceAndMedicine.allCases.map({ Podcasts.scienceAndMedicine($0)}))
            cases.append(contentsOf: Science.allCases.map({ Podcasts.science($0)}))
            cases.append(contentsOf: SportsAndRecreation.allCases.map({ Podcasts.sportsAndRecreation($0)}))
            cases.append(contentsOf: Technology.allCases.map({ Podcasts.technology($0)}))
            cases.append(contentsOf: Business.allCases.map({ Podcasts.business($0)}))
            cases.append(contentsOf: GamesAndHobbies.allCases.map({ Podcasts.gamesAndHobbies($0)}))
            cases.append(contentsOf: GovernmentAndOrganizations.allCases.map({ Podcasts.governmentAndOrganizations($0)}))
            cases.append(contentsOf: Fiction.allCases.map({ Podcasts.fiction($0)}))
            cases.append(contentsOf: Leisure.allCases.map({ Podcasts.leisure($0)}))
            cases.append(contentsOf: HealthAndFitness.allCases.map({ Podcasts.healthAndFitness($0)}))
            cases.append(contentsOf: Sports.allCases.map({ Podcasts.sports($0)}))
            return cases
        }
        
        case podcasts
        case history
        case trueCrime
        case government

        var genreID: Int {
            switch self {
                case .podcasts: return 26
                case .history: return 1487
                case .trueCrime: return 1488
                case .government: return 1511
                case .arts(let subject): return subject.rawValue
                case .societyAndCulture(let subject): return subject.rawValue
                case .religionAndSpirituality(let subject): return subject.rawValue
                case .comedy(let subject): return subject.rawValue
                case .education(let subject): return subject.rawValue
                case .kidsAndFamily(let subject): return subject.rawValue
                case .health(let subject): return subject.rawValue
                case .tvAndFilm(let subject): return subject.rawValue
                case .music(let subject): return subject.rawValue
                case .newsAndPolitics(let subject): return subject.rawValue
                case .scienceAndMedicine(let subject): return subject.rawValue
                case .science(let subject): return subject.rawValue
                case .sportsAndRecreation(let subject): return subject.rawValue
                case .technology(let subject): return subject.rawValue
                case .business(let subject): return subject.rawValue
                case .gamesAndHobbies(let subject): return subject.rawValue
                case .governmentAndOrganizations(let subject): return subject.rawValue
                case .fiction(let subject): return subject.rawValue
                case .leisure(let subject): return subject.rawValue
                case .healthAndFitness(let subject): return subject.rawValue
                case .sports(let subject): return subject.rawValue
            }
        }
        
        var stringValue: String {
            switch self {
                case .podcasts: return "Podcasts"
                case .history: return "Podcasts|History"
                case .trueCrime: return "Podcasts|True Crime"
                case .government: return "Podcasts|Government"
                case .arts(let subject): return subject.stringValue
                case .societyAndCulture(let subject): return subject.stringValue
                case .religionAndSpirituality(let subject): return subject.stringValue
                case .comedy(let subject): return subject.stringValue
                case .education(let subject): return subject.stringValue
                case .kidsAndFamily(let subject): return subject.stringValue
                case .health(let subject): return subject.stringValue
                case .tvAndFilm(let subject): return subject.stringValue
                case .music(let subject): return subject.stringValue
                case .newsAndPolitics(let subject): return subject.stringValue
                case .scienceAndMedicine(let subject): return subject.stringValue
                case .science(let subject): return subject.stringValue
                case .sportsAndRecreation(let subject): return subject.stringValue
                case .technology(let subject): return subject.stringValue
                case .business(let subject): return subject.stringValue
                case .gamesAndHobbies(let subject): return subject.stringValue
                case .governmentAndOrganizations(let subject): return subject.stringValue
                case .fiction(let subject): return subject.stringValue
                case .leisure(let subject): return subject.stringValue
                case .healthAndFitness(let subject): return subject.stringValue
                case .sports(let subject): return subject.stringValue
            }
        }

        case arts(Arts)
        public enum Arts: Int, CaseIterable {
            case arts = 1301
            case food = 1306
            case literature = 1401
            case design = 1402
            case performingArts = 1405
            case visualArts = 1406
            case fashionAndBeauty = 1459
            case books = 1482

            var stringValue: String {
                switch self {
                    case .arts: return "Podcasts|Arts"
                    case .food: return "Podcasts|Arts|Food"
                    case .literature: return "Podcasts|Arts|Literature"
                    case .design: return "Podcasts|Arts|Design"
                    case .performingArts: return "Podcasts|Arts|Performing Arts"
                    case .visualArts: return "Podcasts|Arts|Visual Arts"
                    case .fashionAndBeauty: return "Podcasts|Arts|Fashion And Beauty"
                    case .books: return "Podcasts|Arts|Books"
                }
            }
        }
        
        case societyAndCulture(SocietyAndCulture)
        public enum SocietyAndCulture: Int, CaseIterable {
            case societyAndCulture = 1324
            case personalJournals = 1302
            case placesandTravel = 1320
            case philosophy = 1443
            case history = 1462
            case documentary = 1543
            case relationships = 1544

            var stringValue: String {
                switch self {
                    case .societyAndCulture: return "Podcasts|Society And Culture"
                    case .personalJournals: return "Podcasts|Society And Culture|Personal Journals"
                    case .placesandTravel: return "Podcasts|Society And Culture|Places And Travel"
                    case .philosophy: return "Podcasts|Society And Culture|Philosophy"
                    case .history: return "Podcasts|Society And Culture|History"
                    case .documentary: return "Podcasts|Society And Culture|Documentary"
                    case .relationships: return "Podcasts|Society And Culture|Relationships"
                }
            }
        }
        
        case religionAndSpirituality(ReligionAndSpirituality)
        public enum ReligionAndSpirituality: Int, CaseIterable {
            case religionandSpirituality = 1314
            case buddhism = 1438
            case christianity = 1439
            case islam = 1440
            case judaism = 1441
            case spirituality = 1444
            case hinduism = 1463
            case other = 1464
            case religion = 1532

            var stringValue: String {
                switch self {
                    case .religionandSpirituality: return "Podcasts|Religion And Spirituality"
                    case .buddhism: return "Podcasts|Religion And Spirituality|Buddhism"
                    case .christianity: return "Podcasts|Religion And Spirituality|Christianity"
                    case .islam: return "Podcasts|Religion And Spirituality|Islam"
                    case .judaism: return "Podcasts|Religion And Spirituality|Judaism"
                    case .spirituality: return "Podcasts|Religion And Spirituality|Spirituality"
                    case .hinduism: return "Podcasts|Religion And Spirituality|Hinduism"
                    case .other: return "Podcasts|Religion And Spirituality|Other"
                    case .religion: return "Podcasts|Religion And Spirituality|Religion"
                }
            }
        }
        
        case comedy(Comedy)
        public enum Comedy: Int, CaseIterable {
            case comedy = 1303
            case improv = 1495
            case comedyInterviews = 1496
            case standUp = 1497

            var stringValue: String {
                switch self {
                    case .comedy: return "Podcasts|Comedy"
                    case .improv: return "Podcasts|Comedy|Improv"
                    case .comedyInterviews: return "Podcasts|Comedy|Comedy Interviews"
                    case .standUp: return "Podcasts|Comedy|StandUp"
                }
            }
        }

        case education(Education)
        public enum Education: Int, CaseIterable {
            case education = 1304
            case k12 = 1415
            case higherEducation = 1416
            case educationalTechnology = 1468
            case languageCourses = 1469
            case training = 1470
            case languageLearning = 1498
            case howTo = 1499
            case selfImprovement = 1500
            case courses = 1501

            var stringValue: String {
                switch self {
                    case .education: return "Podcasts|Education"
                    case .k12: return "Podcasts|Education|k12"
                    case .higherEducation: return "Podcasts|Education|Higher Education"
                    case .educationalTechnology: return "Podcasts|Education|Educational Technology"
                    case .languageCourses: return "Podcasts|Education|Language Courses"
                    case .training: return "Podcasts|Education|Training"
                    case .languageLearning: return "Podcasts|Education|Language Learning"
                    case .howTo: return "Podcasts|Education|How-To"
                    case .selfImprovement: return "Podcasts|Education|Self-Improvement"
                    case .courses: return "Podcasts|Education|Courses"
                }
            }
        }
        
        case kidsAndFamily(KidsAndFamily)
        public enum KidsAndFamily: Int, CaseIterable {
            case kidsAndFamily = 1305
            case educationForKids = 1519
            case storiesForKids = 1520
            case parenting = 1521
            case petsAndAnimals = 1522

            var stringValue: String {
                switch self {
                    case .kidsAndFamily: return "Podcasts|Kids And Family"
                    case .educationForKids: return "Podcasts|Kids And Family|Education For Kids"
                    case .storiesForKids: return "Podcasts|Kids And Family|Stories For Kids"
                    case .parenting: return "Podcasts|Kids And Family|Parenting"
                    case .petsAndAnimals: return "Podcasts|Kids And Family|Pets And Animals"
                }
            }
        }
        
        case health(Health)
        public enum Health: Int, CaseIterable {
            case health = 1307
            case fitnessAndNutrition = 1417
            case selfHelp = 1420
            case sexuality = 1421
            case alternativeHealth = 1481

            var stringValue: String {
                switch self {
                    case .health: return "Podcasts!Health!"
                    case .fitnessAndNutrition: return "Podcasts!Health!Fitness And Nutrition"
                    case .selfHelp: return "Podcasts!Health!Self-Help"
                    case .sexuality: return "Podcasts!Health!Sexuality"
                    case .alternativeHealth: return "Podcasts!Health!Alternative Health"
                }
            }
        }
        
        case tvAndFilm(TVAndFilm)
        public enum TVAndFilm: Int, CaseIterable {
            case tvAndFilm = 1309
            case tvReviews = 1561
            case afterShows = 1562
            case filmReviews = 1563
            case filmHistory = 1564
            case filmInterviews = 1565

            var stringValue: String {
                switch self {
                    case .tvAndFilm: return "Podcasts|TV And Film"
                    case .tvReviews: return "Podcasts|TV And Film|TV Reviews"
                    case .afterShows: return "Podcasts|TV And Film|After Shows"
                    case .filmReviews: return "Podcasts|TV And Film|Film Reviews"
                    case .filmHistory: return "Podcasts|TV And Film|Film History"
                    case .filmInterviews: return "Podcasts|TV And Film|Film Interviews"
                }
            }
        }
        
        case music(Music)
        public enum Music: Int, CaseIterable {
            case music = 1310
            case commentary = 1523
            case history = 1524
            case interviews = 1525

            var stringValue: String {
                switch self {
                    case .music: return "Podcasts|Music"
                    case .commentary: return "Podcasts|Music|Commentary"
                    case .history: return "Podcasts|Music|History"
                    case .interviews: return "Podcasts|Music|Interviews"
                }
            }
        }

        case newsAndPolitics(NewsAndPolitics)
        public enum NewsAndPolitics: CaseIterable {
            case newsAndPolitics
            
            public static var allCases: [NewsAndPolitics] {
                var cases: [NewsAndPolitics] = [.newsAndPolitics]
                cases.append(contentsOf: News.allCases.map({ NewsAndPolitics.news($0)}))
                return cases
            }
            
            var rawValue: Int {
                switch self {
                    case .newsAndPolitics: return 1322
                    case .news(let subject): return subject.rawValue
                }
            }
            
            case news(News)
            public enum News: Int, CaseIterable {
                case news = 1489
                case businessNews = 1490
                case dailyNews = 1526
                case politics = 1527
                case techNews = 1528
                case sportsNews = 1529
                case newsCommentary = 1530
                case entertainmentNews = 1531

                var stringValue: String {
                    switch self {
                        case .news: return "Podcasts|News"
                        case .businessNews: return "Podcasts|News|Business News"
                        case .dailyNews: return "Podcasts|News|Daily News"
                        case .politics: return "Podcasts|News|Politics"
                        case .techNews: return "Podcasts|News|Tech News"
                        case .sportsNews: return "Podcasts|News|Sports News"
                        case .newsCommentary: return "Podcasts|News|News Commentary"
                        case .entertainmentNews: return "Podcasts|News|Entertainment News"
                    }
                }
            }

            var stringValue: String {
                switch self {
                    case .newsAndPolitics: return "News And Politics"
                    case .news(let subject): return subject.stringValue
                }
            }
        }
        
        case scienceAndMedicine(ScienceAndMedicine)
        public enum ScienceAndMedicine: Int, CaseIterable {
            case scienceAndMedicine = 1315
            case naturalSciences = 1477
            case medicine = 1478
            case socialSciences = 1479

            var stringValue: String {
                switch self {
                    case .scienceAndMedicine: return "Podcasts|Science And Medicine"
                    case .naturalSciences: return "Podcasts|Science And Medicine|Natural Sciences"
                    case .medicine: return "Podcasts|Science And Medicine|Medicine"
                    case .socialSciences: return "Podcasts|Science And Medicine|Social Sciences"
                }
            }
        }
        
        case science(Science)
        public enum Science: Int, CaseIterable {
            case science = 1533
            case naturalSciences = 1534
            case socialSciences = 1535
            case mathematics = 1536
            case nature = 1537
            case astronomy = 1538
            case chemistry = 1539
            case earthSciences = 1540
            case lifeSciences = 1541
            case physics = 1542

            var stringValue: String {
                switch self {
                    case .science: return "Podcasts|Science"
                    case .naturalSciences: return "Podcasts|Science|Natural Sciences"
                    case .socialSciences: return "Podcasts|Science|Social Sciences"
                    case .mathematics: return "Podcasts|Science|Mathematics"
                    case .nature: return "Podcasts|Science|Nature"
                    case .astronomy: return "Podcasts|Science|Astronomy"
                    case .chemistry: return "Podcasts|Science|Chemistry"
                    case .earthSciences: return "Podcasts|Science|Earth Sciences"
                    case .lifeSciences: return "Podcasts|Science|Life Sciences"
                    case .physics: return "Podcasts|Science|Physics"
                }
            }
        }
        
        case sportsAndRecreation(SportsAndRecreation)
        public enum SportsAndRecreation: Int, CaseIterable {
            case sportsAndRecreation = 1316
            case outdoor = 1456
            case professional = 1465
            case collegeAndHighSchool = 1466
            case amateur = 1467

            var stringValue: String {
                switch self {
                    case .sportsAndRecreation: return "Podcasts|Sports And Recreation"
                    case .outdoor: return "Podcasts|Sports And Recreation|Outdoor"
                    case .professional: return "Podcasts|Sports And Recreation|Professional"
                    case .collegeAndHighSchool: return "Podcasts|Sports And Recreation|College And HighSchool"
                    case .amateur: return "Podcasts|Sports And Recreation|Amateur"
                }
            }
        }
        
        case technology(Technology)
        public enum Technology: Int, CaseIterable {
            case technology = 1318
            case gadgets = 1446
            case techNews = 1448
            case podcasting = 1450
            case softwareHowTo = 1480

            var stringValue: String {
                switch self {
                    case .technology: return "Podcasts|Technology"
                    case .gadgets: return "Podcasts|Technology|Gadgets"
                    case .techNews: return "Podcasts|Technology|TechNews"
                    case .podcasting: return "Podcasts|Technology|Podcasting"
                    case .softwareHowTo: return "Podcasts|Technology|Software HowTo"
                }
            }
        }
        
        case business(Business)
        public enum Business: Int, CaseIterable {
            case business = 1321
            case careers = 1410
            case investing = 1412
            case managementAndMarketing = 1413
            case businessNews = 1471
            case shopping = 1472
            case management = 1491
            case marketing = 1492
            case entrepreneurship = 1493
            case nonProfit = 1494

            var stringValue: String {
                switch self {
                    case .business: return "Podcasts|Business"
                    case .careers: return "Podcasts|Business|Careers"
                    case .investing: return "Podcasts|Business|Investing"
                    case .managementAndMarketing: return "Podcasts|Business|Management And Marketing"
                    case .businessNews: return "Podcasts|Business|Business News"
                    case .shopping: return "Podcasts|Business|Shopping"
                    case .management: return "Podcasts|Business|Management"
                    case .marketing: return "Podcasts|Business|Marketing"
                    case .entrepreneurship: return "Podcasts|Business|Entrepreneurship"
                    case .nonProfit: return "Podcasts|Business|Non-Profit"
                }
            }
        }

        case gamesAndHobbies(GamesAndHobbies)
        public enum GamesAndHobbies: Int, CaseIterable {
            case gamesAndHobbies = 1323
            case videoGames = 1404
            case automotive = 1454
            case aviation = 1455
            case hobbies = 1460
            case otherGames = 1461

            var stringValue: String {
                switch self {
                    case .gamesAndHobbies: return "Podcasts|Games And Hobbies"
                    case .videoGames: return "Podcasts|Games And Hobbies|Video Games"
                    case .automotive: return "Podcasts|Games And Hobbies|Automotive"
                    case .aviation: return "Podcasts|Games And Hobbies|Aviation"
                    case .hobbies: return "Podcasts|Games And Hobbies|Hobbies"
                    case .otherGames: return "Podcasts|Games And Hobbies|Other Games"
                }
            }
        }

        case governmentAndOrganizations(GovernmentAndOrganizations)
        public enum GovernmentAndOrganizations: Int, CaseIterable {
            case governmentAndOrganizations = 1325
            case national = 1473
            case regional = 1474
            case local = 1475
            case nonProfit = 1476

            var stringValue: String {
                switch self {
                    case .governmentAndOrganizations: return "Podcasts|Government And Organizations"
                    case .national: return "Podcasts|Government And Organizations|National"
                    case .regional: return "Podcasts|Government And Organizations|Regional"
                    case .local: return "Podcasts|Government And Organizations|Local"
                    case .nonProfit: return "Podcasts|Government And Organizations|Non-Profit"
                }
            }
        }
        
        case fiction(Fiction)
        public enum Fiction: Int, CaseIterable {
            case fiction = 1483
            case drama = 1484
            case scienceFiction = 1485
            case comedyFiction = 1486

            var stringValue: String {
                switch self {
                    case .fiction: return "Podcasts|Fiction"
                    case .drama: return "Podcasts|Fiction|Drama"
                    case .scienceFiction: return "Podcasts|Fiction|Science Fiction"
                    case .comedyFiction: return "Podcasts|Fiction|Comedy Fiction"
                }
            }
        }
                
        case leisure(Leisure)
        public enum Leisure: Int, CaseIterable {
            case leisure = 1502
            case automotive = 1503
            case aviation = 1504
            case hobbies = 1505
            case crafts = 1506
            case games = 1507
            case homeAndGarden = 1508
            case videoGames = 1509
            case animationAndManga = 1510

            var stringValue: String {
                switch self {
                    case .leisure: return "Podcasts|Leisure"
                    case .automotive: return "Podcasts|Leisure|Automotive"
                    case .aviation: return "Podcasts|Leisure|Aviation"
                    case .hobbies: return "Podcasts|Leisure|Hobbies"
                    case .crafts: return "Podcasts|Leisure|Crafts"
                    case .games: return "Podcasts|Leisure|Games"
                    case .homeAndGarden: return "Podcasts|Leisure|Home And Garden"
                    case .videoGames: return "Podcasts|Leisure|Video Games"
                    case .animationAndManga: return "Podcasts|Leisure|Animation And Manga"
                }
            }
        }
        
        case healthAndFitness(HealthAndFitness)
        public enum HealthAndFitness: Int, CaseIterable {
            case healthAndFitness = 1512
            case alternativeHealth = 1513
            case fitness = 1514
            case nutrition = 1515
            case sexuality = 1516
            case mentalHealth = 1517
            case medicine = 1518

            var stringValue: String {
                switch self {
                    case .healthAndFitness: return "Podcasts|Health And Fitness"
                    case .alternativeHealth: return "Podcasts|Health And Fitness|Alternative Health"
                    case .fitness: return "Podcasts|Health And Fitness|Fitness"
                    case .nutrition: return "Podcasts|Health And Fitness|Nutrition"
                    case .sexuality: return "Podcasts|Health And Fitness|Sexuality"
                    case .mentalHealth: return "Podcasts|Health And Fitness|Mental Health"
                    case .medicine: return "Podcasts|Health And Fitness|Medicine"
                }
            }
        }
        
        case sports(Sports)
        public enum Sports: Int, CaseIterable {
            case sports = 1545
            case soccer = 1546
            case football = 1547
            case basketball = 1548
            case baseball = 1549
            case hockey = 1550
            case running = 1551
            case rugby = 1552
            case golf = 1553
            case cricket = 1554
            case wrestling = 1555
            case tennis = 1556
            case volleyball = 1557
            case swimming = 1558
            case wilderness = 1559
            case fantasySports = 1560
            
            var stringValue: String {
                switch self {
                    case .sports: return "Podcasts|Sports"
                    case .soccer: return "Podcasts|Sports|Soccer"
                    case .football: return "Podcasts|Sports|Football"
                    case .basketball: return "Podcasts|Sports|Basketball"
                    case .baseball: return "Podcasts|Sports|Baseball"
                    case .hockey: return "Podcasts|Sports|Hockey"
                    case .running: return "Podcasts|Sports|Running"
                    case .rugby: return "Podcasts|Sports|Rugby"
                    case .golf: return "Podcasts|Sports|Golf"
                    case .cricket: return "Podcasts|Sports|Cricket"
                    case .wrestling: return "Podcasts|Sports|Wrestling"
                    case .tennis: return "Podcasts|Sports|Tennis"
                    case .volleyball: return "Podcasts|Sports|Volleyball"
                    case .swimming: return "Podcasts|Sports|Swimming"
                    case .wilderness: return "Podcasts|Sports|Wilderness"
                    case .fantasySports: return "Podcasts|Sports|Fantasy Sports"
                }
            }
        }
    }
}
