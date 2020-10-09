//
//  File.swift
//
//
//  Created by Nolaine Crusher on 10/7/20.
//

import Foundation
extension Genre {
    public enum ITunesU: CaseIterable {
        case iTunesU
        
        public var genreID: Int {
            switch self {
                case .iTunesU: return 40000000
                case .businessAndEconomics(let subject): return subject.rawValue
                case .engineering(let subject): return subject.rawValue
                case .musicArtAndDesign(let subject): return subject.rawValue
                case .healthAndMedicine(let subject): return subject.rawValue
                case .history(let subject): return subject.rawValue
                case .communicationsAndJournalism(let subject): return subject.rawValue
                case .philosophy(let subject): return subject.rawValue
                case .religionAndSpirituality(let subject): return subject.rawValue
                case .langages(let subject): return subject.rawValue
                case .writingAndLiterature(let subject): return subject.rawValue
                case .mathematics(let subject): return subject.rawValue
                case .science(let subject): return subject.rawValue
                case .lawAndPolitics(let subject): return subject.rawValue
                case .socialScience(let subject): return subject.rawValue
                case .society(let subject): return subject.rawValue
                case .teachingAndLearning(let subject): return subject.rawValue
            }
        }

        public var stringValue: String {
            switch self {
                case .iTunesU: return "iTunesU"
                case .businessAndEconomics(let subject): return subject.stringValue
                case .engineering(let subject): return subject.stringValue
                case .musicArtAndDesign(let subject): return subject.stringValue
                case .healthAndMedicine(let subject): return subject.stringValue
                case .history(let subject): return subject.stringValue
                case .communicationsAndJournalism(let subject): return subject.stringValue
                case .philosophy(let subject): return subject.stringValue
                case .religionAndSpirituality(let subject): return subject.stringValue
                case .langages(let subject): return subject.stringValue
                case .writingAndLiterature(let subject): return subject.stringValue
                case .mathematics(let subject): return subject.stringValue
                case .science(let subject): return subject.stringValue
                case .lawAndPolitics(let subject): return subject.stringValue
                case .socialScience(let subject): return subject.stringValue
                case .society(let subject): return subject.stringValue
                case .teachingAndLearning(let subject): return subject.stringValue
            }
        }
        
        public static var allCases: [ITunesU] {
            var cases: [ITunesU] = [.iTunesU]
            cases.append(contentsOf: BusinessAndEconomics.allCases.map({ ITunesU.businessAndEconomics($0)}))
            cases.append(contentsOf: Engineering.allCases.map({ ITunesU.engineering($0)}))
            cases.append(contentsOf: MusicArtAndDesign.allCases.map({ ITunesU.musicArtAndDesign($0)}))
            cases.append(contentsOf: HealthAndMedicine.allCases.map({ ITunesU.healthAndMedicine($0)}))
            cases.append(contentsOf: History.allCases.map({ ITunesU.history($0)}))
            cases.append(contentsOf: CommunicationsAndJournalism.allCases.map({ ITunesU.communicationsAndJournalism($0)}))
            cases.append(contentsOf: Philosophy.allCases.map({ ITunesU.philosophy($0)}))
            cases.append(contentsOf: ReligionAndSpirituality.allCases.map({ ITunesU.religionAndSpirituality($0)}))
            cases.append(contentsOf: Languages.allCases.map({ ITunesU.langages($0)}))
            cases.append(contentsOf: WritingAndLiterature.allCases.map({ ITunesU.writingAndLiterature($0)}))
            cases.append(contentsOf: Mathematics.allCases.map({ ITunesU.mathematics($0)}))
            cases.append(contentsOf: Science.allCases.map({ ITunesU.science($0)}))
            cases.append(contentsOf: SocialScience.allCases.map({ ITunesU.socialScience($0)}))
            cases.append(contentsOf: Society.allCases.map({ ITunesU.society($0)}))
            cases.append(contentsOf: TeachingAndLearning.allCases.map({ ITunesU.teachingAndLearning($0)}))
            cases.append(contentsOf: LawAndPolitics.allCases.map({ ITunesU.lawAndPolitics($0)}))
            return cases
        }
        
        case businessAndEconomics(BusinessAndEconomics)
        public enum BusinessAndEconomics: Int, CaseIterable {
            case businessAndEconomics = 40000001
            case economics = 40000002
            case finance = 40000003
            case hospitality = 40000004
            case management = 40000005
            case marketing = 40000006
            case personalFinance = 40000007
            case realEstate = 40000008
            case entrepreneurship = 40000121
            
            var stringValue: String {
                switch self {
                    case .businessAndEconomics: return "iTunesU|Business And Economics"
                    case .economics: return "iTunesU|Business And Economics|Economics"
                    case .finance: return "iTunesU|Business And Economics|Finance"
                    case .hospitality: return "iTunesU|Business And Economics|Hospitality"
                    case .management: return "iTunesU|Business And Economics|Management"
                    case .marketing: return "iTunesU|Business And Economics|Marketing"
                    case .personalFinance: return "iTunesU|Business And Economics|Personal Finance"
                    case .realEstate: return "iTunesU|Business And Economics|Real Estate"
                    case .entrepreneurship: return "iTunesU|Business And Economics|Entrepreneurship"
                }
            }
        }
        
        case engineering(Engineering)
        public enum Engineering: Int, CaseIterable {
            case engineering = 40000009
            case chemicalandPetroleumEngineering = 40000010
            case civilEngineering = 40000011
            case computerScience = 40000012
            case electricalEngineering = 40000013
            case environmentalEngineering = 40000014
            case mechanicalEngineering = 40000015

            var stringValue: String {
                switch self {
                    case .engineering: return "iTunesU|Engineering"
                    case .chemicalandPetroleumEngineering: return "iTunesU|Engineering|Chemical and Petroleum Engineering"
                    case .civilEngineering: return "iTunesU|Engineering|Civil Engineering"
                    case .computerScience: return "iTunesU|Engineering|Computer Science"
                    case .electricalEngineering: return "iTunesU|Engineering|Electrical Engineering"
                    case .environmentalEngineering: return "iTunesU|Engineering|Environmental Engineering"
                    case .mechanicalEngineering: return "iTunesU|Engineering|Mechanical Engineering"
                }
            }
        }
        case musicArtAndDesign(MusicArtAndDesign)
        public enum MusicArtAndDesign: Int, CaseIterable {
            case musicArtandDesign = 40000016
            case architecture = 40000017
            case artHistory = 40000019
            case dance = 40000020
            case film = 40000021
            case design = 40000022
            case interiorDesign = 40000023
            case music = 40000024
            case theater = 40000025
            case culinaryArts = 40000116
            case fashion = 40000117
            case mediaArts = 40000118
            case photography = 40000119
            case visualArt = 40000120

            var stringValue: String {
                switch self {
                    case .musicArtandDesign: return "iTunesU|Music Art and Design"
                    case .architecture: return "iTunesU|Music Art and Design|Architecture"
                    case .artHistory: return "iTunesU|Music Art and Design|Art History"
                    case .dance: return "iTunesU|Music Art and Design|Dance"
                    case .film: return "iTunesU|Music Art and Design|Film"
                    case .design: return "iTunesU|Music Art and Design|Design"
                    case .interiorDesign: return "iTunesU|Music Art and Design|Interior Design"
                    case .music: return "iTunesU|Music Art and Design|Music"
                    case .theater: return "iTunesU|Music Art and Design|Theater"
                    case .culinaryArts: return "iTunesU|Music Art and Design|Culinary Arts"
                    case .fashion: return "iTunesU|Music Art and Design|Fashion"
                    case .mediaArts: return "iTunesU|Music Art and Design|Media Arts"
                    case .photography: return "iTunesU|Music Art and Design|Photography"
                    case .visualArt: return "iTunesU|Music Art and Design|Visual Art"
                }
            }
        }
        case healthAndMedicine(HealthAndMedicine)
        public enum HealthAndMedicine: Int, CaseIterable {
            case healthandMedicine = 40000026
            case anatomyandPhysiology = 40000027
            case behavioralScience = 40000028
            case dentistry = 40000029
            case dietandNutrition = 40000030
            case emergencyMedicine = 40000031
            case genetics = 40000032
            case gerontology = 40000033
            case healthandExerciseScience = 40000034
            case immunology = 40000035
            case neuroscience = 40000036
            case pharmacologyandToxicology = 40000037
            case psychiatry = 40000038
            case globalHealth = 40000039
            case radiology = 40000040
            case nursing = 40000129

            var stringValue: String {
                switch self {
                    case .healthandMedicine: return "iTunesU|Health and Medicine"
                    case .anatomyandPhysiology: return "iTunesU|Health and Medicine|Anatomy and Physiology"
                    case .behavioralScience: return "iTunesU|Health and Medicine|Behavioral Science"
                    case .dentistry: return "iTunesU|Health and Medicine|Dentistry"
                    case .dietandNutrition: return "iTunesU|Health and Medicine|Diet and Nutrition"
                    case .emergencyMedicine: return "iTunesU|Health and Medicine|Emergency Medicine"
                    case .genetics: return "iTunesU|Health and Medicine|Genetics"
                    case .gerontology: return "iTunesU|Health and Medicine|Gerontology"
                    case .healthandExerciseScience: return "iTunesU|Health and Medicine|Health and Exercise Science"
                    case .immunology: return "iTunesU|Health and Medicine|Immunology"
                    case .neuroscience: return "iTunesU|Health and Medicine|Neuroscience"
                    case .pharmacologyandToxicology: return "iTunesU|Health and Medicine|Pharmacology and Toxicology"
                    case .psychiatry: return "iTunesU|Health and Medicine|Psychiatry"
                    case .globalHealth: return "iTunesU|Health and Medicine|Global Health"
                    case .radiology: return "iTunesU|Health and Medicine|Radiology"
                    case .nursing: return "iTunesU|Health and Medicine|Nursing"
                }
            }
        }
        case history(History)
        public enum History: Int, CaseIterable {
            case history = 40000041
            case ancientHistory = 40000042
            case medievalHistory = 40000043
            case militaryHistory = 40000044
            case modernHistory = 40000045
            case africanHistory = 40000046
            case asiaPacificHistory = 40000047
            case europeanHistory = 40000048
            case middleEasternHistory = 40000049
            case northAmericanHistory = 40000050
            case southAmericanHistory = 40000051

            var stringValue: String {
                switch self {
                    case .history: return "iTunesU|History"
                    case .ancientHistory: return "iTunesU|History|Ancient History"
                    case .medievalHistory: return "iTunesU|History|Medieval History"
                    case .militaryHistory: return "iTunesU|History|Military History"
                    case .modernHistory: return "iTunesU|History|Modern History"
                    case .africanHistory: return "iTunesU|History|African History"
                    case .asiaPacificHistory: return "iTunesU|History|Asia Pacific History"
                    case .europeanHistory: return "iTunesU|History|European History"
                    case .middleEasternHistory: return "iTunesU|History|Middle Eastern History"
                    case .northAmericanHistory: return "iTunesU|History|North American History"
                    case .southAmericanHistory: return "iTunesU|History|South American History"
                }
            }
        }
        case communicationsAndJournalism(CommunicationsAndJournalism)
        public enum CommunicationsAndJournalism: Int, CaseIterable {
            case communicationsandJournalism = 40000053
            case broadcasting = 40000122
            case digitalMedia = 40000123
            case journalism = 40000124
            case photojournalism = 40000125
            case print = 40000126
            case speech = 40000127
            case writing = 40000128

            var stringValue: String {
                switch self {
                    case .communicationsandJournalism: return "iTunesU|Communications and Journalism"
                    case .broadcasting: return "iTunesU|Communications and Journalism|Broadcasting"
                    case .digitalMedia: return "iTunesU|Communications and Journalism|Digital Media"
                    case .journalism: return "iTunesU|Communications and Journalism|Journalism"
                    case .photojournalism: return "iTunesU|Communications and Journalism|Photojournalism"
                    case .print: return "iTunesU|Communications and Journalism|Print"
                    case .speech: return "iTunesU|Communications and Journalism|Speech"
                    case .writing: return "iTunesU|Communications and Journalism|Writing"
                }
            }
        }
        case philosophy(Philosophy)
        public enum Philosophy: Int, CaseIterable {
            case philosophy = 40000054
            case aesthetics = 40000146
            case epistemology = 40000147
            case ethics = 40000148
            case metaphysics = 40000149
            case politicalPhilosophy = 40000150
            case logic = 40000151
            case philosophyofLanguage = 40000152
            case philosophyofReligion = 40000153

            var stringValue: String {
                switch self {
                    case .philosophy: return "iTunesU|Philosophy"
                    case .aesthetics: return "iTunesU|Philosophy|Aesthetics"
                    case .epistemology: return "iTunesU|Philosophy|Epistemology"
                    case .ethics: return "iTunesU|Philosophy|Ethics"
                    case .metaphysics: return "iTunesU|Philosophy|Metaphysics"
                    case .politicalPhilosophy: return "iTunesU|Philosophy|Political Philosophy"
                    case .logic: return "iTunesU|Philosophy|Logic"
                    case .philosophyofLanguage: return "iTunesU|Philosophy|Philosophy of Language"
                    case .philosophyofReligion: return "iTunesU|Philosophy|Philosophy of Religion"
                }
            }
        }
        case religionAndSpirituality(ReligionAndSpirituality)
        public enum ReligionAndSpirituality: Int, CaseIterable {
            case religionandSpirituality = 40000055
            case buddhism = 40000156
            case christianity = 40000157
            case comparativeReligion = 40000158
            case hinduism = 40000159
            case islam = 40000160
            case judaism = 40000161
            case otherReligions = 40000162
            case spirituality = 40000163

            var stringValue: String {
                switch self {
                    case .religionandSpirituality: return "iTunesU|Religion and Spirituality"
                    case .buddhism: return "iTunesU|Religion and Spirituality|Buddhism"
                    case .christianity: return "iTunesU|Religion and Spirituality|Christianity"
                    case .comparativeReligion: return "iTunesU|Religion and Spirituality|Comparative Religion"
                    case .hinduism: return "iTunesU|Religion and Spirituality|Hinduism"
                    case .islam: return "iTunesU|Religion and Spirituality|Islam"
                    case .judaism: return "iTunesU|Religion and Spirituality|Judaism"
                    case .otherReligions: return "iTunesU|Religion and Spirituality|Other Religions"
                    case .spirituality: return "iTunesU|Religion and Spirituality|Spirituality"
                }
            }
        }
        case langages(Languages)
        public enum Languages: Int, CaseIterable {
            case languages = 40000056
            case africanLanguages = 40000057
            case ancientLanguages = 40000058
            case english = 40000061
            case french = 40000063
            case german = 40000064
            case italian = 40000065
            case linguistics = 40000066
            case spanish = 40000068
            case speechPathology = 40000069
            case arabic = 40000130
            case chinese = 40000131
            case hebrew = 40000132
            case hindi = 40000133
            case indigenousLanguages = 40000134
            case japanese = 40000135
            case korean = 40000136
            case otherLanguages = 40000137
            case portuguese = 40000138
            case russian = 40000139
            case dutch = 40000173
            case luxembourgish = 40000174
            case swedish = 40000175
            case norwegian = 40000176
            case finnish = 40000177
            case danish = 40000178
            case polish = 40000179
            case turkish = 40000180
            case flemish = 40000181

            var stringValue: String {
                switch self {
                    case .languages: return "iTunesU|Languages"
                    case .africanLanguages: return "iTunesU|Languages|African Languages"
                    case .ancientLanguages: return "iTunesU|Languages|Ancient Languages"
                    case .english: return "iTunesU|Languages|English"
                    case .french: return "iTunesU|Languages|French"
                    case .german: return "iTunesU|Languages|German"
                    case .italian: return "iTunesU|Languages|Italian"
                    case .linguistics: return "iTunesU|Languages|Linguistics"
                    case .spanish: return "iTunesU|Languages|Spanish"
                    case .speechPathology: return "iTunesU|Languages|Speech Pathology"
                    case .arabic: return "iTunesU|Languages|Arabic"
                    case .chinese: return "iTunesU|Languages|Chinese"
                    case .hebrew: return "iTunesU|Languages|Hebrew"
                    case .hindi: return "iTunesU|Languages|Hindi"
                    case .indigenousLanguages: return "iTunesU|Languages|Indigenous Languages"
                    case .japanese: return "iTunesU|Languages|Japanese"
                    case .korean: return "iTunesU|Languages|Korean"
                    case .otherLanguages: return "iTunesU|Languages|Other Languages"
                    case .portuguese: return "iTunesU|Languages|Portuguese"
                    case .russian: return "iTunesU|Languages|Russian"
                    case .dutch: return "iTunesU|Languages|Dutch"
                    case .luxembourgish: return "iTunesU|Languages|Luxembourgish"
                    case .swedish: return "iTunesU|Languages|Swedish"
                    case .norwegian: return "iTunesU|Languages|Norwegian"
                    case .finnish: return "iTunesU|Languages|Finnish"
                    case .danish: return "iTunesU|Languages|Danish"
                    case .polish: return "iTunesU|Languages|Polish"
                    case .turkish: return "iTunesU|Languages|Turkish"
                    case .flemish: return "iTunesU|Languages|Flemish"
                }
            }
        }
        case writingAndLiterature(WritingAndLiterature)
        public enum WritingAndLiterature: Int, CaseIterable {
            case writingandLiterature = 40000070
            case anthologies = 40000071
            case biography = 40000072
            case classics = 40000073
            case literaryCriticism = 40000074
            case fiction = 40000075
            case poetry = 40000076
            case comparativeLiterature = 40000145
            
            var stringValue: String {
                switch self {
                    case .writingandLiterature: return "iTunesU|Writing and Literature"
                    case .anthologies: return "iTunesU|Writing and Literature|Anthologies"
                    case .biography: return "iTunesU|Writing and Literature|Biography"
                    case .classics: return "iTunesU|Writing and Literature|Classics"
                    case .literaryCriticism: return "iTunesU|Writing and Literature|Literary Criticism"
                    case .fiction: return "iTunesU|Writing and Literature|Fiction"
                    case .poetry: return "iTunesU|Writing and Literature|Poetry"
                    case .comparativeLiterature: return "iTunesU|Writing and Literature|Comparative Literature"
                }
            }
        }
        case mathematics(Mathematics)
        public enum Mathematics: Int, CaseIterable {
            case mathematics = 40000077
            case advancedMathematics = 40000078
            case algebra = 40000079
            case arithmetic = 40000080
            case calculus = 40000081
            case geometry = 40000082
            case statistics = 40000083
            
            var stringValue: String {
                switch self {
                    case .mathematics: return "iTunesU|Mathematics"
                    case .advancedMathematics: return "iTunesU|Mathematics|Advanced Mathematics"
                    case .algebra: return "iTunesU|Mathematics|Algebra"
                    case .arithmetic: return "iTunesU|Mathematics|Arithmetic"
                    case .calculus: return "iTunesU|Mathematics|Calculus"
                    case .geometry: return "iTunesU|Mathematics|Geometry"
                    case .statistics: return "iTunesU|Mathematics|Statistics"
                }
            }
        }
        case science(Science)
        public enum Science: Int, CaseIterable {
            case science = 40000084
            case agricultural = 40000085
            case astronomy = 40000086
            case atmosphere = 40000087
            case biology = 40000088
            case chemistry = 40000089
            case ecology = 40000090
            case geography = 40000091
            case geology = 40000092
            case physics = 40000093
            case environment = 40000164
            
            var stringValue: String {
                switch self {
                    case .science: return "iTunesU|Science"
                    case .agricultural: return "iTunesU|Science|Agricultural"
                    case .astronomy: return "iTunesU|Science|Astronomy"
                    case .atmosphere: return "iTunesU|Science|Atmosphere"
                    case .biology: return "iTunesU|Science|Biology"
                    case .chemistry: return "iTunesU|Science|Chemistry"
                    case .ecology: return "iTunesU|Science|Ecology"
                    case .geography: return "iTunesU|Science|Geography"
                    case .geology: return "iTunesU|Science|Geology"
                    case .physics: return "iTunesU|Science|Physics"
                    case .environment: return "iTunesU|Science|Environment"
                }
            }
        }
        case lawAndPolitics(LawAndPolitics)
        public enum LawAndPolitics: Int, CaseIterable {
            case law = 40000095
            case politicalScience = 40000096
            case publicAdministration = 40000097
            case lawandPolitics = 40000140
            case foreignPolicyandInternationalRelations = 40000141
            case localGovernments = 40000142
            case nationalGovernments = 40000143
            case worldAffairs = 40000144
            
            var stringValue: String {
                switch self {
                    case .law: return "iTunesU|Law and Politics|Law"
                    case .politicalScience: return "iTunesU|Law and Politics|Political Science"
                    case .publicAdministration: return "iTunesU|Law and Politics|Public Administration"
                    case .lawandPolitics: return "iTunesU|Law and Politics"
                    case .foreignPolicyandInternationalRelations: return "iTunesU|Law and Politics|Foreign Policy and International Relations"
                    case .localGovernments: return "iTunesU|Law and Politics|Local Governments"
                    case .nationalGovernments: return "iTunesU|Law and Politics|National Governments"
                    case .worldAffairs: return "iTunesU|Law and Politics|World Affairs"
                }
            }
        }
        case socialScience(SocialScience)
        public enum SocialScience: Int, CaseIterable {
            case socialScience = 40000094
            case psychology = 40000098
            case socialWelfare = 40000099
            case sociology = 40000100
            case archaeology = 40000154
            case anthropology = 40000155
            
            var stringValue: String {
                switch self {
                    case .socialScience: return "iTunesU|Social Science"
                    case .psychology: return "iTunesU|Social Science|Psychology"
                    case .socialWelfare: return "iTunesU|Social Science|Social Welfare"
                    case .sociology: return "iTunesU|Social Science|Sociology"
                    case .archaeology: return "iTunesU|Social Science|Archaeology"
                    case .anthropology: return "iTunesU|Social Science|Anthropology"
                }
            }
        }
        case society(Society)
        public enum Society: Int, CaseIterable {
            case society = 40000101
            case asiaPacificStudies = 40000103
            case europeanStudies = 40000104
            case indigenousStudies = 40000105
            case latinandCaribbeanStudies = 40000106
            case middleEasternStudies = 40000107
            case womensStudies = 40000108
            case africanStudies = 40000165
            case americanStudies = 40000166
            case crossculturalStudies = 40000167
            case immigrationandEmigration = 40000168
            case raceandEthnicityStudies = 40000169
            case sexualityStudies = 40000170

            var stringValue: String {
                switch self {
                    case .society: return "iTunesU|Society"
                    case .asiaPacificStudies: return "iTunesU|Society|Asia Pacific Studies"
                    case .europeanStudies: return "iTunesU|Society|European Studies"
                    case .indigenousStudies: return "iTunesU|Society|Indigenous Studies"
                    case .latinandCaribbeanStudies: return "iTunesU|Society|Latin and Caribbean Studies"
                    case .middleEasternStudies: return "iTunesU|Society|Middle Eastern Studies"
                    case .womensStudies: return "iTunesU|Society|Womens Studies"
                    case .africanStudies: return "iTunesU|Society|African Studies"
                    case .americanStudies: return "iTunesU|Society|American Studies"
                    case .crossculturalStudies: return "iTunesU|Society|Crosscultural Studies"
                    case .immigrationandEmigration: return "iTunesU|Society|Immigration and Emigration"
                    case .raceandEthnicityStudies: return "iTunesU|Society|Race and Ethnicity Studies"
                    case .sexualityStudies: return "iTunesU|Society|Sexuality Studies"
                }
            }
        }
        case teachingAndLearning(TeachingAndLearning)
        public enum TeachingAndLearning: Int, CaseIterable {
            case teachingandLearning = 40000109
            case curriculumandTeaching = 40000110
            case educationalLeadership = 40000111
            case familyandChildcare = 40000112
            case learningResources = 40000113
            case psychologyandResearch = 40000114
            case specialEducation = 40000115
            case educationalTechnology = 40000171
            case informationLibraryScience = 40000172
            
            var stringValue: String {
                switch self {
                    case .teachingandLearning: return "iTunesU|Teaching and Learning"
                    case .curriculumandTeaching: return "iTunesU|Teaching and Learning|Curriculum and Teaching"
                    case .educationalLeadership: return "iTunesU|Teaching and Learning|Educational Leadership"
                    case .familyandChildcare: return "iTunesU|Teaching and Learning|Family and Childcare"
                    case .learningResources: return "iTunesU|Teaching and Learning|Learning Resources"
                    case .psychologyandResearch: return "iTunesU|Teaching and Learning|Psychology and Research"
                    case .specialEducation: return "iTunesU|Teaching and Learning|Special Education"
                    case .educationalTechnology: return "iTunesU|Teaching and Learning|Educational Technology"
                    case .informationLibraryScience: return "iTunesU|Teaching and Learning|Information Library Science"
                }
            }
        }
    }
}
