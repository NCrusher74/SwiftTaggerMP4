// GenreID.swift
// Created by Nolaine Crusher on 5-5-20.

import Foundation
import SE0270_RangeSet

public enum Genres: Int, CaseIterable {
    case none = 0
    case musicBlues = 2
    case musicComedy = 3
    case musicChildrenMusic = 4
    case musicClassical = 5
    case musicCountry = 6
    case musicElectronic = 7
    case musicHoliday = 8
    case musicClassicalOpera = 9
    case musicSingerSongwriter = 10
    case musicJazz = 11
    case musicLatino = 12
    case musicNewAge = 13
    case musicPop = 14
    case musicRandBSoul = 15
    case musicSoundtrack = 16
    case musicDance = 17
    case musicHipHopRap = 18
    case musicWorld = 19
    case musicAlternative = 20
    case musicRock = 21
    case musicChristianandGospel = 22
    case musicVocal = 23
    case musicReggae = 24
    case musicEasyListening = 25
    case podcasts = 26
    case musicJPop = 27
    case musicEnka = 28
    case musicAnime = 29
    case musicKayokyoku = 30
    case musicVideos = 31
    case tVShows = 32
    case movies = 33
    case music = 34
    case iPodGames = 35
    case appStore = 36
    case tones = 37
    case books = 38
    case macAppStore = 39
    case textbooks = 40
    case musicFitnessandWorkout = 50
    case musicPopKPop = 51
    case musicKaraoke = 52
    case musicInstrumental = 53
    case audiobooksNews = 74
    case audiobooksProgramsandPerformances = 75
    case fitnessMusic = 500
    case fitnessMusicPop = 501
    case fitnessMusicDance = 502
    case fitnessMusicHipHop = 503
    case fitnessMusicRock = 504
    case fitnessMusicAltIndie = 505
    case fitnessMusicLatino = 506
    case fitnessMusicCountry = 507
    case fitnessMusicWorld = 508
    case fitnessMusicNewAge = 509
    case fitnessMusicClassical = 510
    case musicAlternativeCollegeRock = 1001
    case musicAlternativeGothRock = 1002
    case musicAlternativeGrunge = 1003
    case musicAlternativeIndieRock = 1004
    case musicAlternativeNewWave = 1005
    case musicAlternativePunk = 1006
    case musicBluesChicagoBlues = 1007
    case musicBluesClassicBlues = 1009
    case musicBluesContemporaryBlues = 1010
    case musicBluesCountryBlues = 1011
    case musicBluesDeltaBlues = 1012
    case musicBluesElectricBlues = 1013
    case musicMusicLullabies = 1014
    case musicMusicSingAlong = 1015
    case musicMusicStories = 1016
    case musicClassicalAvantGarde = 1017
    case musicClassicalBaroqueEra = 1018
    case musicClassicalChamberMusic = 1019
    case musicClassicalChant = 1020
    case musicClassicalChoral = 1021
    case musicClassicalClassicalCrossover = 1022
    case musicClassicalEarlyMusic = 1023
    case musicClassicalImpressionist = 1024
    case musicClassicalMedievalEra = 1025
    case musicClassicalMinimalism = 1026
    case musicClassicalModernEra = 1027
    case musicClassicalOrchestral = 1029
    case musicClassicalRenaissance = 1030
    case musicClassicalRomanticEra = 1031
    case musicClassicalWeddingMusic = 1032
    case musicCountryAlternativeCountry = 1033
    case musicCountryAmericana = 1034
    case musicCountryBluegrass = 1035
    case musicCountryContemporaryBluegrass = 1036
    case musicCountryContemporaryCountry = 1037
    case musicCountryCountryGospel = 1038
    case musicCountryHonkyTonk = 1039
    case musicCountryOutlawCountry = 1040
    case musicCountryTraditionalBluegrass = 1041
    case musicCountryTraditionalCountry = 1042
    case musicCountryUrbanCowboy = 1043
    case musicDanceBreakbeat = 1044
    case musicDanceExercise = 1045
    case musicDanceGarage = 1046
    case musicDanceHardcore = 1047
    case musicDanceHouse = 1048
    case musicDanceJungleDrumandBass = 1049
    case musicDanceTechno = 1050
    case musicDanceTrance = 1051
    case musicJazzBigBand = 1052
    case musicJazzBop = 1053
    case musicEasyListeningLounge = 1054
    case musicEasyListeningSwing = 1055
    case musicElectronicAmbient = 1056
    case musicElectronicDowntempo = 1057
    case musicElectronicElectronica = 1058
    case musicElectronicIDMExperimental = 1060
    case musicElectronicIndustrial = 1061
    case musicSingerSongwriterAlternativeFolk = 1062
    case musicSingerSongwriterContemporaryFolk = 1063
    case musicSingerSongwriterContemporarySingerSongwriter = 1064
    case musicSingerSongwriterFolkRock = 1065
    case musicSingerSongwriterNewAcoustic = 1066
    case musicSingerSongwriterTraditionalFolk = 1067
    case musicHipHopRapAlternativeRap = 1068
    case musicHipHopRapDirtySouth = 1069
    case musicHipHopRapEastCoastRap = 1070
    case musicHipHopRapGangstaRap = 1071
    case musicHipHopRapHardcoreRap = 1072
    case musicHipHopRapHipHop = 1073
    case musicHipHopRapLatinRap = 1074
    case musicHipHopRapOldSchoolRap = 1075
    case musicHipHopRapRap = 1076
    case musicHipHopRapUndergroundRap = 1077
    case musicHipHopRapWestCoastRap = 1078
    case musicHolidayChanukah = 1079
    case musicHolidayChristmas = 1080
    case musicHolidayChristmasChildrens = 1081
    case musicHolidayChristmasClassic = 1082
    case musicHolidayChristmasClassical = 1083
    case musicHolidayChristmasJazz = 1084
    case musicHolidayChristmasModern = 1085
    case musicHolidayChristmasPop = 1086
    case musicHolidayChristmasRandB = 1087
    case musicHolidayChristmasReligious = 1088
    case musicHolidayChristmasRock = 1089
    case musicHolidayEaster = 1090
    case musicHolidayHalloween = 1091
    case musicHolidayHolidayOther = 1092
    case musicHolidayThanksgiving = 1093
    case musicChristianandGospelCCM = 1094
    case musicChristianandGospelChristianMetal = 1095
    case musicChristianandGospelChristianPop = 1096
    case musicChristianandGospelChristianRap = 1097
    case musicChristianandGospelChristianRock = 1098
    case musicChristianandGospelClassicChristian = 1099
    case musicChristianandGospelContemporaryGospel = 1100
    case musicChristianandGospelGospel = 1101
    case musicChristianandGospelPraiseandWorship = 1103
    case musicChristianandGospelSouthernGospel = 1104
    case musicChristianandGospelTraditionalGospel = 1105
    case musicJazzAvantGardeJazz = 1106
    case musicJazzContemporaryJazz = 1107
    case musicJazzCrossoverJazz = 1108
    case musicJazzDixieland = 1109
    case musicJazzFusion = 1110
    case musicJazzLatinJazz = 1111
    case musicJazzMainstreamJazz = 1112
    case musicJazzRagtime = 1113
    case musicJazzSmoothJazz = 1114
    case musicLatinoLatinJazz = 1115
    case musicLatinoContemporaryLatin = 1116
    case musicLatinoPopLatino = 1117
    case musicLatinoRaices = 1118
    case musicLatinoUrbanolatino = 1119
    case musicLatinoBaladasyBoleros = 1120
    case musicLatinoRockyAlternativo = 1121
    case musicBrazilian = 1122
    case musicLatinoMusicaMexicana = 1123
    case musicLatinoMusicatropical = 1124
    case musicNewAgeEnvironmental = 1125
    case musicNewAgeHealing = 1126
    case musicNewAgeMeditation = 1127
    case musicNewAgeNature = 1128
    case musicNewAgeRelaxation = 1129
    case musicNewAgeTravel = 1130
    case musicPopAdultContemporary = 1131
    case musicPopBritpop = 1132
    case musicPopPopRock = 1133
    case musicPopSoftRock = 1134
    case musicPopTeenPop = 1135
    case musicRandBSoulContemporaryRandB = 1136
    case musicRandBSoulDisco = 1137
    case musicRandBSoulDooWop = 1138
    case musicRandBSoulFunk = 1139
    case musicRandBSoulMotown = 1140
    case musicRandBSoulNeoSoul = 1141
    case musicRandBSoulQuietStorm = 1142
    case musicRandBSoulSoul = 1143
    case musicRockAdultAlternative = 1144
    case musicRockAmericanTradRock = 1145
    case musicRockArenaRock = 1146
    case musicRockBluesRock = 1147
    case musicRockBritishInvasion = 1148
    case musicRockDeathMetalBlackMeta = 1149
    case musicRockGlamRock = 1150
    case musicRockHairMetal = 1151
    case musicRockHardRock = 1152
    case musicRockMetal = 1153
    case musicRockJamBands = 1154
    case musicRockProgRockArtRock = 1155
    case musicRockPsychedelic = 1156
    case musicRockRockandRoll = 1157
    case musicRockRockabilly = 1158
    case musicRockRootsRock = 1159
    case musicRockSingerSongwriter = 1160
    case musicRockSouthernRock = 1161
    case musicRockSurf = 1162
    case musicRockTexMex = 1163
    case musicSoundtrackForeignCinema = 1165
    case musicSoundtrackMusicals = 1166
    case musicComedyNovelty = 1167
    case musicSoundtrackOriginalScore = 1168
    case musicSoundtrackSoundtrack = 1169
    case musicComedyStandupComedy = 1171
    case musicSoundtrackTVSoundtrack = 1172
    case musicVocalStandards = 1173
    case musicVocalTraditionalPop = 1174
    case musicJazzVocalJazz = 1175
    case musicVocalVocalPop = 1176
    case musicAfricanAfroBeat = 1177
    case musicAfricanAfroPop = 1178
    case musicWorldCajun = 1179
    case musicWorldCeltic = 1180
    case musicWorldCelticFolk = 1181
    case musicWorldContemporaryCeltic = 1182
    case musicReggaeModernDancehall = 1183
    case musicWorldDrinkingSongs = 1184
    case musicIndianIndianPop = 1185
    case musicWorldJapanesePop = 1186
    case musicWorldKlezmer = 1187
    case musicWorldPolka = 1188
    case musicWorldTraditionalCeltic = 1189
    case musicWorldWorldbeat = 1190
    case musicWorldZydeco = 1191
    case musicReggaeRootsReggae = 1192
    case musicReggaeDub = 1193
    case musicReggaeSka = 1194
    case musicWorldCaribbean = 1195
    case musicWorldSouthAmerica = 1196
    case musicArabic = 1197
    case musicWorldNorthAmerica = 1198
    case musicWorldHawaii = 1199
    case musicWorldAustralia = 1200
    case musicWorldJapan = 1201
    case musicWorldFrance = 1202
    case musicAfrican = 1203
    case musicWorldAsia = 1204
    case musicWorldEurope = 1205
    case musicWorldSouthAfrica = 1206
    case musicJazzHardBop = 1207
    case musicJazzTradJazz = 1208
    case musicJazzCoolJazz = 1209
    case musicBluesAcousticBlues = 1210
    case musicClassicalHighClassical = 1211
    case musicBrazilianAxe = 1220
    case musicBrazilianBossaNova = 1221
    case musicBrazilianChoro = 1222
    case musicBrazilianForro = 1223
    case musicBrazilianFrevo = 1224
    case musicBrazilianMPB = 1225
    case musicBrazilianPagode = 1226
    case musicBrazilianSamba = 1227
    case musicBrazilianSertanejo = 1228
    case musicBrazilianBaileFunk = 1229
    case musicAlternativeChineseAlt = 1230
    case musicAlternativeKoreanIndie = 1231
    case musicChinese = 1232
    case musicChineseChineseClassical = 1233
    case musicChineseChineseFlute = 1234
    case musicChineseChineseOpera = 1235
    case musicChineseChineseOrchestral = 1236
    case musicChineseChineseRegionalFolk = 1237
    case musicChineseChineseStrings = 1238
    case musicChineseTaiwaneseFolk = 1239
    case musicChineseTibetanNativeMusic = 1240
    case musicHipHopRapChineseHipHop = 1241
    case musicHipHopRapKoreanHipHop = 1242
    case musicKorean = 1243
    case musicKoreanKoreanClassical = 1244
    case musicKoreanKoreanTradSong = 1245
    case musicKoreanKoreanTradInstrumental = 1246
    case musicKoreanKoreanTradTheater = 1247
    case musicRockChineseRock = 1248
    case musicRockKoreanRock = 1249
    case musicPopCPop = 1250
    case musicPopCantopopHKPop = 1251
    case musicPopKoreanFolkPop = 1252
    case musicPopMandopop = 1253
    case musicPopTaiPop = 1254
    case musicPopMalaysianPop = 1255
    case musicPopPinoyPop = 1256
    case musicPopOriginalPilipinoMusic = 1257
    case musicPopManillaSound = 1258
    case musicPopIndoPop = 1259
    case musicPopThaiPop = 1260
    case musicVocalTrot = 1261
    case musicIndian = 1262
    case musicIndianBollywood = 1263
    case musicIndianRegionalIndianTamil = 1264
    case musicIndianRegionalIndianTelugu = 1265
    case musicIndianRegionalIndian = 1266
    case musicIndianDevotionalandSpiritual = 1267
    case musicIndianSufi = 1268
    case musicIndianIndianClassical = 1269
    case musicRussianRussianChanson = 1270
    case musicWorldDini = 1271
    case musicTurkishHalk = 1272
    case musicTurkishSanat = 1273
    case musicWorldDangdut = 1274
    case musicWorldIndonesianReligious = 1275
    case musicWorldCalypso = 1276
    case musicWorldSoca = 1277
    case musicIndianGhazals = 1278
    case musicIndianIndianFolk = 1279
    case musicTurkishArabesque = 1280
    case musicAfricanAfrikaans = 1281
    case musicWorldFarsi = 1282
    case musicWorldIsraeli = 1283
    case musicArabicKhaleeji = 1284
    case musicArabicNorthAfrican = 1285
    case musicArabicArabicPop = 1286
    case musicArabicIslamic = 1287
    case musicSoundtrackSoundEffects = 1288
    case musicFolk = 1289
    case musicOrchestral = 1290
    case musicMarching = 1291
    case musicPopOldies = 1293
    case musicCountryThaiCountry = 1294
    case musicWorldFlamenco = 1295
    case musicWorldTango = 1296
    case musicWorldFado = 1297
    case musicWorldIberia = 1298
    case musicRussian = 1299
    case musicTurkish = 1300
    case podcastsArts = 1301
    case podcastsSocietyandCulturePersonalJournals = 1302
    case podcastsComedy = 1303
    case podcastsEducation = 1304
    case podcastsKidsandFamily = 1305
    case podcastsArtsFood = 1306
    case podcastsHealth = 1307
    case podcastsTVandFilm = 1309
    case podcastsMusic = 1310
    case podcastsNewsandPolitics = 1311
    case podcastsReligionandSpirituality = 1314
    case podcastsScienceandMedicine = 1315
    case podcastsSportsandRecreation = 1316
    case podcastsTechnology = 1318
    case podcastsSocietyandCulturePlacesandTravel = 1320
    case podcastsBusiness = 1321
    case podcastsGamesandHobbies = 1323
    case podcastsSocietyandCulture = 1324
    case podcastsGovernmentandOrganizations = 1325
    case musicVideosClassicalPiano = 1337
    case podcastsArtsLiterature = 1401
    case podcastsArtsDesign = 1402
    case podcastsGamesandHobbiesVideoGames = 1404
    case podcastsArtsPerformingArts = 1405
    case podcastsArtsVisualArts = 1406
    case podcastsBusinessCareers = 1410
    case podcastsBusinessInvesting = 1412
    case podcastsBusinessManagementandMarketing = 1413
    case podcastsEducationKgenreID12 = 1415
    case podcastsEducationHigherEducation = 1416
    case podcastsHealthFitnessandNutrition = 1417
    case podcastsHealthSelfHelp = 1420
    case podcastsHealthSexuality = 1421
    case podcastsReligionandSpiritualityBuddhism = 1438
    case podcastsReligionandSpiritualityChristianity = 1439
    case podcastsReligionandSpiritualityIslam = 1440
    case podcastsReligionandSpiritualityJudaism = 1441
    case podcastsSocietyandCulturePhilosophy = 1443
    case podcastsReligionandSpiritualitySpirituality = 1444
    case podcastsTechnologyGadgets = 1446
    case podcastsTechnologyTechNews = 1448
    case podcastsTechnologyPodcasting = 1450
    case podcastsGamesandHobbiesAutomotive = 1454
    case podcastsGamesandHobbiesAviation = 1455
    case podcastsSportsandRecreationOutdoor = 1456
    case podcastsArtsFashionandBeauty = 1459
    case podcastsGamesandHobbiesHobbies = 1460
    case podcastsGamesandHobbiesOtherGames = 1461
    case podcastsSocietyandCultureHistory = 1462
    case podcastsReligionandSpiritualityHinduism = 1463
    case podcastsReligionandSpiritualityOther = 1464
    case podcastsSportsandRecreationProfessional = 1465
    case podcastsSportsandRecreationCollegeandHighSchool = 1466
    case podcastsSportsandRecreationAmateur = 1467
    case podcastsEducationEducationalTechnology = 1468
    case podcastsEducationLanguageCourses = 1469
    case podcastsEducationTraining = 1470
    case podcastsBusinessBusinessNews = 1471
    case podcastsBusinessShopping = 1472
    case podcastsGovernmentandOrganizationsNational = 1473
    case podcastsGovernmentandOrganizationsRegional = 1474
    case podcastsGovernmentandOrganizationsLocal = 1475
    case podcastsGovernmentandOrganizationsNonProfit = 1476
    case podcastsScienceandMedicineNaturalSciences = 1477
    case podcastsScienceandMedicineMedicine = 1478
    case podcastsScienceandMedicineSocialSciences = 1479
    case podcastsTechnologySoftwareHowTo = 1480
    case podcastsHealthAlternativeHealth = 1481
    case podcastsArtsBooks = 1482
    case podcastsFiction = 1483
    case podcastsFictionDrama = 1484
    case podcastsFictionScienceFiction = 1485
    case podcastsFictionComedyFiction = 1486
    case podcastsHistory = 1487
    case podcastsTrueCrime = 1488
    case podcastsNews = 1489
    case podcastsNewsBusinessNews = 1490
    case podcastsBusinessManagement = 1491
    case podcastsBusinessMarketing = 1492
    case podcastsBusinessEntrepreneurship = 1493
    case podcastsBusinessNonProfit = 1494
    case podcastsComedyImprov = 1495
    case podcastsComedyComedyInterviews = 1496
    case podcastsComedyStandUp = 1497
    case podcastsEducationLanguageLearning = 1498
    case podcastsEducationHowTo = 1499
    case podcastsEducationSelfImprovement = 1500
    case podcastsEducationCourses = 1501
    case podcastsLeisure = 1502
    case podcastsLeisureAutomotive = 1503
    case podcastsLeisureAviation = 1504
    case podcastsLeisureHobbies = 1505
    case podcastsLeisureCrafts = 1506
    case podcastsLeisureGames = 1507
    case podcastsLeisureHomeandGarden = 1508
    case podcastsLeisureVideoGames = 1509
    case podcastsLeisureAnimationandManga = 1510
    case podcastsGovernment = 1511
    case podcastsHealthandFitness = 1512
    case podcastsHealthandFitnessAlternativeHealth = 1513
    case podcastsHealthandFitnessFitness = 1514
    case podcastsHealthandFitnessNutrition = 1515
    case podcastsHealthandFitnessSexuality = 1516
    case podcastsHealthandFitnessMentalHealth = 1517
    case podcastsHealthandFitnessMedicine = 1518
    case podcastsKidsandFamilyEducationforKids = 1519
    case podcastsKidsandFamilyStoriesforKids = 1520
    case podcastsKidsandFamilyParenting = 1521
    case podcastsKidsandFamilyPetsandAnimals = 1522
    case podcastsMusicMusicCommentary = 1523
    case podcastsMusicMusicHistory = 1524
    case podcastsMusicMusicInterviews = 1525
    case podcastsNewsDailyNews = 1526
    case podcastsNewsPolitics = 1527
    case podcastsNewsTechNews = 1528
    case podcastsNewsSportsNews = 1529
    case podcastsNewsNewsCommentary = 1530
    case podcastsNewsEntertainmentNews = 1531
    case podcastsReligionandSpiritualityReligion = 1532
    case podcastsScience = 1533
    case podcastsScienceNaturalSciences = 1534
    case podcastsScienceSocialSciences = 1535
    case podcastsScienceMathematics = 1536
    case podcastsScienceNature = 1537
    case podcastsScienceAstronomy = 1538
    case podcastsScienceChemistry = 1539
    case podcastsScienceEarthSciences = 1540
    case podcastsScienceLifeSciences = 1541
    case podcastsSciencePhysics = 1542
    case podcastsSocietyandCultureDocumentary = 1543
    case podcastsSocietyandCultureRelationships = 1544
    case podcastsSports = 1545
    case podcastsSportsSoccer = 1546
    case podcastsSportsFootball = 1547
    case podcastsSportsBasketball = 1548
    case podcastsSportsBaseball = 1549
    case podcastsSportsHockey = 1550
    case podcastsSportsRunning = 1551
    case podcastsSportsRugby = 1552
    case podcastsSportsGolf = 1553
    case podcastsSportsCricket = 1554
    case podcastsSportsWrestling = 1555
    case podcastsSportsTennis = 1556
    case podcastsSportsVolleyball = 1557
    case podcastsSportsSwimming = 1558
    case podcastsSportsWilderness = 1559
    case podcastsSportsFantasySports = 1560
    case podcastsTVandFilmTVReviews = 1561
    case podcastsTVandFilmAfterShows = 1562
    case podcastsTVandFilmFilmReviews = 1563
    case podcastsTVandFilmFilmHistory = 1564
    case podcastsTVandFilmFilmInterviews = 1565
    case musicVideosBlues = 1602
    case musicVideosComedy = 1603
    case musicVideosChildrenMusic = 1604
    case musicVideosClassical = 1605
    case musicVideosCountry = 1606
    case musicVideosElectronic = 1607
    case musicVideosHoliday = 1608
    case musicVideosClassicalOpera = 1609
    case musicVideosSingerSongwriter = 1610
    case musicVideosJazz = 1611
    case musicVideosLatin = 1612
    case musicVideosNewAge = 1613
    case musicVideosPop = 1614
    case musicVideosRandBSoul = 1615
    case musicVideosSoundtrack = 1616
    case musicVideosDance = 1617
    case musicVideosHipHopRap = 1618
    case musicVideosWorld = 1619
    case musicVideosAlternative = 1620
    case musicVideosRock = 1621
    case musicVideosChristianandGospel = 1622
    case musicVideosVocal = 1623
    case musicVideosReggae = 1624
    case musicVideosEasyListening = 1625
    case musicVideosPodcasts = 1626
    case musicVideosJPop = 1627
    case musicVideosEnka = 1628
    case musicVideosAnime = 1629
    case musicVideosKayokyoku = 1630
    case musicVideosDisney = 1631
    case musicVideosFrenchPop = 1632
    case musicVideosGermanPop = 1633
    case musicVideosGermanFolk = 1634
    case musicVideosAlternativeChineseAlt = 1635
    case musicVideosAlternativeKoreanIndie = 1636
    case musicVideosChinese = 1637
    case musicVideosChineseChineseClassical = 1638
    case musicVideosChineseChineseFlute = 1639
    case musicVideosChineseChineseOpera = 1640
    case musicVideosChineseChineseOrchestral = 1641
    case musicVideosChineseChineseRegionalFolk = 1642
    case musicVideosChineseChineseStrings = 1643
    case musicVideosChineseTaiwaneseFolk = 1644
    case musicVideosChineseTibetanNativeMusic = 1645
    case musicVideosHipHopRapChineseHipHop = 1646
    case musicVideosHipHopRapKoreanHipHop = 1647
    case musicVideosKorean = 1648
    case musicVideosKoreanKoreanClassical = 1649
    case musicVideosKoreanKoreanTradSong = 1650
    case musicVideosKoreanKoreanTradInstrumental = 1651
    case musicVideosKoreanKoreanTradTheater = 1652
    case musicVideosRockChineseRock = 1653
    case musicVideosRockKoreanRock = 1654
    case musicVideosPopCPop = 1655
    case musicVideosPopCantopopHKPop = 1656
    case musicVideosPopKoreanFolkPop = 1657
    case musicVideosPopMandopop = 1658
    case musicVideosPopTaiPop = 1659
    case musicVideosPopMalaysianPop = 1660
    case musicVideosPopPinoyPop = 1661
    case musicVideosPopOriginalPilipinoMusic = 1662
    case musicVideosPopManillaSound = 1663
    case musicVideosPopIndoPop = 1664
    case musicVideosPopThaiPop = 1665
    case musicVideosVocalTrot = 1666
    case musicVideosBrazilian = 1671
    case musicVideosBrazilianAxe = 1672
    case musicVideosBrazilianBaileFunk = 1673
    case musicVideosBrazilianBossaNova = 1674
    case musicVideosBrazilianChoro = 1675
    case musicVideosBrazilianForro = 1676
    case musicVideosBrazilianFrevo = 1677
    case musicVideosBrazilianMPB = 1678
    case musicVideosBrazilianPagode = 1679
    case musicVideosBrazilianSamba = 1680
    case musicVideosBrazilianSertanejo = 1681
    case musicVideosClassicalHighClassical = 1682
    case musicVideosFitnessandWorkout = 1683
    case musicVideosInstrumental = 1684
    case musicVideosJazzBigBand = 1685
    case musicVideosPopKPop = 1686
    case musicVideosKaraoke = 1687
    case musicVideosRockHeavyMetal = 1688
    case musicVideosSpokenWord = 1689
    case musicVideosIndian = 1690
    case musicVideosIndianBollywood = 1691
    case musicVideosIndianRegionalIndianTamil = 1692
    case musicVideosIndianRegionalIndianTelugu = 1693
    case musicVideosIndianRegionalIndian = 1694
    case musicVideosIndianDevotionalandSpiritual = 1695
    case musicVideosIndianSufi = 1696
    case musicVideosIndianIndianClassical = 1697
    case musicVideosRussianRussianChanson = 1698
    case musicVideosWorldDini = 1699
    case musicVideosTurkishHalk = 1700
    case musicVideosTurkishSanat = 1701
    case musicVideosWorldDangdut = 1702
    case musicVideosWorldIndonesianReligious = 1703
    case musicVideosIndianIndianPop = 1704
    case musicVideosWorldCalypso = 1705
    case musicVideosWorldSoca = 1706
    case musicVideosIndianGhazals = 1707
    case musicVideosIndianIndianFolk = 1708
    case musicVideosTurkishArabesque = 1709
    case musicVideosAfricanAfrikaans = 1710
    case musicVideosWorldFarsi = 1711
    case musicVideosWorldIsraeli = 1712
    case musicVideosArabic = 1713
    case musicVideosArabicKhaleeji = 1714
    case musicVideosArabicNorthAfrican = 1715
    case musicVideosArabicArabicPop = 1716
    case musicVideosArabicIslamic = 1717
    case musicVideosSoundtrackSoundEffects = 1718
    case musicVideosFolk = 1719
    case musicVideosOrchestral = 1720
    case musicVideosMarching = 1721
    case musicVideosPopOldies = 1723
    case musicVideosCountryThaiCountry = 1724
    case musicVideosWorldFlamenco = 1725
    case musicVideosWorldTango = 1726
    case musicVideosWorldFado = 1727
    case musicVideosWorldIberia = 1728
    case musicVideosRussian = 1729
    case musicVideosTurkish = 1730
    case musicVideosAlternativeCollegeRock = 1731
    case musicVideosAlternativeGothRock = 1732
    case musicVideosAlternativeGrunge = 1733
    case musicVideosAlternativeIndieRock = 1734
    case musicVideosAlternativeNewWave = 1735
    case musicVideosAlternativePunk = 1736
    case musicVideosBluesAcousticBlues = 1737
    case musicVideosBluesChicagoBlues = 1738
    case musicVideosBluesClassicBlues = 1739
    case musicVideosBluesContemporaryBlues = 1740
    case musicVideosBluesCountryBlues = 1741
    case musicVideosBluesDeltaBlues = 1742
    case musicVideosBluesElectricBlues = 1743
    case musicVideosChildrensMusic = 1744
    case musicVideosChildrensMusicSingAlong = 1745
    case musicVideosChristianandGospelCCM = 1747
    case musicVideosChristianandGospelChristianMetal = 1748
    case musicVideosChristianandGospelChristianPop = 1749
    case musicVideosChristianandGospelChristianRap = 1750
    case musicVideosChristianandGospelChristianRock = 1751
    case musicVideosChristianandGospelClassicChristian = 1752
    case musicVideosChristianandGospelContemporaryGospel = 1753
    case musicVideosChristianandGospelGospel = 1754
    case musicVideosChristianandGospelPraiseandWorship = 1755
    case musicVideosChristianandGospelSouthernGospel = 1756
    case musicVideosChristianandGospelTraditionalGospel = 1757
    case musicVideosClassicalAvantGarde = 1758
    case musicVideosClassicalBaroqueEra = 1759
    case musicVideosClassicalChamberMusic = 1760
    case musicVideosClassicalChant = 1761
    case musicVideosClassicalChoral = 1762
    case musicVideosClassicalClassicalCrossover = 1763
    case musicVideosClassicalEarlyMusic = 1764
    case musicVideosClassicalImpressionist = 1765
    case musicVideosClassicalMedievalEra = 1766
    case musicVideosClassicalMinimalism = 1767
    case musicVideosClassicalModernEra = 1768
    case musicVideosClassicalOrchestral = 1769
    case musicVideosClassicalRenaissance = 1770
    case musicVideosClassicalRomanticEra = 1771
    case musicVideosClassicalWeddingMusic = 1772
    case musicVideosComedyNovelty = 1773
    case musicVideosComedyStandupComedy = 1774
    case musicVideosCountryAlternativeCountry = 1775
    case musicVideosCountryAmericana = 1776
    case musicVideosCountryBluegrass = 1777
    case musicVideosCountryContemporaryBluegrass = 1778
    case musicVideosCountryContemporaryCountry = 1779
    case musicVideosCountryCountryGospel = 1780
    case musicVideosCountryHonkyTonk = 1781
    case musicVideosCountryOutlawCountry = 1782
    case musicVideosCountryTraditionalBluegrass = 1783
    case musicVideosCountryTraditionalCountry = 1784
    case musicVideosCountryUrbanCowboy = 1785
    case musicVideosDanceBreakbeat = 1786
    case musicVideosDanceExercise = 1787
    case musicVideosDanceGarage = 1788
    case musicVideosDanceHardcore = 1789
    case musicVideosDanceHouse = 1790
    case musicVideosDanceJungleDrumAndBass = 1791
    case musicVideosDanceTechno = 1792
    case musicVideosDanceTrance = 1793
    case musicVideosEasyListeningLounge = 1794
    case musicVideosEasyListeningSwing = 1795
    case musicVideosElectronicAmbient = 1796
    case musicVideosElectronicDowntempo = 1797
    case musicVideosElectronicElectronica = 1798
    case musicVideosElectronicIDMExperimental = 1799
    case musicVideosElectronicIndustrial = 1800
    case musicVideosHipHopRapAlternativeRap = 1801
    case musicVideosHipHopRapDirtySouth = 1802
    case musicVideosHipHopRapEastCoastRap = 1803
    case musicVideosHipHopRapGangstaRap = 1804
    case musicVideosHipHopRapHardcoreRap = 1805
    case musicVideosHipHopRapHipHop = 1806
    case musicVideosHipHopRapLatinRap = 1807
    case musicVideosHipHopRapOldSchoolRap = 1808
    case musicVideosHipHopRapRap = 1809
    case musicVideosHipHopRapUndergroundRap = 1810
    case musicVideosHipHoRapWestCoastRap = 1811
    case musicVideosHolidayChanukah = 1812
    case musicVideosHolidayChristmas = 1813
    case musicVideosHolidayChristmasChildrens = 1814
    case musicVideosHolidayChristmasClassic = 1815
    case musicVideosHolidayChristmasClassical = 1816
    case musicVideosHolidayChristmasJazz = 1817
    case musicVideosHolidayChristmasModern = 1818
    case musicVideosHolidayChristmasPop = 1819
    case musicVideosHolidayChristmasRandB = 1820
    case musicVideosHolidayChristmasReligious = 1821
    case musicVideosHolidayChristmasRock = 1822
    case musicVideosHolidayEaster = 1823
    case musicVideosHolidayHalloween = 1824
    case musicVideosHolidayThanksgiving = 1825
    case musicVideosJazzAvantGardeJazz = 1826
    case musicVideosJazzBop = 1828
    case musicVideosJazzContemporaryJazz = 1829
    case musicVideosJazzCoolJazz = 1830
    case musicVideosJazzCrossoverJazz = 1831
    case musicVideosJazzDixieland = 1832
    case musicVideosJazzFusion = 1833
    case musicVideosJazzHardBop = 1834
    case musicVideosJazzLatinJazz = 1835
    case musicVideosJazzMainstreamJazz = 1836
    case musicVideosJazzRagtime = 1837
    case musicVideosJazzSmoothJazz = 1838
    case musicVideosJazzTradJazz = 1839
    case musicVideosLatinAlternativeandRockinSpanish = 1840
    case musicVideosLatinBaladasyBoleros = 1841
    case musicVideosLatinContemporaryLatin = 1842
    case musicVideosLatinLatinJazz = 1843
    case musicVideosLatinLatinUrban = 1844
    case musicVideosLatinPopinSpanish = 1845
    case musicVideosLatinRaices = 1846
    case musicVideosLatinMusicaMexicana = 1847
    case musicVideosLatinSalsayTropical = 1848
    case musicVideosNewAgeHealing = 1849
    case musicVideosNewAgeMeditation = 1850
    case musicVideosNewAgeNature = 1851
    case musicVideosNewAgeRelaxation = 1852
    case musicVideosNewAgeTravel = 1853
    case musicVideosPopAdultContemporary = 1854
    case musicVideosPopBritpop = 1855
    case musicVideosPopPopRock = 1856
    case musicVideosPopSoftRock = 1857
    case musicVideosPopTeenPop = 1858
    case musicVideosRandBSoulContemporaryRandB = 1859
    case musicVideosRandBSoulDisco = 1860
    case musicVideosRandBSoulDooWop = 1861
    case musicVideosRandBSoulFunk = 1862
    case musicVideosRandBSoulMotown = 1863
    case musicVideosRandBSoulNeoSoul = 1864
    case musicVideosRandBSoulSoul = 1865
    case musicVideosReggaeModernDancehall = 1866
    case musicVideosReggaeDub = 1867
    case musicVideosReggaeRootsReggae = 1868
    case musicVideosReggaeSka = 1869
    case musicVideosRockAdultAlternative = 1870
    case musicVideosRockAmericanTradRock = 1871
    case musicVideosRockArenaRock = 1872
    case musicVideosRockBluesRock = 1873
    case musicVideosRockBritishInvasion = 1874
    case musicVideosRockDeathMetalBlackMetal = 1875
    case musicVideosRockGlamRock = 1876
    case musicVideosRockHairMetal = 1877
    case musicVideosRockHardRock = 1878
    case musicVideosRockJamBands = 1879
    case musicVideosRockProgRockArtRock = 1880
    case musicVideosRockPsychedelic = 1881
    case musicVideosRockRockandRoll = 1882
    case musicVideosRockRockabilly = 1883
    case musicVideosRockRootsRock = 1884
    case musicVideosRockSingerSongwriter = 1885
    case musicVideosRockSouthernRock = 1886
    case musicVideosRockSurf = 1887
    case musicVideosRockTexMex = 1888
    case musicVideosSingerSongwriterAlternativeFolk = 1889
    case musicVideosSingerSongwriterContemporaryFolk = 1890
    case musicVideosSingerSongwriterContemporarySingerSongwriter = 1891
    case musicVideosSingerSongwriterFolkRock = 1892
    case musicVideosSingerSongwriterNewAcoustic = 1893
    case musicVideosSingerSongwriterTraditionalFolk = 1894
    case musicVideosSoundtrackForeignCinema = 1895
    case musicVideosSoundtrackMusicals = 1896
    case musicVideosSoundtrackOriginalScore = 1897
    case musicVideosSoundtrackSoundtrack = 1898
    case musicVideosSoundtrackTVSoundtrack = 1899
    case musicVideosVocalStandards = 1900
    case musicVideosVocalTraditionalPop = 1901
    case musicVideosJazzVocalJazz = 1902
    case musicVideosVocalVocalPop = 1903
    case musicVideosAfrican = 1904
    case musicVideosAfricanAfroBeat = 1905
    case musicVideosAfricanAfroPop = 1906
    case musicVideosWorldAsia = 1907
    case musicVideosWorldAustralia = 1908
    case musicVideosWorldCajun = 1909
    case musicVideosWorldCaribbean = 1910
    case musicVideosWorldCeltic = 1911
    case musicVideosWorldCelticFolk = 1912
    case musicVideosWorldContemporaryCeltic = 1913
    case musicVideosWorldEurope = 1914
    case musicVideosWorldFrance = 1915
    case musicVideosWorldHawaii = 1916
    case musicVideosWorldJapan = 1917
    case musicVideosWorldKlezmer = 1918
    case musicVideosWorldNorthAmerica = 1919
    case musicVideosWorldPolka = 1920
    case musicVideosWorldSouthAfrica = 1921
    case musicVideosWorldSouthAmerica = 1922
    case musicVideosWorldTraditionalCeltic = 1923
    case musicVideosWorldWorldbeat = 1924
    case musicVideosWorldZydeco = 1925
    case musicVideosClassicalArtSong = 1928
    case musicVideosClassicalBrassandWoodwinds = 1929
    case musicVideosClassicalSoloInstrumental = 1930
    case musicVideosClassicalContemporaryEra = 1931
    case musicVideosClassicalOratorio = 1932
    case musicVideosClassicalCantata = 1933
    case musicVideosClassicalElectronic = 1934
    case musicVideosClassicalSacred = 1935
    case musicVideosClassicalGuitar = 1936
    case musicVideosClassicalViolin = 1938
    case musicVideosClassicalCello = 1939
    case musicVideosClassicalPercussion = 1940
    case musicVideosElectronicDubstep = 1941
    case musicVideosElectronicBass = 1942
    case musicVideosHipHopRapUKHipHop = 1943
    case musicVideosReggaeLoversRock = 1944
    case musicVideosAlternativeEMO = 1945
    case musicVideosAlternativePopPunk = 1946
    case musicVideosAlternativeIndiePop = 1947
    case musicVideosNewAgeYoga = 1948
    case musicVideosPopTribute = 1949
    case musicVideosPopShows = 1950
    case musicVideosCuban = 1951
    case musicVideosCubanMambo = 1952
    case musicVideosCubanChachacha = 1953
    case musicVideosCubanGuajira = 1954
    case musicVideosCubanSon = 1955
    case musicVideosCubanBolero = 1956
    case musicVideosCubanGuaracha = 1957
    case musicVideosCubanTimba = 1958
    case musicVideosSoundtrackVideoGame = 1959
    case musicVideosIndianRegionalIndianPunjabiPunjabiPop = 1960
    case musicVideosIndianRegionalIndianBengaliRabindraSangeet = 1961
    case musicVideosIndianRegionalIndianMalayalam = 1962
    case musicVideosIndianRegionalIndianKannada = 1963
    case musicVideosIndianRegionalIndianMarathi = 1964
    case musicVideosIndianRegionalIndianGujarati = 1965
    case musicVideosIndianRegionalIndianAssamese = 1966
    case musicVideosIndianRegionalIndianBhojpuri = 1967
    case musicVideosIndianRegionalIndianHaryanvi = 1968
    case musicVideosIndianRegionalIndianOdia = 1969
    case musicVideosIndianRegionalIndianRajasthani = 1970
    case musicVideosIndianRegionalIndianUrdu = 1971
    case musicVideosIndianRegionalIndianPunjabi = 1972
    case musicVideosIndianRegionalIndianBengali = 1973
    case musicVideosIndianIndianClassicalCarnaticClassical = 1974
    case musicVideosIndianIndianClassicalHindustaniClassical = 1975
    case musicVideosAfricanAfroHouse = 1976
    case musicVideosAfricanAfroSoul = 1977
    case musicVideosAfricanAfrobeats = 1978
    case musicVideosAfricanBenga = 1979
    case musicVideosAfricanBongoFlava = 1980
    case musicVideosAfricanCoupeDecale = 1981
    case musicVideosAfricanGqom = 1982
    case musicVideosAfricanHighlife = 1983
    case musicVideosAfricanKuduro = 1984
    case musicVideosAfricanKizomba = 1985
    case musicVideosAfricanKwaito = 1986
    case musicVideosAfricanMbalax = 1987
    case musicVideosAfricanNdombolo = 1988
    case musicVideosAfricanShangaanElectro = 1989
    case musicVideosAfricanSoukous = 1990
    case musicVideosAfricanTaarab = 1991
    case musicVideosAfricanZouglou = 1992
    case musicVideosTurkishOzgun = 1993
    case musicVideosTurkishFantezi = 1994
    case musicVideosTurkishReligious = 1995
    case musicVideosPopTurkishPop = 1996
    case musicVideosRockTurkishRock = 1997
    case musicVideosAlternativeTurkishAlternative = 1998
    case musicVideosHipHopRapTurkishHipHopRap = 1999
    case musicVideosAfricanMaskandi = 2000
    case musicVideosRussianRussianRomance = 2001
    case musicVideosRussianRussianBard = 2002
    case musicVideosRussianRussianPop = 2003
    case musicVideosRussianRussianRock = 2004
    case musicVideosRussianRussianHipHop = 2005
    case musicVideosArabicLevant = 2006
    case musicVideosArabicLevantDabke = 2007
    case musicVideosArabicMaghrebRai = 2008
    case musicVideosArabicKhaleejiKhaleejiJalsat = 2009
    case musicVideosArabicKhaleejiKhaleejiShailat = 2010
    case musicVideosTarab = 2011
    case musicVideosTarabIraqiTarab = 2012
    case musicVideosTarabEgyptianTarab = 2013
    case musicVideosTarabKhaleejiTarab = 2014
    case musicVideosPopLevantPop = 2015
    case musicVideosPopIraqiPop = 2016
    case musicVideosPopEgyptianPop = 2017
    case musicVideosPopMaghrebPop = 2018
    case musicVideosPopKhaleejiPop = 2019
    case musicVideosHipHopRapLevantHipHop = 2020
    case musicVideosHipHopRapEgyptianHipHop = 2021
    case musicVideosHipHopRapMaghrebHipHop = 2022
    case musicVideosHipHopRapKhaleejiHipHop = 2023
    case musicVideosAlternativeIndieLevant = 2024
    case musicVideosAlternativeIndieEgyptian = 2025
    case musicVideosAlternativeIndieMaghreb = 2026
    case musicVideosElectronicLevantElectronic = 2027
    case musicVideosElectronicElectroChaabi = 2028
    case musicVideosElectronicMaghrebElectronic = 2029
    case musicVideosFolkIraqiFolk = 2030
    case musicVideosFolkKhaleejiFolk = 2031
    case musicVideosDanceMaghrebDance = 2032
    case tVShowsComedy = 4000
    case tVShowsDrama = 4001
    case tVShowsAnimation = 4002
    case tVShowsActionandAdventure = 4003
    case tVShowsClassics = 4004
    case tVShowsKidsandFamily = 4005
    case tVShowsNonfiction = 4006
    case tVShowsRealityTV = 4007
    case tVShowsSciFiandFantasy = 4008
    case tVShowsSports = 4009
    case tVShowsTeens = 4010
    case tVShowsLatinoTV = 4011
    case moviesActionandAdventure = 4401
    case moviesAnime = 4402
    case moviesClassics = 4403
    case moviesComedy = 4404
    case moviesDocumentary = 4405
    case moviesDrama = 4406
    case moviesForeign = 4407
    case moviesHorror = 4408
    case moviesIndependent = 4409
    case moviesKidsandFamily = 4410
    case moviesMusicals = 4411
    case moviesRomance = 4412
    case moviesSciFiandFantasy = 4413
    case moviesShortFilms = 4414
    case moviesSpecialInterest = 4415
    case moviesThriller = 4416
    case moviesSports = 4417
    case moviesWestern = 4418
    case moviesUrban = 4419
    case moviesHoliday = 4420
    case moviesMadeforTV = 4421
    case moviesConcertFilms = 4422
    case moviesMusicDocumentaries = 4423
    case moviesMusicFeatureFilms = 4424
    case moviesJapaneseCinema = 4425
    case moviesJidaigeki = 4426
    case moviesTokusatsu = 4427
    case moviesKoreanCinema = 4428
    case moviesRussian = 4429
    case moviesTurkish = 4430
    case moviesBollywood = 4431
    case moviesRegionalIndian = 4432
    case moviesMiddleEastern = 4433
    case moviesAfrican = 4434
    case appStoreBusiness = 6000
    case appStoreWeather = 6001
    case appStoreUtilities = 6002
    case appStoreTravel = 6003
    case appStoreSports = 6004
    case appStoreSocialNetworking = 6005
    case appStoreReference = 6006
    case appStoreProductivity = 6007
    case appStorePhotoandVideo = 6008
    case appStoreNews = 6009
    case appStoreNavigation = 6010
    case appStoreMusic = 6011
    case appStoreLifestyle = 6012
    case appStoreHealthandFitness = 6013
    case appStoreGames = 6014
    case appStoreFinance = 6015
    case appStoreEntertainment = 6016
    case appStoreEducation = 6017
    case appStoreBooks = 6018
    case appStoreMedical = 6020
    case appStoreMagazinesandNewspapers = 6021
    case appStoreCatalogs = 6022
    case appStoreFoodandDrink = 6023
    case appStoreShopping = 6024
    case appStoreStickers = 6025
    case appStoreDeveloperTools = 6026
    case appStoreGraphicsandDesign = 6027
    case appStoreGamesAction = 7001
    case appStoreGamesAdventure = 7002
    case appStoreGamesCasual = 7003
    case appStoreGamesBoard = 7004
    case appStoreGamesCard = 7005
    case appStoreGamesCasino = 7006
    case appStoreGamesDice = 7007
    case appStoreGamesEducational = 7008
    case appStoreGamesFamily = 7009
    case appStoreGamesMusic = 7011
    case appStoreGamesPuzzle = 7012
    case appStoreGamesRacing = 7013
    case appStoreGamesRolePlaying = 7014
    case appStoreGamesSimulation = 7015
    case appStoreGamesSports = 7016
    case appStoreGamesStrategy = 7017
    case appStoreGamesTrivia = 7018
    case appStoreGamesWord = 7019
    case tonesRingtonesAlternative = 8001
    case tonesRingtonesBlues = 8002
    case tonesRingtonesChildrensMusic = 8003
    case tonesRingtonesClassical = 8004
    case tonesRingtonesComedy = 8005
    case tonesRingtonesCountry = 8006
    case tonesRingtonesDance = 8007
    case tonesRingtonesElectronic = 8008
    case tonesRingtonesEnka = 8009
    case tonesRingtonesFrenchPop = 8010
    case tonesRingtonesGermanFolk = 8011
    case tonesRingtonesGermanPop = 8012
    case tonesRingtonesHipHopRap = 8013
    case tonesRingtonesHoliday = 8014
    case tonesRingtonesInspirational = 8015
    case tonesRingtonesJPop = 8016
    case tonesRingtonesJazz = 8017
    case tonesRingtonesKayokyoku = 8018
    case tonesRingtonesLatin = 8019
    case tonesRingtonesNewAge = 8020
    case tonesRingtonesClassicalOpera = 8021
    case tonesRingtonesPop = 8022
    case tonesRingtonesRandBSoul = 8023
    case tonesRingtonesReggae = 8024
    case tonesRingtonesRock = 8025
    case tonesRingtonesSingerSongwriter = 8026
    case tonesRingtonesSoundtrack = 8027
    case tonesRingtonesSpokenWord = 8028
    case tonesRingtonesVocal = 8029
    case tonesRingtonesWorld = 8030
    case tonesAlertTonesSoundEffects = 8050
    case tonesAlertTonesDialogue = 8051
    case tonesAlertTonesMusic = 8052
    case tonesRingtones = 8053
    case tonesAlertTones = 8054
    case tonesRingtonesAlternativeChineseAlt = 8055
    case tonesRingtonesAlternativeCollegeRock = 8056
    case tonesRingtonesAlternativeGothRock = 8057
    case tonesRingtonesAlternativeGrunge = 8058
    case tonesRingtonesAlternativeIndieRock = 8059
    case tonesRingtonesAlternativeKoreanIndie = 8060
    case tonesRingtonesAlternativeNewWave = 8061
    case tonesRingtonesAlternativePunk = 8062
    case tonesRingtonesAnime = 8063
    case tonesRingtonesArabic = 8064
    case tonesRingtonesArabicArabicPop = 8065
    case tonesRingtonesArabicIslamic = 8066
    case tonesRingtonesArabicKhaleeji = 8067
    case tonesRingtonesArabicNorthAfrican = 8068
    case tonesRingtonesBluesAcousticBlues = 8069
    case tonesRingtonesBluesChicagoBlues = 8070
    case tonesRingtonesBluesClassicBlues = 8071
    case tonesRingtonesBluesContemporaryBlues = 8072
    case tonesRingtonesBluesCountryBlues = 8073
    case tonesRingtonesBluesDeltaBlues = 8074
    case tonesRingtonesBluesElectricBlues = 8075
    case tonesRingtonesBrazilian = 8076
    case tonesRingtonesBrazilianAxe = 8077
    case tonesRingtonesBrazilianBaileFunk = 8078
    case tonesRingtonesBrazilianBossaNova = 8079
    case tonesRingtonesBrazilianChoro = 8080
    case tonesRingtonesBrazilianForro = 8081
    case tonesRingtonesBrazilianFrevo = 8082
    case tonesRingtonesBrazilianMPB = 8083
    case tonesRingtonesBrazilianPagode = 8084
    case tonesRingtonesBrazilianSamba = 8085
    case tonesRingtonesBrazilianSertanejo = 8086
    case tonesRingtonesChildrensMusicLullabies = 8087
    case tonesRingtonesChildrensMusicSingAlong = 8088
    case tonesRingtonesChildrensMusicStories = 8089
    case tonesRingtonesChinese = 8090
    case tonesRingtonesChineseChineseClassical = 8091
    case tonesRingtonesChineseChineseFlute = 8092
    case tonesRingtonesChineseChineseOpera = 8093
    case tonesRingtonesChineseChineseOrchestral = 8094
    case tonesRingtonesChineseChineseRegionalFolk = 8095
    case tonesRingtonesChineseChineseStrings = 8096
    case tonesRingtonesChineseTaiwaneseFolk = 8097
    case tonesRingtonesChineseTibetanNativeMusic = 8098
    case tonesRingtonesChristianandGospel = 8099
    case tonesRingtonesChristianandGospelCCM = 8100
    case tonesRingtonesChristianandGospelChristianMetal = 8101
    case tonesRingtonesChristianandGospelChristianPop = 8102
    case tonesRingtonesChristianandGospelChristianRap = 8103
    case tonesRingtonesChristianandGospelChristianRock = 8104
    case tonesRingtonesChristianandGospelClassicChristian = 8105
    case tonesRingtonesChristianandGospelContemporaryGospel = 8106
    case tonesRingtonesChristianandGospelGospel = 8107
    case tonesRingtonesChristianandGospelPraiseandWorship = 8108
    case tonesRingtonesChristianandGospelSouthernGospel = 8109
    case tonesRingtonesChristianandGospelTraditionalGospel = 8110
    case tonesRingtonesClassicalAvantGarde = 8111
    case tonesRingtonesClassicalBaroqueEra = 8112
    case tonesRingtonesClassicalChamberMusic = 8113
    case tonesRingtonesClassicalChant = 8114
    case tonesRingtonesClassicalChoral = 8115
    case tonesRingtonesClassicalClassicalCrossover = 8116
    case tonesRingtonesClassicalEarlyMusic = 8117
    case tonesRingtonesClassicalHighClassical = 8118
    case tonesRingtonesClassicalImpressionist = 8119
    case tonesRingtonesClassicalMedievalEra = 8120
    case tonesRingtonesClassicalMinimalism = 8121
    case tonesRingtonesClassicalModernEra = 8122
    case tonesRingtonesClassicalOrchestral = 8123
    case tonesRingtonesClassicalRenaissance = 8124
    case tonesRingtonesClassicalRomanticEra = 8125
    case tonesRingtonesClassicalWeddingMusic = 8126
    case tonesRingtonesComedyNovelty = 8127
    case tonesRingtonesComedyStandupComedy = 8128
    case tonesRingtonesCountryAlternativeCountry = 8129
    case tonesRingtonesCountryAmericana = 8130
    case tonesRingtonesCountryBluegrass = 8131
    case tonesRingtonesCountryContemporaryBluegrass = 8132
    case tonesRingtonesCountryContemporaryCountry = 8133
    case tonesRingtonesCountryCountryGospel = 8134
    case tonesRingtonesCountryHonkyTonk = 8135
    case tonesRingtonesCountryOutlawCountry = 8136
    case tonesRingtonesCountryThaiCountry = 8137
    case tonesRingtonesCountryTraditionalBluegrass = 8138
    case tonesRingtonesCountryTraditionalCountry = 8139
    case tonesRingtonesCountryUrbanCowboy = 8140
    case tonesRingtonesDanceBreakbeat = 8141
    case tonesRingtonesDanceExercise = 8142
    case tonesRingtonesDanceGarage = 8143
    case tonesRingtonesDanceHardcore = 8144
    case tonesRingtonesDanceHouse = 8145
    case tonesRingtonesDanceJungleDrumandBass = 8146
    case tonesRingtonesDanceTechno = 8147
    case tonesRingtonesDanceTrance = 8148
    case tonesRingtonesDisney = 8149
    case tonesRingtonesEasyListening = 8150
    case tonesRingtonesEasyListeningLounge = 8151
    case tonesRingtonesEasyListeningSwing = 8152
    case tonesRingtonesElectronicAmbient = 8153
    case tonesRingtonesElectronicDowntempo = 8154
    case tonesRingtonesElectronicElectronica = 8155
    case tonesRingtonesElectronicIDMExperimental = 8156
    case tonesRingtonesElectronicIndustrial = 8157
    case tonesRingtonesFitnessandWorkout = 8158
    case tonesRingtonesFolk = 8159
    case tonesRingtonesHipHopRapAlternativeRap = 8160
    case tonesRingtonesHipHopRapChineseHipHop = 8161
    case tonesRingtonesHipHopRapDirtySouth = 8162
    case tonesRingtonesHipHopRapEastCoastRap = 8163
    case tonesRingtonesHipHopRapGangstaRap = 8164
    case tonesRingtonesHipHopRapHardcoreRap = 8165
    case tonesRingtonesHipHopRapHipHop = 8166
    case tonesRingtonesHipHopRapKoreanHipHop = 8167
    case tonesRingtonesHipHopRapLatinRap = 8168
    case tonesRingtonesHipHopRapOldSchoolRap = 8169
    case tonesRingtonesHipHopRapRap = 8170
    case tonesRingtonesHipHopRapUndergroundRap = 8171
    case tonesRingtonesHipHopRapWestCoastRap = 8172
    case tonesRingtonesHolidayChanukah = 8173
    case tonesRingtonesHolidayChristmas = 8174
    case tonesRingtonesHolidayChristmasChildrens = 8175
    case tonesRingtonesHolidayChristmasClassic = 8176
    case tonesRingtonesHolidayChristmasClassical = 8177
    case tonesRingtonesHolidayChristmasJazz = 8178
    case tonesRingtonesHolidayChristmasModern = 8179
    case tonesRingtonesHolidayChristmasPop = 8180
    case tonesRingtonesHolidayChristmasRandB = 8181
    case tonesRingtonesHolidayChristmasReligious = 8182
    case tonesRingtonesHolidayChristmasRock = 8183
    case tonesRingtonesHolidayEaster = 8184
    case tonesRingtonesHolidayHalloween = 8185
    case tonesRingtonesHolidayThanksgiving = 8186
    case tonesRingtonesIndian = 8187
    case tonesRingtonesIndianBollywood = 8188
    case tonesRingtonesIndianDevotionalandSpiritual = 8189
    case tonesRingtonesIndianGhazals = 8190
    case tonesRingtonesIndianIndianClassical = 8191
    case tonesRingtonesIndianIndianFolk = 8192
    case tonesRingtonesIndianIndianPop = 8193
    case tonesRingtonesIndianRegionalIndian = 8194
    case tonesRingtonesIndianSufi = 8195
    case tonesRingtonesIndianRegionalIndianTamil = 8196
    case tonesRingtonesIndianRegionalIndianTelugu = 8197
    case tonesRingtonesInstrumental = 8198
    case tonesRingtonesJazzAvantGardeJazz = 8199
    case tonesRingtonesJazzBigBand = 8201
    case tonesRingtonesJazzBop = 8202
    case tonesRingtonesJazzContemporaryJazz = 8203
    case tonesRingtonesJazzCoolJazz = 8204
    case tonesRingtonesJazzCrossoverJazz = 8205
    case tonesRingtonesJazzDixieland = 8206
    case tonesRingtonesJazzFusion = 8207
    case tonesRingtonesJazzHardBop = 8208
    case tonesRingtonesJazzLatinJazz = 8209
    case tonesRingtonesJazzMainstreamJazz = 8210
    case tonesRingtonesJazzRagtime = 8211
    case tonesRingtonesJazzSmoothJazz = 8212
    case tonesRingtonesJazzTradJazz = 8213
    case tonesRingtonesPopKPop = 8214
    case tonesRingtonesKaraoke = 8215
    case tonesRingtonesKorean = 8216
    case tonesRingtonesKoreanKoreanClassical = 8217
    case tonesRingtonesKoreanKoreanTradInstrumental = 8218
    case tonesRingtonesKoreanKoreanTradSong = 8219
    case tonesRingtonesKoreanKoreanTradTheater = 8220
    case tonesRingtonesLatinAlternativeandRockinSpanish = 8221
    case tonesRingtonesLatinBaladasyBoleros = 8222
    case tonesRingtonesLatinContemporaryLatin = 8223
    case tonesRingtonesLatinLatinJazz = 8224
    case tonesRingtonesLatinLatinUrban = 8225
    case tonesRingtonesLatinPopinSpanish = 8226
    case tonesRingtonesLatinRaices = 8227
    case tonesRingtonesLatinMusicaMexicana = 8228
    case tonesRingtonesLatinSalsayTropical = 8229
    case tonesRingtonesMarchingBands = 8230
    case tonesRingtonesNewAgeHealing = 8231
    case tonesRingtonesNewAgeMeditation = 8232
    case tonesRingtonesNewAgeNature = 8233
    case tonesRingtonesNewAgeRelaxation = 8234
    case tonesRingtonesNewAgeTravel = 8235
    case tonesRingtonesOrchestral = 8236
    case tonesRingtonesPopAdultContemporary = 8237
    case tonesRingtonesPopBritpop = 8238
    case tonesRingtonesPopCPop = 8239
    case tonesRingtonesPopCantopopHKPop = 8240
    case tonesRingtonesPopIndoPop = 8241
    case tonesRingtonesPopKoreanFolkPop = 8242
    case tonesRingtonesPopMalaysianPop = 8243
    case tonesRingtonesPopMandopop = 8244
    case tonesRingtonesPopManillaSound = 8245
    case tonesRingtonesPopOldies = 8246
    case tonesRingtonesPopOriginalPilipinoMusic = 8247
    case tonesRingtonesPopPinoyPop = 8248
    case tonesRingtonesPopPopRock = 8249
    case tonesRingtonesPopSoftRock = 8250
    case tonesRingtonesPopTaiPop = 8251
    case tonesRingtonesPopTeenPop = 8252
    case tonesRingtonesPopThaiPop = 8253
    case tonesRingtonesRandBSoulContemporaryRandB = 8254
    case tonesRingtonesRandBSoulDisco = 8255
    case tonesRingtonesRandBSoulDooWop = 8256
    case tonesRingtonesRandBSoulFunk = 8257
    case tonesRingtonesRandBSoulMotown = 8258
    case tonesRingtonesRandBSoulNeoSoul = 8259
    case tonesRingtonesRandBSoulSoul = 8260
    case tonesRingtonesReggaeModernDancehall = 8261
    case tonesRingtonesReggaeDub = 8262
    case tonesRingtonesReggaeRootsReggae = 8263
    case tonesRingtonesReggaeSka = 8264
    case tonesRingtonesRockAdultAlternative = 8265
    case tonesRingtonesRockAmericanTradRock = 8266
    case tonesRingtonesRockArenaRock = 8267
    case tonesRingtonesRockBluesRock = 8268
    case tonesRingtonesRockBritishInvasion = 8269
    case tonesRingtonesRockChineseRock = 8270
    case tonesRingtonesRockDeathMetalBlackMetal = 8271
    case tonesRingtonesRockGlamRock = 8272
    case tonesRingtonesRockHairMetal = 8273
    case tonesRingtonesRockHardRock = 8274
    case tonesRingtonesRockMetal = 8275
    case tonesRingtonesRockJamBands = 8276
    case tonesRingtonesRockKoreanRock = 8277
    case tonesRingtonesRockProgRockArtRock = 8278
    case tonesRingtonesRockPsychedelic = 8279
    case tonesRingtonesRockRockandRoll = 8280
    case tonesRingtonesRockRockabilly = 8281
    case tonesRingtonesRockRootsRock = 8282
    case tonesRingtonesRockSingerSongwriter = 8283
    case tonesRingtonesRockSouthernRock = 8284
    case tonesRingtonesRockSurf = 8285
    case tonesRingtonesRockTexMex = 8286
    case tonesRingtonesSingerSongwriterAlternativeFolk = 8287
    case tonesRingtonesSingerSongwriterContemporaryFolk = 8288
    case tonesRingtonesSingerSongwriterContemporarySingerSongwriter = 8289
    case tonesRingtonesSingerSongwriterFolkRock = 8290
    case tonesRingtonesSingerSongwriterNewAcoustic = 8291
    case tonesRingtonesSingerSongwriterTraditionalFolk = 8292
    case tonesRingtonesSoundtrackForeignCinema = 8293
    case tonesRingtonesSoundtrackMusicals = 8294
    case tonesRingtonesSoundtrackOriginalScore = 8295
    case tonesRingtonesSoundtrackSoundEffects = 8296
    case tonesRingtonesSoundtrackSoundtrack = 8297
    case tonesRingtonesSoundtrackTVSoundtrack = 8298
    case tonesRingtonesVocalStandards = 8299
    case tonesRingtonesVocalTraditionalPop = 8300
    case tonesRingtonesVocalTrot = 8301
    case tonesRingtonesJazzVocalJazz = 8302
    case tonesRingtonesVocalVocalPop = 8303
    case tonesRingtonesAfrican = 8304
    case tonesRingtonesAfricanAfrikaans = 8305
    case tonesRingtonesAfricanAfroBeat = 8306
    case tonesRingtonesAfricanAfroPop = 8307
    case tonesRingtonesTurkishArabesque = 8308
    case tonesRingtonesWorldAsia = 8309
    case tonesRingtonesWorldAustralia = 8310
    case tonesRingtonesWorldCajun = 8311
    case tonesRingtonesWorldCalypso = 8312
    case tonesRingtonesWorldCaribbean = 8313
    case tonesRingtonesWorldCeltic = 8314
    case tonesRingtonesWorldCelticFolk = 8315
    case tonesRingtonesWorldContemporaryCeltic = 8316
    case tonesRingtonesWorldDangdut = 8317
    case tonesRingtonesWorldDini = 8318
    case tonesRingtonesWorldEurope = 8319
    case tonesRingtonesWorldFado = 8320
    case tonesRingtonesWorldFarsi = 8321
    case tonesRingtonesWorldFlamenco = 8322
    case tonesRingtonesWorldFrance = 8323
    case tonesRingtonesTurkishHalk = 8324
    case tonesRingtonesWorldHawaii = 8325
    case tonesRingtonesWorldIberia = 8326
    case tonesRingtonesWorldIndonesianReligious = 8327
    case tonesRingtonesWorldIsraeli = 8328
    case tonesRingtonesWorldJapan = 8329
    case tonesRingtonesWorldKlezmer = 8330
    case tonesRingtonesWorldNorthAmerica = 8331
    case tonesRingtonesWorldPolka = 8332
    case tonesRingtonesRussian = 8333
    case tonesRingtonesRussianRussianChanson = 8334
    case tonesRingtonesTurkishSanat = 8335
    case tonesRingtonesWorldSoca = 8336
    case tonesRingtonesWorldSouthAfrica = 8337
    case tonesRingtonesWorldSouthAmerica = 8338
    case tonesRingtonesWorldTango = 8339
    case tonesRingtonesWorldTraditionalCeltic = 8340
    case tonesRingtonesTurkish = 8341
    case tonesRingtonesWorldWorldbeat = 8342
    case tonesRingtonesWorldZydeco = 8343
    case tonesRingtonesClassicalArtSong = 8345
    case tonesRingtonesClassicalBrassandWoodwinds = 8346
    case tonesRingtonesClassicalSoloInstrumental = 8347
    case tonesRingtonesClassicalContemporaryEra = 8348
    case tonesRingtonesClassicalOratorio = 8349
    case tonesRingtonesClassicalCantata = 8350
    case tonesRingtonesClassicalElectronic = 8351
    case tonesRingtonesClassicalSacred = 8352
    case tonesRingtonesClassicalGuitar = 8353
    case tonesRingtonesClassicalPiano = 8354
    case tonesRingtonesClassicalViolin = 8355
    case tonesRingtonesClassicalCello = 8356
    case tonesRingtonesClassicalPercussion = 8357
    case tonesRingtonesElectronicDubstep = 8358
    case tonesRingtonesElectronicBass = 8359
    case tonesRingtonesHipHopRapUKHipHop = 8360
    case tonesRingtonesReggaeLoversRock = 8361
    case tonesRingtonesAlternativeEMO = 8362
    case tonesRingtonesAlternativePopPunk = 8363
    case tonesRingtonesAlternativeIndiePop = 8364
    case tonesRingtonesNewAgeYoga = 8365
    case tonesRingtonesPopTribute = 8366
    case tonesRingtonesPopShows = 8367
    case tonesRingtonesCuban = 8368
    case tonesRingtonesCubanMambo = 8369
    case tonesRingtonesCubanChachacha = 8370
    case tonesRingtonesCubanGuajira = 8371
    case tonesRingtonesCubanSon = 8372
    case tonesRingtonesCubanBolero = 8373
    case tonesRingtonesCubanGuaracha = 8374
    case tonesRingtonesCubanTimba = 8375
    case tonesRingtonesSoundtrackVideoGame = 8376
    case tonesRingtonesIndianRegionalIndianPunjabiPunjabiPop = 8377
    case tonesRingtonesIndianRegionalIndianBengaliRabindraSangeet = 8378
    case tonesRingtonesIndianRegionalIndianMalayalam = 8379
    case tonesRingtonesIndianRegionalIndianKannada = 8380
    case tonesRingtonesIndianRegionalIndianMarathi = 8381
    case tonesRingtonesIndianRegionalIndianGujarati = 8382
    case tonesRingtonesIndianRegionalIndianAssamese = 8383
    case tonesRingtonesIndianRegionalIndianBhojpuri = 8384
    case tonesRingtonesIndianRegionalIndianHaryanvi = 8385
    case tonesRingtonesIndianRegionalIndianOdia = 8386
    case tonesRingtonesIndianRegionalIndianRajasthani = 8387
    case tonesRingtonesIndianRegionalIndianUrdu = 8388
    case tonesRingtonesIndianRegionalIndianPunjabi = 8389
    case tonesRingtonesIndianRegionalIndianBengali = 8390
    case tonesRingtonesIndianIndianClassicalCarnaticClassical = 8391
    case tonesRingtonesIndianIndianClassicalHindustaniClassical = 8392
    case tonesRingtonesAfricanAfroHouse = 8393
    case tonesRingtonesAfricanAfroSoul = 8394
    case tonesRingtonesAfricanAfrobeats = 8395
    case tonesRingtonesAfricanBenga = 8396
    case tonesRingtonesAfricanBongoFlava = 8397
    case tonesRingtonesAfricanCoupeDecale = 8398
    case tonesRingtonesAfricanGqom = 8399
    case tonesRingtonesAfricanHighlife = 8400
    case tonesRingtonesAfricanKuduro = 8401
    case tonesRingtonesAfricanKizomba = 8402
    case tonesRingtonesAfricanKwaito = 8403
    case tonesRingtonesAfricanMbalax = 8404
    case tonesRingtonesAfricanNdombolo = 8405
    case tonesRingtonesAfricanShangaanElectro = 8406
    case tonesRingtonesAfricanSoukous = 8407
    case tonesRingtonesAfricanTaarab = 8408
    case tonesRingtonesAfricanZouglou = 8409
    case tonesRingtonesTurkishOzgun = 8410
    case tonesRingtonesTurkishFantezi = 8411
    case tonesRingtonesTurkishReligious = 8412
    case tonesRingtonesPopTurkishPop = 8413
    case tonesRingtonesRockTurkishRock = 8414
    case tonesRingtonesAlternativeTurkishAlternative = 8415
    case tonesRingtonesHipHopRapTurkishHipHopRap = 8416
    case tonesRingtonesAfricanMaskandi = 8417
    case tonesRingtonesRussianRussianRomance = 8418
    case tonesRingtonesRussianRussianBard = 8419
    case tonesRingtonesRussianRussianPop = 8420
    case tonesRingtonesRussianRussianRock = 8421
    case tonesRingtonesRussianRussianHipHop = 8422
    case tonesRingtonesArabicLevant = 8423
    case tonesRingtonesArabicLevantDabke = 8424
    case tonesRingtonesArabicMaghrebRai = 8425
    case tonesRingtonesArabicKhaleejiKhaleejiJalsat = 8426
    case tonesRingtonesArabicKhaleejiKhaleejiShailat = 8427
    case tonesRingtonesTarab = 8428
    case tonesRingtonesTarabIraqiTarab = 8429
    case tonesRingtonesTarabEgyptianTarab = 8430
    case tonesRingtonesTarabKhaleejiTarab = 8431
    case tonesRingtonesPopLevantPop = 8432
    case tonesRingtonesPopIraqiPop = 8433
    case tonesRingtonesPopEgyptianPop = 8434
    case tonesRingtonesPopMaghrebPop = 8435
    case tonesRingtonesPopKhaleejiPop = 8436
    case tonesRingtonesHipHopRapLevantHipHop = 8437
    case tonesRingtonesHipHopRapEgyptianHipHop = 8438
    case tonesRingtonesHipHopRapMaghrebHipHop = 8439
    case tonesRingtonesHipHopRapKhaleejiHipHop = 8440
    case tonesRingtonesAlternativeIndieLevant = 8441
    case tonesRingtonesAlternativeIndieEgyptian = 8442
    case tonesRingtonesAlternativeIndieMaghreb = 8443
    case tonesRingtonesElectronicLevantElectronic = 8444
    case tonesRingtonesElectronicElectroChaabi = 8445
    case tonesRingtonesElectronicMaghrebElectronic = 8446
    case tonesRingtonesFolkIraqiFolk = 8447
    case tonesRingtonesFolkKhaleejiFolk = 8448
    case tonesRingtonesDanceMaghrebDance = 8449
    case booksNonfiction = 9002
    case booksRomance = 9003
    case booksTravelandAdventure = 9004
    case booksArtsandEntertainment = 9007
    case booksBiographiesandMemoirs = 9008
    case booksBusinessandPersonalFinance = 9009
    case booksChildrenandTeens = 9010
    case booksHumor = 9012
    case booksHistory = 9015
    case booksReligionandSpirituality = 9018
    case booksScienceandNature = 9019
    case booksSciFiandFantasy = 9020
    case booksLifestyleandHome = 9024
    case booksSelfDevelopment = 9025
    case booksComicsandGraphicNovels = 9026
    case booksComputersandInternet = 9027
    case booksCookbooksFoodandWine = 9028
    case booksProfessionalandTechnical = 9029
    case booksParenting = 9030
    case booksFictionandLiterature = 9031
    case booksMysteriesandThrillers = 9032
    case booksReference = 9033
    case booksPoliticsandCurrentEvents = 9034
    case booksSportsandOutdoors = 9035
    case booksLifestyleandHomeAntiquesandCollectibles = 10001
    case booksArtsandEntertainmentArtandArchitecture = 10002
    case booksReligionandSpiritualityBibles = 10003
    case booksSelfDevelopmentSpirituality = 10004
    case booksBusinessandPersonalFinanceIndustriesandProfessions = 10005
    case booksBusinessandPersonalFinanceMarketingandSales = 10006
    case booksBusinessandPersonalFinanceSmallBusinessandEntrepreneurship = 10007
    case booksBusinessandPersonalFinancePersonalFinance = 10008
    case booksBusinessandPersonalFinanceReference = 10009
    case booksBusinessandPersonalFinanceCareers = 10010
    case booksBusinessandPersonalFinanceEconomics = 10011
    case booksBusinessandPersonalFinanceInvesting = 10012
    case booksBusinessandPersonalFinanceFinance = 10013
    case booksBusinessandPersonalFinanceManagementandLeadership = 10014
    case booksComicsandGraphicNovelsGraphicNovels = 10015
    case booksComicsandGraphicNovelsManga = 10016
    case booksComputersandInternetComputers = 10017
    case booksComputersandInternetDatabases = 10018
    case booksComputersandInternetDigitalMedia = 10019
    case booksComputersandInternetInternet = 10020
    case booksComputersandInternetNetwork = 10021
    case booksComputersandInternetOperatingSystems = 10022
    case booksComputersandInternetProgramming = 10023
    case booksComputersandInternetSoftware = 10024
    case booksComputersandInternetSystemAdministration = 10025
    case booksCookbooksFoodandWineBeverages = 10026
    case booksCookbooksFoodandWineCoursesandDishes = 10027
    case booksCookbooksFoodandWineSpecialDiet = 10028
    case booksCookbooksFoodandWineSpecialOccasions = 10029
    case booksCookbooksFoodandWineMethods = 10030
    case booksCookbooksFoodandWineReference = 10031
    case booksCookbooksFoodandWineRegionalandEthnic = 10032
    case booksCookbooksFoodandWineSpecificIngredients = 10033
    case booksLifestyleandHomeCraftsandHobbies = 10034
    case booksProfessionalandTechnicalDesign = 10035
    case booksArtsandEntertainmentTheater = 10036
    case booksProfessionalandTechnicalEducation = 10037
    case booksNonfictionFamilyandRelationships = 10038
    case booksFictionandLiteratureActionandAdventure = 10039
    case booksFictionandLiteratureAfricanAmerican = 10040
    case booksFictionandLiteratureReligious = 10041
    case booksFictionandLiteratureClassics = 10042
    case booksFictionandLiteratureErotica = 10043
    case booksSciFiandFantasyFantasy = 10044
    case booksFictionandLiteratureGay = 10045
    case booksFictionandLiteratureGhost = 10046
    case booksFictionandLiteratureHistorical = 10047
    case booksFictionandLiteratureHorror = 10048
    case booksFictionandLiteratureLiterary = 10049
    case booksMysteriesandThrillersHardBoiled = 10050
    case booksMysteriesandThrillersHistorical = 10051
    case booksMysteriesandThrillersPoliceProcedural = 10052
    case booksMysteriesandThrillersShortStories = 10053
    case booksMysteriesandThrillersBritishDetectives = 10054
    case booksMysteriesandThrillersWomenSleuths = 10055
    case booksRomanceEroticRomance = 10056
    case booksRomanceContemporary = 10057
    case booksRomanceParanormal = 10058
    case booksRomanceHistorical = 10059
    case booksRomanceShortStories = 10060
    case booksRomanceSuspense = 10061
    case booksRomanceWestern = 10062
    case booksSciFiandFantasyScienceFiction = 10063
    case booksSciFiandFantasyScienceFictionandLiterature = 10064
    case booksFictionandLiteratureShortStories = 10065
    case booksReferenceForeignLanguages = 10066
    case booksArtsandEntertainmentGames = 10067
    case booksLifestyleandHomeGardening = 10068
    case booksSelfDevelopmentHealthandFitness = 10069
    case booksHistoryAfrica = 10070
    case booksHistoryAmericas = 10071
    case booksHistoryAncient = 10072
    case booksHistoryAsia = 10073
    case booksHistoryAustraliaandOceania = 10074
    case booksHistoryEurope = 10075
    case booksHistoryLatinAmerica = 10076
    case booksHistoryMiddleEast = 10077
    case booksHistoryMilitary = 10078
    case booksHistoryUnitedStates = 10079
    case booksHistoryWorld = 10080
    case booksChildrenandTeensChildrensFiction = 10081
    case booksChildrenandTeensChildrensNonfiction = 10082
    case booksProfessionalandTechnicalLaw = 10083
    case booksFictionandLiteratureLiteraryCriticism = 10084
    case booksScienceandNatureMathematics = 10085
    case booksProfessionalandTechnicalMedical = 10086
    case booksArtsandEntertainmentMusic = 10087
    case booksScienceandNatureNature = 10088
    case booksArtsandEntertainmentPerformingArts = 10089
    case booksLifestyleandHomePets = 10090
    case booksNonfictionPhilosophy = 10091
    case booksArtsandEntertainmentPhotography = 10092
    case booksFictionandLiteraturePoetry = 10093
    case booksSelfDevelopmentPsychology = 10094
    case booksReferenceAlmanacsandYearbooks = 10095
    case booksReferenceAtlasesandMaps = 10096
    case booksReferenceCatalogsandDirectories = 10097
    case booksReferenceConsumerGuides = 10098
    case booksReferenceDictionariesandThesauruses = 10099
    case booksReferenceEncyclopedias = 10100
    case booksReferenceEtiquette = 10101
    case booksReferenceQuotations = 10102
    case booksReferenceWordsandLanguage = 10103
    case booksReferenceWriting = 10104
    case booksReligionandSpiritualityBibleStudies = 10105
    case booksReligionandSpiritualityBuddhism = 10106
    case booksReligionandSpiritualityChristianity = 10107
    case booksReligionandSpiritualityHinduism = 10108
    case booksReligionandSpiritualityIslam = 10109
    case booksReligionandSpiritualityJudaism = 10110
    case booksScienceandNatureAstronomy = 10111
    case booksScienceandNatureChemistry = 10112
    case booksScienceandNatureEarthSciences = 10113
    case booksScienceandNatureEssays = 10114
    case booksScienceandNatureHistory = 10115
    case booksScienceandNatureLifeSciences = 10116
    case booksScienceandNaturePhysics = 10117
    case booksScienceandNatureReference = 10118
    case booksSelfDevelopmentSelfImprovement = 10119
    case booksNonfictionSocialScience = 10120
    case booksSportsandOutdoorsBaseball = 10121
    case booksSportsandOutdoorsBasketball = 10122
    case booksSportsandOutdoorsCoaching = 10123
    case booksSportsandOutdoorsExtremeSports = 10124
    case booksSportsandOutdoorsFootball = 10125
    case booksSportsandOutdoorsGolf = 10126
    case booksSportsandOutdoorsHockey = 10127
    case booksSportsandOutdoorsMountaineering = 10128
    case booksSportsandOutdoorsOutdoors = 10129
    case booksSportsandOutdoorsRacketSports = 10130
    case booksSportsandOutdoorsReference = 10131
    case booksSportsandOutdoorsSoccer = 10132
    case booksSportsandOutdoorsTraining = 10133
    case booksSportsandOutdoorsWaterSports = 10134
    case booksSportsandOutdoorsWinterSports = 10135
    case booksReferenceStudyAids = 10136
    case booksProfessionalandTechnicalEngineering = 10137
    case booksNonfictionTransportation = 10138
    case booksTravelandAdventureAfrica = 10139
    case booksTravelandAdventureAsia = 10140
    case booksTravelandAdventureSpecialtyTravel = 10141
    case booksTravelandAdventureCanada = 10142
    case booksTravelandAdventureCaribbean = 10143
    case booksTravelandAdventureLatinAmerica = 10144
    case booksTravelandAdventureEssaysandMemoirs = 10145
    case booksTravelandAdventureEurope = 10146
    case booksTravelandAdventureMiddleEast = 10147
    case booksTravelandAdventureUnitedStates = 10148
    case booksNonfictionTrueCrime = 10149
    case booksSciFiandFantasyFantasyContemporary = 11001
    case booksSciFiandFantasyFantasyEpic = 11002
    case booksSciFiandFantasyFantasyHistorical = 11003
    case booksSciFiandFantasyFantasyParanormal = 11004
    case booksSciFiandFantasyFantasyShortStories = 11005
    case booksSciFiandFantasyScienceFictionandLiteratureAdventure = 11006
    case booksSciFiandFantasyScienceFictionandLiteratureHighTech = 11007
    case booksSciFiandFantasyScienceFictionandLiteratureShortStories = 11008
    case booksProfessionalandTechnicalEducationLanguageArtsandDisciplines = 11009
    case booksCommunicationsandMedia = 11010
    case booksCommunicationsandMediaBroadcasting = 11011
    case booksCommunicationsandMediaDigitalMedia = 11012
    case booksCommunicationsandMediaJournalism = 11013
    case booksCommunicationsandMediaPhotojournalism = 11014
    case booksCommunicationsandMediaPrint = 11015
    case booksCommunicationsandMediaSpeech = 11016
    case booksCommunicationsandMediaWriting = 11017
    case booksArtsandEntertainmentArtandArchitectureUrbanPlanning = 11018
    case booksArtsandEntertainmentDance = 11019
    case booksArtsandEntertainmentFashion = 11020
    case booksArtsandEntertainmentFilm = 11021
    case booksArtsandEntertainmentInteriorDesign = 11022
    case booksArtsandEntertainmentMediaArts = 11023
    case booksArtsandEntertainmentRadio = 11024
    case booksArtsandEntertainmentTV = 11025
    case booksArtsandEntertainmentVisualArts = 11026
    case booksBiographiesandMemoirsArtsandEntertainment = 11027
    case booksBiographiesandMemoirsBusiness = 11028
    case booksBiographiesandMemoirsCulinary = 11029
    case booksBiographiesandMemoirsGayandLesbian = 11030
    case booksBiographiesandMemoirsHistorical = 11031
    case booksBiographiesandMemoirsLiterary = 11032
    case booksBiographiesandMemoirsMediaandJournalism = 11033
    case booksBiographiesandMemoirsMilitary = 11034
    case booksBiographiesandMemoirsPolitics = 11035
    case booksBiographiesandMemoirsReligious = 11036
    case booksBiographiesandMemoirsScienceandTechnology = 11037
    case booksBiographiesandMemoirsSports = 11038
    case booksBiographiesandMemoirsWomen = 11039
    case booksRomanceNewAdult = 11040
    case booksRomanceRomanticComedy = 11042
    case booksRomanceGayandLesbian = 11043
    case booksFictionandLiteratureEssays = 11044
    case booksFictionandLiteratureAnthologies = 11045
    case booksFictionandLiteratureComparativeLiterature = 11046
    case booksFictionandLiteratureDrama = 11047
    case booksFictionandLiteratureFairyTalesMythsandFables = 11049
    case booksFictionandLiteratureFamily = 11050
    case booksComicsandGraphicNovelsMangaSchoolDrama = 11051
    case booksComicsandGraphicNovelsMangaHumanDrama = 11052
    case booksComicsandGraphicNovelsMangaFamilyDrama = 11053
    case booksSportsandOutdoorsBoxing = 11054
    case booksSportsandOutdoorsCricket = 11055
    case booksSportsandOutdoorsCycling = 11056
    case booksSportsandOutdoorsEquestrian = 11057
    case booksSportsandOutdoorsMartialArtsandSelfDefense = 11058
    case booksSportsandOutdoorsMotorSports = 11059
    case booksSportsandOutdoorsRugby = 11060
    case booksSportsandOutdoorsRunning = 11061
    case booksSelfDevelopmentDietandNutrition = 11062
    case booksScienceandNatureAgriculture = 11063
    case booksScienceandNatureAtmosphere = 11064
    case booksScienceandNatureBiology = 11065
    case booksScienceandNatureEcology = 11066
    case booksScienceandNatureEnvironment = 11067
    case booksScienceandNatureGeography = 11068
    case booksScienceandNatureGeology = 11069
    case booksNonfictionSocialScienceAnthropology = 11070
    case booksNonfictionSocialScienceArchaeology = 11071
    case booksNonfictionSocialScienceCivics = 11072
    case booksNonfictionSocialScienceGovernment = 11073
    case booksNonfictionSocialScienceSocialStudies = 11074
    case booksNonfictionSocialScienceSocialWelfare = 11075
    case booksNonfictionSocialScienceSociety = 11076
    case booksNonfictionPhilosophyAesthetics = 11077
    case booksNonfictionPhilosophyEpistemology = 11078
    case booksNonfictionPhilosophyEthics = 11079
    case booksNonfictionPhilosophyLanguage = 11080
    case booksNonfictionPhilosophyLogic = 11081
    case booksNonfictionPhilosophyMetaphysics = 11082
    case booksNonfictionPhilosophyPolitical = 11083
    case booksNonfictionPhilosophyReligion = 11084
    case booksReferenceManuals = 11085
    case booksKids = 11086
    case booksKidsAnimals = 11087
    case booksKidsBasicConcepts = 11088
    case booksKidsBasicConceptsAlphabet = 11089
    case booksKidsBasicConceptsBody = 11090
    case booksKidsBasicConceptsColors = 11091
    case booksKidsBasicConceptsCountingandNumbers = 11092
    case booksKidsBasicConceptsDateandTime = 11093
    case booksKidsBasicConceptsGeneral = 11094
    case booksKidsBasicConceptsMoney = 11095
    case booksKidsBasicConceptsOpposites = 11096
    case booksKidsBasicConceptsSeasons = 11097
    case booksKidsBasicConceptsSensesandSensation = 11098
    case booksKidsBasicConceptsSizeandShape = 11099
    case booksKidsBasicConceptsSounds = 11100
    case booksKidsBasicConceptsWords = 11101
    case booksKidsBiography = 11102
    case booksKidsCareersandOccupations = 11103
    case booksKidsComputersandTechnology = 11104
    case booksKidsCookingandFood = 11105
    case booksKidsArtsandEntertainment = 11106
    case booksKidsArtsandEntertainmentArt = 11107
    case booksKidsArtsandEntertainmentCrafts = 11108
    case booksKidsArtsandEntertainmentMusic = 11109
    case booksKidsArtsandEntertainmentPerformingArts = 11110
    case booksKidsFamily = 11111
    case booksKidsFiction = 11112
    case booksKidsFictionActionandAdventure = 11113
    case booksKidsFictionAnimals = 11114
    case booksKidsFictionClassics = 11115
    case booksKidsFictionComicsandGraphicNovels = 11116
    case booksKidsFictionCulturePlacesandPeople = 11117
    case booksKidsFictionFamilyandRelationships = 11118
    case booksKidsFictionFantasy = 11119
    case booksKidsFictionFairyTalesMythsandFables = 11120
    case booksKidsFictionFavoriteCharacters = 11121
    case booksKidsFictionHistorical = 11122
    case booksKidsFictionHolidaysandCelebrations = 11123
    case booksKidsFictionMonstersandGhosts = 11124
    case booksKidsFictionMysteries = 11125
    case booksKidsFictionNature = 11126
    case booksKidsFictionReligion = 11127
    case booksKidsFictionSciFi = 11128
    case booksKidsFictionSocialIssues = 11129
    case booksKidsFictionSportsandRecreation = 11130
    case booksKidsFictionTransportation = 11131
    case booksKidsGamesandActivities = 11132
    case booksKidsGeneralNonfiction = 11133
    case booksKidsHealth = 11134
    case booksKidsHistory = 11135
    case booksKidsHolidaysandCelebrations = 11136
    case booksKidsHolidaysandCelebrationsBirthdays = 11137
    case booksKidsHolidaysandCelebrationsChristmasandAdvent = 11138
    case booksKidsHolidaysandCelebrationsEasterandLent = 11139
    case booksKidsHolidaysandCelebrationsGeneral = 11140
    case booksKidsHolidaysandCelebrationsHalloween = 11141
    case booksKidsHolidaysandCelebrationsHanukkah = 11142
    case booksKidsHolidaysandCelebrationsOther = 11143
    case booksKidsHolidaysandCelebrationsPassover = 11144
    case booksKidsHolidaysandCelebrationsPatrioticHolidays = 11145
    case booksKidsHolidaysandCelebrationsRamadan = 11146
    case booksKidsHolidaysandCelebrationsThanksgiving = 11147
    case booksKidsHolidaysandCelebrationsValentinesDay = 11148
    case booksKidsHumor = 11149
    case booksKidsHumorJokesandRiddles = 11150
    case booksKidsPoetry = 11151
    case booksKidsLearningtoRead = 11152
    case booksKidsLearningtoReadChapterBooks = 11153
    case booksKidsLearningtoReadEarlyReaders = 11154
    case booksKidsLearningtoReadIntermediateReaders = 11155
    case booksKidsNurseryRhymes = 11156
    case booksKidsGovernment = 11157
    case booksKidsReference = 11158
    case booksKidsReligion = 11159
    case booksKidsScienceandNature = 11160
    case booksKidsSocialIssues = 11161
    case booksKidsSocialStudies = 11162
    case booksKidsSportsandRecreation = 11163
    case booksKidsTransportation = 11164
    case booksYoungAdult = 11165
    case booksYoungAdultAnimals = 11166
    case booksYoungAdultBiography = 11167
    case booksYoungAdultCareersandOccupations = 11168
    case booksYoungAdultComputersandTechnology = 11169
    case booksYoungAdultCookingandFood = 11170
    case booksYoungAdultArtsandEntertainment = 11171
    case booksYoungAdultArtsandEntertainmentArt = 11172
    case booksYoungAdultArtsandEntertainmentCrafts = 11173
    case booksYoungAdultArtsandEntertainmentMusic = 11174
    case booksYoungAdultArtsandEntertainmentPerformingArts = 11175
    case booksYoungAdultFamily = 11176
    case booksYoungAdultFiction = 11177
    case booksYoungAdultFictionActionandAdventure = 11178
    case booksYoungAdultFictionAnimals = 11179
    case booksYoungAdultFictionClassics = 11180
    case booksYoungAdultFictionComicsandGraphicNovels = 11181
    case booksYoungAdultFictionCulturePlacesandPeople = 11182
    case booksYoungAdultFictionDystopian = 11183
    case booksYoungAdultFictionFamilyandRelationships = 11184
    case booksYoungAdultFictionFantasy = 11185
    case booksYoungAdultFictionFairyTalesMythsandFables = 11186
    case booksYoungAdultFictionFavoriteCharacters = 11187
    case booksYoungAdultFictionHistorical = 11188
    case booksYoungAdultFictionHolidaysandCelebrations = 11189
    case booksYoungAdultFictionHorrorMonstersandGhosts = 11190
    case booksYoungAdultFictionCrimeandMystery = 11191
    case booksYoungAdultFictionNature = 11192
    case booksYoungAdultFictionReligion = 11193
    case booksYoungAdultFictionRomance = 11194
    case booksYoungAdultFictionSciFi = 11195
    case booksYoungAdultFictionComingofAge = 11196
    case booksYoungAdultFictionSportsandRecreation = 11197
    case booksYoungAdultFictionTransportation = 11198
    case booksYoungAdultGamesandActivities = 11199
    case booksYoungAdultGeneralNonfiction = 11200
    case booksYoungAdultHealth = 11201
    case booksYoungAdultHistory = 11202
    case booksYoungAdultHolidaysandCelebrations = 11203
    case booksYoungAdultHolidaysandCelebrationsBirthdays = 11204
    case booksYoungAdultHolidaysandCelebrationsChristmasandAdvent = 11205
    case booksYoungAdultHolidaysandCelebrationsEasterandLent = 11206
    case booksYoungAdultHolidaysandCelebrationsGeneral = 11207
    case booksYoungAdultHolidaysandCelebrationsHalloween = 11208
    case booksYoungAdultHolidaysandCelebrationsHanukkah = 11209
    case booksYoungAdultHolidaysandCelebrationsOther = 11210
    case booksYoungAdultHolidaysandCelebrationsPassover = 11211
    case booksYoungAdultHolidaysandCelebrationsPatrioticHolidays = 11212
    case booksYoungAdultHolidaysandCelebrationsRamadan = 11213
    case booksYoungAdultHolidaysandCelebrationsThanksgiving = 11214
    case booksYoungAdultHolidaysandCelebrationsValentinesDay = 11215
    case booksYoungAdultHumor = 11216
    case booksYoungAdultHumorJokesandRiddles = 11217
    case booksYoungAdultPoetry = 11218
    case booksYoungAdultPoliticsandGovernment = 11219
    case booksYoungAdultReference = 11220
    case booksYoungAdultReligion = 11221
    case booksYoungAdultScienceandNature = 11222
    case booksYoungAdultComingofAge = 11223
    case booksYoungAdultSocialStudies = 11224
    case booksYoungAdultSportsandRecreation = 11225
    case booksYoungAdultTransportation = 11226
    case booksMilitaryandWarfare = 11228
    case booksRomanceInspirational = 11229
    case booksRomanceHoliday = 11231
    case booksRomanceWholesome = 11232
    case booksRomanceMilitary = 11233
    case booksArtsandEntertainmentArtHistory = 11234
    case booksArtsandEntertainmentDesign = 11236
    case booksBusinessandPersonalFinanceAccounting = 11243
    case booksBusinessandPersonalFinanceHospitality = 11244
    case booksBusinessandPersonalFinanceRealEstate = 11245
    case booksHumorJokesandRiddles = 11246
    case booksReligionandSpiritualityComparativeReligion = 11247
    case booksCookbooksFoodandWineCulinaryArts = 11255
    case booksMysteriesandThrillersCozy = 11259
    case booksPoliticsandCurrentEventsCurrentEvents = 11260
    case booksPoliticsandCurrentEventsForeignPolicyandInternationalRelations = 11261
    case booksPoliticsandCurrentEventsLocalGovernment = 11262
    case booksPoliticsandCurrentEventsNationalGovernment = 11263
    case booksPoliticsandCurrentEventsPoliticalScience = 11264
    case booksPoliticsandCurrentEventsPublicAdministration = 11265
    case booksPoliticsandCurrentEventsWorldAffairs = 11266
    case booksNonfictionFamilyandRelationshipsFamilyandChildcare = 11273
    case booksNonfictionFamilyandRelationshipsLoveandRomance = 11274
    case booksSciFiandFantasyFantasyUrban = 11275
    case booksReferenceForeignLanguagesArabic = 11276
    case booksReferenceForeignLanguagesBilingualEditions = 11277
    case booksReferenceForeignLanguagesAfricanLanguages = 11278
    case booksReferenceForeignLanguagesAncientLanguages = 11279
    case booksReferenceForeignLanguagesChinese = 11280
    case booksReferenceForeignLanguagesEnglish = 11281
    case booksReferenceForeignLanguagesFrench = 11282
    case booksReferenceForeignLanguagesGerman = 11283
    case booksReferenceForeignLanguagesHebrew = 11284
    case booksReferenceForeignLanguagesHindi = 11285
    case booksReferenceForeignLanguagesItalian = 11286
    case booksReferenceForeignLanguagesJapanese = 11287
    case booksReferenceForeignLanguagesKorean = 11288
    case booksReferenceForeignLanguagesLinguistics = 11289
    case booksReferenceForeignLanguagesOtherLanguages = 11290
    case booksReferenceForeignLanguagesPortuguese = 11291
    case booksReferenceForeignLanguagesRussian = 11292
    case booksReferenceForeignLanguagesSpanish = 11293
    case booksReferenceForeignLanguagesSpeechPathology = 11294
    case booksScienceandNatureMathematicsAdvancedMathematics = 11295
    case booksScienceandNatureMathematicsAlgebra = 11296
    case booksScienceandNatureMathematicsArithmetic = 11297
    case booksScienceandNatureMathematicsCalculus = 11298
    case booksScienceandNatureMathematicsGeometry = 11299
    case booksScienceandNatureMathematicsStatistics = 11300
    case booksProfessionalandTechnicalMedicalVeterinary = 11301
    case booksProfessionalandTechnicalMedicalNeuroscience = 11302
    case booksProfessionalandTechnicalMedicalImmunology = 11303
    case booksProfessionalandTechnicalMedicalNursing = 11304
    case booksProfessionalandTechnicalMedicalPharmacologyandToxicology = 11305
    case booksProfessionalandTechnicalMedicalAnatomyandPhysiology = 11306
    case booksProfessionalandTechnicalMedicalDentistry = 11307
    case booksProfessionalandTechnicalMedicalEmergencyMedicine = 11308
    case booksProfessionalandTechnicalMedicalGenetics = 11309
    case booksProfessionalandTechnicalMedicalPsychiatry = 11310
    case booksProfessionalandTechnicalMedicalRadiology = 11311
    case booksProfessionalandTechnicalMedicalAlternativeMedicine = 11312
    case booksNonfictionPhilosophyPoliticalPhilosophy = 11317
    case booksNonfictionPhilosophyPhilosophyofLanguage = 11319
    case booksNonfictionPhilosophyPhilosophyofReligion = 11320
    case booksNonfictionSocialScienceSociology = 11327
    case booksProfessionalandTechnicalEngineeringAeronautics = 11329
    case booksProfessionalandTechnicalEngineeringChemicalandPetroleumEngineering = 11330
    case booksProfessionalandTechnicalEngineeringCivilEngineering = 11331
    case booksProfessionalandTechnicalEngineeringComputerScience = 11332
    case booksProfessionalandTechnicalEngineeringElectricalEngineering = 11333
    case booksProfessionalandTechnicalEngineeringEnvironmentalEngineering = 11334
    case booksProfessionalandTechnicalEngineeringMechanicalEngineering = 11335
    case booksProfessionalandTechnicalEngineeringPowerResources = 11336
    case booksComicsandGraphicNovelsMangaBoys = 11337
    case booksComicsandGraphicNovelsMangaMen = 11338
    case booksComicsandGraphicNovelsMangaGirls = 11339
    case booksComicsandGraphicNovelsMangaWomen = 11340
    case booksComicsandGraphicNovelsMangaOther = 11341
    case booksComicsandGraphicNovelsMangaYaoi = 11342
    case booksComicsandGraphicNovelsMangaComicEssays = 11343
    case macAppStoreBusiness = 12001
    case macAppStoreDeveloperTools = 12002
    case macAppStoreEducation = 12003
    case macAppStoreEntertainment = 12004
    case macAppStoreFinance = 12005
    case macAppStoreGames = 12006
    case macAppStoreHealthandFitness = 12007
    case macAppStoreLifestyle = 12008
    case macAppStoreMedical = 12010
    case macAppStoreMusic = 12011
    case macAppStoreNews = 12012
    case macAppStorePhotography = 12013
    case macAppStoreProductivity = 12014
    case macAppStoreReference = 12015
    case macAppStoreSocialNetworking = 12016
    case macAppStoreSports = 12017
    case macAppStoreTravel = 12018
    case macAppStoreUtilities = 12019
    case macAppStoreVideo = 12020
    case macAppStoreWeather = 12021
    case macAppStoreGraphicsandDesign = 12022
    case macAppStoreGamesAction = 12201
    case macAppStoreGamesAdventure = 12202
    case macAppStoreGamesCasual = 12203
    case macAppStoreGamesBoard = 12204
    case macAppStoreGamesCard = 12205
    case macAppStoreGamesCasino = 12206
    case macAppStoreGamesDice = 12207
    case macAppStoreGamesEducational = 12208
    case macAppStoreGamesFamily = 12209
    case macAppStoreGamesKids = 12210
    case macAppStoreGamesMusic = 12211
    case macAppStoreGamesPuzzle = 12212
    case macAppStoreGamesRacing = 12213
    case macAppStoreGamesRolePlaying = 12214
    case macAppStoreGamesSimulation = 12215
    case macAppStoreGamesSports = 12216
    case macAppStoreGamesStrategy = 12217
    case macAppStoreGamesTrivia = 12218
    case macAppStoreGamesWord = 12219
    case appStoreMagazinesandNewspapersNewsandPolitics = 13001
    case appStoreMagazinesandNewspapersFashionandStyle = 13002
    case appStoreMagazinesandNewspapersHomeandGarden = 13003
    case appStoreMagazinesandNewspapersOutdoorsandNature = 13004
    case appStoreMagazinesandNewspapersSportsandLeisure = 13005
    case appStoreMagazinesandNewspapersAutomotive = 13006
    case appStoreMagazinesandNewspapersArtsandPhotography = 13007
    case appStoreMagazinesandNewspapersBridesandWeddings = 13008
    case appStoreMagazinesandNewspapersBusinessandInvesting = 13009
    case appStoreMagazinesandNewspapersChildrensMagazines = 13010
    case appStoreMagazinesandNewspapersComputersandInternet = 13011
    case appStoreMagazinesandNewspapersCookingFoodandDrink = 13012
    case appStoreMagazinesandNewspapersCraftsandHobbies = 13013
    case appStoreMagazinesandNewspapersElectronicsandAudio = 13014
    case appStoreMagazinesandNewspapersEntertainment = 13015
    case appStoreMagazinesandNewspapersHealthMindandBody = 13017
    case appStoreMagazinesandNewspapersHistory = 13018
    case appStoreMagazinesandNewspapersLiteraryMagazinesandJournals = 13019
    case appStoreMagazinesandNewspapersMensInterest = 13020
    case appStoreMagazinesandNewspapersMoviesandMusic = 13021
    case appStoreMagazinesandNewspapersParentingandFamily = 13023
    case appStoreMagazinesandNewspapersPets = 13024
    case appStoreMagazinesandNewspapersProfessionalandTrade = 13025
    case appStoreMagazinesandNewspapersRegionalNews = 13026
    case appStoreMagazinesandNewspapersScience = 13027
    case appStoreMagazinesandNewspapersTeens = 13028
    case appStoreMagazinesandNewspapersTravelandRegional = 13029
    case appStoreMagazinesandNewspapersWomensInterest = 13030
    case textbooksArtsandEntertainment = 15000
    case textbooksArtsandEntertainmentArtandArchitecture = 15001
    case textbooksArtsandEntertainmentArtandArchitectureUrbanPlanning = 15002
    case textbooksArtsandEntertainmentArtHistory = 15003
    case textbooksArtsandEntertainmentDance = 15004
    case textbooksArtsandEntertainmentDesign = 15005
    case textbooksArtsandEntertainmentFashion = 15006
    case textbooksArtsandEntertainmentFilm = 15007
    case textbooksArtsandEntertainmentGames = 15008
    case textbooksArtsandEntertainmentInteriorDesign = 15009
    case textbooksArtsandEntertainmentMediaArts = 15010
    case textbooksArtsandEntertainmentMusic = 15011
    case textbooksArtsandEntertainmentPerformingArts = 15012
    case textbooksArtsandEntertainmentPhotography = 15013
    case textbooksArtsandEntertainmentTheater = 15014
    case textbooksArtsandEntertainmentTV = 15015
    case textbooksArtsandEntertainmentVisualArts = 15016
    case textbooksBiographiesandMemoirs = 15017
    case textbooksBusinessandPersonalFinance = 15018
    case textbooksBusinessandPersonalFinanceAccounting = 15019
    case textbooksBusinessandPersonalFinanceCareers = 15020
    case textbooksBusinessandPersonalFinanceEconomics = 15021
    case textbooksBusinessandPersonalFinanceFinance = 15022
    case textbooksBusinessandPersonalFinanceHospitality = 15023
    case textbooksBusinessandPersonalFinanceIndustriesandProfessions = 15024
    case textbooksBusinessandPersonalFinanceInvesting = 15025
    case textbooksBusinessandPersonalFinanceManagementandLeadership = 15026
    case textbooksBusinessandPersonalFinanceMarketingandSales = 15027
    case textbooksBusinessandPersonalFinancePersonalFinance = 15028
    case textbooksBusinessandPersonalFinanceRealEstate = 15029
    case textbooksBusinessandPersonalFinanceReference = 15030
    case textbooksBusinessandPersonalFinanceSmallBusinessandEntrepreneurship = 15031
    case textbooksChildrenandTeens = 15032
    case textbooksChildrenandTeensFiction = 15033
    case textbooksChildrenandTeensNonfiction = 15034
    case textbooksComicsandGraphicNovels = 15035
    case textbooksComicsandGraphicNovelsGraphicNovels = 15036
    case textbooksComicsandGraphicNovelsManga = 15037
    case textbooksCommunicationsandMedia = 15038
    case textbooksCommunicationsandMediaBroadcasting = 15039
    case textbooksCommunicationsandMediaDigitalMedia = 15040
    case textbooksCommunicationsandMediaJournalism = 15041
    case textbooksCommunicationsandMediaPhotojournalism = 15042
    case textbooksCommunicationsandMediaPrint = 15043
    case textbooksCommunicationsandMediaSpeech = 15044
    case textbooksCommunicationsandMediaWriting = 15045
    case textbooksComputersandInternet = 15046
    case textbooksComputersandInternetComputers = 15047
    case textbooksComputersandInternetDatabases = 15048
    case textbooksComputersandInternetDigitalMedia = 15049
    case textbooksComputersandInternetInternet = 15050
    case textbooksComputersandInternetNetwork = 15051
    case textbooksComputersandInternetOperatingSystems = 15052
    case textbooksComputersandInternetProgramming = 15053
    case textbooksComputersandInternetSoftware = 15054
    case textbooksComputersandInternetSystemAdministration = 15055
    case textbooksCookbooksFoodandWine = 15056
    case textbooksCookbooksFoodandWineBeverages = 15057
    case textbooksCookbooksFoodandWineCoursesandDishes = 15058
    case textbooksCookbooksFoodandWineCulinaryArts = 15059
    case textbooksCookbooksFoodandWineMethods = 15060
    case textbooksCookbooksFoodandWineReference = 15061
    case textbooksCookbooksFoodandWineRegionalandEthnic = 15062
    case textbooksCookbooksFoodandWineSpecialDiet = 15063
    case textbooksCookbooksFoodandWineSpecialOccasions = 15064
    case textbooksCookbooksFoodandWineSpecificIngredients = 15065
    case textbooksEngineering = 15066
    case textbooksEngineeringAeronautics = 15067
    case textbooksEngineeringChemicalandPetroleumEngineering = 15068
    case textbooksEngineeringCivilEngineering = 15069
    case textbooksEngineeringComputerScience = 15070
    case textbooksEngineeringElectricalEngineering = 15071
    case textbooksEngineeringEnvironmentalEngineering = 15072
    case textbooksEngineeringMechanicalEngineering = 15073
    case textbooksEngineeringPowerResources = 15074
    case textbooksFictionandLiterature = 15075
    case textbooksFictionandLiteratureLatino = 15076
    case textbooksFictionandLiteratureActionandAdventure = 15077
    case textbooksFictionandLiteratureAfricanAmerican = 15078
    case textbooksFictionandLiteratureAnthologies = 15079
    case textbooksFictionandLiteratureClassics = 15080
    case textbooksFictionandLiteratureComparativeLiterature = 15081
    case textbooksFictionandLiteratureErotica = 15082
    case textbooksFictionandLiteratureGay = 15083
    case textbooksFictionandLiteratureGhost = 15084
    case textbooksFictionandLiteratureHistorical = 15085
    case textbooksFictionandLiteratureHorror = 15086
    case textbooksFictionandLiteratureLiterary = 15087
    case textbooksFictionandLiteratureLiteraryCriticism = 15088
    case textbooksFictionandLiteraturePoetry = 15089
    case textbooksFictionandLiteratureReligious = 15090
    case textbooksFictionandLiteratureShortStories = 15091
    case textbooksHealthMindandBody = 15092
    case textbooksHealthMindandBodyFitness = 15093
    case textbooksHealthMindandBodySelfImprovement = 15094
    case textbooksHistory = 15095
    case textbooksHistoryAfrica = 15096
    case textbooksHistoryAmericas = 15097
    case textbooksHistoryAmericasCanada = 15098
    case textbooksHistoryAmericasLatinAmerica = 15099
    case textbooksHistoryAmericasUnitedStates = 15100
    case textbooksHistoryAncient = 15101
    case textbooksHistoryAsia = 15102
    case textbooksHistoryAustraliaandOceania = 15103
    case textbooksHistoryEurope = 15104
    case textbooksHistoryMiddleEast = 15105
    case textbooksHistoryMilitary = 15106
    case textbooksHistoryWorld = 15107
    case textbooksHumor = 15108
    case textbooksLanguageStudies = 15109
    case textbooksLanguageStudiesAfricanLanguages = 15110
    case textbooksLanguageStudiesAncientLanguages = 15111
    case textbooksLanguageStudiesArabic = 15112
    case textbooksLanguageStudiesBilingualEditions = 15113
    case textbooksLanguageStudiesChinese = 15114
    case textbooksLanguageStudiesEnglish = 15115
    case textbooksLanguageStudiesFrench = 15116
    case textbooksLanguageStudiesGerman = 15117
    case textbooksLanguageStudiesHebrew = 15118
    case textbooksLanguageStudiesHindi = 15119
    case textbooksLanguageStudiesIndigenousLanguages = 15120
    case textbooksLanguageStudiesItalian = 15121
    case textbooksLanguageStudiesJapanese = 15122
    case textbooksLanguageStudiesKorean = 15123
    case textbooksLanguageStudiesLinguistics = 15124
    case textbooksLanguageStudiesOtherLanguage = 15125
    case textbooksLanguageStudiesPortuguese = 15126
    case textbooksLanguageStudiesRussian = 15127
    case textbooksLanguageStudiesSpanish = 15128
    case textbooksLanguageStudiesSpeechPathology = 15129
    case textbooksLifestyleandHome = 15130
    case textbooksLifestyleandHomeAntiquesandCollectibles = 15131
    case textbooksLifestyleandHomeCraftsandHobbies = 15132
    case textbooksLifestyleandHomeGardening = 15133
    case textbooksLifestyleandHomePets = 15134
    case textbooksMathematics = 15135
    case textbooksMathematicsAdvancedMathematics = 15136
    case textbooksMathematicsAlgebra = 15137
    case textbooksMathematicsArithmetic = 15138
    case textbooksMathematicsCalculus = 15139
    case textbooksMathematicsGeometry = 15140
    case textbooksMathematicsStatistics = 15141
    case textbooksMedicine = 15142
    case textbooksMedicineAnatomyandPhysiology = 15143
    case textbooksMedicineDentistry = 15144
    case textbooksMedicineEmergencyMedicine = 15145
    case textbooksMedicineGenetics = 15146
    case textbooksMedicineImmunology = 15147
    case textbooksMedicineNeuroscience = 15148
    case textbooksMedicineNursing = 15149
    case textbooksMedicinePharmacologyandToxicology = 15150
    case textbooksMedicinePsychiatry = 15151
    case textbooksMedicinePsychology = 15152
    case textbooksMedicineRadiology = 15153
    case textbooksMedicineVeterinary = 15154
    case textbooksMysteriesandThrillers = 15155
    case textbooksMysteriesandThrillersBritishDetectives = 15156
    case textbooksMysteriesandThrillersHardBoiled = 15157
    case textbooksMysteriesandThrillersHistorical = 15158
    case textbooksMysteriesandThrillersPoliceProcedural = 15159
    case textbooksMysteriesandThrillersShortStories = 15160
    case textbooksMysteriesandThrillersWomenSleuths = 15161
    case textbooksNonfiction = 15162
    case textbooksNonfictionFamilyandRelationships = 15163
    case textbooksNonfictionTransportation = 15164
    case textbooksNonfictionTrueCrime = 15165
    case textbooksParenting = 15166
    case textbooksPhilosophy = 15167
    case textbooksPhilosophyAesthetics = 15168
    case textbooksPhilosophyEpistemology = 15169
    case textbooksPhilosophyEthics = 15170
    case textbooksPhilosophyPhilosophyofLanguage = 15171
    case textbooksPhilosophyLogic = 15172
    case textbooksPhilosophyMetaphysics = 15173
    case textbooksPhilosophyPoliticalPhilosophy = 15174
    case textbooksPhilosophyPhilosophyofReligion = 15175
    case textbooksPoliticsandCurrentEvents = 15176
    case textbooksPoliticsandCurrentEventsCurrentEvents = 15177
    case textbooksPoliticsandCurrentEventsForeignPolicyandInternationalRelations = 15178
    case textbooksPoliticsandCurrentEventsLocalGovernments = 15179
    case textbooksPoliticsandCurrentEventsNationalGovernments = 15180
    case textbooksPoliticsandCurrentEventsPoliticalScience = 15181
    case textbooksPoliticsandCurrentEventsPublicAdministration = 15182
    case textbooksPoliticsandCurrentEventsWorldAffairs = 15183
    case textbooksProfessionalandTechnical = 15184
    case textbooksProfessionalandTechnicalDesign = 15185
    case textbooksProfessionalandTechnicalLanguageArtsandDisciplines = 15186
    case textbooksProfessionalandTechnicalEngineering = 15187
    case textbooksProfessionalandTechnicalLaw = 15188
    case textbooksProfessionalandTechnicalMedical = 15189
    case textbooksReference = 15190
    case textbooksReferenceAlmanacsandYearbooks = 15191
    case textbooksReferenceAtlasesandMaps = 15192
    case textbooksReferenceCatalogsandDirectories = 15193
    case textbooksReferenceConsumerGuides = 15194
    case textbooksReferenceDictionariesandThesauruses = 15195
    case textbooksReferenceEncyclopedias = 15196
    case textbooksReferenceEtiquette = 15197
    case textbooksReferenceQuotations = 15198
    case textbooksReferenceStudyAids = 15199
    case textbooksReferenceWordsandLanguage = 15200
    case textbooksReferenceWriting = 15201
    case textbooksReligionandSpirituality = 15202
    case textbooksReligionandSpiritualityBibleStudies = 15203
    case textbooksReligionandSpiritualityBibles = 15204
    case textbooksReligionandSpiritualityBuddhism = 15205
    case textbooksReligionandSpiritualityChristianity = 15206
    case textbooksReligionandSpiritualityComparativeReligion = 15207
    case textbooksReligionandSpiritualityHinduism = 15208
    case textbooksReligionandSpiritualityIslam = 15209
    case textbooksReligionandSpiritualityJudaism = 15210
    case textbooksReligionandSpiritualitySpirituality = 15211
    case textbooksRomance = 15212
    case textbooksRomanceContemporary = 15213
    case textbooksRomanceEroticRomance = 15214
    case textbooksRomanceParanormal = 15215
    case textbooksRomanceHistorical = 15216
    case textbooksRomanceShortStories = 15217
    case textbooksRomanceSuspense = 15218
    case textbooksRomanceWestern = 15219
    case textbooksSciFiandFantasy = 15220
    case textbooksSciFiandFantasyFantasy = 15221
    case textbooksSciFiandFantasyFantasyContemporary = 15222
    case textbooksSciFiandFantasyFantasyEpic = 15223
    case textbooksSciFiandFantasyFantasyHistorical = 15224
    case textbooksSciFiandFantasyFantasyParanormal = 15225
    case textbooksSciFiandFantasyFantasyShortStories = 15226
    case textbooksSciFiandFantasyScienceFiction = 15227
    case textbooksSciFiandFantasyScienceFictionandLiterature = 15228
    case textbooksSciFiandFantasyScienceFictionandLiteratureAdventure = 15229
    case textbooksSciFiandFantasyScienceFictionandLiteratureHighTech = 15230
    case textbooksSciFiandFantasyScienceFictionandLiteratureShortStories = 15231
    case textbooksScienceandNature = 15232
    case textbooksScienceandNatureAgriculture = 15233
    case textbooksScienceandNatureAstronomy = 15234
    case textbooksScienceandNatureAtmosphere = 15235
    case textbooksScienceandNatureBiology = 15236
    case textbooksScienceandNatureChemistry = 15237
    case textbooksScienceandNatureEarthSciences = 15238
    case textbooksScienceandNatureEcology = 15239
    case textbooksScienceandNatureEnvironment = 15240
    case textbooksScienceandNatureEssays = 15241
    case textbooksScienceandNatureGeography = 15242
    case textbooksScienceandNatureGeology = 15243
    case textbooksScienceandNatureHistory = 15244
    case textbooksScienceandNatureLifeSciences = 15245
    case textbooksScienceandNatureNature = 15246
    case textbooksScienceandNaturePhysics = 15247
    case textbooksScienceandNatureReference = 15248
    case textbooksSocialScience = 15249
    case textbooksSocialScienceAnthropology = 15250
    case textbooksSocialScienceArchaeology = 15251
    case textbooksSocialScienceCivics = 15252
    case textbooksSocialScienceGovernment = 15253
    case textbooksSocialScienceSocialStudies = 15254
    case textbooksSocialScienceSocialWelfare = 15255
    case textbooksSocialScienceSociety = 15256
    case textbooksSocialScienceSocietyAfricanStudies = 15257
    case textbooksSocialScienceSocietyAmericanStudies = 15258
    case textbooksSocialScienceSocietyAsiaPacificStudies = 15259
    case textbooksSocialScienceSocietyCrossCulturalStudies = 15260
    case textbooksSocialScienceSocietyEuropeanStudies = 15261
    case textbooksSocialScienceSocietyImmigrationandEmigration = 15262
    case textbooksSocialScienceSocietyIndigenousStudies = 15263
    case textbooksSocialScienceSocietyLatinandCaribbeanStudies = 15264
    case textbooksSocialScienceSocietyMiddleEasternStudies = 15265
    case textbooksSocialScienceSocietyRaceandEthnicityStudies = 15266
    case textbooksSocialScienceSocietySexualityStudies = 15267
    case textbooksSocialScienceSocietyWomensStudies = 15268
    case textbooksSocialScienceSociology = 15269
    case textbooksSportsandOutdoors = 15270
    case textbooksSportsandOutdoorsBaseball = 15271
    case textbooksSportsandOutdoorsBasketball = 15272
    case textbooksSportsandOutdoorsCoaching = 15273
    case textbooksSportsandOutdoorsEquestrian = 15274
    case textbooksSportsandOutdoorsExtremeSports = 15275
    case textbooksSportsandOutdoorsFootball = 15276
    case textbooksSportsandOutdoorsGolf = 15277
    case textbooksSportsandOutdoorsHockey = 15278
    case textbooksSportsandOutdoorsMotorSports = 15279
    case textbooksSportsandOutdoorsMountaineering = 15280
    case textbooksSportsandOutdoorsOutdoors = 15281
    case textbooksSportsandOutdoorsRacketSports = 15282
    case textbooksSportsandOutdoorsReference = 15283
    case textbooksSportsandOutdoorsSoccer = 15284
    case textbooksSportsandOutdoorsTraining = 15285
    case textbooksSportsandOutdoorsWaterSports = 15286
    case textbooksSportsandOutdoorsWinterSports = 15287
    case textbooksTeachingandLearning = 15288
    case textbooksTeachingandLearningAdultEducation = 15289
    case textbooksTeachingandLearningCurriculumandTeaching = 15290
    case textbooksTeachingandLearningEducationalLeadership = 15291
    case textbooksTeachingandLearningEducationalTechnology = 15292
    case textbooksTeachingandLearningFamilyandChildcare = 15293
    case textbooksTeachingandLearningInformationandLibraryScience = 15294
    case textbooksTeachingandLearningLearningResources = 15295
    case textbooksTeachingandLearningPsychologyandResearch = 15296
    case textbooksTeachingandLearningSpecialEducation = 15297
    case textbooksTravelandAdventure = 15298
    case textbooksTravelandAdventureAfrica = 15299
    case textbooksTravelandAdventureAmericas = 15300
    case textbooksTravelandAdventureAmericasCanada = 15301
    case textbooksTravelandAdventureAmericasLatinAmerica = 15302
    case textbooksTravelandAdventureAmericasUnitedStates = 15303
    case textbooksTravelandAdventureAsia = 15304
    case textbooksTravelandAdventureCaribbean = 15305
    case textbooksTravelandAdventureEssaysandMemoirs = 15306
    case textbooksTravelandAdventureEurope = 15307
    case textbooksTravelandAdventureMiddleEast = 15308
    case textbooksTravelandAdventureOceania = 15309
    case textbooksTravelandAdventureSpecialtyTravel = 15310
    case textbooksComicsandGraphicNovelsComics = 15311
    case textbooksReferenceManuals = 15312
    case appStoreStickersEmojiandExpressions = 16001
    case appStoreStickersAnimalsandNature = 16003
    case appStoreStickersArt = 16005
    case appStoreStickersCelebrations = 16006
    case appStoreStickersCelebrities = 16007
    case appStoreStickersComicsandCartoons = 16008
    case appStoreStickersEatingandDrinking = 16009
    case appStoreStickersGaming = 16010
    case appStoreStickersMoviesandTV = 16014
    case appStoreStickersMusic = 16015
    case appStoreStickersPeople = 16017
    case appStoreStickersPlacesandObjects = 16019
    case appStoreStickersSportsandActivities = 16021
    case appStoreStickersKidsandFamily = 16025
    case appStoreStickersFashion = 16026
    case musicClassicalArtSong = 100001
    case musicClassicalBrassandWoodwinds = 100002
    case musicClassicalSoloInstrumental = 100003
    case musicClassicalContemporaryEra = 100004
    case musicClassicalOratorio = 100005
    case musicClassicalCantata = 100006
    case musicClassicalElectronic = 100007
    case musicClassicalSacred = 100008
    case musicClassicalGuitar = 100009
    case musicClassicalPiano = 100010
    case musicClassicalViolin = 100011
    case musicClassicalCello = 100012
    case musicClassicalPercussion = 100013
    case musicElectronicDubstep = 100014
    case musicElectronicBass = 100015
    case musicHipHopRapUKHipHop = 100016
    case musicReggaeLoversRock = 100017
    case musicAlternativeEMO = 100018
    case musicAlternativePopPunk = 100019
    case musicAlternativeIndiePop = 100020
    case musicNewAgeYoga = 100021
    case musicPopTribute = 100022
    case musicPopShows = 100023
    case musicCuban = 100024
    case musicCubanMambo = 100025
    case musicCubanChachacha = 100026
    case musicCubanGuajira = 100027
    case musicCubanSon = 100028
    case musicCubanBolero = 100029
    case musicCubanGuaracha = 100030
    case musicCubanTimba = 100031
    case musicSoundtrackVideoGame = 100032
    case musicIndianRegionalIndianPunjabiPunjabiPop = 100033
    case musicIndianRegionalIndianBengaliRabindraSangeet = 100034
    case musicIndianRegionalIndianMalayalam = 100035
    case musicIndianRegionalIndianKannada = 100036
    case musicIndianRegionalIndianMarathi = 100037
    case musicIndianRegionalIndianGujarati = 100038
    case musicIndianRegionalIndianAssamese = 100039
    case musicIndianRegionalIndianBhojpuri = 100040
    case musicIndianRegionalIndianHaryanvi = 100041
    case musicIndianRegionalIndianOdia = 100042
    case musicIndianRegionalIndianRajasthani = 100043
    case musicIndianRegionalIndianUrdu = 100044
    case musicIndianRegionalIndianPunjabi = 100045
    case musicIndianRegionalIndianBengali = 100046
    case musicIndianIndianClassicalCarnaticClassical = 100047
    case musicIndianIndianClassicalHindustaniClassical = 100048
    case musicAfricanAfroHouse = 100049
    case musicAfricanAfroSoul = 100050
    case musicAfricanAfrobeats = 100051
    case musicAfricanBenga = 100052
    case musicAfricanBongoFlava = 100053
    case musicAfricanCoupeDecale = 100054
    case musicAfricanGqom = 100055
    case musicAfricanHighlife = 100056
    case musicAfricanKuduro = 100057
    case musicAfricanKizomba = 100058
    case musicAfricanKwaito = 100059
    case musicAfricanMbalax = 100060
    case musicAfricanNdombolo = 100061
    case musicAfricanShangaanElectro = 100062
    case musicAfricanSoukous = 100063
    case musicAfricanTaarab = 100064
    case musicAfricanZouglou = 100065
    case musicTurkishOzgun = 100066
    case musicTurkishFantezi = 100067
    case musicTurkishReligious = 100068
    case musicPopTurkishPop = 100069
    case musicRockTurkishRock = 100070
    case musicAlternativeTurkishAlternative = 100071
    case musicHipHopRapTurkishHipHopRap = 100072
    case musicAfricanMaskandi = 100073
    case musicRussianRussianRomance = 100074
    case musicRussianRussianBard = 100075
    case musicRussianRussianPop = 100076
    case musicRussianRussianRock = 100077
    case musicRussianRussianHipHop = 100078
    case musicArabicLevant = 100079
    case musicArabicLevantDabke = 100080
    case musicArabicMaghrebRai = 100081
    case musicArabicKhaleejiKhaleejiJalsat = 100082
    case musicArabicKhaleejiKhaleejiShailat = 100083
    case musicTarab = 100084
    case musicTarabIraqiTarab = 100085
    case musicTarabEgyptianTarab = 100086
    case musicTarabKhaleejiTarab = 100087
    case musicPopLevantPop = 100088
    case musicPopIraqiPop = 100089
    case musicPopEgyptianPop = 100090
    case musicPopMaghrebPop = 100091
    case musicPopKhaleejiPop = 100092
    case musicHipHopRapLevantHipHop = 100093
    case musicHipHopRapEgyptianHipHop = 100094
    case musicHipHopRapMaghrebHipHop = 100095
    case musicHipHopRapKhaleejiHipHop = 100096
    case musicAlternativeIndieLevant = 100097
    case musicAlternativeIndieEgyptian = 100098
    case musicAlternativeIndieMaghreb = 100099
    case musicElectronicLevantElectronic = 100100
    case musicElectronicElectroChaabi = 100101
    case musicElectronicMaghrebElectronic = 100102
    case musicFolkIraqiFolk = 100103
    case musicFolkKhaleejiFolk = 100104
    case musicDanceMaghrebDance = 100105
    case iTunesU = 40000000
    case iTunesUBusinessandEconomics = 40000001
    case iTunesUBusinessandEconomicsEconomics = 40000002
    case iTunesUBusinessandEconomicsFinance = 40000003
    case iTunesUBusinessandEconomicsHospitality = 40000004
    case iTunesUBusinessandEconomicsManagement = 40000005
    case iTunesUBusinessandEconomicsMarketing = 40000006
    case iTunesUBusinessandEconomicsPersonalFinance = 40000007
    case iTunesUBusinessandEconomicsRealEstate = 40000008
    case iTunesUEngineering = 40000009
    case iTunesUEngineeringChemicalandPetroleumEngineering = 40000010
    case iTunesUEngineeringCivilEngineering = 40000011
    case iTunesUEngineeringComputerScience = 40000012
    case iTunesUEngineeringElectricalEngineering = 40000013
    case iTunesUEngineeringEnvironmentalEngineering = 40000014
    case iTunesUEngineeringMechanicalEngineering = 40000015
    case iTunesUMusicArtandDesign = 40000016
    case iTunesUMusicArtandDesignArchitecture = 40000017
    case iTunesUMusicArtandDesignArtHistory = 40000019
    case iTunesUMusicArtandDesignDance = 40000020
    case iTunesUMusicArtandDesignFilm = 40000021
    case iTunesUMusicArtandDesignDesign = 40000022
    case iTunesUMusicArtandDesignInteriorDesign = 40000023
    case iTunesUMusicArtandDesignMusic = 40000024
    case iTunesUMusicArtandDesignTheater = 40000025
    case iTunesUHealthandMedicine = 40000026
    case iTunesUHealthandMedicineAnatomyandPhysiology = 40000027
    case iTunesUHealthandMedicineBehavioralScience = 40000028
    case iTunesUHealthandMedicineDentistry = 40000029
    case iTunesUHealthandMedicineDietandNutrition = 40000030
    case iTunesUHealthandMedicineEmergencyMedicine = 40000031
    case iTunesUHealthandMedicineGenetics = 40000032
    case iTunesUHealthandMedicineGerontology = 40000033
    case iTunesUHealthandMedicineHealthandExerciseScience = 40000034
    case iTunesUHealthandMedicineImmunology = 40000035
    case iTunesUHealthandMedicineNeuroscience = 40000036
    case iTunesUHealthandMedicinePharmacologyandToxicology = 40000037
    case iTunesUHealthandMedicinePsychiatry = 40000038
    case iTunesUHealthandMedicineGlobalHealth = 40000039
    case iTunesUHealthandMedicineRadiology = 40000040
    case iTunesUHistory = 40000041
    case iTunesUHistoryAncientHistory = 40000042
    case iTunesUHistoryMedievalHistory = 40000043
    case iTunesUHistoryMilitaryHistory = 40000044
    case iTunesUHistoryModernHistory = 40000045
    case iTunesUHistoryAfricanHistory = 40000046
    case iTunesUHistoryAsiaPacificHistory = 40000047
    case iTunesUHistoryEuropeanHistory = 40000048
    case iTunesUHistoryMiddleEasternHistory = 40000049
    case iTunesUHistoryNorthAmericanHistory = 40000050
    case iTunesUHistorySouthAmericanHistory = 40000051
    case iTunesUCommunicationsandJournalism = 40000053
    case iTunesUPhilosophy = 40000054
    case iTunesUReligionandSpirituality = 40000055
    case iTunesULanguages = 40000056
    case iTunesULanguagesAfricanLanguages = 40000057
    case iTunesULanguagesAncientLanguages = 40000058
    case iTunesULanguagesEnglish = 40000061
    case iTunesULanguagesFrench = 40000063
    case iTunesULanguagesGerman = 40000064
    case iTunesULanguagesItalian = 40000065
    case iTunesULanguagesLinguistics = 40000066
    case iTunesULanguagesSpanish = 40000068
    case iTunesULanguagesSpeechPathology = 40000069
    case iTunesUWritingandLiterature = 40000070
    case iTunesUWritingandLiteratureAnthologies = 40000071
    case iTunesUWritingandLiteratureBiography = 40000072
    case iTunesUWritingandLiteratureClassics = 40000073
    case iTunesUWritingandLiteratureLiteraryCriticism = 40000074
    case iTunesUWritingandLiteratureFiction = 40000075
    case iTunesUWritingandLiteraturePoetry = 40000076
    case iTunesUMathematics = 40000077
    case iTunesUMathematicsAdvancedMathematics = 40000078
    case iTunesUMathematicsAlgebra = 40000079
    case iTunesUMathematicsArithmetic = 40000080
    case iTunesUMathematicsCalculus = 40000081
    case iTunesUMathematicsGeometry = 40000082
    case iTunesUMathematicsStatistics = 40000083
    case iTunesUScience = 40000084
    case iTunesUScienceAgricultural = 40000085
    case iTunesUScienceAstronomy = 40000086
    case iTunesUScienceAtmosphere = 40000087
    case iTunesUScienceBiology = 40000088
    case iTunesUScienceChemistry = 40000089
    case iTunesUScienceEcology = 40000090
    case iTunesUScienceGeography = 40000091
    case iTunesUScienceGeology = 40000092
    case iTunesUSciencePhysics = 40000093
    case iTunesUSocialScience = 40000094
    case iTunesULawandPoliticsLaw = 40000095
    case iTunesULawandPoliticsPoliticalScience = 40000096
    case iTunesULawandPoliticsPublicAdministration = 40000097
    case iTunesUSocialSciencePsychology = 40000098
    case iTunesUSocialScienceSocialWelfare = 40000099
    case iTunesUSocialScienceSociology = 40000100
    case iTunesUSociety = 40000101
    case iTunesUSocietyAsiaPacificStudies = 40000103
    case iTunesUSocietyEuropeanStudies = 40000104
    case iTunesUSocietyIndigenousStudies = 40000105
    case iTunesUSocietyLatinandCaribbeanStudies = 40000106
    case iTunesUSocietyMiddleEasternStudies = 40000107
    case iTunesUSocietyWomensStudies = 40000108
    case iTunesUTeachingandLearning = 40000109
    case iTunesUTeachingandLearningCurriculumandTeaching = 40000110
    case iTunesUTeachingandLearningEducationalLeadership = 40000111
    case iTunesUTeachingandLearningFamilyandChildcare = 40000112
    case iTunesUTeachingandLearningLearningResources = 40000113
    case iTunesUTeachingandLearningPsychologyandResearch = 40000114
    case iTunesUTeachingandLearningSpecialEducation = 40000115
    case iTunesUMusicArtandDesignCulinaryArts = 40000116
    case iTunesUMusicArtandDesignFashion = 40000117
    case iTunesUMusicArtandDesignMediaArts = 40000118
    case iTunesUMusicArtandDesignPhotography = 40000119
    case iTunesUMusicArtandDesignVisualArt = 40000120
    case iTunesUBusinessandEconomicsEntrepreneurship = 40000121
    case iTunesUCommunicationsandJournalismBroadcasting = 40000122
    case iTunesUCommunicationsandJournalismDigitalMedia = 40000123
    case iTunesUCommunicationsandJournalismJournalism = 40000124
    case iTunesUCommunicationsandJournalismPhotojournalism = 40000125
    case iTunesUCommunicationsandJournalismPrint = 40000126
    case iTunesUCommunicationsandJournalismSpeech = 40000127
    case iTunesUCommunicationsandJournalismWriting = 40000128
    case iTunesUHealthandMedicineNursing = 40000129
    case iTunesULanguagesArabic = 40000130
    case iTunesULanguagesChinese = 40000131
    case iTunesULanguagesHebrew = 40000132
    case iTunesULanguagesHindi = 40000133
    case iTunesULanguagesIndigenousLanguages = 40000134
    case iTunesULanguagesJapanese = 40000135
    case iTunesULanguagesKorean = 40000136
    case iTunesULanguagesOtherLanguages = 40000137
    case iTunesULanguagesPortuguese = 40000138
    case iTunesULanguagesRussian = 40000139
    case iTunesULawandPolitics = 40000140
    case iTunesULawandPoliticsForeignPolicyandInternationalRelations = 40000141
    case iTunesULawandPoliticsLocalGovernments = 40000142
    case iTunesULawandPoliticsNationalGovernments = 40000143
    case iTunesULawandPoliticsWorldAffairs = 40000144
    case iTunesUWritingandLiteratureComparativeLiterature = 40000145
    case iTunesUPhilosophyAesthetics = 40000146
    case iTunesUPhilosophyEpistemology = 40000147
    case iTunesUPhilosophyEthics = 40000148
    case iTunesUPhilosophyMetaphysics = 40000149
    case iTunesUPhilosophyPoliticalPhilosophy = 40000150
    case iTunesUPhilosophyLogic = 40000151
    case iTunesUPhilosophyPhilosophyofLanguage = 40000152
    case iTunesUPhilosophyPhilosophyofReligion = 40000153
    case iTunesUSocialScienceArchaeology = 40000154
    case iTunesUSocialScienceAnthropology = 40000155
    case iTunesUReligionandSpiritualityBuddhism = 40000156
    case iTunesUReligionandSpiritualityChristianity = 40000157
    case iTunesUReligionandSpiritualityComparativeReligion = 40000158
    case iTunesUReligionandSpiritualityHinduism = 40000159
    case iTunesUReligionandSpiritualityIslam = 40000160
    case iTunesUReligionandSpiritualityJudaism = 40000161
    case iTunesUReligionandSpiritualityOtherReligions = 40000162
    case iTunesUReligionandSpiritualitySpirituality = 40000163
    case iTunesUScienceEnvironment = 40000164
    case iTunesUSocietyAfricanStudies = 40000165
    case iTunesUSocietyAmericanStudies = 40000166
    case iTunesUSocietyCrossculturalStudies = 40000167
    case iTunesUSocietyImmigrationandEmigration = 40000168
    case iTunesUSocietyRaceandEthnicityStudies = 40000169
    case iTunesUSocietySexualityStudies = 40000170
    case iTunesUTeachingandLearningEducationalTechnology = 40000171
    case iTunesUTeachingandLearningInformationLibraryScience = 40000172
    case iTunesULanguagesDutch = 40000173
    case iTunesULanguagesLuxembourgish = 40000174
    case iTunesULanguagesSwedish = 40000175
    case iTunesULanguagesNorwegian = 40000176
    case iTunesULanguagesFinnish = 40000177
    case iTunesULanguagesDanish = 40000178
    case iTunesULanguagesPolish = 40000179
    case iTunesULanguagesTurkish = 40000180
    case iTunesULanguagesFlemish = 40000181
    case audiobooks = 50000024
    case audiobooksFiction = 50000040
    case audiobooksArtsandEntertainment = 50000041
    case audiobooksBiographiesandMemoirs = 50000042
    case audiobooksBusinessandPersonalFinance = 50000043
    case audiobooksKidsandYoungAdults = 50000044
    case audiobooksClassics = 50000045
    case audiobooksComedy = 50000046
    case audiobooksDramaandPoetry = 50000047
    case audiobooksSpeakersandStorytellers = 50000048
    case audiobooksHistory = 50000049
    case audiobooksLanguages = 50000050
    case audiobooksMysteriesandThrillers = 50000051
    case audiobooksNonfiction = 50000052
    case audiobooksReligionandSpirituality = 50000053
    case audiobooksScienceandNature = 50000054
    case audiobooksSciFiandFantasy = 50000055
    case audiobooksSelfDevelopment = 50000056
    case audiobooksSportsandOutdoors = 50000057
    case audiobooksTechnology = 50000058
    case audiobooksTravelandAdventure = 50000059
    case musicSpokenWord = 50000061
    case musicDisney = 50000063
    case musicFrenchPop = 50000064
    case musicGermanPop = 50000066
    case musicGermanFolk = 50000068
    case audiobooksRomance = 50000069
    case audiobooksAudiobooksLatino = 50000070
    case booksComicsandGraphicNovelsMangaAction = 50000071
    case booksComicsandGraphicNovelsMangaComedy = 50000072
    case booksComicsandGraphicNovelsMangaErotica = 50000073
    case booksComicsandGraphicNovelsMangaFantasy = 50000074
    case booksComicsandGraphicNovelsMangaFourCellManga = 50000075
    case booksComicsandGraphicNovelsMangaGayandLesbian = 50000076
    case booksComicsandGraphicNovelsMangaHardBoiled = 50000077
    case booksComicsandGraphicNovelsMangaHeroes = 50000078
    case booksComicsandGraphicNovelsMangaHistoricalFiction = 50000079
    case booksComicsandGraphicNovelsMangaMecha = 50000080
    case booksComicsandGraphicNovelsMangaMystery = 50000081
    case booksComicsandGraphicNovelsMangaNonfiction = 50000082
    case booksComicsandGraphicNovelsMangaReligious = 50000083
    case booksComicsandGraphicNovelsMangaRomance = 50000084
    case booksComicsandGraphicNovelsMangaRomanticComedy = 50000085
    case booksComicsandGraphicNovelsMangaScienceFiction = 50000086
    case booksComicsandGraphicNovelsMangaSports = 50000087
    case booksFictionandLiteratureLightNovels = 50000088
    case booksComicsandGraphicNovelsMangaHorror = 50000089
    case booksComicsandGraphicNovelsComics = 50000090
    case booksRomanceMulticultural = 50000091
    case audiobooksErotica = 50000092
    case audiobooksLightNovels = 50000093
 
    static let musicSet = RangeSet([
        2...25,
        27...30,
        34...34,
        50...53,
        500...1300,
        100001...100105,
        50000061...50000068].map({ $0.lowerBound ..< $0.upperBound + 1 }))
    static let podcast = RangeSet([
        26...26,
        1301...1325,
        1401...1565].map({ $0.lowerBound ..< $0.upperBound + 1 }))
    static let musicVideosSet = RangeSet([
        31...31,
        1337...1337,
        1602...2032].map({ $0.lowerBound ..< $0.upperBound + 1 }))
    static let tvShow = RangeSet([
        32...32,
        4000...4011].map({ $0.lowerBound ..< $0.upperBound + 1 }))
    static let movie = RangeSet([
        33...33,
        4401...4434].map({ $0.lowerBound ..< $0.upperBound + 1 }))
    static let ringtone = RangeSet([
        37...37,
        8001...8449,].map({ $0.lowerBound ..< $0.upperBound + 1 }))
    static let audiobook = RangeSet([
        74...75,
        50000024...50000059,
        50000069...50000070,
        50000092...50000093].map({ $0.lowerBound ..< $0.upperBound + 1 }))
    static let book = RangeSet([
        38...38,
        40...40,
        9002...11343,
        50000071...50000091].map({ $0.lowerBound ..< $0.upperBound + 1 }))
    static let app = RangeSet([
        35...36,
        39...39,
        6000...7019,
        12001...12219,
        16001...16026 ].map({ $0.lowerBound ..< $0.upperBound + 1 }))
    static let magazinesAndNewspapers = RangeSet(
        [13001...13030].map({ $0.lowerBound ..< $0.upperBound + 1 }))
    static let textbooksSet = RangeSet([
        40...40,
        15000...15312].map({ $0.lowerBound ..< $0.upperBound + 1 }))
    static let iTunesUSet = RangeSet([
        40000000...40000181].map({ $0.lowerBound ..< $0.upperBound + 1 }))
    
    var mediaType: MediaType? {
        if Genres.musicSet.contains(self.rawValue) {
            return .music
        } else if Genres.podcast.contains(self.rawValue) {
            return .podcast
        } else if Genres.musicVideosSet.contains(self.rawValue) {
            return .musicVideo
        } else if Genres.tvShow.contains(self.rawValue) {
            return .tvShow
        } else if Genres.movie.contains(self.rawValue) {
            return .movie
        } else if Genres.ringtone.contains(self.rawValue) {
            return .ringtone
        } else if Genres.audiobook.contains(self.rawValue) {
            return .audiobook
        } else if Genres.iTunesUSet.contains(self.rawValue) {
            return .iTunesU
        } else {
            return nil
        }
    }
    
    var predefinedGenre: String? {
        if self.rawValue == 2 { return "Music|Blues" }
        if self.rawValue == 3 { return "Music|Comedy" }
        if self.rawValue == 4 { return "Music|Children's Music" }
        if self.rawValue == 5 { return "Music|Classical" }
        if self.rawValue == 6 { return "Music|Country" }
        if self.rawValue == 7 { return "Music|Electronic" }
        if self.rawValue == 8 { return "Music|Holiday" }
        if self.rawValue == 9 { return "Music|Classical|Opera" }
        if self.rawValue == 10 { return "Music|Singer/Songwriter" }
        if self.rawValue == 11 { return "Music|Jazz" }
        if self.rawValue == 12 { return "Music|Latino" }
        if self.rawValue == 13 { return "Music|New Age" }
        if self.rawValue == 14 { return "Music|Pop" }
        if self.rawValue == 15 { return "Music|R&B/Soul" }
        if self.rawValue == 16 { return "Music|Soundtrack" }
        if self.rawValue == 17 { return "Music|Dance" }
        if self.rawValue == 18 { return "Music|Hip-Hop/Rap" }
        if self.rawValue == 19 { return "Music|World" }
        if self.rawValue == 20 { return "Music|Alternative" }
        if self.rawValue == 21 { return "Music|Rock" }
        if self.rawValue == 22 { return "Music|Christian & Gospel" }
        if self.rawValue == 23 { return "Music|Vocal" }
        if self.rawValue == 24 { return "Music|Reggae" }
        if self.rawValue == 25 { return "Music|Easy Listening" }
        if self.rawValue == 26 { return "Podcasts" }
        if self.rawValue == 27 { return "Music|J-Pop" }
        if self.rawValue == 28 { return "Music|Enka" }
        if self.rawValue == 29 { return "Music|Anime" }
        if self.rawValue == 30 { return "Music|Kayokyoku" }
        if self.rawValue == 31 { return "Music Videos" }
        if self.rawValue == 32 { return "TV Shows" }
        if self.rawValue == 33 { return "Movies" }
        if self.rawValue == 34 { return "Music" }
        if self.rawValue == 35 { return "iPod Games" }
        if self.rawValue == 36 { return "App Store" }
        if self.rawValue == 37 { return "Tones" }
        if self.rawValue == 38 { return "Books" }
        if self.rawValue == 39 { return "Mac App Store" }
        if self.rawValue == 40 { return "Textbooks" }
        if self.rawValue == 50 { return "Music|Fitness & Workout" }
        if self.rawValue == 51 { return "Music|Pop|K-Pop" }
        if self.rawValue == 52 { return "Music|Karaoke" }
        if self.rawValue == 53 { return "Music|Instrumental" }
        if self.rawValue == 74 { return "Audiobooks|News" }
        if self.rawValue == 75 { return "Audiobooks|Programs & Performances" }
        if self.rawValue == 500 { return "Fitness Music" }
        if self.rawValue == 501 { return "Fitness Music|Pop" }
        if self.rawValue == 502 { return "Fitness Music|Dance" }
        if self.rawValue == 503 { return "Fitness Music|Hip-Hop" }
        if self.rawValue == 504 { return "Fitness Music|Rock" }
        if self.rawValue == 505 { return "Fitness Music|Alt/Indie" }
        if self.rawValue == 506 { return "Fitness Music|Latino" }
        if self.rawValue == 507 { return "Fitness Music|Country" }
        if self.rawValue == 508 { return "Fitness Music|World" }
        if self.rawValue == 509 { return "Fitness Music|New Age" }
        if self.rawValue == 510 { return "Fitness Music|Classical" }
        if self.rawValue == 1001 { return "Music|Alternative|College Rock" }
        if self.rawValue == 1002 { return "Music|Alternative|Goth Rock" }
        if self.rawValue == 1003 { return "Music|Alternative|Grunge" }
        if self.rawValue == 1004 { return "Music|Alternative|Indie Rock" }
        if self.rawValue == 1005 { return "Music|Alternative|New Wave" }
        if self.rawValue == 1006 { return "Music|Alternative|Punk" }
        if self.rawValue == 1007 { return "Music|Blues|Chicago Blues" }
        if self.rawValue == 1009 { return "Music|Blues|Classic Blues" }
        if self.rawValue == 1010 { return "Music|Blues|Contemporary Blues" }
        if self.rawValue == 1011 { return "Music|Blues|Country Blues" }
        if self.rawValue == 1012 { return "Music|Blues|Delta Blues" }
        if self.rawValue == 1013 { return "Music|Blues|Electric Blues" }
        if self.rawValue == 1014 { return "Music|Children's Music|Lullabies" }
        if self.rawValue == 1015 { return "Music|Children's Music|Sing-Along" }
        if self.rawValue == 1016 { return "Music|Children's Music|Stories" }
        if self.rawValue == 1017 { return "Music|Classical|Avant-Garde" }
        if self.rawValue == 1018 { return "Music|Classical|Baroque Era" }
        if self.rawValue == 1019 { return "Music|Classical|Chamber Music" }
        if self.rawValue == 1020 { return "Music|Classical|Chant" }
        if self.rawValue == 1021 { return "Music|Classical|Choral" }
        if self.rawValue == 1022 { return "Music|Classical|Classical Crossover" }
        if self.rawValue == 1023 { return "Music|Classical|Early Music" }
        if self.rawValue == 1024 { return "Music|Classical|Impressionist" }
        if self.rawValue == 1025 { return "Music|Classical|Medieval Era" }
        if self.rawValue == 1026 { return "Music|Classical|Minimalism" }
        if self.rawValue == 1027 { return "Music|Classical|Modern Era" }
        if self.rawValue == 1028 { return "Music|Classical|Opera" }
        if self.rawValue == 1029 { return "Music|Classical|Orchestral" }
        if self.rawValue == 1030 { return "Music|Classical|Renaissance" }
        if self.rawValue == 1031 { return "Music|Classical|Romantic Era" }
        if self.rawValue == 1032 { return "Music|Classical|Wedding Music" }
        if self.rawValue == 1033 { return "Music|Country|Alternative Country" }
        if self.rawValue == 1034 { return "Music|Country|Americana" }
        if self.rawValue == 1035 { return "Music|Country|Bluegrass" }
        if self.rawValue == 1036 { return "Music|Country|Contemporary Bluegrass" }
        if self.rawValue == 1037 { return "Music|Country|Contemporary Country" }
        if self.rawValue == 1038 { return "Music|Country|Country Gospel" }
        if self.rawValue == 1039 { return "Music|Country|Honky Tonk" }
        if self.rawValue == 1040 { return "Music|Country|Outlaw Country" }
        if self.rawValue == 1041 { return "Music|Country|Traditional Bluegrass" }
        if self.rawValue == 1042 { return "Music|Country|Traditional Country" }
        if self.rawValue == 1043 { return "Music|Country|Urban Cowboy" }
        if self.rawValue == 1044 { return "Music|Dance|Breakbeat" }
        if self.rawValue == 1045 { return "Music|Dance|Exercise" }
        if self.rawValue == 1046 { return "Music|Dance|Garage" }
        if self.rawValue == 1047 { return "Music|Dance|Hardcore" }
        if self.rawValue == 1048 { return "Music|Dance|House" }
        if self.rawValue == 1049 { return "Music|Dance|Jungle/Drum'n'bass" }
        if self.rawValue == 1050 { return "Music|Dance|Techno" }
        if self.rawValue == 1051 { return "Music|Dance|Trance" }
        if self.rawValue == 1052 { return "Music|Jazz|Big Band" }
        if self.rawValue == 1053 { return "Music|Jazz|Bop" }
        if self.rawValue == 1054 { return "Music|Easy Listening|Lounge" }
        if self.rawValue == 1055 { return "Music|Easy Listening|Swing" }
        if self.rawValue == 1056 { return "Music|Electronic|Ambient" }
        if self.rawValue == 1057 { return "Music|Electronic|Downtempo" }
        if self.rawValue == 1058 { return "Music|Electronic|Electronica" }
        if self.rawValue == 1060 { return "Music|Electronic|IDM/Experimental" }
        if self.rawValue == 1061 { return "Music|Electronic|Industrial" }
        if self.rawValue == 1062 { return "Music|Singer/Songwriter|Alternative Folk" }
        if self.rawValue == 1063 { return "Music|Singer/Songwriter|Contemporary Folk" }
        if self.rawValue == 1064 { return "Music|Singer/Songwriter|Contemporary Singer/Songwriter" }
        if self.rawValue == 1065 { return "Music|Singer/Songwriter|Folk-Rock" }
        if self.rawValue == 1066 { return "Music|Singer/Songwriter|New Acoustic" }
        if self.rawValue == 1067 { return "Music|Singer/Songwriter|Traditional Folk" }
        if self.rawValue == 1068 { return "Music|Hip-Hop/Rap|Alternative Rap" }
        if self.rawValue == 1069 { return "Music|Hip-Hop/Rap|Dirty South" }
        if self.rawValue == 1070 { return "Music|Hip-Hop/Rap|East Coast Rap" }
        if self.rawValue == 1071 { return "Music|Hip-Hop/Rap|Gangsta Rap" }
        if self.rawValue == 1072 { return "Music|Hip-Hop/Rap|Hardcore Rap" }
        if self.rawValue == 1073 { return "Music|Hip-Hop/Rap|Hip-Hop" }
        if self.rawValue == 1074 { return "Music|Hip-Hop/Rap|Latin Rap" }
        if self.rawValue == 1075 { return "Music|Hip-Hop/Rap|Old School Rap" }
        if self.rawValue == 1076 { return "Music|Hip-Hop/Rap|Rap" }
        if self.rawValue == 1077 { return "Music|Hip-Hop/Rap|Underground Rap" }
        if self.rawValue == 1078 { return "Music|Hip-Hop/Rap|West Coast Rap" }
        if self.rawValue == 1079 { return "Music|Holiday|Chanukah" }
        if self.rawValue == 1080 { return "Music|Holiday|Christmas" }
        if self.rawValue == 1081 { return "Music|Holiday|Christmas: Children's" }
        if self.rawValue == 1082 { return "Music|Holiday|Christmas: Classic" }
        if self.rawValue == 1083 { return "Music|Holiday|Christmas: Classical" }
        if self.rawValue == 1084 { return "Music|Holiday|Christmas: Jazz" }
        if self.rawValue == 1085 { return "Music|Holiday|Christmas: Modern" }
        if self.rawValue == 1086 { return "Music|Holiday|Christmas: Pop" }
        if self.rawValue == 1087 { return "Music|Holiday|Christmas: R&B" }
        if self.rawValue == 1088 { return "Music|Holiday|Christmas: Religious" }
        if self.rawValue == 1089 { return "Music|Holiday|Christmas: Rock" }
        if self.rawValue == 1090 { return "Music|Holiday|Easter" }
        if self.rawValue == 1091 { return "Music|Holiday|Halloween" }
        if self.rawValue == 1092 { return "Music|Holiday|Holiday: Other" }
        if self.rawValue == 1093 { return "Music|Holiday|Thanksgiving" }
        if self.rawValue == 1094 { return "Music|Christian & Gospel|CCM" }
        if self.rawValue == 1095 { return "Music|Christian & Gospel|Christian Metal" }
        if self.rawValue == 1096 { return "Music|Christian & Gospel|Christian Pop" }
        if self.rawValue == 1097 { return "Music|Christian & Gospel|Christian Rap" }
        if self.rawValue == 1098 { return "Music|Christian & Gospel|Christian Rock" }
        if self.rawValue == 1099 { return "Music|Christian & Gospel|Classic Christian" }
        if self.rawValue == 1100 { return "Music|Christian & Gospel|Contemporary Gospel" }
        if self.rawValue == 1101 { return "Music|Christian & Gospel|Gospel" }
        if self.rawValue == 1103 { return "Music|Christian & Gospel|Praise & Worship" }
        if self.rawValue == 1104 { return "Music|Christian & Gospel|Southern Gospel" }
        if self.rawValue == 1105 { return "Music|Christian & Gospel|Traditional Gospel" }
        if self.rawValue == 1106 { return "Music|Jazz|Avant-Garde Jazz" }
        if self.rawValue == 1107 { return "Music|Jazz|Contemporary Jazz" }
        if self.rawValue == 1108 { return "Music|Jazz|Crossover Jazz" }
        if self.rawValue == 1109 { return "Music|Jazz|Dixieland" }
        if self.rawValue == 1110 { return "Music|Jazz|Fusion" }
        if self.rawValue == 1111 { return "Music|Jazz|Latin Jazz" }
        if self.rawValue == 1112 { return "Music|Jazz|Mainstream Jazz" }
        if self.rawValue == 1113 { return "Music|Jazz|Ragtime" }
        if self.rawValue == 1114 { return "Music|Jazz|Smooth Jazz" }
        if self.rawValue == 1115 { return "Music|Latino|Latin Jazz" }
        if self.rawValue == 1116 { return "Music|Latino|Contemporary Latin" }
        if self.rawValue == 1117 { return "Music|Latino|Pop Latino" }
        if self.rawValue == 1118 { return "Music|Latino|Raices" }
        if self.rawValue == 1119 { return "Music|Latino|Urbano latino" }
        if self.rawValue == 1120 { return "Music|Latino|Baladas y Boleros" }
        if self.rawValue == 1121 { return "Music|Latino|Rock y Alternativo" }
        if self.rawValue == 1122 { return "Music|Brazilian" }
        if self.rawValue == 1123 { return "Music|Latino|Musica Mexicana" }
        if self.rawValue == 1124 { return "Music|Latino|Musica tropical" }
        if self.rawValue == 1125 { return "Music|New Age|Environmental" }
        if self.rawValue == 1126 { return "Music|New Age|Healing" }
        if self.rawValue == 1127 { return "Music|New Age|Meditation" }
        if self.rawValue == 1128 { return "Music|New Age|Nature" }
        if self.rawValue == 1129 { return "Music|New Age|Relaxation" }
        if self.rawValue == 1130 { return "Music|New Age|Travel" }
        if self.rawValue == 1131 { return "Music|Pop|Adult Contemporary" }
        if self.rawValue == 1132 { return "Music|Pop|Britpop" }
        if self.rawValue == 1133 { return "Music|Pop|Pop/Rock" }
        if self.rawValue == 1134 { return "Music|Pop|Soft Rock" }
        if self.rawValue == 1135 { return "Music|Pop|Teen Pop" }
        if self.rawValue == 1136 { return "Music|R&B/Soul|Contemporary R&B" }
        if self.rawValue == 1137 { return "Music|R&B/Soul|Disco" }
        if self.rawValue == 1138 { return "Music|R&B/Soul|Doo Wop" }
        if self.rawValue == 1139 { return "Music|R&B/Soul|Funk" }
        if self.rawValue == 1140 { return "Music|R&B/Soul|Motown" }
        if self.rawValue == 1141 { return "Music|R&B/Soul|Neo-Soul" }
        if self.rawValue == 1142 { return "Music|R&B/Soul|Quiet Storm" }
        if self.rawValue == 1143 { return "Music|R&B/Soul|Soul" }
        if self.rawValue == 1144 { return "Music|Rock|Adult Alternative" }
        if self.rawValue == 1145 { return "Music|Rock|American Trad Rock" }
        if self.rawValue == 1146 { return "Music|Rock|Arena Rock" }
        if self.rawValue == 1147 { return "Music|Rock|Blues-Rock" }
        if self.rawValue == 1148 { return "Music|Rock|British Invasion" }
        if self.rawValue == 1149 { return "Music|Rock|Death Metal/Black Metal" }
        if self.rawValue == 1150 { return "Music|Rock|Glam Rock" }
        if self.rawValue == 1151 { return "Music|Rock|Hair Metal" }
        if self.rawValue == 1152 { return "Music|Rock|Hard Rock" }
        if self.rawValue == 1153 { return "Music|Rock|Metal" }
        if self.rawValue == 1154 { return "Music|Rock|Jam Bands" }
        if self.rawValue == 1155 { return "Music|Rock|Prog-Rock/Art Rock" }
        if self.rawValue == 1156 { return "Music|Rock|Psychedelic" }
        if self.rawValue == 1157 { return "Music|Rock|Rock & Roll" }
        if self.rawValue == 1158 { return "Music|Rock|Rockabilly" }
        if self.rawValue == 1159 { return "Music|Rock|Roots Rock" }
        if self.rawValue == 1160 { return "Music|Rock|Singer/Songwriter" }
        if self.rawValue == 1161 { return "Music|Rock|Southern Rock" }
        if self.rawValue == 1162 { return "Music|Rock|Surf" }
        if self.rawValue == 1163 { return "Music|Rock|Tex-Mex" }
        if self.rawValue == 1165 { return "Music|Soundtrack|Foreign Cinema" }
        if self.rawValue == 1166 { return "Music|Soundtrack|Musicals" }
        if self.rawValue == 1167 { return "Music|Comedy|Novelty" }
        if self.rawValue == 1168 { return "Music|Soundtrack|Original Score" }
        if self.rawValue == 1169 { return "Music|Soundtrack|Soundtrack" }
        if self.rawValue == 1171 { return "Music|Comedy|Standup Comedy" }
        if self.rawValue == 1172 { return "Music|Soundtrack|TV Soundtrack" }
        if self.rawValue == 1173 { return "Music|Vocal|Standards" }
        if self.rawValue == 1174 { return "Music|Vocal|Traditional Pop" }
        if self.rawValue == 1175 { return "Music|Jazz|Vocal Jazz" }
        if self.rawValue == 1176 { return "Music|Vocal|Vocal Pop" }
        if self.rawValue == 1177 { return "Music|African|Afro-Beat" }
        if self.rawValue == 1178 { return "Music|African|Afro-Pop" }
        if self.rawValue == 1179 { return "Music|World|Cajun" }
        if self.rawValue == 1180 { return "Music|World|Celtic" }
        if self.rawValue == 1181 { return "Music|World|Celtic Folk" }
        if self.rawValue == 1182 { return "Music|World|Contemporary Celtic" }
        if self.rawValue == 1183 { return "Music|Reggae|Modern Dancehall" }
        if self.rawValue == 1184 { return "Music|World|Drinking Songs" }
        if self.rawValue == 1185 { return "Music|Indian|Indian Pop" }
        if self.rawValue == 1186 { return "Music|World|Japanese Pop" }
        if self.rawValue == 1187 { return "Music|World|Klezmer" }
        if self.rawValue == 1188 { return "Music|World|Polka" }
        if self.rawValue == 1189 { return "Music|World|Traditional Celtic" }
        if self.rawValue == 1190 { return "Music|World|Worldbeat" }
        if self.rawValue == 1191 { return "Music|World|Zydeco" }
        if self.rawValue == 1192 { return "Music|Reggae|Roots Reggae" }
        if self.rawValue == 1193 { return "Music|Reggae|Dub" }
        if self.rawValue == 1194 { return "Music|Reggae|Ska" }
        if self.rawValue == 1195 { return "Music|World|Caribbean" }
        if self.rawValue == 1196 { return "Music|World|South America" }
        if self.rawValue == 1197 { return "Music|Arabic" }
        if self.rawValue == 1198 { return "Music|World|North America" }
        if self.rawValue == 1199 { return "Music|World|Hawaii" }
        if self.rawValue == 1200 { return "Music|World|Australia" }
        if self.rawValue == 1201 { return "Music|World|Japan" }
        if self.rawValue == 1202 { return "Music|World|France" }
        if self.rawValue == 1203 { return "Music|African" }
        if self.rawValue == 1204 { return "Music|World|Asia" }
        if self.rawValue == 1205 { return "Music|World|Europe" }
        if self.rawValue == 1206 { return "Music|World|South Africa" }
        if self.rawValue == 1207 { return "Music|Jazz|Hard Bop" }
        if self.rawValue == 1208 { return "Music|Jazz|Trad Jazz" }
        if self.rawValue == 1209 { return "Music|Jazz|Cool Jazz" }
        if self.rawValue == 1210 { return "Music|Blues|Acoustic Blues" }
        if self.rawValue == 1211 { return "Music|Classical|High Classical" }
        if self.rawValue == 1220 { return "Music|Brazilian|Axe" }
        if self.rawValue == 1221 { return "Music|Brazilian|Bossa Nova" }
        if self.rawValue == 1222 { return "Music|Brazilian|Choro" }
        if self.rawValue == 1223 { return "Music|Brazilian|Forro" }
        if self.rawValue == 1224 { return "Music|Brazilian|Frevo" }
        if self.rawValue == 1225 { return "Music|Brazilian|MPB" }
        if self.rawValue == 1226 { return "Music|Brazilian|Pagode" }
        if self.rawValue == 1227 { return "Music|Brazilian|Samba" }
        if self.rawValue == 1228 { return "Music|Brazilian|Sertanejo" }
        if self.rawValue == 1229 { return "Music|Brazilian|Baile Funk" }
        if self.rawValue == 1230 { return "Music|Alternative|Chinese Alt" }
        if self.rawValue == 1231 { return "Music|Alternative|Korean Indie" }
        if self.rawValue == 1232 { return "Music|Chinese" }
        if self.rawValue == 1233 { return "Music|Chinese|Chinese Classical" }
        if self.rawValue == 1234 { return "Music|Chinese|Chinese Flute" }
        if self.rawValue == 1235 { return "Music|Chinese|Chinese Opera" }
        if self.rawValue == 1236 { return "Music|Chinese|Chinese Orchestral" }
        if self.rawValue == 1237 { return "Music|Chinese|Chinese Regional Folk" }
        if self.rawValue == 1238 { return "Music|Chinese|Chinese Strings" }
        if self.rawValue == 1239 { return "Music|Chinese|Taiwanese Folk" }
        if self.rawValue == 1240 { return "Music|Chinese|Tibetan Native Music" }
        if self.rawValue == 1241 { return "Music|Hip-Hop/Rap|Chinese Hip-Hop" }
        if self.rawValue == 1242 { return "Music|Hip-Hop/Rap|Korean Hip-Hop" }
        if self.rawValue == 1243 { return "Music|Korean" }
        if self.rawValue == 1244 { return "Music|Korean|Korean Classical" }
        if self.rawValue == 1245 { return "Music|Korean|Korean Trad Song" }
        if self.rawValue == 1246 { return "Music|Korean|Korean Trad Instrumental" }
        if self.rawValue == 1247 { return "Music|Korean|Korean Trad Theater" }
        if self.rawValue == 1248 { return "Music|Rock|Chinese Rock" }
        if self.rawValue == 1249 { return "Music|Rock|Korean Rock" }
        if self.rawValue == 1250 { return "Music|Pop|C-Pop" }
        if self.rawValue == 1251 { return "Music|Pop|Cantopop/HK-Pop" }
        if self.rawValue == 1252 { return "Music|Pop|Korean Folk-Pop" }
        if self.rawValue == 1253 { return "Music|Pop|Mandopop" }
        if self.rawValue == 1254 { return "Music|Pop|Tai-Pop" }
        if self.rawValue == 1255 { return "Music|Pop|Malaysian Pop" }
        if self.rawValue == 1256 { return "Music|Pop|Pinoy Pop" }
        if self.rawValue == 1257 { return "Music|Pop|Original Pilipino Music" }
        if self.rawValue == 1258 { return "Music|Pop|Manilla Sound" }
        if self.rawValue == 1259 { return "Music|Pop|Indo Pop" }
        if self.rawValue == 1260 { return "Music|Pop|Thai Pop" }
        if self.rawValue == 1261 { return "Music|Vocal|Trot" }
        if self.rawValue == 1262 { return "Music|Indian" }
        if self.rawValue == 1263 { return "Music|Indian|Bollywood" }
        if self.rawValue == 1264 { return "Music|Indian|Regional Indian|Tamil" }
        if self.rawValue == 1265 { return "Music|Indian|Regional Indian|Telugu" }
        if self.rawValue == 1266 { return "Music|Indian|Regional Indian" }
        if self.rawValue == 1267 { return "Music|Indian|Devotional & Spiritual" }
        if self.rawValue == 1268 { return "Music|Indian|Sufi" }
        if self.rawValue == 1269 { return "Music|Indian|Indian Classical" }
        if self.rawValue == 1270 { return "Music|Russian|Russian Chanson" }
        if self.rawValue == 1271 { return "Music|World|Dini" }
        if self.rawValue == 1272 { return "Music|Turkish|Halk" }
        if self.rawValue == 1273 { return "Music|Turkish|Sanat" }
        if self.rawValue == 1274 { return "Music|World|Dangdut" }
        if self.rawValue == 1275 { return "Music|World|Indonesian Religious" }
        if self.rawValue == 1276 { return "Music|World|Calypso" }
        if self.rawValue == 1277 { return "Music|World|Soca" }
        if self.rawValue == 1278 { return "Music|Indian|Ghazals" }
        if self.rawValue == 1279 { return "Music|Indian|Indian Folk" }
        if self.rawValue == 1280 { return "Music|Turkish|Arabesque" }
        if self.rawValue == 1281 { return "Music|African|Afrikaans" }
        if self.rawValue == 1282 { return "Music|World|Farsi" }
        if self.rawValue == 1283 { return "Music|World|Israeli" }
        if self.rawValue == 1284 { return "Music|Arabic|Khaleeji" }
        if self.rawValue == 1285 { return "Music|Arabic|North African" }
        if self.rawValue == 1286 { return "Music|Arabic|Arabic Pop" }
        if self.rawValue == 1287 { return "Music|Arabic|Islamic" }
        if self.rawValue == 1288 { return "Music|Soundtrack|Sound Effects" }
        if self.rawValue == 1289 { return "Music|Folk" }
        if self.rawValue == 1290 { return "Music|Orchestral" }
        if self.rawValue == 1291 { return "Music|Marching" }
        if self.rawValue == 1293 { return "Music|Pop|Oldies" }
        if self.rawValue == 1294 { return "Music|Country|Thai Country" }
        if self.rawValue == 1295 { return "Music|World|Flamenco" }
        if self.rawValue == 1296 { return "Music|World|Tango" }
        if self.rawValue == 1297 { return "Music|World|Fado" }
        if self.rawValue == 1298 { return "Music|World|Iberia" }
        if self.rawValue == 1299 { return "Music|Russian" }
        if self.rawValue == 1300 { return "Music|Turkish" }
        if self.rawValue == 1301 { return "Podcasts|Arts" }
        if self.rawValue == 1302 { return "Podcasts|Society & Culture|Personal Journals" }
        if self.rawValue == 1303 { return "Podcasts|Comedy" }
        if self.rawValue == 1304 { return "Podcasts|Education" }
        if self.rawValue == 1305 { return "Podcasts|Kids & Family" }
        if self.rawValue == 1306 { return "Podcasts|Arts|Food" }
        if self.rawValue == 1307 { return "Podcasts|Health" }
        if self.rawValue == 1309 { return "Podcasts|TV & Film" }
        if self.rawValue == 1310 { return "Podcasts|Music" }
        if self.rawValue == 1311 { return "Podcasts|News & Politics" }
        if self.rawValue == 1314 { return "Podcasts|Religion & Spirituality" }
        if self.rawValue == 1315 { return "Podcasts|Science & Medicine" }
        if self.rawValue == 1316 { return "Podcasts|Sports & Recreation" }
        if self.rawValue == 1318 { return "Podcasts|Technology" }
        if self.rawValue == 1320 { return "Podcasts|Society & Culture|Places & Travel" }
        if self.rawValue == 1321 { return "Podcasts|Business" }
        if self.rawValue == 1323 { return "Podcasts|Games & Hobbies" }
        if self.rawValue == 1324 { return "Podcasts|Society & Culture" }
        if self.rawValue == 1325 { return "Podcasts|Government & Organizations" }
        if self.rawValue == 1337 { return "Music Videos|Classical|Piano" }
        if self.rawValue == 1401 { return "Podcasts|Arts|Literature" }
        if self.rawValue == 1402 { return "Podcasts|Arts|Design" }
        if self.rawValue == 1404 { return "Podcasts|Games & Hobbies|Video Games" }
        if self.rawValue == 1405 { return "Podcasts|Arts|Performing Arts" }
        if self.rawValue == 1406 { return "Podcasts|Arts|Visual Arts" }
        if self.rawValue == 1410 { return "Podcasts|Business|Careers" }
        if self.rawValue == 1412 { return "Podcasts|Business|Investing" }
        if self.rawValue == 1413 { return "Podcasts|Business|Management & Marketing" }
        if self.rawValue == 1415 { return "Podcasts|Education|K-12" }
        if self.rawValue == 1416 { return "Podcasts|Education|Higher Education" }
        if self.rawValue == 1417 { return "Podcasts|Health|Fitness & Nutrition" }
        if self.rawValue == 1420 { return "Podcasts|Health|Self-Help" }
        if self.rawValue == 1421 { return "Podcasts|Health|Sexuality" }
        if self.rawValue == 1438 { return "Podcasts|Religion & Spirituality|Buddhism" }
        if self.rawValue == 1439 { return "Podcasts|Religion & Spirituality|Christianity" }
        if self.rawValue == 1440 { return "Podcasts|Religion & Spirituality|Islam" }
        if self.rawValue == 1441 { return "Podcasts|Religion & Spirituality|Judaism" }
        if self.rawValue == 1443 { return "Podcasts|Society & Culture|Philosophy" }
        if self.rawValue == 1444 { return "Podcasts|Religion & Spirituality|Spirituality" }
        if self.rawValue == 1446 { return "Podcasts|Technology|Gadgets" }
        if self.rawValue == 1448 { return "Podcasts|Technology|Tech News" }
        if self.rawValue == 1450 { return "Podcasts|Technology|Podcasting" }
        if self.rawValue == 1454 { return "Podcasts|Games & Hobbies|Automotive" }
        if self.rawValue == 1455 { return "Podcasts|Games & Hobbies|Aviation" }
        if self.rawValue == 1456 { return "Podcasts|Sports & Recreation|Outdoor" }
        if self.rawValue == 1459 { return "Podcasts|Arts|Fashion & Beauty" }
        if self.rawValue == 1460 { return "Podcasts|Games & Hobbies|Hobbies" }
        if self.rawValue == 1461 { return "Podcasts|Games & Hobbies|Other Games" }
        if self.rawValue == 1462 { return "Podcasts|Society & Culture|History" }
        if self.rawValue == 1463 { return "Podcasts|Religion & Spirituality|Hinduism" }
        if self.rawValue == 1464 { return "Podcasts|Religion & Spirituality|Other" }
        if self.rawValue == 1465 { return "Podcasts|Sports & Recreation|Professional" }
        if self.rawValue == 1466 { return "Podcasts|Sports & Recreation|College & High School" }
        if self.rawValue == 1467 { return "Podcasts|Sports & Recreation|Amateur" }
        if self.rawValue == 1468 { return "Podcasts|Education|Educational Technology" }
        if self.rawValue == 1469 { return "Podcasts|Education|Language Courses" }
        if self.rawValue == 1470 { return "Podcasts|Education|Training" }
        if self.rawValue == 1471 { return "Podcasts|Business|Business News" }
        if self.rawValue == 1472 { return "Podcasts|Business|Shopping" }
        if self.rawValue == 1473 { return "Podcasts|Government & Organizations|National" }
        if self.rawValue == 1474 { return "Podcasts|Government & Organizations|Regional" }
        if self.rawValue == 1475 { return "Podcasts|Government & Organizations|Local" }
        if self.rawValue == 1476 { return "Podcasts|Government & Organizations|Non-Profit" }
        if self.rawValue == 1477 { return "Podcasts|Science & Medicine|Natural Sciences" }
        if self.rawValue == 1478 { return "Podcasts|Science & Medicine|Medicine" }
        if self.rawValue == 1479 { return "Podcasts|Science & Medicine|Social Sciences" }
        if self.rawValue == 1480 { return "Podcasts|Technology|Software How-To" }
        if self.rawValue == 1481 { return "Podcasts|Health|Alternative Health" }
        if self.rawValue == 1482 { return "Podcasts|Arts|Books" }
        if self.rawValue == 1483 { return "Podcasts|Fiction" }
        if self.rawValue == 1484 { return "Podcasts|Fiction|Drama" }
        if self.rawValue == 1485 { return "Podcasts|Fiction|Science Fiction" }
        if self.rawValue == 1486 { return "Podcasts|Fiction|Comedy Fiction" }
        if self.rawValue == 1487 { return "Podcasts|History" }
        if self.rawValue == 1488 { return "Podcasts|True Crime" }
        if self.rawValue == 1489 { return "Podcasts|News" }
        if self.rawValue == 1490 { return "Podcasts|News|Business News" }
        if self.rawValue == 1491 { return "Podcasts|Business|Management" }
        if self.rawValue == 1492 { return "Podcasts|Business|Marketing" }
        if self.rawValue == 1493 { return "Podcasts|Business|Entrepreneurship" }
        if self.rawValue == 1494 { return "Podcasts|Business|Non-Profit" }
        if self.rawValue == 1495 { return "Podcasts|Comedy|Improv" }
        if self.rawValue == 1496 { return "Podcasts|Comedy|Comedy Interviews" }
        if self.rawValue == 1497 { return "Podcasts|Comedy|Stand-Up" }
        if self.rawValue == 1498 { return "Podcasts|Education|Language Learning" }
        if self.rawValue == 1499 { return "Podcasts|Education|How To" }
        if self.rawValue == 1500 { return "Podcasts|Education|Self-Improvement" }
        if self.rawValue == 1501 { return "Podcasts|Education|Courses" }
        if self.rawValue == 1502 { return "Podcasts|Leisure" }
        if self.rawValue == 1503 { return "Podcasts|Leisure|Automotive" }
        if self.rawValue == 1504 { return "Podcasts|Leisure|Aviation" }
        if self.rawValue == 1505 { return "Podcasts|Leisure|Hobbies" }
        if self.rawValue == 1506 { return "Podcasts|Leisure|Crafts" }
        if self.rawValue == 1507 { return "Podcasts|Leisure|Games" }
        if self.rawValue == 1508 { return "Podcasts|Leisure|Home & Garden" }
        if self.rawValue == 1509 { return "Podcasts|Leisure|Video Games" }
        if self.rawValue == 1510 { return "Podcasts|Leisure|Animation & Manga" }
        if self.rawValue == 1511 { return "Podcasts|Government" }
        if self.rawValue == 1512 { return "Podcasts|Health & Fitness" }
        if self.rawValue == 1513 { return "Podcasts|Health & Fitness|Alternative Health" }
        if self.rawValue == 1514 { return "Podcasts|Health & Fitness|Fitness" }
        if self.rawValue == 1515 { return "Podcasts|Health & Fitness|Nutrition" }
        if self.rawValue == 1516 { return "Podcasts|Health & Fitness|Sexuality" }
        if self.rawValue == 1517 { return "Podcasts|Health & Fitness|Mental Health" }
        if self.rawValue == 1518 { return "Podcasts|Health & Fitness|Medicine" }
        if self.rawValue == 1519 { return "Podcasts|Kids & Family|Education for Kids" }
        if self.rawValue == 1520 { return "Podcasts|Kids & Family|Stories for Kids" }
        if self.rawValue == 1521 { return "Podcasts|Kids & Family|Parenting" }
        if self.rawValue == 1522 { return "Podcasts|Kids & Family|Pets & Animals" }
        if self.rawValue == 1523 { return "Podcasts|Music|Music Commentary" }
        if self.rawValue == 1524 { return "Podcasts|Music|Music History" }
        if self.rawValue == 1525 { return "Podcasts|Music|Music Interviews" }
        if self.rawValue == 1526 { return "Podcasts|News|Daily News" }
        if self.rawValue == 1527 { return "Podcasts|News|Politics" }
        if self.rawValue == 1528 { return "Podcasts|News|Tech News" }
        if self.rawValue == 1529 { return "Podcasts|News|Sports News" }
        if self.rawValue == 1530 { return "Podcasts|News|News Commentary" }
        if self.rawValue == 1531 { return "Podcasts|News|Entertainment News" }
        if self.rawValue == 1532 { return "Podcasts|Religion & Spirituality|Religion" }
        if self.rawValue == 1533 { return "Podcasts|Science" }
        if self.rawValue == 1534 { return "Podcasts|Science|Natural Sciences" }
        if self.rawValue == 1535 { return "Podcasts|Science|Social Sciences" }
        if self.rawValue == 1536 { return "Podcasts|Science|Mathematics" }
        if self.rawValue == 1537 { return "Podcasts|Science|Nature" }
        if self.rawValue == 1538 { return "Podcasts|Science|Astronomy" }
        if self.rawValue == 1539 { return "Podcasts|Science|Chemistry" }
        if self.rawValue == 1540 { return "Podcasts|Science|Earth Sciences" }
        if self.rawValue == 1541 { return "Podcasts|Science|Life Sciences" }
        if self.rawValue == 1542 { return "Podcasts|Science|Physics" }
        if self.rawValue == 1543 { return "Podcasts|Society & Culture|Documentary" }
        if self.rawValue == 1544 { return "Podcasts|Society & Culture|Relationships" }
        if self.rawValue == 1545 { return "Podcasts|Sports" }
        if self.rawValue == 1546 { return "Podcasts|Sports|Soccer" }
        if self.rawValue == 1547 { return "Podcasts|Sports|Football" }
        if self.rawValue == 1548 { return "Podcasts|Sports|Basketball" }
        if self.rawValue == 1549 { return "Podcasts|Sports|Baseball" }
        if self.rawValue == 1550 { return "Podcasts|Sports|Hockey" }
        if self.rawValue == 1551 { return "Podcasts|Sports|Running" }
        if self.rawValue == 1552 { return "Podcasts|Sports|Rugby" }
        if self.rawValue == 1553 { return "Podcasts|Sports|Golf" }
        if self.rawValue == 1554 { return "Podcasts|Sports|Cricket" }
        if self.rawValue == 1555 { return "Podcasts|Sports|Wrestling" }
        if self.rawValue == 1556 { return "Podcasts|Sports|Tennis" }
        if self.rawValue == 1557 { return "Podcasts|Sports|Volleyball" }
        if self.rawValue == 1558 { return "Podcasts|Sports|Swimming" }
        if self.rawValue == 1559 { return "Podcasts|Sports|Wilderness" }
        if self.rawValue == 1560 { return "Podcasts|Sports|Fantasy Sports" }
        if self.rawValue == 1561 { return "Podcasts|TV & Film|TV Reviews" }
        if self.rawValue == 1562 { return "Podcasts|TV & Film|After Shows" }
        if self.rawValue == 1563 { return "Podcasts|TV & Film|Film Reviews" }
        if self.rawValue == 1564 { return "Podcasts|TV & Film|Film History" }
        if self.rawValue == 1565 { return "Podcasts|TV & Film|Film Interviews" }
        if self.rawValue == 1602 { return "Music Videos|Blues" }
        if self.rawValue == 1603 { return "Music Videos|Comedy" }
        if self.rawValue == 1604 { return "Music Videos|Children's Music" }
        if self.rawValue == 1605 { return "Music Videos|Classical" }
        if self.rawValue == 1606 { return "Music Videos|Country" }
        if self.rawValue == 1607 { return "Music Videos|Electronic" }
        if self.rawValue == 1608 { return "Music Videos|Holiday" }
        if self.rawValue == 1609 { return "Music Videos|Classical|Opera" }
        if self.rawValue == 1610 { return "Music Videos|Singer/Songwriter" }
        if self.rawValue == 1611 { return "Music Videos|Jazz" }
        if self.rawValue == 1612 { return "Music Videos|Latin" }
        if self.rawValue == 1613 { return "Music Videos|New Age" }
        if self.rawValue == 1614 { return "Music Videos|Pop" }
        if self.rawValue == 1615 { return "Music Videos|R&B/Soul" }
        if self.rawValue == 1616 { return "Music Videos|Soundtrack" }
        if self.rawValue == 1617 { return "Music Videos|Dance" }
        if self.rawValue == 1618 { return "Music Videos|Hip-Hop/Rap" }
        if self.rawValue == 1619 { return "Music Videos|World" }
        if self.rawValue == 1620 { return "Music Videos|Alternative" }
        if self.rawValue == 1621 { return "Music Videos|Rock" }
        if self.rawValue == 1622 { return "Music Videos|Christian & Gospel" }
        if self.rawValue == 1623 { return "Music Videos|Vocal" }
        if self.rawValue == 1624 { return "Music Videos|Reggae" }
        if self.rawValue == 1625 { return "Music Videos|Easy Listening" }
        if self.rawValue == 1626 { return "Music Videos|Podcasts" }
        if self.rawValue == 1627 { return "Music Videos|J-Pop" }
        if self.rawValue == 1628 { return "Music Videos|Enka" }
        if self.rawValue == 1629 { return "Music Videos|Anime" }
        if self.rawValue == 1630 { return "Music Videos|Kayokyoku" }
        if self.rawValue == 1631 { return "Music Videos|Disney" }
        if self.rawValue == 1632 { return "Music Videos|French Pop" }
        if self.rawValue == 1633 { return "Music Videos|German Pop" }
        if self.rawValue == 1634 { return "Music Videos|German Folk" }
        if self.rawValue == 1635 { return "Music Videos|Alternative|Chinese Alt" }
        if self.rawValue == 1636 { return "Music Videos|Alternative|Korean Indie" }
        if self.rawValue == 1637 { return "Music Videos|Chinese" }
        if self.rawValue == 1638 { return "Music Videos|Chinese|Chinese Classical" }
        if self.rawValue == 1639 { return "Music Videos|Chinese|Chinese Flute" }
        if self.rawValue == 1640 { return "Music Videos|Chinese|Chinese Opera" }
        if self.rawValue == 1641 { return "Music Videos|Chinese|Chinese Orchestral" }
        if self.rawValue == 1642 { return "Music Videos|Chinese|Chinese Regional Folk" }
        if self.rawValue == 1643 { return "Music Videos|Chinese|Chinese Strings" }
        if self.rawValue == 1644 { return "Music Videos|Chinese|Taiwanese Folk" }
        if self.rawValue == 1645 { return "Music Videos|Chinese|Tibetan Native Music" }
        if self.rawValue == 1646 { return "Music Videos|Hip-Hop/Rap|Chinese Hip-Hop" }
        if self.rawValue == 1647 { return "Music Videos|Hip-Hop/Rap|Korean Hip-Hop" }
        if self.rawValue == 1648 { return "Music Videos|Korean" }
        if self.rawValue == 1649 { return "Music Videos|Korean|Korean Classical" }
        if self.rawValue == 1650 { return "Music Videos|Korean|Korean Trad Song" }
        if self.rawValue == 1651 { return "Music Videos|Korean|Korean Trad Instrumental" }
        if self.rawValue == 1652 { return "Music Videos|Korean|Korean Trad Theater" }
        if self.rawValue == 1653 { return "Music Videos|Rock|Chinese Rock" }
        if self.rawValue == 1654 { return "Music Videos|Rock|Korean Rock" }
        if self.rawValue == 1655 { return "Music Videos|Pop|C-Pop" }
        if self.rawValue == 1656 { return "Music Videos|Pop|Cantopop/HK-Pop" }
        if self.rawValue == 1657 { return "Music Videos|Pop|Korean Folk-Pop" }
        if self.rawValue == 1658 { return "Music Videos|Pop|Mandopop" }
        if self.rawValue == 1659 { return "Music Videos|Pop|Tai-Pop" }
        if self.rawValue == 1660 { return "Music Videos|Pop|Malaysian Pop" }
        if self.rawValue == 1661 { return "Music Videos|Pop|Pinoy Pop" }
        if self.rawValue == 1662 { return "Music Videos|Pop|Original Pilipino Music" }
        if self.rawValue == 1663 { return "Music Videos|Pop|Manilla Sound" }
        if self.rawValue == 1664 { return "Music Videos|Pop|Indo Pop" }
        if self.rawValue == 1665 { return "Music Videos|Pop|Thai Pop" }
        if self.rawValue == 1666 { return "Music Videos|Vocal|Trot" }
        if self.rawValue == 1671 { return "Music Videos|Brazilian" }
        if self.rawValue == 1672 { return "Music Videos|Brazilian|Axe" }
        if self.rawValue == 1673 { return "Music Videos|Brazilian|Baile Funk" }
        if self.rawValue == 1674 { return "Music Videos|Brazilian|Bossa Nova" }
        if self.rawValue == 1675 { return "Music Videos|Brazilian|Choro" }
        if self.rawValue == 1676 { return "Music Videos|Brazilian|Forro" }
        if self.rawValue == 1677 { return "Music Videos|Brazilian|Frevo" }
        if self.rawValue == 1678 { return "Music Videos|Brazilian|MPB" }
        if self.rawValue == 1679 { return "Music Videos|Brazilian|Pagode" }
        if self.rawValue == 1680 { return "Music Videos|Brazilian|Samba" }
        if self.rawValue == 1681 { return "Music Videos|Brazilian|Sertanejo" }
        if self.rawValue == 1682 { return "Music Videos|Classical|High Classical" }
        if self.rawValue == 1683 { return "Music Videos|Fitness & Workout" }
        if self.rawValue == 1684 { return "Music Videos|Instrumental" }
        if self.rawValue == 1685 { return "Music Videos|Jazz|Big Band" }
        if self.rawValue == 1686 { return "Music Videos|Pop|K-Pop" }
        if self.rawValue == 1687 { return "Music Videos|Karaoke" }
        if self.rawValue == 1688 { return "Music Videos|Rock|Heavy Metal" }
        if self.rawValue == 1689 { return "Music Videos|Spoken Word" }
        if self.rawValue == 1690 { return "Music Videos|Indian" }
        if self.rawValue == 1691 { return "Music Videos|Indian|Bollywood" }
        if self.rawValue == 1692 { return "Music Videos|Indian|Regional Indian|Tamil" }
        if self.rawValue == 1693 { return "Music Videos|Indian|Regional Indian|Telugu" }
        if self.rawValue == 1694 { return "Music Videos|Indian|Regional Indian" }
        if self.rawValue == 1695 { return "Music Videos|Indian|Devotional & Spiritual" }
        if self.rawValue == 1696 { return "Music Videos|Indian|Sufi" }
        if self.rawValue == 1697 { return "Music Videos|Indian|Indian Classical" }
        if self.rawValue == 1698 { return "Music Videos|Russian|Russian Chanson" }
        if self.rawValue == 1699 { return "Music Videos|World|Dini" }
        if self.rawValue == 1700 { return "Music Videos|Turkish|Halk" }
        if self.rawValue == 1701 { return "Music Videos|Turkish|Sanat" }
        if self.rawValue == 1702 { return "Music Videos|World|Dangdut" }
        if self.rawValue == 1703 { return "Music Videos|World|Indonesian Religious" }
        if self.rawValue == 1704 { return "Music Videos|Indian|Indian Pop" }
        if self.rawValue == 1705 { return "Music Videos|World|Calypso" }
        if self.rawValue == 1706 { return "Music Videos|World|Soca" }
        if self.rawValue == 1707 { return "Music Videos|Indian|Ghazals" }
        if self.rawValue == 1708 { return "Music Videos|Indian|Indian Folk" }
        if self.rawValue == 1709 { return "Music Videos|Turkish|Arabesque" }
        if self.rawValue == 1710 { return "Music Videos|African|Afrikaans" }
        if self.rawValue == 1711 { return "Music Videos|World|Farsi" }
        if self.rawValue == 1712 { return "Music Videos|World|Israeli" }
        if self.rawValue == 1713 { return "Music Videos|Arabic" }
        if self.rawValue == 1714 { return "Music Videos|Arabic|Khaleeji" }
        if self.rawValue == 1715 { return "Music Videos|Arabic|North African" }
        if self.rawValue == 1716 { return "Music Videos|Arabic|Arabic Pop" }
        if self.rawValue == 1717 { return "Music Videos|Arabic|Islamic" }
        if self.rawValue == 1718 { return "Music Videos|Soundtrack|Sound Effects" }
        if self.rawValue == 1719 { return "Music Videos|Folk" }
        if self.rawValue == 1720 { return "Music Videos|Orchestral" }
        if self.rawValue == 1721 { return "Music Videos|Marching" }
        if self.rawValue == 1723 { return "Music Videos|Pop|Oldies" }
        if self.rawValue == 1724 { return "Music Videos|Country|Thai Country" }
        if self.rawValue == 1725 { return "Music Videos|World|Flamenco" }
        if self.rawValue == 1726 { return "Music Videos|World|Tango" }
        if self.rawValue == 1727 { return "Music Videos|World|Fado" }
        if self.rawValue == 1728 { return "Music Videos|World|Iberia" }
        if self.rawValue == 1729 { return "Music Videos|Russian" }
        if self.rawValue == 1730 { return "Music Videos|Turkish" }
        if self.rawValue == 1731 { return "Music Videos|Alternative|College Rock" }
        if self.rawValue == 1732 { return "Music Videos|Alternative|Goth Rock" }
        if self.rawValue == 1733 { return "Music Videos|Alternative|Grunge" }
        if self.rawValue == 1734 { return "Music Videos|Alternative|Indie Rock" }
        if self.rawValue == 1735 { return "Music Videos|Alternative|New Wave" }
        if self.rawValue == 1736 { return "Music Videos|Alternative|Punk" }
        if self.rawValue == 1737 { return "Music Videos|Blues|Acoustic Blues" }
        if self.rawValue == 1738 { return "Music Videos|Blues|Chicago Blues" }
        if self.rawValue == 1739 { return "Music Videos|Blues|Classic Blues" }
        if self.rawValue == 1740 { return "Music Videos|Blues|Contemporary Blues" }
        if self.rawValue == 1741 { return "Music Videos|Blues|Country Blues" }
        if self.rawValue == 1742 { return "Music Videos|Blues|Delta Blues" }
        if self.rawValue == 1743 { return "Music Videos|Blues|Electric Blues" }
        if self.rawValue == 1744 { return "Music Videos|Children's Music|Lullabies" }
        if self.rawValue == 1745 { return "Music Videos|Children's Music|Sing-Along" }
        if self.rawValue == 1746 { return "Music Videos|Children's Music|Stories" }
        if self.rawValue == 1747 { return "Music Videos|Christian & Gospel|CCM" }
        if self.rawValue == 1748 { return "Music Videos|Christian & Gospel|Christian Metal" }
        if self.rawValue == 1749 { return "Music Videos|Christian & Gospel|Christian Pop" }
        if self.rawValue == 1750 { return "Music Videos|Christian & Gospel|Christian Rap" }
        if self.rawValue == 1751 { return "Music Videos|Christian & Gospel|Christian Rock" }
        if self.rawValue == 1752 { return "Music Videos|Christian & Gospel|Classic Christian" }
        if self.rawValue == 1753 { return "Music Videos|Christian & Gospel|Contemporary Gospel" }
        if self.rawValue == 1754 { return "Music Videos|Christian & Gospel|Gospel" }
        if self.rawValue == 1755 { return "Music Videos|Christian & Gospel|Praise & Worship" }
        if self.rawValue == 1756 { return "Music Videos|Christian & Gospel|Southern Gospel" }
        if self.rawValue == 1757 { return "Music Videos|Christian & Gospel|Traditional Gospel" }
        if self.rawValue == 1758 { return "Music Videos|Classical|Avant-Garde" }
        if self.rawValue == 1759 { return "Music Videos|Classical|Baroque Era" }
        if self.rawValue == 1760 { return "Music Videos|Classical|Chamber Music" }
        if self.rawValue == 1761 { return "Music Videos|Classical|Chant" }
        if self.rawValue == 1762 { return "Music Videos|Classical|Choral" }
        if self.rawValue == 1763 { return "Music Videos|Classical|Classical Crossover" }
        if self.rawValue == 1764 { return "Music Videos|Classical|Early Music" }
        if self.rawValue == 1765 { return "Music Videos|Classical|Impressionist" }
        if self.rawValue == 1766 { return "Music Videos|Classical|Medieval Era" }
        if self.rawValue == 1767 { return "Music Videos|Classical|Minimalism" }
        if self.rawValue == 1768 { return "Music Videos|Classical|Modern Era" }
        if self.rawValue == 1769 { return "Music Videos|Classical|Orchestral" }
        if self.rawValue == 1770 { return "Music Videos|Classical|Renaissance" }
        if self.rawValue == 1771 { return "Music Videos|Classical|Romantic Era" }
        if self.rawValue == 1772 { return "Music Videos|Classical|Wedding Music" }
        if self.rawValue == 1773 { return "Music Videos|Comedy|Novelty" }
        if self.rawValue == 1774 { return "Music Videos|Comedy|Standup Comedy" }
        if self.rawValue == 1775 { return "Music Videos|Country|Alternative Country" }
        if self.rawValue == 1776 { return "Music Videos|Country|Americana" }
        if self.rawValue == 1777 { return "Music Videos|Country|Bluegrass" }
        if self.rawValue == 1778 { return "Music Videos|Country|Contemporary Bluegrass" }
        if self.rawValue == 1779 { return "Music Videos|Country|Contemporary Country" }
        if self.rawValue == 1780 { return "Music Videos|Country|Country Gospel" }
        if self.rawValue == 1781 { return "Music Videos|Country|Honky Tonk" }
        if self.rawValue == 1782 { return "Music Videos|Country|Outlaw Country" }
        if self.rawValue == 1783 { return "Music Videos|Country|Traditional Bluegrass" }
        if self.rawValue == 1784 { return "Music Videos|Country|Traditional Country" }
        if self.rawValue == 1785 { return "Music Videos|Country|Urban Cowboy" }
        if self.rawValue == 1786 { return "Music Videos|Dance|Breakbeat" }
        if self.rawValue == 1787 { return "Music Videos|Dance|Exercise" }
        if self.rawValue == 1788 { return "Music Videos|Dance|Garage" }
        if self.rawValue == 1789 { return "Music Videos|Dance|Hardcore" }
        if self.rawValue == 1790 { return "Music Videos|Dance|House" }
        if self.rawValue == 1791 { return "Music Videos|Dance|Jungle/Drum'n'bass" }
        if self.rawValue == 1792 { return "Music Videos|Dance|Techno" }
        if self.rawValue == 1793 { return "Music Videos|Dance|Trance" }
        if self.rawValue == 1794 { return "Music Videos|Easy Listening|Lounge" }
        if self.rawValue == 1795 { return "Music Videos|Easy Listening|Swing" }
        if self.rawValue == 1796 { return "Music Videos|Electronic|Ambient" }
        if self.rawValue == 1797 { return "Music Videos|Electronic|Downtempo" }
        if self.rawValue == 1798 { return "Music Videos|Electronic|Electronica" }
        if self.rawValue == 1799 { return "Music Videos|Electronic|IDM/Experimental" }
        if self.rawValue == 1800 { return "Music Videos|Electronic|Industrial" }
        if self.rawValue == 1801 { return "Music Videos|Hip-Hop/Rap|Alternative Rap" }
        if self.rawValue == 1802 { return "Music Videos|Hip-Hop/Rap|Dirty South" }
        if self.rawValue == 1803 { return "Music Videos|Hip-Hop/Rap|East Coast Rap" }
        if self.rawValue == 1804 { return "Music Videos|Hip-Hop/Rap|Gangsta Rap" }
        if self.rawValue == 1805 { return "Music Videos|Hip-Hop/Rap|Hardcore Rap" }
        if self.rawValue == 1806 { return "Music Videos|Hip-Hop/Rap|Hip-Hop" }
        if self.rawValue == 1807 { return "Music Videos|Hip-Hop/Rap|Latin Rap" }
        if self.rawValue == 1808 { return "Music Videos|Hip-Hop/Rap|Old School Rap" }
        if self.rawValue == 1809 { return "Music Videos|Hip-Hop/Rap|Rap" }
        if self.rawValue == 1810 { return "Music Videos|Hip-Hop/Rap|Underground Rap" }
        if self.rawValue == 1811 { return "Music Videos|Hip-Hop/Rap|West Coast Rap" }
        if self.rawValue == 1812 { return "Music Videos|Holiday|Chanukah" }
        if self.rawValue == 1813 { return "Music Videos|Holiday|Christmas" }
        if self.rawValue == 1814 { return "Music Videos|Holiday|Christmas: Children's" }
        if self.rawValue == 1815 { return "Music Videos|Holiday|Christmas: Classic" }
        if self.rawValue == 1816 { return "Music Videos|Holiday|Christmas: Classical" }
        if self.rawValue == 1817 { return "Music Videos|Holiday|Christmas: Jazz" }
        if self.rawValue == 1818 { return "Music Videos|Holiday|Christmas: Modern" }
        if self.rawValue == 1819 { return "Music Videos|Holiday|Christmas: Pop" }
        if self.rawValue == 1820 { return "Music Videos|Holiday|Christmas: R&B" }
        if self.rawValue == 1821 { return "Music Videos|Holiday|Christmas: Religious" }
        if self.rawValue == 1822 { return "Music Videos|Holiday|Christmas: Rock" }
        if self.rawValue == 1823 { return "Music Videos|Holiday|Easter" }
        if self.rawValue == 1824 { return "Music Videos|Holiday|Halloween" }
        if self.rawValue == 1825 { return "Music Videos|Holiday|Thanksgiving" }
        if self.rawValue == 1826 { return "Music Videos|Jazz|Avant-Garde Jazz" }
        if self.rawValue == 1828 { return "Music Videos|Jazz|Bop" }
        if self.rawValue == 1829 { return "Music Videos|Jazz|Contemporary Jazz" }
        if self.rawValue == 1830 { return "Music Videos|Jazz|Cool Jazz" }
        if self.rawValue == 1831 { return "Music Videos|Jazz|Crossover Jazz" }
        if self.rawValue == 1832 { return "Music Videos|Jazz|Dixieland" }
        if self.rawValue == 1833 { return "Music Videos|Jazz|Fusion" }
        if self.rawValue == 1834 { return "Music Videos|Jazz|Hard Bop" }
        if self.rawValue == 1835 { return "Music Videos|Jazz|Latin Jazz" }
        if self.rawValue == 1836 { return "Music Videos|Jazz|Mainstream Jazz" }
        if self.rawValue == 1837 { return "Music Videos|Jazz|Ragtime" }
        if self.rawValue == 1838 { return "Music Videos|Jazz|Smooth Jazz" }
        if self.rawValue == 1839 { return "Music Videos|Jazz|Trad Jazz" }
        if self.rawValue == 1840 { return "Music Videos|Latin|Alternative & Rock in Spanish" }
        if self.rawValue == 1841 { return "Music Videos|Latin|Baladas y Boleros" }
        if self.rawValue == 1842 { return "Music Videos|Latin|Contemporary Latin" }
        if self.rawValue == 1843 { return "Music Videos|Latin|Latin Jazz" }
        if self.rawValue == 1844 { return "Music Videos|Latin|Latin Urban" }
        if self.rawValue == 1845 { return "Music Videos|Latin|Pop in Spanish" }
        if self.rawValue == 1846 { return "Music Videos|Latin|Raices" }
        if self.rawValue == 1847 { return "Music Videos|Latin|Musica Mexicana" }
        if self.rawValue == 1848 { return "Music Videos|Latin|Salsa y Tropical" }
        if self.rawValue == 1849 { return "Music Videos|New Age|Healing" }
        if self.rawValue == 1850 { return "Music Videos|New Age|Meditation" }
        if self.rawValue == 1851 { return "Music Videos|New Age|Nature" }
        if self.rawValue == 1852 { return "Music Videos|New Age|Relaxation" }
        if self.rawValue == 1853 { return "Music Videos|New Age|Travel" }
        if self.rawValue == 1854 { return "Music Videos|Pop|Adult Contemporary" }
        if self.rawValue == 1855 { return "Music Videos|Pop|Britpop" }
        if self.rawValue == 1856 { return "Music Videos|Pop|Pop/Rock" }
        if self.rawValue == 1857 { return "Music Videos|Pop|Soft Rock" }
        if self.rawValue == 1858 { return "Music Videos|Pop|Teen Pop" }
        if self.rawValue == 1859 { return "Music Videos|R&B/Soul|Contemporary R&B" }
        if self.rawValue == 1860 { return "Music Videos|R&B/Soul|Disco" }
        if self.rawValue == 1861 { return "Music Videos|R&B/Soul|Doo Wop" }
        if self.rawValue == 1862 { return "Music Videos|R&B/Soul|Funk" }
        if self.rawValue == 1863 { return "Music Videos|R&B/Soul|Motown" }
        if self.rawValue == 1864 { return "Music Videos|R&B/Soul|Neo-Soul" }
        if self.rawValue == 1865 { return "Music Videos|R&B/Soul|Soul" }
        if self.rawValue == 1866 { return "Music Videos|Reggae|Modern Dancehall" }
        if self.rawValue == 1867 { return "Music Videos|Reggae|Dub" }
        if self.rawValue == 1868 { return "Music Videos|Reggae|Roots Reggae" }
        if self.rawValue == 1869 { return "Music Videos|Reggae|Ska" }
        if self.rawValue == 1870 { return "Music Videos|Rock|Adult Alternative" }
        if self.rawValue == 1871 { return "Music Videos|Rock|American Trad Rock" }
        if self.rawValue == 1872 { return "Music Videos|Rock|Arena Rock" }
        if self.rawValue == 1873 { return "Music Videos|Rock|Blues-Rock" }
        if self.rawValue == 1874 { return "Music Videos|Rock|British Invasion" }
        if self.rawValue == 1875 { return "Music Videos|Rock|Death Metal/Black Metal" }
        if self.rawValue == 1876 { return "Music Videos|Rock|Glam Rock" }
        if self.rawValue == 1877 { return "Music Videos|Rock|Hair Metal" }
        if self.rawValue == 1878 { return "Music Videos|Rock|Hard Rock" }
        if self.rawValue == 1879 { return "Music Videos|Rock|Jam Bands" }
        if self.rawValue == 1880 { return "Music Videos|Rock|Prog-Rock/Art Rock" }
        if self.rawValue == 1881 { return "Music Videos|Rock|Psychedelic" }
        if self.rawValue == 1882 { return "Music Videos|Rock|Rock & Roll" }
        if self.rawValue == 1883 { return "Music Videos|Rock|Rockabilly" }
        if self.rawValue == 1884 { return "Music Videos|Rock|Roots Rock" }
        if self.rawValue == 1885 { return "Music Videos|Rock|Singer/Songwriter" }
        if self.rawValue == 1886 { return "Music Videos|Rock|Southern Rock" }
        if self.rawValue == 1887 { return "Music Videos|Rock|Surf" }
        if self.rawValue == 1888 { return "Music Videos|Rock|Tex-Mex" }
        if self.rawValue == 1889 { return "Music Videos|Singer/Songwriter|Alternative Folk" }
        if self.rawValue == 1890 { return "Music Videos|Singer/Songwriter|Contemporary Folk" }
        if self.rawValue == 1891 { return "Music Videos|Singer/Songwriter|Contemporary Singer/Songwriter" }
        if self.rawValue == 1892 { return "Music Videos|Singer/Songwriter|Folk-Rock" }
        if self.rawValue == 1893 { return "Music Videos|Singer/Songwriter|New Acoustic" }
        if self.rawValue == 1894 { return "Music Videos|Singer/Songwriter|Traditional Folk" }
        if self.rawValue == 1895 { return "Music Videos|Soundtrack|Foreign Cinema" }
        if self.rawValue == 1896 { return "Music Videos|Soundtrack|Musicals" }
        if self.rawValue == 1897 { return "Music Videos|Soundtrack|Original Score" }
        if self.rawValue == 1898 { return "Music Videos|Soundtrack|Soundtrack" }
        if self.rawValue == 1899 { return "Music Videos|Soundtrack|TV Soundtrack" }
        if self.rawValue == 1900 { return "Music Videos|Vocal|Standards" }
        if self.rawValue == 1901 { return "Music Videos|Vocal|Traditional Pop" }
        if self.rawValue == 1902 { return "Music Videos|Jazz|Vocal Jazz" }
        if self.rawValue == 1903 { return "Music Videos|Vocal|Vocal Pop" }
        if self.rawValue == 1904 { return "Music Videos|African" }
        if self.rawValue == 1905 { return "Music Videos|African|Afro-Beat" }
        if self.rawValue == 1906 { return "Music Videos|African|Afro-Pop" }
        if self.rawValue == 1907 { return "Music Videos|World|Asia" }
        if self.rawValue == 1908 { return "Music Videos|World|Australia" }
        if self.rawValue == 1909 { return "Music Videos|World|Cajun" }
        if self.rawValue == 1910 { return "Music Videos|World|Caribbean" }
        if self.rawValue == 1911 { return "Music Videos|World|Celtic" }
        if self.rawValue == 1912 { return "Music Videos|World|Celtic Folk" }
        if self.rawValue == 1913 { return "Music Videos|World|Contemporary Celtic" }
        if self.rawValue == 1914 { return "Music Videos|World|Europe" }
        if self.rawValue == 1915 { return "Music Videos|World|France" }
        if self.rawValue == 1916 { return "Music Videos|World|Hawaii" }
        if self.rawValue == 1917 { return "Music Videos|World|Japan" }
        if self.rawValue == 1918 { return "Music Videos|World|Klezmer" }
        if self.rawValue == 1919 { return "Music Videos|World|North America" }
        if self.rawValue == 1920 { return "Music Videos|World|Polka" }
        if self.rawValue == 1921 { return "Music Videos|World|South Africa" }
        if self.rawValue == 1922 { return "Music Videos|World|South America" }
        if self.rawValue == 1923 { return "Music Videos|World|Traditional Celtic" }
        if self.rawValue == 1924 { return "Music Videos|World|Worldbeat" }
        if self.rawValue == 1925 { return "Music Videos|World|Zydeco" }
        if self.rawValue == 1926 { return "Music Videos|Christian & Gospel" }
        if self.rawValue == 1928 { return "Music Videos|Classical|Art Song" }
        if self.rawValue == 1929 { return "Music Videos|Classical|Brass & Woodwinds" }
        if self.rawValue == 1930 { return "Music Videos|Classical|Solo Instrumental" }
        if self.rawValue == 1931 { return "Music Videos|Classical|Contemporary Era" }
        if self.rawValue == 1932 { return "Music Videos|Classical|Oratorio" }
        if self.rawValue == 1933 { return "Music Videos|Classical|Cantata" }
        if self.rawValue == 1934 { return "Music Videos|Classical|Electronic" }
        if self.rawValue == 1935 { return "Music Videos|Classical|Sacred" }
        if self.rawValue == 1936 { return "Music Videos|Classical|Guitar" }
        if self.rawValue == 1938 { return "Music Videos|Classical|Violin" }
        if self.rawValue == 1939 { return "Music Videos|Classical|Cello" }
        if self.rawValue == 1940 { return "Music Videos|Classical|Percussion" }
        if self.rawValue == 1941 { return "Music Videos|Electronic|Dubstep" }
        if self.rawValue == 1942 { return "Music Videos|Electronic|Bass" }
        if self.rawValue == 1943 { return "Music Videos|Hip-Hop/Rap|UK Hip-Hop" }
        if self.rawValue == 1944 { return "Music Videos|Reggae|Lovers Rock" }
        if self.rawValue == 1945 { return "Music Videos|Alternative|EMO" }
        if self.rawValue == 1946 { return "Music Videos|Alternative|Pop Punk" }
        if self.rawValue == 1947 { return "Music Videos|Alternative|Indie Pop" }
        if self.rawValue == 1948 { return "Music Videos|New Age|Yoga" }
        if self.rawValue == 1949 { return "Music Videos|Pop|Tribute" }
        if self.rawValue == 1950 { return "Music Videos|Pop|Shows" }
        if self.rawValue == 1951 { return "Music Videos|Cuban" }
        if self.rawValue == 1952 { return "Music Videos|Cuban|Mambo" }
        if self.rawValue == 1953 { return "Music Videos|Cuban|Chachacha" }
        if self.rawValue == 1954 { return "Music Videos|Cuban|Guajira" }
        if self.rawValue == 1955 { return "Music Videos|Cuban|Son" }
        if self.rawValue == 1956 { return "Music Videos|Cuban|Bolero" }
        if self.rawValue == 1957 { return "Music Videos|Cuban|Guaracha" }
        if self.rawValue == 1958 { return "Music Videos|Cuban|Timba" }
        if self.rawValue == 1959 { return "Music Videos|Soundtrack|Video Game" }
        if self.rawValue == 1960 { return "Music Videos|Indian|Regional Indian|Punjabi|Punjabi Pop" }
        if self.rawValue == 1961 { return "Music Videos|Indian|Regional Indian|Bengali|Rabindra Sangeet" }
        if self.rawValue == 1962 { return "Music Videos|Indian|Regional Indian|Malayalam" }
        if self.rawValue == 1963 { return "Music Videos|Indian|Regional Indian|Kannada" }
        if self.rawValue == 1964 { return "Music Videos|Indian|Regional Indian|Marathi" }
        if self.rawValue == 1965 { return "Music Videos|Indian|Regional Indian|Gujarati" }
        if self.rawValue == 1966 { return "Music Videos|Indian|Regional Indian|Assamese" }
        if self.rawValue == 1967 { return "Music Videos|Indian|Regional Indian|Bhojpuri" }
        if self.rawValue == 1968 { return "Music Videos|Indian|Regional Indian|Haryanvi" }
        if self.rawValue == 1969 { return "Music Videos|Indian|Regional Indian|Odia" }
        if self.rawValue == 1970 { return "Music Videos|Indian|Regional Indian|Rajasthani" }
        if self.rawValue == 1971 { return "Music Videos|Indian|Regional Indian|Urdu" }
        if self.rawValue == 1972 { return "Music Videos|Indian|Regional Indian|Punjabi" }
        if self.rawValue == 1973 { return "Music Videos|Indian|Regional Indian|Bengali" }
        if self.rawValue == 1974 { return "Music Videos|Indian|Indian Classical|Carnatic Classical" }
        if self.rawValue == 1975 { return "Music Videos|Indian|Indian Classical|Hindustani Classical" }
        if self.rawValue == 1976 { return "Music Videos|African|Afro House" }
        if self.rawValue == 1977 { return "Music Videos|African|Afro Soul" }
        if self.rawValue == 1978 { return "Music Videos|African|Afrobeats" }
        if self.rawValue == 1979 { return "Music Videos|African|Benga" }
        if self.rawValue == 1980 { return "Music Videos|African|Bongo-Flava" }
        if self.rawValue == 1981 { return "Music Videos|African|Coupe-Decale" }
        if self.rawValue == 1982 { return "Music Videos|African|Gqom" }
        if self.rawValue == 1983 { return "Music Videos|African|Highlife" }
        if self.rawValue == 1984 { return "Music Videos|African|Kuduro" }
        if self.rawValue == 1985 { return "Music Videos|African|Kizomba" }
        if self.rawValue == 1986 { return "Music Videos|African|Kwaito" }
        if self.rawValue == 1987 { return "Music Videos|African|Mbalax" }
        if self.rawValue == 1988 { return "Music Videos|African|Ndombolo" }
        if self.rawValue == 1989 { return "Music Videos|African|Shangaan Electro" }
        if self.rawValue == 1990 { return "Music Videos|African|Soukous" }
        if self.rawValue == 1991 { return "Music Videos|African|Taarab" }
        if self.rawValue == 1992 { return "Music Videos|African|Zouglou" }
        if self.rawValue == 1993 { return "Music Videos|Turkish|Ozgun" }
        if self.rawValue == 1994 { return "Music Videos|Turkish|Fantezi" }
        if self.rawValue == 1995 { return "Music Videos|Turkish|Religious" }
        if self.rawValue == 1996 { return "Music Videos|Pop|Turkish Pop" }
        if self.rawValue == 1997 { return "Music Videos|Rock|Turkish Rock" }
        if self.rawValue == 1998 { return "Music Videos|Alternative|Turkish Alternative" }
        if self.rawValue == 1999 { return "Music Videos|Hip-Hop/Rap|Turkish Hip-Hop/Rap" }
        if self.rawValue == 2000 { return "Music Videos|African|Maskandi" }
        if self.rawValue == 2001 { return "Music Videos|Russian|Russian Romance" }
        if self.rawValue == 2002 { return "Music Videos|Russian|Russian Bard" }
        if self.rawValue == 2003 { return "Music Videos|Russian|Russian Pop" }
        if self.rawValue == 2004 { return "Music Videos|Russian|Russian Rock" }
        if self.rawValue == 2005 { return "Music Videos|Russian|Russian Hip-Hop" }
        if self.rawValue == 2006 { return "Music Videos|Arabic|Levant" }
        if self.rawValue == 2007 { return "Music Videos|Arabic|Levant|Dabke" }
        if self.rawValue == 2008 { return "Music Videos|Arabic|Maghreb Rai" }
        if self.rawValue == 2009 { return "Music Videos|Arabic|Khaleeji|Khaleeji Jalsat" }
        if self.rawValue == 2010 { return "Music Videos|Arabic|Khaleeji|Khaleeji Shailat" }
        if self.rawValue == 2011 { return "Music Videos|Tarab" }
        if self.rawValue == 2012 { return "Music Videos|Tarab|Iraqi Tarab" }
        if self.rawValue == 2013 { return "Music Videos|Tarab|Egyptian Tarab" }
        if self.rawValue == 2014 { return "Music Videos|Tarab|Khaleeji Tarab" }
        if self.rawValue == 2015 { return "Music Videos|Pop|Levant Pop" }
        if self.rawValue == 2016 { return "Music Videos|Pop|Iraqi Pop" }
        if self.rawValue == 2017 { return "Music Videos|Pop|Egyptian Pop" }
        if self.rawValue == 2018 { return "Music Videos|Pop|Maghreb Pop" }
        if self.rawValue == 2019 { return "Music Videos|Pop|Khaleeji Pop" }
        if self.rawValue == 2020 { return "Music Videos|Hip-Hop/Rap|Levant Hip-Hop" }
        if self.rawValue == 2021 { return "Music Videos|Hip-Hop/Rap|Egyptian Hip-Hop" }
        if self.rawValue == 2022 { return "Music Videos|Hip-Hop/Rap|Maghreb Hip-Hop" }
        if self.rawValue == 2023 { return "Music Videos|Hip-Hop/Rap|Khaleeji Hip-Hop" }
        if self.rawValue == 2024 { return "Music Videos|Alternative|Indie Levant" }
        if self.rawValue == 2025 { return "Music Videos|Alternative|Indie Egyptian" }
        if self.rawValue == 2026 { return "Music Videos|Alternative|Indie Maghreb" }
        if self.rawValue == 2027 { return "Music Videos|Electronic|Levant Electronic" }
        if self.rawValue == 2028 { return "Music Videos|Electronic|Electro-Cha'abi" }
        if self.rawValue == 2029 { return "Music Videos|Electronic|Maghreb Electronic" }
        if self.rawValue == 2030 { return "Music Videos|Folk|Iraqi Folk" }
        if self.rawValue == 2031 { return "Music Videos|Folk|Khaleeji Folk" }
        if self.rawValue == 2032 { return "Music Videos|Dance|Maghreb Dance" }
        if self.rawValue == 4000 { return "TV Shows|Comedy" }
        if self.rawValue == 4001 { return "TV Shows|Drama" }
        if self.rawValue == 4002 { return "TV Shows|Animation" }
        if self.rawValue == 4003 { return "TV Shows|Action & Adventure" }
        if self.rawValue == 4004 { return "TV Shows|Classics" }
        if self.rawValue == 4005 { return "TV Shows|Kids & Family" }
        if self.rawValue == 4006 { return "TV Shows|Nonfiction" }
        if self.rawValue == 4007 { return "TV Shows|Reality TV" }
        if self.rawValue == 4008 { return "TV Shows|Sci-Fi & Fantasy" }
        if self.rawValue == 4009 { return "TV Shows|Sports" }
        if self.rawValue == 4010 { return "TV Shows|Teens" }
        if self.rawValue == 4011 { return "TV Shows|Latino TV" }
        if self.rawValue == 4401 { return "Movies|Action & Adventure" }
        if self.rawValue == 4402 { return "Movies|Anime" }
        if self.rawValue == 4403 { return "Movies|Classics" }
        if self.rawValue == 4404 { return "Movies|Comedy" }
        if self.rawValue == 4405 { return "Movies|Documentary" }
        if self.rawValue == 4406 { return "Movies|Drama" }
        if self.rawValue == 4407 { return "Movies|Foreign" }
        if self.rawValue == 4408 { return "Movies|Horror" }
        if self.rawValue == 4409 { return "Movies|Independent" }
        if self.rawValue == 4410 { return "Movies|Kids & Family" }
        if self.rawValue == 4411 { return "Movies|Musicals" }
        if self.rawValue == 4412 { return "Movies|Romance" }
        if self.rawValue == 4413 { return "Movies|Sci-Fi & Fantasy" }
        if self.rawValue == 4414 { return "Movies|Short Films" }
        if self.rawValue == 4415 { return "Movies|Special Interest" }
        if self.rawValue == 4416 { return "Movies|Thriller" }
        if self.rawValue == 4417 { return "Movies|Sports" }
        if self.rawValue == 4418 { return "Movies|Western" }
        if self.rawValue == 4419 { return "Movies|Urban" }
        if self.rawValue == 4420 { return "Movies|Holiday" }
        if self.rawValue == 4421 { return "Movies|Made for TV" }
        if self.rawValue == 4422 { return "Movies|Concert Films" }
        if self.rawValue == 4423 { return "Movies|Music Documentaries" }
        if self.rawValue == 4424 { return "Movies|Music Feature Films" }
        if self.rawValue == 4425 { return "Movies|Japanese Cinema" }
        if self.rawValue == 4426 { return "Movies|Jidaigeki" }
        if self.rawValue == 4427 { return "Movies|Tokusatsu" }
        if self.rawValue == 4428 { return "Movies|Korean Cinema" }
        if self.rawValue == 4429 { return "Movies|Russian" }
        if self.rawValue == 4430 { return "Movies|Turkish" }
        if self.rawValue == 4431 { return "Movies|Bollywood" }
        if self.rawValue == 4432 { return "Movies|Regional Indian" }
        if self.rawValue == 4433 { return "Movies|Middle Eastern" }
        if self.rawValue == 4434 { return "Movies|African" }
        if self.rawValue == 6000 { return "App Store|Business" }
        if self.rawValue == 6001 { return "App Store|Weather" }
        if self.rawValue == 6002 { return "App Store|Utilities" }
        if self.rawValue == 6003 { return "App Store|Travel" }
        if self.rawValue == 6004 { return "App Store|Sports" }
        if self.rawValue == 6005 { return "App Store|Social Networking" }
        if self.rawValue == 6006 { return "App Store|Reference" }
        if self.rawValue == 6007 { return "App Store|Productivity" }
        if self.rawValue == 6008 { return "App Store|Photo & Video" }
        if self.rawValue == 6009 { return "App Store|News" }
        if self.rawValue == 6010 { return "App Store|Navigation" }
        if self.rawValue == 6011 { return "App Store|Music" }
        if self.rawValue == 6012 { return "App Store|Lifestyle" }
        if self.rawValue == 6013 { return "App Store|Health & Fitness" }
        if self.rawValue == 6014 { return "App Store|Games" }
        if self.rawValue == 6015 { return "App Store|Finance" }
        if self.rawValue == 6016 { return "App Store|Entertainment" }
        if self.rawValue == 6017 { return "App Store|Education" }
        if self.rawValue == 6018 { return "App Store|Books" }
        if self.rawValue == 6020 { return "App Store|Medical" }
        if self.rawValue == 6021 { return "App Store|Magazines & Newspapers" }
        if self.rawValue == 6022 { return "App Store|Catalogs" }
        if self.rawValue == 6023 { return "App Store|Food & Drink" }
        if self.rawValue == 6024 { return "App Store|Shopping" }
        if self.rawValue == 6025 { return "App Store|Stickers" }
        if self.rawValue == 6026 { return "App Store|Developer Tools" }
        if self.rawValue == 6027 { return "App Store|Graphics & Design" }
        if self.rawValue == 7001 { return "App Store|Games|Action" }
        if self.rawValue == 7002 { return "App Store|Games|Adventure" }
        if self.rawValue == 7003 { return "App Store|Games|Casual" }
        if self.rawValue == 7004 { return "App Store|Games|Board" }
        if self.rawValue == 7005 { return "App Store|Games|Card" }
        if self.rawValue == 7006 { return "App Store|Games|Casino" }
        if self.rawValue == 7007 { return "App Store|Games|Dice" }
        if self.rawValue == 7008 { return "App Store|Games|Educational" }
        if self.rawValue == 7009 { return "App Store|Games|Family" }
        if self.rawValue == 7011 { return "App Store|Games|Music" }
        if self.rawValue == 7012 { return "App Store|Games|Puzzle" }
        if self.rawValue == 7013 { return "App Store|Games|Racing" }
        if self.rawValue == 7014 { return "App Store|Games|Role Playing" }
        if self.rawValue == 7015 { return "App Store|Games|Simulation" }
        if self.rawValue == 7016 { return "App Store|Games|Sports" }
        if self.rawValue == 7017 { return "App Store|Games|Strategy" }
        if self.rawValue == 7018 { return "App Store|Games|Trivia" }
        if self.rawValue == 7019 { return "App Store|Games|Word" }
        if self.rawValue == 8001 { return "Tones|Ringtones|Alternative" }
        if self.rawValue == 8002 { return "Tones|Ringtones|Blues" }
        if self.rawValue == 8003 { return "Tones|Ringtones|Children's Music" }
        if self.rawValue == 8004 { return "Tones|Ringtones|Classical" }
        if self.rawValue == 8005 { return "Tones|Ringtones|Comedy" }
        if self.rawValue == 8006 { return "Tones|Ringtones|Country" }
        if self.rawValue == 8007 { return "Tones|Ringtones|Dance" }
        if self.rawValue == 8008 { return "Tones|Ringtones|Electronic" }
        if self.rawValue == 8009 { return "Tones|Ringtones|Enka" }
        if self.rawValue == 8010 { return "Tones|Ringtones|French Pop" }
        if self.rawValue == 8011 { return "Tones|Ringtones|German Folk" }
        if self.rawValue == 8012 { return "Tones|Ringtones|German Pop" }
        if self.rawValue == 8013 { return "Tones|Ringtones|Hip-Hop/Rap" }
        if self.rawValue == 8014 { return "Tones|Ringtones|Holiday" }
        if self.rawValue == 8015 { return "Tones|Ringtones|Inspirational" }
        if self.rawValue == 8016 { return "Tones|Ringtones|J-Pop" }
        if self.rawValue == 8017 { return "Tones|Ringtones|Jazz" }
        if self.rawValue == 8018 { return "Tones|Ringtones|Kayokyoku" }
        if self.rawValue == 8019 { return "Tones|Ringtones|Latin" }
        if self.rawValue == 8020 { return "Tones|Ringtones|New Age" }
        if self.rawValue == 8021 { return "Tones|Ringtones|Classical|Opera" }
        if self.rawValue == 8022 { return "Tones|Ringtones|Pop" }
        if self.rawValue == 8023 { return "Tones|Ringtones|R&B/Soul" }
        if self.rawValue == 8024 { return "Tones|Ringtones|Reggae" }
        if self.rawValue == 8025 { return "Tones|Ringtones|Rock" }
        if self.rawValue == 8026 { return "Tones|Ringtones|Singer/Songwriter" }
        if self.rawValue == 8027 { return "Tones|Ringtones|Soundtrack" }
        if self.rawValue == 8028 { return "Tones|Ringtones|Spoken Word" }
        if self.rawValue == 8029 { return "Tones|Ringtones|Vocal" }
        if self.rawValue == 8030 { return "Tones|Ringtones|World" }
        if self.rawValue == 8050 { return "Tones|Alert Tones|Sound Effects" }
        if self.rawValue == 8051 { return "Tones|Alert Tones|Dialogue" }
        if self.rawValue == 8052 { return "Tones|Alert Tones|Music" }
        if self.rawValue == 8053 { return "Tones|Ringtones" }
        if self.rawValue == 8054 { return "Tones|Alert Tones" }
        if self.rawValue == 8055 { return "Tones|Ringtones|Alternative|Chinese Alt" }
        if self.rawValue == 8056 { return "Tones|Ringtones|Alternative|College Rock" }
        if self.rawValue == 8057 { return "Tones|Ringtones|Alternative|Goth Rock" }
        if self.rawValue == 8058 { return "Tones|Ringtones|Alternative|Grunge" }
        if self.rawValue == 8059 { return "Tones|Ringtones|Alternative|Indie Rock" }
        if self.rawValue == 8060 { return "Tones|Ringtones|Alternative|Korean Indie" }
        if self.rawValue == 8061 { return "Tones|Ringtones|Alternative|New Wave" }
        if self.rawValue == 8062 { return "Tones|Ringtones|Alternative|Punk" }
        if self.rawValue == 8063 { return "Tones|Ringtones|Anime" }
        if self.rawValue == 8064 { return "Tones|Ringtones|Arabic" }
        if self.rawValue == 8065 { return "Tones|Ringtones|Arabic|Arabic Pop" }
        if self.rawValue == 8066 { return "Tones|Ringtones|Arabic|Islamic" }
        if self.rawValue == 8067 { return "Tones|Ringtones|Arabic|Khaleeji" }
        if self.rawValue == 8068 { return "Tones|Ringtones|Arabic|North African" }
        if self.rawValue == 8069 { return "Tones|Ringtones|Blues|Acoustic Blues" }
        if self.rawValue == 8070 { return "Tones|Ringtones|Blues|Chicago Blues" }
        if self.rawValue == 8071 { return "Tones|Ringtones|Blues|Classic Blues" }
        if self.rawValue == 8072 { return "Tones|Ringtones|Blues|Contemporary Blues" }
        if self.rawValue == 8073 { return "Tones|Ringtones|Blues|Country Blues" }
        if self.rawValue == 8074 { return "Tones|Ringtones|Blues|Delta Blues" }
        if self.rawValue == 8075 { return "Tones|Ringtones|Blues|Electric Blues" }
        if self.rawValue == 8076 { return "Tones|Ringtones|Brazilian" }
        if self.rawValue == 8077 { return "Tones|Ringtones|Brazilian|Axe" }
        if self.rawValue == 8078 { return "Tones|Ringtones|Brazilian|Baile Funk" }
        if self.rawValue == 8079 { return "Tones|Ringtones|Brazilian|Bossa Nova" }
        if self.rawValue == 8080 { return "Tones|Ringtones|Brazilian|Choro" }
        if self.rawValue == 8081 { return "Tones|Ringtones|Brazilian|Forro" }
        if self.rawValue == 8082 { return "Tones|Ringtones|Brazilian|Frevo" }
        if self.rawValue == 8083 { return "Tones|Ringtones|Brazilian|MPB" }
        if self.rawValue == 8084 { return "Tones|Ringtones|Brazilian|Pagode" }
        if self.rawValue == 8085 { return "Tones|Ringtones|Brazilian|Samba" }
        if self.rawValue == 8086 { return "Tones|Ringtones|Brazilian|Sertanejo" }
        if self.rawValue == 8087 { return "Tones|Ringtones|Children's Music|Lullabies" }
        if self.rawValue == 8088 { return "Tones|Ringtones|Children's Music|Sing-Along" }
        if self.rawValue == 8089 { return "Tones|Ringtones|Children's Music|Stories" }
        if self.rawValue == 8090 { return "Tones|Ringtones|Chinese" }
        if self.rawValue == 8091 { return "Tones|Ringtones|Chinese|Chinese Classical" }
        if self.rawValue == 8092 { return "Tones|Ringtones|Chinese|Chinese Flute" }
        if self.rawValue == 8093 { return "Tones|Ringtones|Chinese|Chinese Opera" }
        if self.rawValue == 8094 { return "Tones|Ringtones|Chinese|Chinese Orchestral" }
        if self.rawValue == 8095 { return "Tones|Ringtones|Chinese|Chinese Regional Folk" }
        if self.rawValue == 8096 { return "Tones|Ringtones|Chinese|Chinese Strings" }
        if self.rawValue == 8097 { return "Tones|Ringtones|Chinese|Taiwanese Folk" }
        if self.rawValue == 8098 { return "Tones|Ringtones|Chinese|Tibetan Native Music" }
        if self.rawValue == 8099 { return "Tones|Ringtones|Christian & Gospel" }
        if self.rawValue == 8100 { return "Tones|Ringtones|Christian & Gospel|CCM" }
        if self.rawValue == 8101 { return "Tones|Ringtones|Christian & Gospel|Christian Metal" }
        if self.rawValue == 8102 { return "Tones|Ringtones|Christian & Gospel|Christian Pop" }
        if self.rawValue == 8103 { return "Tones|Ringtones|Christian & Gospel|Christian Rap" }
        if self.rawValue == 8104 { return "Tones|Ringtones|Christian & Gospel|Christian Rock" }
        if self.rawValue == 8105 { return "Tones|Ringtones|Christian & Gospel|Classic Christian" }
        if self.rawValue == 8106 { return "Tones|Ringtones|Christian & Gospel|Contemporary Gospel" }
        if self.rawValue == 8107 { return "Tones|Ringtones|Christian & Gospel|Gospel" }
        if self.rawValue == 8108 { return "Tones|Ringtones|Christian & Gospel|Praise & Worship" }
        if self.rawValue == 8109 { return "Tones|Ringtones|Christian & Gospel|Southern Gospel" }
        if self.rawValue == 8110 { return "Tones|Ringtones|Christian & Gospel|Traditional Gospel" }
        if self.rawValue == 8111 { return "Tones|Ringtones|Classical|Avant-Garde" }
        if self.rawValue == 8112 { return "Tones|Ringtones|Classical|Baroque Era" }
        if self.rawValue == 8113 { return "Tones|Ringtones|Classical|Chamber Music" }
        if self.rawValue == 8114 { return "Tones|Ringtones|Classical|Chant" }
        if self.rawValue == 8115 { return "Tones|Ringtones|Classical|Choral" }
        if self.rawValue == 8116 { return "Tones|Ringtones|Classical|Classical Crossover" }
        if self.rawValue == 8117 { return "Tones|Ringtones|Classical|Early Music" }
        if self.rawValue == 8118 { return "Tones|Ringtones|Classical|High Classical" }
        if self.rawValue == 8119 { return "Tones|Ringtones|Classical|Impressionist" }
        if self.rawValue == 8120 { return "Tones|Ringtones|Classical|Medieval Era" }
        if self.rawValue == 8121 { return "Tones|Ringtones|Classical|Minimalism" }
        if self.rawValue == 8122 { return "Tones|Ringtones|Classical|Modern Era" }
        if self.rawValue == 8123 { return "Tones|Ringtones|Classical|Orchestral" }
        if self.rawValue == 8124 { return "Tones|Ringtones|Classical|Renaissance" }
        if self.rawValue == 8125 { return "Tones|Ringtones|Classical|Romantic Era" }
        if self.rawValue == 8126 { return "Tones|Ringtones|Classical|Wedding Music" }
        if self.rawValue == 8127 { return "Tones|Ringtones|Comedy|Novelty" }
        if self.rawValue == 8128 { return "Tones|Ringtones|Comedy|Standup Comedy" }
        if self.rawValue == 8129 { return "Tones|Ringtones|Country|Alternative Country" }
        if self.rawValue == 8130 { return "Tones|Ringtones|Country|Americana" }
        if self.rawValue == 8131 { return "Tones|Ringtones|Country|Bluegrass" }
        if self.rawValue == 8132 { return "Tones|Ringtones|Country|Contemporary Bluegrass" }
        if self.rawValue == 8133 { return "Tones|Ringtones|Country|Contemporary Country" }
        if self.rawValue == 8134 { return "Tones|Ringtones|Country|Country Gospel" }
        if self.rawValue == 8135 { return "Tones|Ringtones|Country|Honky Tonk" }
        if self.rawValue == 8136 { return "Tones|Ringtones|Country|Outlaw Country" }
        if self.rawValue == 8137 { return "Tones|Ringtones|Country|Thai Country" }
        if self.rawValue == 8138 { return "Tones|Ringtones|Country|Traditional Bluegrass" }
        if self.rawValue == 8139 { return "Tones|Ringtones|Country|Traditional Country" }
        if self.rawValue == 8140 { return "Tones|Ringtones|Country|Urban Cowboy" }
        if self.rawValue == 8141 { return "Tones|Ringtones|Dance|Breakbeat" }
        if self.rawValue == 8142 { return "Tones|Ringtones|Dance|Exercise" }
        if self.rawValue == 8143 { return "Tones|Ringtones|Dance|Garage" }
        if self.rawValue == 8144 { return "Tones|Ringtones|Dance|Hardcore" }
        if self.rawValue == 8145 { return "Tones|Ringtones|Dance|House" }
        if self.rawValue == 8146 { return "Tones|Ringtones|Dance|Jungle/Drum'n'bass" }
        if self.rawValue == 8147 { return "Tones|Ringtones|Dance|Techno" }
        if self.rawValue == 8148 { return "Tones|Ringtones|Dance|Trance" }
        if self.rawValue == 8149 { return "Tones|Ringtones|Disney" }
        if self.rawValue == 8150 { return "Tones|Ringtones|Easy Listening" }
        if self.rawValue == 8151 { return "Tones|Ringtones|Easy Listening|Lounge" }
        if self.rawValue == 8152 { return "Tones|Ringtones|Easy Listening|Swing" }
        if self.rawValue == 8153 { return "Tones|Ringtones|Electronic|Ambient" }
        if self.rawValue == 8154 { return "Tones|Ringtones|Electronic|Downtempo" }
        if self.rawValue == 8155 { return "Tones|Ringtones|Electronic|Electronica" }
        if self.rawValue == 8156 { return "Tones|Ringtones|Electronic|IDM/Experimental" }
        if self.rawValue == 8157 { return "Tones|Ringtones|Electronic|Industrial" }
        if self.rawValue == 8158 { return "Tones|Ringtones|Fitness & Workout" }
        if self.rawValue == 8159 { return "Tones|Ringtones|Folk" }
        if self.rawValue == 8160 { return "Tones|Ringtones|Hip-Hop/Rap|Alternative Rap" }
        if self.rawValue == 8161 { return "Tones|Ringtones|Hip-Hop/Rap|Chinese Hip-Hop" }
        if self.rawValue == 8162 { return "Tones|Ringtones|Hip-Hop/Rap|Dirty South" }
        if self.rawValue == 8163 { return "Tones|Ringtones|Hip-Hop/Rap|East Coast Rap" }
        if self.rawValue == 8164 { return "Tones|Ringtones|Hip-Hop/Rap|Gangsta Rap" }
        if self.rawValue == 8165 { return "Tones|Ringtones|Hip-Hop/Rap|Hardcore Rap" }
        if self.rawValue == 8166 { return "Tones|Ringtones|Hip-Hop/Rap|Hip-Hop" }
        if self.rawValue == 8167 { return "Tones|Ringtones|Hip-Hop/Rap|Korean Hip-Hop" }
        if self.rawValue == 8168 { return "Tones|Ringtones|Hip-Hop/Rap|Latin Rap" }
        if self.rawValue == 8169 { return "Tones|Ringtones|Hip-Hop/Rap|Old School Rap" }
        if self.rawValue == 8170 { return "Tones|Ringtones|Hip-Hop/Rap|Rap" }
        if self.rawValue == 8171 { return "Tones|Ringtones|Hip-Hop/Rap|Underground Rap" }
        if self.rawValue == 8172 { return "Tones|Ringtones|Hip-Hop/Rap|West Coast Rap" }
        if self.rawValue == 8173 { return "Tones|Ringtones|Holiday|Chanukah" }
        if self.rawValue == 8174 { return "Tones|Ringtones|Holiday|Christmas" }
        if self.rawValue == 8175 { return "Tones|Ringtones|Holiday|Christmas: Children's" }
        if self.rawValue == 8176 { return "Tones|Ringtones|Holiday|Christmas: Classic" }
        if self.rawValue == 8177 { return "Tones|Ringtones|Holiday|Christmas: Classical" }
        if self.rawValue == 8178 { return "Tones|Ringtones|Holiday|Christmas: Jazz" }
        if self.rawValue == 8179 { return "Tones|Ringtones|Holiday|Christmas: Modern" }
        if self.rawValue == 8180 { return "Tones|Ringtones|Holiday|Christmas: Pop" }
        if self.rawValue == 8181 { return "Tones|Ringtones|Holiday|Christmas: R&B" }
        if self.rawValue == 8182 { return "Tones|Ringtones|Holiday|Christmas: Religious" }
        if self.rawValue == 8183 { return "Tones|Ringtones|Holiday|Christmas: Rock" }
        if self.rawValue == 8184 { return "Tones|Ringtones|Holiday|Easter" }
        if self.rawValue == 8185 { return "Tones|Ringtones|Holiday|Halloween" }
        if self.rawValue == 8186 { return "Tones|Ringtones|Holiday|Thanksgiving" }
        if self.rawValue == 8187 { return "Tones|Ringtones|Indian" }
        if self.rawValue == 8188 { return "Tones|Ringtones|Indian|Bollywood" }
        if self.rawValue == 8189 { return "Tones|Ringtones|Indian|Devotional & Spiritual" }
        if self.rawValue == 8190 { return "Tones|Ringtones|Indian|Ghazals" }
        if self.rawValue == 8191 { return "Tones|Ringtones|Indian|Indian Classical" }
        if self.rawValue == 8192 { return "Tones|Ringtones|Indian|Indian Folk" }
        if self.rawValue == 8193 { return "Tones|Ringtones|Indian|Indian Pop" }
        if self.rawValue == 8194 { return "Tones|Ringtones|Indian|Regional Indian" }
        if self.rawValue == 8195 { return "Tones|Ringtones|Indian|Sufi" }
        if self.rawValue == 8196 { return "Tones|Ringtones|Indian|Regional Indian|Tamil" }
        if self.rawValue == 8197 { return "Tones|Ringtones|Indian|Regional Indian|Telugu" }
        if self.rawValue == 8198 { return "Tones|Ringtones|Instrumental" }
        if self.rawValue == 8199 { return "Tones|Ringtones|Jazz|Avant-Garde Jazz" }
        if self.rawValue == 8201 { return "Tones|Ringtones|Jazz|Big Band" }
        if self.rawValue == 8202 { return "Tones|Ringtones|Jazz|Bop" }
        if self.rawValue == 8203 { return "Tones|Ringtones|Jazz|Contemporary Jazz" }
        if self.rawValue == 8204 { return "Tones|Ringtones|Jazz|Cool Jazz" }
        if self.rawValue == 8205 { return "Tones|Ringtones|Jazz|Crossover Jazz" }
        if self.rawValue == 8206 { return "Tones|Ringtones|Jazz|Dixieland" }
        if self.rawValue == 8207 { return "Tones|Ringtones|Jazz|Fusion" }
        if self.rawValue == 8208 { return "Tones|Ringtones|Jazz|Hard Bop" }
        if self.rawValue == 8209 { return "Tones|Ringtones|Jazz|Latin Jazz" }
        if self.rawValue == 8210 { return "Tones|Ringtones|Jazz|Mainstream Jazz" }
        if self.rawValue == 8211 { return "Tones|Ringtones|Jazz|Ragtime" }
        if self.rawValue == 8212 { return "Tones|Ringtones|Jazz|Smooth Jazz" }
        if self.rawValue == 8213 { return "Tones|Ringtones|Jazz|Trad Jazz" }
        if self.rawValue == 8214 { return "Tones|Ringtones|Pop|K-Pop" }
        if self.rawValue == 8215 { return "Tones|Ringtones|Karaoke" }
        if self.rawValue == 8216 { return "Tones|Ringtones|Korean" }
        if self.rawValue == 8217 { return "Tones|Ringtones|Korean|Korean Classical" }
        if self.rawValue == 8218 { return "Tones|Ringtones|Korean|Korean Trad Instrumental" }
        if self.rawValue == 8219 { return "Tones|Ringtones|Korean|Korean Trad Song" }
        if self.rawValue == 8220 { return "Tones|Ringtones|Korean|Korean Trad Theater" }
        if self.rawValue == 8221 { return "Tones|Ringtones|Latin|Alternative & Rock in Spanish" }
        if self.rawValue == 8222 { return "Tones|Ringtones|Latin|Baladas y Boleros" }
        if self.rawValue == 8223 { return "Tones|Ringtones|Latin|Contemporary Latin" }
        if self.rawValue == 8224 { return "Tones|Ringtones|Latin|Latin Jazz" }
        if self.rawValue == 8225 { return "Tones|Ringtones|Latin|Latin Urban" }
        if self.rawValue == 8226 { return "Tones|Ringtones|Latin|Pop in Spanish" }
        if self.rawValue == 8227 { return "Tones|Ringtones|Latin|Raices" }
        if self.rawValue == 8228 { return "Tones|Ringtones|Latin|Musica Mexicana" }
        if self.rawValue == 8229 { return "Tones|Ringtones|Latin|Salsa y Tropical" }
        if self.rawValue == 8230 { return "Tones|Ringtones|Marching Bands" }
        if self.rawValue == 8231 { return "Tones|Ringtones|New Age|Healing" }
        if self.rawValue == 8232 { return "Tones|Ringtones|New Age|Meditation" }
        if self.rawValue == 8233 { return "Tones|Ringtones|New Age|Nature" }
        if self.rawValue == 8234 { return "Tones|Ringtones|New Age|Relaxation" }
        if self.rawValue == 8235 { return "Tones|Ringtones|New Age|Travel" }
        if self.rawValue == 8236 { return "Tones|Ringtones|Orchestral" }
        if self.rawValue == 8237 { return "Tones|Ringtones|Pop|Adult Contemporary" }
        if self.rawValue == 8238 { return "Tones|Ringtones|Pop|Britpop" }
        if self.rawValue == 8239 { return "Tones|Ringtones|Pop|C-Pop" }
        if self.rawValue == 8240 { return "Tones|Ringtones|Pop|Cantopop/HK-Pop" }
        if self.rawValue == 8241 { return "Tones|Ringtones|Pop|Indo Pop" }
        if self.rawValue == 8242 { return "Tones|Ringtones|Pop|Korean Folk-Pop" }
        if self.rawValue == 8243 { return "Tones|Ringtones|Pop|Malaysian Pop" }
        if self.rawValue == 8244 { return "Tones|Ringtones|Pop|Mandopop" }
        if self.rawValue == 8245 { return "Tones|Ringtones|Pop|Manilla Sound" }
        if self.rawValue == 8246 { return "Tones|Ringtones|Pop|Oldies" }
        if self.rawValue == 8247 { return "Tones|Ringtones|Pop|Original Pilipino Music" }
        if self.rawValue == 8248 { return "Tones|Ringtones|Pop|Pinoy Pop" }
        if self.rawValue == 8249 { return "Tones|Ringtones|Pop|Pop/Rock" }
        if self.rawValue == 8250 { return "Tones|Ringtones|Pop|Soft Rock" }
        if self.rawValue == 8251 { return "Tones|Ringtones|Pop|Tai-Pop" }
        if self.rawValue == 8252 { return "Tones|Ringtones|Pop|Teen Pop" }
        if self.rawValue == 8253 { return "Tones|Ringtones|Pop|Thai Pop" }
        if self.rawValue == 8254 { return "Tones|Ringtones|R&B/Soul|Contemporary R&B" }
        if self.rawValue == 8255 { return "Tones|Ringtones|R&B/Soul|Disco" }
        if self.rawValue == 8256 { return "Tones|Ringtones|R&B/Soul|Doo Wop" }
        if self.rawValue == 8257 { return "Tones|Ringtones|R&B/Soul|Funk" }
        if self.rawValue == 8258 { return "Tones|Ringtones|R&B/Soul|Motown" }
        if self.rawValue == 8259 { return "Tones|Ringtones|R&B/Soul|Neo-Soul" }
        if self.rawValue == 8260 { return "Tones|Ringtones|R&B/Soul|Soul" }
        if self.rawValue == 8261 { return "Tones|Ringtones|Reggae|Modern Dancehall" }
        if self.rawValue == 8262 { return "Tones|Ringtones|Reggae|Dub" }
        if self.rawValue == 8263 { return "Tones|Ringtones|Reggae|Roots Reggae" }
        if self.rawValue == 8264 { return "Tones|Ringtones|Reggae|Ska" }
        if self.rawValue == 8265 { return "Tones|Ringtones|Rock|Adult Alternative" }
        if self.rawValue == 8266 { return "Tones|Ringtones|Rock|American Trad Rock" }
        if self.rawValue == 8267 { return "Tones|Ringtones|Rock|Arena Rock" }
        if self.rawValue == 8268 { return "Tones|Ringtones|Rock|Blues-Rock" }
        if self.rawValue == 8269 { return "Tones|Ringtones|Rock|British Invasion" }
        if self.rawValue == 8270 { return "Tones|Ringtones|Rock|Chinese Rock" }
        if self.rawValue == 8271 { return "Tones|Ringtones|Rock|Death Metal/Black Metal" }
        if self.rawValue == 8272 { return "Tones|Ringtones|Rock|Glam Rock" }
        if self.rawValue == 8273 { return "Tones|Ringtones|Rock|Hair Metal" }
        if self.rawValue == 8274 { return "Tones|Ringtones|Rock|Hard Rock" }
        if self.rawValue == 8275 { return "Tones|Ringtones|Rock|Metal" }
        if self.rawValue == 8276 { return "Tones|Ringtones|Rock|Jam Bands" }
        if self.rawValue == 8277 { return "Tones|Ringtones|Rock|Korean Rock" }
        if self.rawValue == 8278 { return "Tones|Ringtones|Rock|Prog-Rock/Art Rock" }
        if self.rawValue == 8279 { return "Tones|Ringtones|Rock|Psychedelic" }
        if self.rawValue == 8280 { return "Tones|Ringtones|Rock|Rock & Roll" }
        if self.rawValue == 8281 { return "Tones|Ringtones|Rock|Rockabilly" }
        if self.rawValue == 8282 { return "Tones|Ringtones|Rock|Roots Rock" }
        if self.rawValue == 8283 { return "Tones|Ringtones|Rock|Singer/Songwriter" }
        if self.rawValue == 8284 { return "Tones|Ringtones|Rock|Southern Rock" }
        if self.rawValue == 8285 { return "Tones|Ringtones|Rock|Surf" }
        if self.rawValue == 8286 { return "Tones|Ringtones|Rock|Tex-Mex" }
        if self.rawValue == 8287 { return "Tones|Ringtones|Singer/Songwriter|Alternative Folk" }
        if self.rawValue == 8288 { return "Tones|Ringtones|Singer/Songwriter|Contemporary Folk" }
        if self.rawValue == 8289 { return "Tones|Ringtones|Singer/Songwriter|Contemporary Singer/Songwriter" }
        if self.rawValue == 8290 { return "Tones|Ringtones|Singer/Songwriter|Folk-Rock" }
        if self.rawValue == 8291 { return "Tones|Ringtones|Singer/Songwriter|New Acoustic" }
        if self.rawValue == 8292 { return "Tones|Ringtones|Singer/Songwriter|Traditional Folk" }
        if self.rawValue == 8293 { return "Tones|Ringtones|Soundtrack|Foreign Cinema" }
        if self.rawValue == 8294 { return "Tones|Ringtones|Soundtrack|Musicals" }
        if self.rawValue == 8295 { return "Tones|Ringtones|Soundtrack|Original Score" }
        if self.rawValue == 8296 { return "Tones|Ringtones|Soundtrack|Sound Effects" }
        if self.rawValue == 8297 { return "Tones|Ringtones|Soundtrack|Soundtrack" }
        if self.rawValue == 8298 { return "Tones|Ringtones|Soundtrack|TV Soundtrack" }
        if self.rawValue == 8299 { return "Tones|Ringtones|Vocal|Standards" }
        if self.rawValue == 8300 { return "Tones|Ringtones|Vocal|Traditional Pop" }
        if self.rawValue == 8301 { return "Tones|Ringtones|Vocal|Trot" }
        if self.rawValue == 8302 { return "Tones|Ringtones|Jazz|Vocal Jazz" }
        if self.rawValue == 8303 { return "Tones|Ringtones|Vocal|Vocal Pop" }
        if self.rawValue == 8304 { return "Tones|Ringtones|African" }
        if self.rawValue == 8305 { return "Tones|Ringtones|African|Afrikaans" }
        if self.rawValue == 8306 { return "Tones|Ringtones|African|Afro-Beat" }
        if self.rawValue == 8307 { return "Tones|Ringtones|African|Afro-Pop" }
        if self.rawValue == 8308 { return "Tones|Ringtones|Turkish|Arabesque" }
        if self.rawValue == 8309 { return "Tones|Ringtones|World|Asia" }
        if self.rawValue == 8310 { return "Tones|Ringtones|World|Australia" }
        if self.rawValue == 8311 { return "Tones|Ringtones|World|Cajun" }
        if self.rawValue == 8312 { return "Tones|Ringtones|World|Calypso" }
        if self.rawValue == 8313 { return "Tones|Ringtones|World|Caribbean" }
        if self.rawValue == 8314 { return "Tones|Ringtones|World|Celtic" }
        if self.rawValue == 8315 { return "Tones|Ringtones|World|Celtic Folk" }
        if self.rawValue == 8316 { return "Tones|Ringtones|World|Contemporary Celtic" }
        if self.rawValue == 8317 { return "Tones|Ringtones|World|Dangdut" }
        if self.rawValue == 8318 { return "Tones|Ringtones|World|Dini" }
        if self.rawValue == 8319 { return "Tones|Ringtones|World|Europe" }
        if self.rawValue == 8320 { return "Tones|Ringtones|World|Fado" }
        if self.rawValue == 8321 { return "Tones|Ringtones|World|Farsi" }
        if self.rawValue == 8322 { return "Tones|Ringtones|World|Flamenco" }
        if self.rawValue == 8323 { return "Tones|Ringtones|World|France" }
        if self.rawValue == 8324 { return "Tones|Ringtones|Turkish|Halk" }
        if self.rawValue == 8325 { return "Tones|Ringtones|World|Hawaii" }
        if self.rawValue == 8326 { return "Tones|Ringtones|World|Iberia" }
        if self.rawValue == 8327 { return "Tones|Ringtones|World|Indonesian Religious" }
        if self.rawValue == 8328 { return "Tones|Ringtones|World|Israeli" }
        if self.rawValue == 8329 { return "Tones|Ringtones|World|Japan" }
        if self.rawValue == 8330 { return "Tones|Ringtones|World|Klezmer" }
        if self.rawValue == 8331 { return "Tones|Ringtones|World|North America" }
        if self.rawValue == 8332 { return "Tones|Ringtones|World|Polka" }
        if self.rawValue == 8333 { return "Tones|Ringtones|Russian" }
        if self.rawValue == 8334 { return "Tones|Ringtones|Russian|Russian Chanson" }
        if self.rawValue == 8335 { return "Tones|Ringtones|Turkish|Sanat" }
        if self.rawValue == 8336 { return "Tones|Ringtones|World|Soca" }
        if self.rawValue == 8337 { return "Tones|Ringtones|World|South Africa" }
        if self.rawValue == 8338 { return "Tones|Ringtones|World|South America" }
        if self.rawValue == 8339 { return "Tones|Ringtones|World|Tango" }
        if self.rawValue == 8340 { return "Tones|Ringtones|World|Traditional Celtic" }
        if self.rawValue == 8341 { return "Tones|Ringtones|Turkish" }
        if self.rawValue == 8342 { return "Tones|Ringtones|World|Worldbeat" }
        if self.rawValue == 8343 { return "Tones|Ringtones|World|Zydeco" }
        if self.rawValue == 8345 { return "Tones|Ringtones|Classical|Art Song" }
        if self.rawValue == 8346 { return "Tones|Ringtones|Classical|Brass & Woodwinds" }
        if self.rawValue == 8347 { return "Tones|Ringtones|Classical|Solo Instrumental" }
        if self.rawValue == 8348 { return "Tones|Ringtones|Classical|Contemporary Era" }
        if self.rawValue == 8349 { return "Tones|Ringtones|Classical|Oratorio" }
        if self.rawValue == 8350 { return "Tones|Ringtones|Classical|Cantata" }
        if self.rawValue == 8351 { return "Tones|Ringtones|Classical|Electronic" }
        if self.rawValue == 8352 { return "Tones|Ringtones|Classical|Sacred" }
        if self.rawValue == 8353 { return "Tones|Ringtones|Classical|Guitar" }
        if self.rawValue == 8354 { return "Tones|Ringtones|Classical|Piano" }
        if self.rawValue == 8355 { return "Tones|Ringtones|Classical|Violin" }
        if self.rawValue == 8356 { return "Tones|Ringtones|Classical|Cello" }
        if self.rawValue == 8357 { return "Tones|Ringtones|Classical|Percussion" }
        if self.rawValue == 8358 { return "Tones|Ringtones|Electronic|Dubstep" }
        if self.rawValue == 8359 { return "Tones|Ringtones|Electronic|Bass" }
        if self.rawValue == 8360 { return "Tones|Ringtones|Hip-Hop/Rap|UK Hip Hop" }
        if self.rawValue == 8361 { return "Tones|Ringtones|Reggae|Lovers Rock" }
        if self.rawValue == 8362 { return "Tones|Ringtones|Alternative|EMO" }
        if self.rawValue == 8363 { return "Tones|Ringtones|Alternative|Pop Punk" }
        if self.rawValue == 8364 { return "Tones|Ringtones|Alternative|Indie Pop" }
        if self.rawValue == 8365 { return "Tones|Ringtones|New Age|Yoga" }
        if self.rawValue == 8366 { return "Tones|Ringtones|Pop|Tribute" }
        if self.rawValue == 8367 { return "Tones|Ringtones|Pop|Shows" }
        if self.rawValue == 8368 { return "Tones|Ringtones|Cuban" }
        if self.rawValue == 8369 { return "Tones|Ringtones|Cuban|Mambo" }
        if self.rawValue == 8370 { return "Tones|Ringtones|Cuban|Chachacha" }
        if self.rawValue == 8371 { return "Tones|Ringtones|Cuban|Guajira" }
        if self.rawValue == 8372 { return "Tones|Ringtones|Cuban|Son" }
        if self.rawValue == 8373 { return "Tones|Ringtones|Cuban|Bolero" }
        if self.rawValue == 8374 { return "Tones|Ringtones|Cuban|Guaracha" }
        if self.rawValue == 8375 { return "Tones|Ringtones|Cuban|Timba" }
        if self.rawValue == 8376 { return "Tones|Ringtones|Soundtrack|Video Game" }
        if self.rawValue == 8377 { return "Tones|Ringtones|Indian|Regional Indian|Punjabi|Punjabi Pop" }
        if self.rawValue == 8378 { return "Tones|Ringtones|Indian|Regional Indian|Bengali|Rabindra Sangeet" }
        if self.rawValue == 8379 { return "Tones|Ringtones|Indian|Regional Indian|Malayalam" }
        if self.rawValue == 8380 { return "Tones|Ringtones|Indian|Regional Indian|Kannada" }
        if self.rawValue == 8381 { return "Tones|Ringtones|Indian|Regional Indian|Marathi" }
        if self.rawValue == 8382 { return "Tones|Ringtones|Indian|Regional Indian|Gujarati" }
        if self.rawValue == 8383 { return "Tones|Ringtones|Indian|Regional Indian|Assamese" }
        if self.rawValue == 8384 { return "Tones|Ringtones|Indian|Regional Indian|Bhojpuri" }
        if self.rawValue == 8385 { return "Tones|Ringtones|Indian|Regional Indian|Haryanvi" }
        if self.rawValue == 8386 { return "Tones|Ringtones|Indian|Regional Indian|Odia" }
        if self.rawValue == 8387 { return "Tones|Ringtones|Indian|Regional Indian|Rajasthani" }
        if self.rawValue == 8388 { return "Tones|Ringtones|Indian|Regional Indian|Urdu" }
        if self.rawValue == 8389 { return "Tones|Ringtones|Indian|Regional Indian|Punjabi" }
        if self.rawValue == 8390 { return "Tones|Ringtones|Indian|Regional Indian|Bengali" }
        if self.rawValue == 8391 { return "Tones|Ringtones|Indian|Indian Classical|Carnatic Classical" }
        if self.rawValue == 8392 { return "Tones|Ringtones|Indian|Indian Classical|Hindustani Classical" }
        if self.rawValue == 8393 { return "Tones|Ringtones|African|Afro House" }
        if self.rawValue == 8394 { return "Tones|Ringtones|African|Afro Soul" }
        if self.rawValue == 8395 { return "Tones|Ringtones|African|Afrobeats" }
        if self.rawValue == 8396 { return "Tones|Ringtones|African|Benga" }
        if self.rawValue == 8397 { return "Tones|Ringtones|African|Bongo-Flava" }
        if self.rawValue == 8398 { return "Tones|Ringtones|African|Coupe-Decale" }
        if self.rawValue == 8399 { return "Tones|Ringtones|African|Gqom" }
        if self.rawValue == 8400 { return "Tones|Ringtones|African|Highlife" }
        if self.rawValue == 8401 { return "Tones|Ringtones|African|Kuduro" }
        if self.rawValue == 8402 { return "Tones|Ringtones|African|Kizomba" }
        if self.rawValue == 8403 { return "Tones|Ringtones|African|Kwaito" }
        if self.rawValue == 8404 { return "Tones|Ringtones|African|Mbalax" }
        if self.rawValue == 8405 { return "Tones|Ringtones|African|Ndombolo" }
        if self.rawValue == 8406 { return "Tones|Ringtones|African|Shangaan Electro" }
        if self.rawValue == 8407 { return "Tones|Ringtones|African|Soukous" }
        if self.rawValue == 8408 { return "Tones|Ringtones|African|Taarab" }
        if self.rawValue == 8409 { return "Tones|Ringtones|African|Zouglou" }
        if self.rawValue == 8410 { return "Tones|Ringtones|Turkish|Ozgun" }
        if self.rawValue == 8411 { return "Tones|Ringtones|Turkish|Fantezi" }
        if self.rawValue == 8412 { return "Tones|Ringtones|Turkish|Religious" }
        if self.rawValue == 8413 { return "Tones|Ringtones|Pop|Turkish Pop" }
        if self.rawValue == 8414 { return "Tones|Ringtones|Rock|Turkish Rock" }
        if self.rawValue == 8415 { return "Tones|Ringtones|Alternative|Turkish Alternative" }
        if self.rawValue == 8416 { return "Tones|Ringtones|Hip-Hop/Rap|Turkish Hip-Hop/Rap" }
        if self.rawValue == 8417 { return "Tones|Ringtones|African|Maskandi" }
        if self.rawValue == 8418 { return "Tones|Ringtones|Russian|Russian Romance" }
        if self.rawValue == 8419 { return "Tones|Ringtones|Russian|Russian Bard" }
        if self.rawValue == 8420 { return "Tones|Ringtones|Russian|Russian Pop" }
        if self.rawValue == 8421 { return "Tones|Ringtones|Russian|Russian Rock" }
        if self.rawValue == 8422 { return "Tones|Ringtones|Russian|Russian Hip-Hop" }
        if self.rawValue == 8423 { return "Tones|Ringtones|Arabic|Levant" }
        if self.rawValue == 8424 { return "Tones|Ringtones|Arabic|Levant|Dabke" }
        if self.rawValue == 8425 { return "Tones|Ringtones|Arabic|Maghreb Rai" }
        if self.rawValue == 8426 { return "Tones|Ringtones|Arabic|Khaleeji|Khaleeji Jalsat" }
        if self.rawValue == 8427 { return "Tones|Ringtones|Arabic|Khaleeji|Khaleeji Shailat" }
        if self.rawValue == 8428 { return "Tones|Ringtones|Tarab" }
        if self.rawValue == 8429 { return "Tones|Ringtones|Tarab|Iraqi Tarab" }
        if self.rawValue == 8430 { return "Tones|Ringtones|Tarab|Egyptian Tarab" }
        if self.rawValue == 8431 { return "Tones|Ringtones|Tarab|Khaleeji Tarab" }
        if self.rawValue == 8432 { return "Tones|Ringtones|Pop|Levant Pop" }
        if self.rawValue == 8433 { return "Tones|Ringtones|Pop|Iraqi Pop" }
        if self.rawValue == 8434 { return "Tones|Ringtones|Pop|Egyptian Pop" }
        if self.rawValue == 8435 { return "Tones|Ringtones|Pop|Maghreb Pop" }
        if self.rawValue == 8436 { return "Tones|Ringtones|Pop|Khaleeji Pop" }
        if self.rawValue == 8437 { return "Tones|Ringtones|Hip-Hop/Rap|Levant Hip-Hop" }
        if self.rawValue == 8438 { return "Tones|Ringtones|Hip-Hop/Rap|Egyptian Hip-Hop" }
        if self.rawValue == 8439 { return "Tones|Ringtones|Hip-Hop/Rap|Maghreb Hip-Hop" }
        if self.rawValue == 8440 { return "Tones|Ringtones|Hip-Hop/Rap|Khaleeji Hip-Hop" }
        if self.rawValue == 8441 { return "Tones|Ringtones|Alternative|Indie Levant" }
        if self.rawValue == 8442 { return "Tones|Ringtones|Alternative|Indie Egyptian" }
        if self.rawValue == 8443 { return "Tones|Ringtones|Alternative|Indie Maghreb" }
        if self.rawValue == 8444 { return "Tones|Ringtones|Electronic|Levant Electronic" }
        if self.rawValue == 8445 { return "Tones|Ringtones|Electronic|Electro-Cha'abi" }
        if self.rawValue == 8446 { return "Tones|Ringtones|Electronic|Maghreb Electronic" }
        if self.rawValue == 8447 { return "Tones|Ringtones|Folk|Iraqi Folk" }
        if self.rawValue == 8448 { return "Tones|Ringtones|Folk|Khaleeji Folk" }
        if self.rawValue == 8449 { return "Tones|Ringtones|Dance|Maghreb Dance" }
        if self.rawValue == 9002 { return "Books|Nonfiction" }
        if self.rawValue == 9003 { return "Books|Romance" }
        if self.rawValue == 9004 { return "Books|Travel & Adventure" }
        if self.rawValue == 9007 { return "Books|Arts & Entertainment" }
        if self.rawValue == 9008 { return "Books|Biographies & Memoirs" }
        if self.rawValue == 9009 { return "Books|Business & Personal Finance" }
        if self.rawValue == 9010 { return "Books|Children & Teens" }
        if self.rawValue == 9012 { return "Books|Humor" }
        if self.rawValue == 9015 { return "Books|History" }
        if self.rawValue == 9018 { return "Books|Religion & Spirituality" }
        if self.rawValue == 9019 { return "Books|Science & Nature" }
        if self.rawValue == 9020 { return "Books|Sci-Fi & Fantasy" }
        if self.rawValue == 9024 { return "Books|Lifestyle & Home" }
        if self.rawValue == 9025 { return "Books|Self-Development" }
        if self.rawValue == 9026 { return "Books|Comics & Graphic Novels" }
        if self.rawValue == 9027 { return "Books|Computers & Internet" }
        if self.rawValue == 9028 { return "Books|Cookbooks, Food & Wine" }
        if self.rawValue == 9029 { return "Books|Professional & Technical" }
        if self.rawValue == 9030 { return "Books|Parenting" }
        if self.rawValue == 9031 { return "Books|Fiction & Literature" }
        if self.rawValue == 9032 { return "Books|Mysteries & Thrillers" }
        if self.rawValue == 9033 { return "Books|Reference" }
        if self.rawValue == 9034 { return "Books|Politics & Current Events" }
        if self.rawValue == 9035 { return "Books|Sports & Outdoors" }
        if self.rawValue == 10001 { return "Books|Lifestyle & Home|Antiques & Collectibles" }
        if self.rawValue == 10002 { return "Books|Arts & Entertainment|Art & Architecture" }
        if self.rawValue == 10003 { return "Books|Religion & Spirituality|Bibles" }
        if self.rawValue == 10004 { return "Books|Self-Development|Spirituality" }
        if self.rawValue == 10005 { return "Books|Business & Personal Finance|Industries & Professions" }
        if self.rawValue == 10006 { return "Books|Business & Personal Finance|Marketing & Sales" }
        if self.rawValue == 10007 { return "Books|Business & Personal Finance|Small Business & Entrepreneurship" }
        if self.rawValue == 10008 { return "Books|Business & Personal Finance|Personal Finance" }
        if self.rawValue == 10009 { return "Books|Business & Personal Finance|Reference" }
        if self.rawValue == 10010 { return "Books|Business & Personal Finance|Careers" }
        if self.rawValue == 10011 { return "Books|Business & Personal Finance|Economics" }
        if self.rawValue == 10012 { return "Books|Business & Personal Finance|Investing" }
        if self.rawValue == 10013 { return "Books|Business & Personal Finance|Finance" }
        if self.rawValue == 10014 { return "Books|Business & Personal Finance|Management & Leadership" }
        if self.rawValue == 10015 { return "Books|Comics & Graphic Novels|Graphic Novels" }
        if self.rawValue == 10016 { return "Books|Comics & Graphic Novels|Manga" }
        if self.rawValue == 10017 { return "Books|Computers & Internet|Computers" }
        if self.rawValue == 10018 { return "Books|Computers & Internet|Databases" }
        if self.rawValue == 10019 { return "Books|Computers & Internet|Digital Media" }
        if self.rawValue == 10020 { return "Books|Computers & Internet|Internet" }
        if self.rawValue == 10021 { return "Books|Computers & Internet|Network" }
        if self.rawValue == 10022 { return "Books|Computers & Internet|Operating Systems" }
        if self.rawValue == 10023 { return "Books|Computers & Internet|Programming" }
        if self.rawValue == 10024 { return "Books|Computers & Internet|Software" }
        if self.rawValue == 10025 { return "Books|Computers & Internet|System Administration" }
        if self.rawValue == 10026 { return "Books|Cookbooks, Food & Wine|Beverages" }
        if self.rawValue == 10027 { return "Books|Cookbooks, Food & Wine|Courses & Dishes" }
        if self.rawValue == 10028 { return "Books|Cookbooks, Food & Wine|Special Diet" }
        if self.rawValue == 10029 { return "Books|Cookbooks, Food & Wine|Special Occasions" }
        if self.rawValue == 10030 { return "Books|Cookbooks, Food & Wine|Methods" }
        if self.rawValue == 10031 { return "Books|Cookbooks, Food & Wine|Reference" }
        if self.rawValue == 10032 { return "Books|Cookbooks, Food & Wine|Regional & Ethnic" }
        if self.rawValue == 10033 { return "Books|Cookbooks, Food & Wine|Specific Ingredients" }
        if self.rawValue == 10034 { return "Books|Lifestyle & Home|Crafts & Hobbies" }
        if self.rawValue == 10035 { return "Books|Professional & Technical|Design" }
        if self.rawValue == 10036 { return "Books|Arts & Entertainment|Theater" }
        if self.rawValue == 10037 { return "Books|Professional & Technical|Education" }
        if self.rawValue == 10038 { return "Books|Nonfiction|Family & Relationships" }
        if self.rawValue == 10039 { return "Books|Fiction & Literature|Action & Adventure" }
        if self.rawValue == 10040 { return "Books|Fiction & Literature|African American" }
        if self.rawValue == 10041 { return "Books|Fiction & Literature|Religious" }
        if self.rawValue == 10042 { return "Books|Fiction & Literature|Classics" }
        if self.rawValue == 10043 { return "Books|Fiction & Literature|Erotica" }
        if self.rawValue == 10044 { return "Books|Sci-Fi & Fantasy|Fantasy" }
        if self.rawValue == 10045 { return "Books|Fiction & Literature|Gay" }
        if self.rawValue == 10046 { return "Books|Fiction & Literature|Ghost" }
        if self.rawValue == 10047 { return "Books|Fiction & Literature|Historical" }
        if self.rawValue == 10048 { return "Books|Fiction & Literature|Horror" }
        if self.rawValue == 10049 { return "Books|Fiction & Literature|Literary" }
        if self.rawValue == 10050 { return "Books|Mysteries & Thrillers|Hard-Boiled" }
        if self.rawValue == 10051 { return "Books|Mysteries & Thrillers|Historical" }
        if self.rawValue == 10052 { return "Books|Mysteries & Thrillers|Police Procedural" }
        if self.rawValue == 10053 { return "Books|Mysteries & Thrillers|Short Stories" }
        if self.rawValue == 10054 { return "Books|Mysteries & Thrillers|British Detectives" }
        if self.rawValue == 10055 { return "Books|Mysteries & Thrillers|Women Sleuths" }
        if self.rawValue == 10056 { return "Books|Romance|Erotic Romance" }
        if self.rawValue == 10057 { return "Books|Romance|Contemporary" }
        if self.rawValue == 10058 { return "Books|Romance|Paranormal" }
        if self.rawValue == 10059 { return "Books|Romance|Historical" }
        if self.rawValue == 10060 { return "Books|Romance|Short Stories" }
        if self.rawValue == 10061 { return "Books|Romance|Suspense" }
        if self.rawValue == 10062 { return "Books|Romance|Western" }
        if self.rawValue == 10063 { return "Books|Sci-Fi & Fantasy|Science Fiction" }
        if self.rawValue == 10064 { return "Books|Sci-Fi & Fantasy|Science Fiction & Literature" }
        if self.rawValue == 10065 { return "Books|Fiction & Literature|Short Stories" }
        if self.rawValue == 10066 { return "Books|Reference|Foreign Languages" }
        if self.rawValue == 10067 { return "Books|Arts & Entertainment|Games" }
        if self.rawValue == 10068 { return "Books|Lifestyle & Home|Gardening" }
        if self.rawValue == 10069 { return "Books|Self-Development|Health & Fitness" }
        if self.rawValue == 10070 { return "Books|History|Africa" }
        if self.rawValue == 10071 { return "Books|History|Americas" }
        if self.rawValue == 10072 { return "Books|History|Ancient" }
        if self.rawValue == 10073 { return "Books|History|Asia" }
        if self.rawValue == 10074 { return "Books|History|Australia & Oceania" }
        if self.rawValue == 10075 { return "Books|History|Europe" }
        if self.rawValue == 10076 { return "Books|History|Latin America" }
        if self.rawValue == 10077 { return "Books|History|Middle East" }
        if self.rawValue == 10078 { return "Books|History|Military" }
        if self.rawValue == 10079 { return "Books|History|United States" }
        if self.rawValue == 10080 { return "Books|History|World" }
        if self.rawValue == 10081 { return "Books|Children & Teens|Children's Fiction" }
        if self.rawValue == 10082 { return "Books|Children & Teens|Children's Nonfiction" }
        if self.rawValue == 10083 { return "Books|Professional & Technical|Law" }
        if self.rawValue == 10084 { return "Books|Fiction & Literature|Literary Criticism" }
        if self.rawValue == 10085 { return "Books|Science & Nature|Mathematics" }
        if self.rawValue == 10086 { return "Books|Professional & Technical|Medical" }
        if self.rawValue == 10087 { return "Books|Arts & Entertainment|Music" }
        if self.rawValue == 10088 { return "Books|Science & Nature|Nature" }
        if self.rawValue == 10089 { return "Books|Arts & Entertainment|Performing Arts" }
        if self.rawValue == 10090 { return "Books|Lifestyle & Home|Pets" }
        if self.rawValue == 10091 { return "Books|Nonfiction|Philosophy" }
        if self.rawValue == 10092 { return "Books|Arts & Entertainment|Photography" }
        if self.rawValue == 10093 { return "Books|Fiction & Literature|Poetry" }
        if self.rawValue == 10094 { return "Books|Self-Development|Psychology" }
        if self.rawValue == 10095 { return "Books|Reference|Almanacs & Yearbooks" }
        if self.rawValue == 10096 { return "Books|Reference|Atlases & Maps" }
        if self.rawValue == 10097 { return "Books|Reference|Catalogs & Directories" }
        if self.rawValue == 10098 { return "Books|Reference|Consumer Guides" }
        if self.rawValue == 10099 { return "Books|Reference|Dictionaries & Thesauruses" }
        if self.rawValue == 10100 { return "Books|Reference|Encyclopedias" }
        if self.rawValue == 10101 { return "Books|Reference|Etiquette" }
        if self.rawValue == 10102 { return "Books|Reference|Quotations" }
        if self.rawValue == 10103 { return "Books|Reference|Words & Language" }
        if self.rawValue == 10104 { return "Books|Reference|Writing" }
        if self.rawValue == 10105 { return "Books|Religion & Spirituality|Bible Studies" }
        if self.rawValue == 10106 { return "Books|Religion & Spirituality|Buddhism" }
        if self.rawValue == 10107 { return "Books|Religion & Spirituality|Christianity" }
        if self.rawValue == 10108 { return "Books|Religion & Spirituality|Hinduism" }
        if self.rawValue == 10109 { return "Books|Religion & Spirituality|Islam" }
        if self.rawValue == 10110 { return "Books|Religion & Spirituality|Judaism" }
        if self.rawValue == 10111 { return "Books|Science & Nature|Astronomy" }
        if self.rawValue == 10112 { return "Books|Science & Nature|Chemistry" }
        if self.rawValue == 10113 { return "Books|Science & Nature|Earth Sciences" }
        if self.rawValue == 10114 { return "Books|Science & Nature|Essays" }
        if self.rawValue == 10115 { return "Books|Science & Nature|History" }
        if self.rawValue == 10116 { return "Books|Science & Nature|Life Sciences" }
        if self.rawValue == 10117 { return "Books|Science & Nature|Physics" }
        if self.rawValue == 10118 { return "Books|Science & Nature|Reference" }
        if self.rawValue == 10119 { return "Books|Self-Development|Self-Improvement" }
        if self.rawValue == 10120 { return "Books|Nonfiction|Social Science" }
        if self.rawValue == 10121 { return "Books|Sports & Outdoors|Baseball" }
        if self.rawValue == 10122 { return "Books|Sports & Outdoors|Basketball" }
        if self.rawValue == 10123 { return "Books|Sports & Outdoors|Coaching" }
        if self.rawValue == 10124 { return "Books|Sports & Outdoors|Extreme Sports" }
        if self.rawValue == 10125 { return "Books|Sports & Outdoors|Football" }
        if self.rawValue == 10126 { return "Books|Sports & Outdoors|Golf" }
        if self.rawValue == 10127 { return "Books|Sports & Outdoors|Hockey" }
        if self.rawValue == 10128 { return "Books|Sports & Outdoors|Mountaineering" }
        if self.rawValue == 10129 { return "Books|Sports & Outdoors|Outdoors" }
        if self.rawValue == 10130 { return "Books|Sports & Outdoors|Racket Sports" }
        if self.rawValue == 10131 { return "Books|Sports & Outdoors|Reference" }
        if self.rawValue == 10132 { return "Books|Sports & Outdoors|Soccer" }
        if self.rawValue == 10133 { return "Books|Sports & Outdoors|Training" }
        if self.rawValue == 10134 { return "Books|Sports & Outdoors|Water Sports" }
        if self.rawValue == 10135 { return "Books|Sports & Outdoors|Winter Sports" }
        if self.rawValue == 10136 { return "Books|Reference|Study Aids" }
        if self.rawValue == 10137 { return "Books|Professional & Technical|Engineering" }
        if self.rawValue == 10138 { return "Books|Nonfiction|Transportation" }
        if self.rawValue == 10139 { return "Books|Travel & Adventure|Africa" }
        if self.rawValue == 10140 { return "Books|Travel & Adventure|Asia" }
        if self.rawValue == 10141 { return "Books|Travel & Adventure|Specialty Travel" }
        if self.rawValue == 10142 { return "Books|Travel & Adventure|Canada" }
        if self.rawValue == 10143 { return "Books|Travel & Adventure|Caribbean" }
        if self.rawValue == 10144 { return "Books|Travel & Adventure|Latin America" }
        if self.rawValue == 10145 { return "Books|Travel & Adventure|Essays & Memoirs" }
        if self.rawValue == 10146 { return "Books|Travel & Adventure|Europe" }
        if self.rawValue == 10147 { return "Books|Travel & Adventure|Middle East" }
        if self.rawValue == 10148 { return "Books|Travel & Adventure|United States" }
        if self.rawValue == 10149 { return "Books|Nonfiction|True Crime" }
        if self.rawValue == 11001 { return "Books|Sci-Fi & Fantasy|Fantasy|Contemporary" }
        if self.rawValue == 11002 { return "Books|Sci-Fi & Fantasy|Fantasy|Epic" }
        if self.rawValue == 11003 { return "Books|Sci-Fi & Fantasy|Fantasy|Historical" }
        if self.rawValue == 11004 { return "Books|Sci-Fi & Fantasy|Fantasy|Paranormal" }
        if self.rawValue == 11005 { return "Books|Sci-Fi & Fantasy|Fantasy|Short Stories" }
        if self.rawValue == 11006 { return "Books|Sci-Fi & Fantasy|Science Fiction & Literature|Adventure" }
        if self.rawValue == 11007 { return "Books|Sci-Fi & Fantasy|Science Fiction & Literature|High Tech" }
        if self.rawValue == 11008 { return "Books|Sci-Fi & Fantasy|Science Fiction & Literature|Short Stories" }
        if self.rawValue == 11009 { return "Books|Professional & Technical|Education|Language Arts & Disciplines" }
        if self.rawValue == 11010 { return "Books|Communications & Media" }
        if self.rawValue == 11011 { return "Books|Communications & Media|Broadcasting" }
        if self.rawValue == 11012 { return "Books|Communications & Media|Digital Media" }
        if self.rawValue == 11013 { return "Books|Communications & Media|Journalism" }
        if self.rawValue == 11014 { return "Books|Communications & Media|Photojournalism" }
        if self.rawValue == 11015 { return "Books|Communications & Media|Print" }
        if self.rawValue == 11016 { return "Books|Communications & Media|Speech" }
        if self.rawValue == 11017 { return "Books|Communications & Media|Writing" }
        if self.rawValue == 11018 { return "Books|Arts & Entertainment|Art & Architecture|Urban Planning" }
        if self.rawValue == 11019 { return "Books|Arts & Entertainment|Dance" }
        if self.rawValue == 11020 { return "Books|Arts & Entertainment|Fashion" }
        if self.rawValue == 11021 { return "Books|Arts & Entertainment|Film" }
        if self.rawValue == 11022 { return "Books|Arts & Entertainment|Interior Design" }
        if self.rawValue == 11023 { return "Books|Arts & Entertainment|Media Arts" }
        if self.rawValue == 11024 { return "Books|Arts & Entertainment|Radio" }
        if self.rawValue == 11025 { return "Books|Arts & Entertainment|TV" }
        if self.rawValue == 11026 { return "Books|Arts & Entertainment|Visual Arts" }
        if self.rawValue == 11027 { return "Books|Biographies & Memoirs|Arts & Entertainment" }
        if self.rawValue == 11028 { return "Books|Biographies & Memoirs|Business" }
        if self.rawValue == 11029 { return "Books|Biographies & Memoirs|Culinary" }
        if self.rawValue == 11030 { return "Books|Biographies & Memoirs|Gay & Lesbian" }
        if self.rawValue == 11031 { return "Books|Biographies & Memoirs|Historical" }
        if self.rawValue == 11032 { return "Books|Biographies & Memoirs|Literary" }
        if self.rawValue == 11033 { return "Books|Biographies & Memoirs|Media & Journalism" }
        if self.rawValue == 11034 { return "Books|Biographies & Memoirs|Military" }
        if self.rawValue == 11035 { return "Books|Biographies & Memoirs|Politics" }
        if self.rawValue == 11036 { return "Books|Biographies & Memoirs|Religious" }
        if self.rawValue == 11037 { return "Books|Biographies & Memoirs|Science & Technology" }
        if self.rawValue == 11038 { return "Books|Biographies & Memoirs|Sports" }
        if self.rawValue == 11039 { return "Books|Biographies & Memoirs|Women" }
        if self.rawValue == 11040 { return "Books|Romance|New Adult" }
        if self.rawValue == 11042 { return "Books|Romance|Romantic Comedy" }
        if self.rawValue == 11043 { return "Books|Romance|Gay & Lesbian" }
        if self.rawValue == 11044 { return "Books|Fiction & Literature|Essays" }
        if self.rawValue == 11045 { return "Books|Fiction & Literature|Anthologies" }
        if self.rawValue == 11046 { return "Books|Fiction & Literature|Comparative Literature" }
        if self.rawValue == 11047 { return "Books|Fiction & Literature|Drama" }
        if self.rawValue == 11049 { return "Books|Fiction & Literature|Fairy Tales, Myths & Fables" }
        if self.rawValue == 11050 { return "Books|Fiction & Literature|Family" }
        if self.rawValue == 11051 { return "Books|Comics & Graphic Novels|Manga|School Drama" }
        if self.rawValue == 11052 { return "Books|Comics & Graphic Novels|Manga|Human Drama" }
        if self.rawValue == 11053 { return "Books|Comics & Graphic Novels|Manga|Family Drama" }
        if self.rawValue == 11054 { return "Books|Sports & Outdoors|Boxing" }
        if self.rawValue == 11055 { return "Books|Sports & Outdoors|Cricket" }
        if self.rawValue == 11056 { return "Books|Sports & Outdoors|Cycling" }
        if self.rawValue == 11057 { return "Books|Sports & Outdoors|Equestrian" }
        if self.rawValue == 11058 { return "Books|Sports & Outdoors|Martial Arts & Self Defense" }
        if self.rawValue == 11059 { return "Books|Sports & Outdoors|Motor Sports" }
        if self.rawValue == 11060 { return "Books|Sports & Outdoors|Rugby" }
        if self.rawValue == 11061 { return "Books|Sports & Outdoors|Running" }
        if self.rawValue == 11062 { return "Books|Self-Development|Diet & Nutrition" }
        if self.rawValue == 11063 { return "Books|Science & Nature|Agriculture" }
        if self.rawValue == 11064 { return "Books|Science & Nature|Atmosphere" }
        if self.rawValue == 11065 { return "Books|Science & Nature|Biology" }
        if self.rawValue == 11066 { return "Books|Science & Nature|Ecology" }
        if self.rawValue == 11067 { return "Books|Science & Nature|Environment" }
        if self.rawValue == 11068 { return "Books|Science & Nature|Geography" }
        if self.rawValue == 11069 { return "Books|Science & Nature|Geology" }
        if self.rawValue == 11070 { return "Books|Nonfiction|Social Science|Anthropology" }
        if self.rawValue == 11071 { return "Books|Nonfiction|Social Science|Archaeology" }
        if self.rawValue == 11072 { return "Books|Nonfiction|Social Science|Civics" }
        if self.rawValue == 11073 { return "Books|Nonfiction|Social Science|Government" }
        if self.rawValue == 11074 { return "Books|Nonfiction|Social Science|Social Studies" }
        if self.rawValue == 11075 { return "Books|Nonfiction|Social Science|Social Welfare" }
        if self.rawValue == 11076 { return "Books|Nonfiction|Social Science|Society" }
        if self.rawValue == 11077 { return "Books|Nonfiction|Philosophy|Aesthetics" }
        if self.rawValue == 11078 { return "Books|Nonfiction|Philosophy|Epistemology" }
        if self.rawValue == 11079 { return "Books|Nonfiction|Philosophy|Ethics" }
        if self.rawValue == 11080 { return "Books|Nonfiction|Philosophy|Language" }
        if self.rawValue == 11081 { return "Books|Nonfiction|Philosophy|Logic" }
        if self.rawValue == 11082 { return "Books|Nonfiction|Philosophy|Metaphysics" }
        if self.rawValue == 11083 { return "Books|Nonfiction|Philosophy|Political" }
        if self.rawValue == 11084 { return "Books|Nonfiction|Philosophy|Religion" }
        if self.rawValue == 11085 { return "Books|Reference|Manuals" }
        if self.rawValue == 11086 { return "Books|Kids" }
        if self.rawValue == 11087 { return "Books|Kids|Animals" }
        if self.rawValue == 11088 { return "Books|Kids|Basic Concepts" }
        if self.rawValue == 11089 { return "Books|Kids|Basic Concepts|Alphabet" }
        if self.rawValue == 11090 { return "Books|Kids|Basic Concepts|Body" }
        if self.rawValue == 11091 { return "Books|Kids|Basic Concepts|Colors" }
        if self.rawValue == 11092 { return "Books|Kids|Basic Concepts|Counting & Numbers" }
        if self.rawValue == 11093 { return "Books|Kids|Basic Concepts|Date & Time" }
        if self.rawValue == 11094 { return "Books|Kids|Basic Concepts|General" }
        if self.rawValue == 11095 { return "Books|Kids|Basic Concepts|Money" }
        if self.rawValue == 11096 { return "Books|Kids|Basic Concepts|Opposites" }
        if self.rawValue == 11097 { return "Books|Kids|Basic Concepts|Seasons" }
        if self.rawValue == 11098 { return "Books|Kids|Basic Concepts|Senses & Sensation" }
        if self.rawValue == 11099 { return "Books|Kids|Basic Concepts|Size & Shape" }
        if self.rawValue == 11100 { return "Books|Kids|Basic Concepts|Sounds" }
        if self.rawValue == 11101 { return "Books|Kids|Basic Concepts|Words" }
        if self.rawValue == 11102 { return "Books|Kids|Biography" }
        if self.rawValue == 11103 { return "Books|Kids|Careers & Occupations" }
        if self.rawValue == 11104 { return "Books|Kids|Computers & Technology" }
        if self.rawValue == 11105 { return "Books|Kids|Cooking & Food" }
        if self.rawValue == 11106 { return "Books|Kids|Arts & Entertainment" }
        if self.rawValue == 11107 { return "Books|Kids|Arts & Entertainment|Art" }
        if self.rawValue == 11108 { return "Books|Kids|Arts & Entertainment|Crafts" }
        if self.rawValue == 11109 { return "Books|Kids|Arts & Entertainment|Music" }
        if self.rawValue == 11110 { return "Books|Kids|Arts & Entertainment|Performing Arts" }
        if self.rawValue == 11111 { return "Books|Kids|Family" }
        if self.rawValue == 11112 { return "Books|Kids|Fiction" }
        if self.rawValue == 11113 { return "Books|Kids|Fiction|Action & Adventure" }
        if self.rawValue == 11114 { return "Books|Kids|Fiction|Animals" }
        if self.rawValue == 11115 { return "Books|Kids|Fiction|Classics" }
        if self.rawValue == 11116 { return "Books|Kids|Fiction|Comics & Graphic Novels" }
        if self.rawValue == 11117 { return "Books|Kids|Fiction|Culture, Places & People" }
        if self.rawValue == 11118 { return "Books|Kids|Fiction|Family & Relationships" }
        if self.rawValue == 11119 { return "Books|Kids|Fiction|Fantasy" }
        if self.rawValue == 11120 { return "Books|Kids|Fiction|Fairy Tales, Myths & Fables" }
        if self.rawValue == 11121 { return "Books|Kids|Fiction|Favorite Characters" }
        if self.rawValue == 11122 { return "Books|Kids|Fiction|Historical" }
        if self.rawValue == 11123 { return "Books|Kids|Fiction|Holidays & Celebrations" }
        if self.rawValue == 11124 { return "Books|Kids|Fiction|Monsters & Ghosts" }
        if self.rawValue == 11125 { return "Books|Kids|Fiction|Mysteries" }
        if self.rawValue == 11126 { return "Books|Kids|Fiction|Nature" }
        if self.rawValue == 11127 { return "Books|Kids|Fiction|Religion" }
        if self.rawValue == 11128 { return "Books|Kids|Fiction|Sci-Fi" }
        if self.rawValue == 11129 { return "Books|Kids|Fiction|Social Issues" }
        if self.rawValue == 11130 { return "Books|Kids|Fiction|Sports & Recreation" }
        if self.rawValue == 11131 { return "Books|Kids|Fiction|Transportation" }
        if self.rawValue == 11132 { return "Books|Kids|Games & Activities" }
        if self.rawValue == 11133 { return "Books|Kids|General Nonfiction" }
        if self.rawValue == 11134 { return "Books|Kids|Health" }
        if self.rawValue == 11135 { return "Books|Kids|History" }
        if self.rawValue == 11136 { return "Books|Kids|Holidays & Celebrations" }
        if self.rawValue == 11137 { return "Books|Kids|Holidays & Celebrations|Birthdays" }
        if self.rawValue == 11138 { return "Books|Kids|Holidays & Celebrations|Christmas & Advent" }
        if self.rawValue == 11139 { return "Books|Kids|Holidays & Celebrations|Easter & Lent" }
        if self.rawValue == 11140 { return "Books|Kids|Holidays & Celebrations|General" }
        if self.rawValue == 11141 { return "Books|Kids|Holidays & Celebrations|Halloween" }
        if self.rawValue == 11142 { return "Books|Kids|Holidays & Celebrations|Hanukkah" }
        if self.rawValue == 11143 { return "Books|Kids|Holidays & Celebrations|Other" }
        if self.rawValue == 11144 { return "Books|Kids|Holidays & Celebrations|Passover" }
        if self.rawValue == 11145 { return "Books|Kids|Holidays & Celebrations|Patriotic Holidays" }
        if self.rawValue == 11146 { return "Books|Kids|Holidays & Celebrations|Ramadan" }
        if self.rawValue == 11147 { return "Books|Kids|Holidays & Celebrations|Thanksgiving" }
        if self.rawValue == 11148 { return "Books|Kids|Holidays & Celebrations|Valentine's Day" }
        if self.rawValue == 11149 { return "Books|Kids|Humor" }
        if self.rawValue == 11150 { return "Books|Kids|Humor|Jokes & Riddles" }
        if self.rawValue == 11151 { return "Books|Kids|Poetry" }
        if self.rawValue == 11152 { return "Books|Kids|Learning to Read" }
        if self.rawValue == 11153 { return "Books|Kids|Learning to Read|Chapter Books" }
        if self.rawValue == 11154 { return "Books|Kids|Learning to Read|Early Readers" }
        if self.rawValue == 11155 { return "Books|Kids|Learning to Read|Intermediate Readers" }
        if self.rawValue == 11156 { return "Books|Kids|Nursery Rhymes" }
        if self.rawValue == 11157 { return "Books|Kids|Government" }
        if self.rawValue == 11158 { return "Books|Kids|Reference" }
        if self.rawValue == 11159 { return "Books|Kids|Religion" }
        if self.rawValue == 11160 { return "Books|Kids|Science & Nature" }
        if self.rawValue == 11161 { return "Books|Kids|Social Issues" }
        if self.rawValue == 11162 { return "Books|Kids|Social Studies" }
        if self.rawValue == 11163 { return "Books|Kids|Sports & Recreation" }
        if self.rawValue == 11164 { return "Books|Kids|Transportation" }
        if self.rawValue == 11165 { return "Books|Young Adult" }
        if self.rawValue == 11166 { return "Books|Young Adult|Animals" }
        if self.rawValue == 11167 { return "Books|Young Adult|Biography" }
        if self.rawValue == 11168 { return "Books|Young Adult|Careers & Occupations" }
        if self.rawValue == 11169 { return "Books|Young Adult|Computers & Technology" }
        if self.rawValue == 11170 { return "Books|Young Adult|Cooking & Food" }
        if self.rawValue == 11171 { return "Books|Young Adult|Arts & Entertainment" }
        if self.rawValue == 11172 { return "Books|Young Adult|Arts & Entertainment|Art" }
        if self.rawValue == 11173 { return "Books|Young Adult|Arts & Entertainment|Crafts" }
        if self.rawValue == 11174 { return "Books|Young Adult|Arts & Entertainment|Music" }
        if self.rawValue == 11175 { return "Books|Young Adult|Arts & Entertainment|Performing Arts" }
        if self.rawValue == 11176 { return "Books|Young Adult|Family" }
        if self.rawValue == 11177 { return "Books|Young Adult|Fiction" }
        if self.rawValue == 11178 { return "Books|Young Adult|Fiction|Action & Adventure" }
        if self.rawValue == 11179 { return "Books|Young Adult|Fiction|Animals" }
        if self.rawValue == 11180 { return "Books|Young Adult|Fiction|Classics" }
        if self.rawValue == 11181 { return "Books|Young Adult|Fiction|Comics & Graphic Novels" }
        if self.rawValue == 11182 { return "Books|Young Adult|Fiction|Culture, Places & People" }
        if self.rawValue == 11183 { return "Books|Young Adult|Fiction|Dystopian" }
        if self.rawValue == 11184 { return "Books|Young Adult|Fiction|Family & Relationships" }
        if self.rawValue == 11185 { return "Books|Young Adult|Fiction|Fantasy" }
        if self.rawValue == 11186 { return "Books|Young Adult|Fiction|Fairy Tales, Myths & Fables" }
        if self.rawValue == 11187 { return "Books|Young Adult|Fiction|Favorite Characters" }
        if self.rawValue == 11188 { return "Books|Young Adult|Fiction|Historical" }
        if self.rawValue == 11189 { return "Books|Young Adult|Fiction|Holidays & Celebrations" }
        if self.rawValue == 11190 { return "Books|Young Adult|Fiction|Horror, Monsters & Ghosts" }
        if self.rawValue == 11191 { return "Books|Young Adult|Fiction|Crime & Mystery" }
        if self.rawValue == 11192 { return "Books|Young Adult|Fiction|Nature" }
        if self.rawValue == 11193 { return "Books|Young Adult|Fiction|Religion" }
        if self.rawValue == 11194 { return "Books|Young Adult|Fiction|Romance" }
        if self.rawValue == 11195 { return "Books|Young Adult|Fiction|Sci-Fi" }
        if self.rawValue == 11196 { return "Books|Young Adult|Fiction|Coming of Age" }
        if self.rawValue == 11197 { return "Books|Young Adult|Fiction|Sports & Recreation" }
        if self.rawValue == 11198 { return "Books|Young Adult|Fiction|Transportation" }
        if self.rawValue == 11199 { return "Books|Young Adult|Games & Activities" }
        if self.rawValue == 11200 { return "Books|Young Adult|General Nonfiction" }
        if self.rawValue == 11201 { return "Books|Young Adult|Health" }
        if self.rawValue == 11202 { return "Books|Young Adult|History" }
        if self.rawValue == 11203 { return "Books|Young Adult|Holidays & Celebrations" }
        if self.rawValue == 11204 { return "Books|Young Adult|Holidays & Celebrations|Birthdays" }
        if self.rawValue == 11205 { return "Books|Young Adult|Holidays & Celebrations|Christmas & Advent" }
        if self.rawValue == 11206 { return "Books|Young Adult|Holidays & Celebrations|Easter & Lent" }
        if self.rawValue == 11207 { return "Books|Young Adult|Holidays & Celebrations|General" }
        if self.rawValue == 11208 { return "Books|Young Adult|Holidays & Celebrations|Halloween" }
        if self.rawValue == 11209 { return "Books|Young Adult|Holidays & Celebrations|Hanukkah" }
        if self.rawValue == 11210 { return "Books|Young Adult|Holidays & Celebrations|Other" }
        if self.rawValue == 11211 { return "Books|Young Adult|Holidays & Celebrations|Passover" }
        if self.rawValue == 11212 { return "Books|Young Adult|Holidays & Celebrations|Patriotic Holidays" }
        if self.rawValue == 11213 { return "Books|Young Adult|Holidays & Celebrations|Ramadan" }
        if self.rawValue == 11214 { return "Books|Young Adult|Holidays & Celebrations|Thanksgiving" }
        if self.rawValue == 11215 { return "Books|Young Adult|Holidays & Celebrations|Valentine's Day" }
        if self.rawValue == 11216 { return "Books|Young Adult|Humor" }
        if self.rawValue == 11217 { return "Books|Young Adult|Humor|Jokes & Riddles" }
        if self.rawValue == 11218 { return "Books|Young Adult|Poetry" }
        if self.rawValue == 11219 { return "Books|Young Adult|Politics & Government" }
        if self.rawValue == 11220 { return "Books|Young Adult|Reference" }
        if self.rawValue == 11221 { return "Books|Young Adult|Religion" }
        if self.rawValue == 11222 { return "Books|Young Adult|Science & Nature" }
        if self.rawValue == 11223 { return "Books|Young Adult|Coming of Age" }
        if self.rawValue == 11224 { return "Books|Young Adult|Social Studies" }
        if self.rawValue == 11225 { return "Books|Young Adult|Sports & Recreation" }
        if self.rawValue == 11226 { return "Books|Young Adult|Transportation" }
        if self.rawValue == 11227 { return "Books|Communications & Media" }
        if self.rawValue == 11228 { return "Books|Military & Warfare" }
        if self.rawValue == 11229 { return "Books|Romance|Inspirational" }
        if self.rawValue == 11231 { return "Books|Romance|Holiday" }
        if self.rawValue == 11232 { return "Books|Romance|Wholesome" }
        if self.rawValue == 11233 { return "Books|Romance|Military" }
        if self.rawValue == 11234 { return "Books|Arts & Entertainment|Art History" }
        if self.rawValue == 11236 { return "Books|Arts & Entertainment|Design" }
        if self.rawValue == 11243 { return "Books|Business & Personal Finance|Accounting" }
        if self.rawValue == 11244 { return "Books|Business & Personal Finance|Hospitality" }
        if self.rawValue == 11245 { return "Books|Business & Personal Finance|Real Estate" }
        if self.rawValue == 11246 { return "Books|Humor|Jokes & Riddles" }
        if self.rawValue == 11247 { return "Books|Religion & Spirituality|Comparative Religion" }
        if self.rawValue == 11255 { return "Books|Cookbooks, Food & Wine|Culinary Arts" }
        if self.rawValue == 11259 { return "Books|Mysteries & Thrillers|Cozy" }
        if self.rawValue == 11260 { return "Books|Politics & Current Events|Current Events" }
        if self.rawValue == 11261 { return "Books|Politics & Current Events|Foreign Policy & International Relations" }
        if self.rawValue == 11262 { return "Books|Politics & Current Events|Local Government" }
        if self.rawValue == 11263 { return "Books|Politics & Current Events|National Government" }
        if self.rawValue == 11264 { return "Books|Politics & Current Events|Political Science" }
        if self.rawValue == 11265 { return "Books|Politics & Current Events|Public Administration" }
        if self.rawValue == 11266 { return "Books|Politics & Current Events|World Affairs" }
        if self.rawValue == 11273 { return "Books|Nonfiction|Family & Relationships|Family & Childcare" }
        if self.rawValue == 11274 { return "Books|Nonfiction|Family & Relationships|Love & Romance" }
        if self.rawValue == 11275 { return "Books|Sci-Fi & Fantasy|Fantasy|Urban" }
        if self.rawValue == 11276 { return "Books|Reference|Foreign Languages|Arabic" }
        if self.rawValue == 11277 { return "Books|Reference|Foreign Languages|Bilingual Editions" }
        if self.rawValue == 11278 { return "Books|Reference|Foreign Languages|African Languages" }
        if self.rawValue == 11279 { return "Books|Reference|Foreign Languages|Ancient Languages" }
        if self.rawValue == 11280 { return "Books|Reference|Foreign Languages|Chinese" }
        if self.rawValue == 11281 { return "Books|Reference|Foreign Languages|English" }
        if self.rawValue == 11282 { return "Books|Reference|Foreign Languages|French" }
        if self.rawValue == 11283 { return "Books|Reference|Foreign Languages|German" }
        if self.rawValue == 11284 { return "Books|Reference|Foreign Languages|Hebrew" }
        if self.rawValue == 11285 { return "Books|Reference|Foreign Languages|Hindi" }
        if self.rawValue == 11286 { return "Books|Reference|Foreign Languages|Italian" }
        if self.rawValue == 11287 { return "Books|Reference|Foreign Languages|Japanese" }
        if self.rawValue == 11288 { return "Books|Reference|Foreign Languages|Korean" }
        if self.rawValue == 11289 { return "Books|Reference|Foreign Languages|Linguistics" }
        if self.rawValue == 11290 { return "Books|Reference|Foreign Languages|Other Languages" }
        if self.rawValue == 11291 { return "Books|Reference|Foreign Languages|Portuguese" }
        if self.rawValue == 11292 { return "Books|Reference|Foreign Languages|Russian" }
        if self.rawValue == 11293 { return "Books|Reference|Foreign Languages|Spanish" }
        if self.rawValue == 11294 { return "Books|Reference|Foreign Languages|Speech Pathology" }
        if self.rawValue == 11295 { return "Books|Science & Nature|Mathematics|Advanced Mathematics" }
        if self.rawValue == 11296 { return "Books|Science & Nature|Mathematics|Algebra" }
        if self.rawValue == 11297 { return "Books|Science & Nature|Mathematics|Arithmetic" }
        if self.rawValue == 11298 { return "Books|Science & Nature|Mathematics|Calculus" }
        if self.rawValue == 11299 { return "Books|Science & Nature|Mathematics|Geometry" }
        if self.rawValue == 11300 { return "Books|Science & Nature|Mathematics|Statistics" }
        if self.rawValue == 11301 { return "Books|Professional & Technical|Medical|Veterinary" }
        if self.rawValue == 11302 { return "Books|Professional & Technical|Medical|Neuroscience" }
        if self.rawValue == 11303 { return "Books|Professional & Technical|Medical|Immunology" }
        if self.rawValue == 11304 { return "Books|Professional & Technical|Medical|Nursing" }
        if self.rawValue == 11305 { return "Books|Professional & Technical|Medical|Pharmacology & Toxicology" }
        if self.rawValue == 11306 { return "Books|Professional & Technical|Medical|Anatomy & Physiology" }
        if self.rawValue == 11307 { return "Books|Professional & Technical|Medical|Dentistry" }
        if self.rawValue == 11308 { return "Books|Professional & Technical|Medical|Emergency Medicine" }
        if self.rawValue == 11309 { return "Books|Professional & Technical|Medical|Genetics" }
        if self.rawValue == 11310 { return "Books|Professional & Technical|Medical|Psychiatry" }
        if self.rawValue == 11311 { return "Books|Professional & Technical|Medical|Radiology" }
        if self.rawValue == 11312 { return "Books|Professional & Technical|Medical|Alternative Medicine" }
        if self.rawValue == 11317 { return "Books|Nonfiction|Philosophy|Political Philosophy" }
        if self.rawValue == 11319 { return "Books|Nonfiction|Philosophy|Philosophy of Language" }
        if self.rawValue == 11320 { return "Books|Nonfiction|Philosophy|Philosophy of Religion" }
        if self.rawValue == 11327 { return "Books|Nonfiction|Social Science|Sociology" }
        if self.rawValue == 11329 { return "Books|Professional & Technical|Engineering|Aeronautics" }
        if self.rawValue == 11330 { return "Books|Professional & Technical|Engineering|Chemical & Petroleum Engineering" }
        if self.rawValue == 11331 { return "Books|Professional & Technical|Engineering|Civil Engineering" }
        if self.rawValue == 11332 { return "Books|Professional & Technical|Engineering|Computer Science" }
        if self.rawValue == 11333 { return "Books|Professional & Technical|Engineering|Electrical Engineering" }
        if self.rawValue == 11334 { return "Books|Professional & Technical|Engineering|Environmental Engineering" }
        if self.rawValue == 11335 { return "Books|Professional & Technical|Engineering|Mechanical Engineering" }
        if self.rawValue == 11336 { return "Books|Professional & Technical|Engineering|Power Resources" }
        if self.rawValue == 11337 { return "Books|Comics & Graphic Novels|Manga|Boys" }
        if self.rawValue == 11338 { return "Books|Comics & Graphic Novels|Manga|Men" }
        if self.rawValue == 11339 { return "Books|Comics & Graphic Novels|Manga|Girls" }
        if self.rawValue == 11340 { return "Books|Comics & Graphic Novels|Manga|Women" }
        if self.rawValue == 11341 { return "Books|Comics & Graphic Novels|Manga|Other" }
        if self.rawValue == 11342 { return "Books|Comics & Graphic Novels|Manga|Yaoi" }
        if self.rawValue == 11343 { return "Books|Comics & Graphic Novels|Manga|Comic Essays" }
        if self.rawValue == 12001 { return "Mac App Store|Business" }
        if self.rawValue == 12002 { return "Mac App Store|Developer Tools" }
        if self.rawValue == 12003 { return "Mac App Store|Education" }
        if self.rawValue == 12004 { return "Mac App Store|Entertainment" }
        if self.rawValue == 12005 { return "Mac App Store|Finance" }
        if self.rawValue == 12006 { return "Mac App Store|Games" }
        if self.rawValue == 12007 { return "Mac App Store|Health & Fitness" }
        if self.rawValue == 12008 { return "Mac App Store|Lifestyle" }
        if self.rawValue == 12010 { return "Mac App Store|Medical" }
        if self.rawValue == 12011 { return "Mac App Store|Music" }
        if self.rawValue == 12012 { return "Mac App Store|News" }
        if self.rawValue == 12013 { return "Mac App Store|Photography" }
        if self.rawValue == 12014 { return "Mac App Store|Productivity" }
        if self.rawValue == 12015 { return "Mac App Store|Reference" }
        if self.rawValue == 12016 { return "Mac App Store|Social Networking" }
        if self.rawValue == 12017 { return "Mac App Store|Sports" }
        if self.rawValue == 12018 { return "Mac App Store|Travel" }
        if self.rawValue == 12019 { return "Mac App Store|Utilities" }
        if self.rawValue == 12020 { return "Mac App Store|Video" }
        if self.rawValue == 12021 { return "Mac App Store|Weather" }
        if self.rawValue == 12022 { return "Mac App Store|Graphics & Design" }
        if self.rawValue == 12201 { return "Mac App Store|Games|Action" }
        if self.rawValue == 12202 { return "Mac App Store|Games|Adventure" }
        if self.rawValue == 12203 { return "Mac App Store|Games|Casual" }
        if self.rawValue == 12204 { return "Mac App Store|Games|Board" }
        if self.rawValue == 12205 { return "Mac App Store|Games|Card" }
        if self.rawValue == 12206 { return "Mac App Store|Games|Casino" }
        if self.rawValue == 12207 { return "Mac App Store|Games|Dice" }
        if self.rawValue == 12208 { return "Mac App Store|Games|Educational" }
        if self.rawValue == 12209 { return "Mac App Store|Games|Family" }
        if self.rawValue == 12210 { return "Mac App Store|Games|Kids" }
        if self.rawValue == 12211 { return "Mac App Store|Games|Music" }
        if self.rawValue == 12212 { return "Mac App Store|Games|Puzzle" }
        if self.rawValue == 12213 { return "Mac App Store|Games|Racing" }
        if self.rawValue == 12214 { return "Mac App Store|Games|Role Playing" }
        if self.rawValue == 12215 { return "Mac App Store|Games|Simulation" }
        if self.rawValue == 12216 { return "Mac App Store|Games|Sports" }
        if self.rawValue == 12217 { return "Mac App Store|Games|Strategy" }
        if self.rawValue == 12218 { return "Mac App Store|Games|Trivia" }
        if self.rawValue == 12219 { return "Mac App Store|Games|Word" }
        if self.rawValue == 13001 { return "App Store|Magazines & Newspapers|News & Politics" }
        if self.rawValue == 13002 { return "App Store|Magazines & Newspapers|Fashion & Style" }
        if self.rawValue == 13003 { return "App Store|Magazines & Newspapers|Home & Garden" }
        if self.rawValue == 13004 { return "App Store|Magazines & Newspapers|Outdoors & Nature" }
        if self.rawValue == 13005 { return "App Store|Magazines & Newspapers|Sports & Leisure" }
        if self.rawValue == 13006 { return "App Store|Magazines & Newspapers|Automotive" }
        if self.rawValue == 13007 { return "App Store|Magazines & Newspapers|Arts & Photography" }
        if self.rawValue == 13008 { return "App Store|Magazines & Newspapers|Brides & Weddings" }
        if self.rawValue == 13009 { return "App Store|Magazines & Newspapers|Business & Investing" }
        if self.rawValue == 13010 { return "App Store|Magazines & Newspapers|Children's Magazines" }
        if self.rawValue == 13011 { return "App Store|Magazines & Newspapers|Computers & Internet" }
        if self.rawValue == 13012 { return "App Store|Magazines & Newspapers|Cooking, Food & Drink" }
        if self.rawValue == 13013 { return "App Store|Magazines & Newspapers|Crafts & Hobbies" }
        if self.rawValue == 13014 { return "App Store|Magazines & Newspapers|Electronics & Audio" }
        if self.rawValue == 13015 { return "App Store|Magazines & Newspapers|Entertainment" }
        if self.rawValue == 13017 { return "App Store|Magazines & Newspapers|Health, Mind & Body" }
        if self.rawValue == 13018 { return "App Store|Magazines & Newspapers|History" }
        if self.rawValue == 13019 { return "App Store|Magazines & Newspapers|Literary Magazines & Journals" }
        if self.rawValue == 13020 { return "App Store|Magazines & Newspapers|Men's Interest" }
        if self.rawValue == 13021 { return "App Store|Magazines & Newspapers|Movies & Music" }
        if self.rawValue == 13023 { return "App Store|Magazines & Newspapers|Parenting & Family" }
        if self.rawValue == 13024 { return "App Store|Magazines & Newspapers|Pets" }
        if self.rawValue == 13025 { return "App Store|Magazines & Newspapers|Professional & Trade" }
        if self.rawValue == 13026 { return "App Store|Magazines & Newspapers|Regional News" }
        if self.rawValue == 13027 { return "App Store|Magazines & Newspapers|Science" }
        if self.rawValue == 13028 { return "App Store|Magazines & Newspapers|Teens" }
        if self.rawValue == 13029 { return "App Store|Magazines & Newspapers|Travel & Regional" }
        if self.rawValue == 13030 { return "App Store|Magazines & Newspapers|Women's Interest" }
        if self.rawValue == 15000 { return "Textbooks|Arts & Entertainment" }
        if self.rawValue == 15001 { return "Textbooks|Arts & Entertainment|Art & Architecture" }
        if self.rawValue == 15002 { return "Textbooks|Arts & Entertainment|Art & Architecture|Urban Planning" }
        if self.rawValue == 15003 { return "Textbooks|Arts & Entertainment|Art History" }
        if self.rawValue == 15004 { return "Textbooks|Arts & Entertainment|Dance" }
        if self.rawValue == 15005 { return "Textbooks|Arts & Entertainment|Design" }
        if self.rawValue == 15006 { return "Textbooks|Arts & Entertainment|Fashion" }
        if self.rawValue == 15007 { return "Textbooks|Arts & Entertainment|Film" }
        if self.rawValue == 15008 { return "Textbooks|Arts & Entertainment|Games" }
        if self.rawValue == 15009 { return "Textbooks|Arts & Entertainment|Interior Design" }
        if self.rawValue == 15010 { return "Textbooks|Arts & Entertainment|Media Arts" }
        if self.rawValue == 15011 { return "Textbooks|Arts & Entertainment|Music" }
        if self.rawValue == 15012 { return "Textbooks|Arts & Entertainment|Performing Arts" }
        if self.rawValue == 15013 { return "Textbooks|Arts & Entertainment|Photography" }
        if self.rawValue == 15014 { return "Textbooks|Arts & Entertainment|Theater" }
        if self.rawValue == 15015 { return "Textbooks|Arts & Entertainment|TV" }
        if self.rawValue == 15016 { return "Textbooks|Arts & Entertainment|Visual Arts" }
        if self.rawValue == 15017 { return "Textbooks|Biographies & Memoirs" }
        if self.rawValue == 15018 { return "Textbooks|Business & Personal Finance" }
        if self.rawValue == 15019 { return "Textbooks|Business & Personal Finance|Accounting" }
        if self.rawValue == 15020 { return "Textbooks|Business & Personal Finance|Careers" }
        if self.rawValue == 15021 { return "Textbooks|Business & Personal Finance|Economics" }
        if self.rawValue == 15022 { return "Textbooks|Business & Personal Finance|Finance" }
        if self.rawValue == 15023 { return "Textbooks|Business & Personal Finance|Hospitality" }
        if self.rawValue == 15024 { return "Textbooks|Business & Personal Finance|Industries & Professions" }
        if self.rawValue == 15025 { return "Textbooks|Business & Personal Finance|Investing" }
        if self.rawValue == 15026 { return "Textbooks|Business & Personal Finance|Management & Leadership" }
        if self.rawValue == 15027 { return "Textbooks|Business & Personal Finance|Marketing & Sales" }
        if self.rawValue == 15028 { return "Textbooks|Business & Personal Finance|Personal Finance" }
        if self.rawValue == 15029 { return "Textbooks|Business & Personal Finance|Real Estate" }
        if self.rawValue == 15030 { return "Textbooks|Business & Personal Finance|Reference" }
        if self.rawValue == 15031 { return "Textbooks|Business & Personal Finance|Small Business & Entrepreneurship" }
        if self.rawValue == 15032 { return "Textbooks|Children & Teens" }
        if self.rawValue == 15033 { return "Textbooks|Children & Teens|Fiction" }
        if self.rawValue == 15034 { return "Textbooks|Children & Teens|Nonfiction" }
        if self.rawValue == 15035 { return "Textbooks|Comics & Graphic Novels" }
        if self.rawValue == 15036 { return "Textbooks|Comics & Graphic Novels|Graphic Novels" }
        if self.rawValue == 15037 { return "Textbooks|Comics & Graphic Novels|Manga" }
        if self.rawValue == 15038 { return "Textbooks|Communications & Media" }
        if self.rawValue == 15039 { return "Textbooks|Communications & Media|Broadcasting" }
        if self.rawValue == 15040 { return "Textbooks|Communications & Media|Digital Media" }
        if self.rawValue == 15041 { return "Textbooks|Communications & Media|Journalism" }
        if self.rawValue == 15042 { return "Textbooks|Communications & Media|Photojournalism" }
        if self.rawValue == 15043 { return "Textbooks|Communications & Media|Print" }
        if self.rawValue == 15044 { return "Textbooks|Communications & Media|Speech" }
        if self.rawValue == 15045 { return "Textbooks|Communications & Media|Writing" }
        if self.rawValue == 15046 { return "Textbooks|Computers & Internet" }
        if self.rawValue == 15047 { return "Textbooks|Computers & Internet|Computers" }
        if self.rawValue == 15048 { return "Textbooks|Computers & Internet|Databases" }
        if self.rawValue == 15049 { return "Textbooks|Computers & Internet|Digital Media" }
        if self.rawValue == 15050 { return "Textbooks|Computers & Internet|Internet" }
        if self.rawValue == 15051 { return "Textbooks|Computers & Internet|Network" }
        if self.rawValue == 15052 { return "Textbooks|Computers & Internet|Operating Systems" }
        if self.rawValue == 15053 { return "Textbooks|Computers & Internet|Programming" }
        if self.rawValue == 15054 { return "Textbooks|Computers & Internet|Software" }
        if self.rawValue == 15055 { return "Textbooks|Computers & Internet|System Administration" }
        if self.rawValue == 15056 { return "Textbooks|Cookbooks, Food & Wine" }
        if self.rawValue == 15057 { return "Textbooks|Cookbooks, Food & Wine|Beverages" }
        if self.rawValue == 15058 { return "Textbooks|Cookbooks, Food & Wine|Courses & Dishes" }
        if self.rawValue == 15059 { return "Textbooks|Cookbooks, Food & Wine|Culinary Arts" }
        if self.rawValue == 15060 { return "Textbooks|Cookbooks, Food & Wine|Methods" }
        if self.rawValue == 15061 { return "Textbooks|Cookbooks, Food & Wine|Reference" }
        if self.rawValue == 15062 { return "Textbooks|Cookbooks, Food & Wine|Regional & Ethnic" }
        if self.rawValue == 15063 { return "Textbooks|Cookbooks, Food & Wine|Special Diet" }
        if self.rawValue == 15064 { return "Textbooks|Cookbooks, Food & Wine|Special Occasions" }
        if self.rawValue == 15065 { return "Textbooks|Cookbooks, Food & Wine|Specific Ingredients" }
        if self.rawValue == 15066 { return "Textbooks|Engineering" }
        if self.rawValue == 15067 { return "Textbooks|Engineering|Aeronautics" }
        if self.rawValue == 15068 { return "Textbooks|Engineering|Chemical & Petroleum Engineering" }
        if self.rawValue == 15069 { return "Textbooks|Engineering|Civil Engineering" }
        if self.rawValue == 15070 { return "Textbooks|Engineering|Computer Science" }
        if self.rawValue == 15071 { return "Textbooks|Engineering|Electrical Engineering" }
        if self.rawValue == 15072 { return "Textbooks|Engineering|Environmental Engineering" }
        if self.rawValue == 15073 { return "Textbooks|Engineering|Mechanical Engineering" }
        if self.rawValue == 15074 { return "Textbooks|Engineering|Power Resources" }
        if self.rawValue == 15075 { return "Textbooks|Fiction & Literature" }
        if self.rawValue == 15076 { return "Textbooks|Fiction & Literature|Latino" }
        if self.rawValue == 15077 { return "Textbooks|Fiction & Literature|Action & Adventure" }
        if self.rawValue == 15078 { return "Textbooks|Fiction & Literature|African American" }
        if self.rawValue == 15079 { return "Textbooks|Fiction & Literature|Anthologies" }
        if self.rawValue == 15080 { return "Textbooks|Fiction & Literature|Classics" }
        if self.rawValue == 15081 { return "Textbooks|Fiction & Literature|Comparative Literature" }
        if self.rawValue == 15082 { return "Textbooks|Fiction & Literature|Erotica" }
        if self.rawValue == 15083 { return "Textbooks|Fiction & Literature|Gay" }
        if self.rawValue == 15084 { return "Textbooks|Fiction & Literature|Ghost" }
        if self.rawValue == 15085 { return "Textbooks|Fiction & Literature|Historical" }
        if self.rawValue == 15086 { return "Textbooks|Fiction & Literature|Horror" }
        if self.rawValue == 15087 { return "Textbooks|Fiction & Literature|Literary" }
        if self.rawValue == 15088 { return "Textbooks|Fiction & Literature|Literary Criticism" }
        if self.rawValue == 15089 { return "Textbooks|Fiction & Literature|Poetry" }
        if self.rawValue == 15090 { return "Textbooks|Fiction & Literature|Religious" }
        if self.rawValue == 15091 { return "Textbooks|Fiction & Literature|Short Stories" }
        if self.rawValue == 15092 { return "Textbooks|Health, Mind & Body" }
        if self.rawValue == 15093 { return "Textbooks|Health, Mind & Body|Fitness" }
        if self.rawValue == 15094 { return "Textbooks|Health, Mind & Body|Self-Improvement" }
        if self.rawValue == 15095 { return "Textbooks|History" }
        if self.rawValue == 15096 { return "Textbooks|History|Africa" }
        if self.rawValue == 15097 { return "Textbooks|History|Americas" }
        if self.rawValue == 15098 { return "Textbooks|History|Americas|Canada" }
        if self.rawValue == 15099 { return "Textbooks|History|Americas|Latin America" }
        if self.rawValue == 15100 { return "Textbooks|History|Americas|United States" }
        if self.rawValue == 15101 { return "Textbooks|History|Ancient" }
        if self.rawValue == 15102 { return "Textbooks|History|Asia" }
        if self.rawValue == 15103 { return "Textbooks|History|Australia & Oceania" }
        if self.rawValue == 15104 { return "Textbooks|History|Europe" }
        if self.rawValue == 15105 { return "Textbooks|History|Middle East" }
        if self.rawValue == 15106 { return "Textbooks|History|Military" }
        if self.rawValue == 15107 { return "Textbooks|History|World" }
        if self.rawValue == 15108 { return "Textbooks|Humor" }
        if self.rawValue == 15109 { return "Textbooks|Language Studies" }
        if self.rawValue == 15110 { return "Textbooks|Language Studies|African Languages" }
        if self.rawValue == 15111 { return "Textbooks|Language Studies|Ancient Languages" }
        if self.rawValue == 15112 { return "Textbooks|Language Studies|Arabic" }
        if self.rawValue == 15113 { return "Textbooks|Language Studies|Bilingual Editions" }
        if self.rawValue == 15114 { return "Textbooks|Language Studies|Chinese" }
        if self.rawValue == 15115 { return "Textbooks|Language Studies|English" }
        if self.rawValue == 15116 { return "Textbooks|Language Studies|French" }
        if self.rawValue == 15117 { return "Textbooks|Language Studies|German" }
        if self.rawValue == 15118 { return "Textbooks|Language Studies|Hebrew" }
        if self.rawValue == 15119 { return "Textbooks|Language Studies|Hindi" }
        if self.rawValue == 15120 { return "Textbooks|Language Studies|Indigenous Languages" }
        if self.rawValue == 15121 { return "Textbooks|Language Studies|Italian" }
        if self.rawValue == 15122 { return "Textbooks|Language Studies|Japanese" }
        if self.rawValue == 15123 { return "Textbooks|Language Studies|Korean" }
        if self.rawValue == 15124 { return "Textbooks|Language Studies|Linguistics" }
        if self.rawValue == 15125 { return "Textbooks|Language Studies|Other Language" }
        if self.rawValue == 15126 { return "Textbooks|Language Studies|Portuguese" }
        if self.rawValue == 15127 { return "Textbooks|Language Studies|Russian" }
        if self.rawValue == 15128 { return "Textbooks|Language Studies|Spanish" }
        if self.rawValue == 15129 { return "Textbooks|Language Studies|Speech Pathology" }
        if self.rawValue == 15130 { return "Textbooks|Lifestyle & Home" }
        if self.rawValue == 15131 { return "Textbooks|Lifestyle & Home|Antiques & Collectibles" }
        if self.rawValue == 15132 { return "Textbooks|Lifestyle & Home|Crafts & Hobbies" }
        if self.rawValue == 15133 { return "Textbooks|Lifestyle & Home|Gardening" }
        if self.rawValue == 15134 { return "Textbooks|Lifestyle & Home|Pets" }
        if self.rawValue == 15135 { return "Textbooks|Mathematics" }
        if self.rawValue == 15136 { return "Textbooks|Mathematics|Advanced Mathematics" }
        if self.rawValue == 15137 { return "Textbooks|Mathematics|Algebra" }
        if self.rawValue == 15138 { return "Textbooks|Mathematics|Arithmetic" }
        if self.rawValue == 15139 { return "Textbooks|Mathematics|Calculus" }
        if self.rawValue == 15140 { return "Textbooks|Mathematics|Geometry" }
        if self.rawValue == 15141 { return "Textbooks|Mathematics|Statistics" }
        if self.rawValue == 15142 { return "Textbooks|Medicine" }
        if self.rawValue == 15143 { return "Textbooks|Medicine|Anatomy & Physiology" }
        if self.rawValue == 15144 { return "Textbooks|Medicine|Dentistry" }
        if self.rawValue == 15145 { return "Textbooks|Medicine|Emergency Medicine" }
        if self.rawValue == 15146 { return "Textbooks|Medicine|Genetics" }
        if self.rawValue == 15147 { return "Textbooks|Medicine|Immunology" }
        if self.rawValue == 15148 { return "Textbooks|Medicine|Neuroscience" }
        if self.rawValue == 15149 { return "Textbooks|Medicine|Nursing" }
        if self.rawValue == 15150 { return "Textbooks|Medicine|Pharmacology & Toxicology" }
        if self.rawValue == 15151 { return "Textbooks|Medicine|Psychiatry" }
        if self.rawValue == 15152 { return "Textbooks|Medicine|Psychology" }
        if self.rawValue == 15153 { return "Textbooks|Medicine|Radiology" }
        if self.rawValue == 15154 { return "Textbooks|Medicine|Veterinary" }
        if self.rawValue == 15155 { return "Textbooks|Mysteries & Thrillers" }
        if self.rawValue == 15156 { return "Textbooks|Mysteries & Thrillers|British Detectives" }
        if self.rawValue == 15157 { return "Textbooks|Mysteries & Thrillers|Hard-Boiled" }
        if self.rawValue == 15158 { return "Textbooks|Mysteries & Thrillers|Historical" }
        if self.rawValue == 15159 { return "Textbooks|Mysteries & Thrillers|Police Procedural" }
        if self.rawValue == 15160 { return "Textbooks|Mysteries & Thrillers|Short Stories" }
        if self.rawValue == 15161 { return "Textbooks|Mysteries & Thrillers|Women Sleuths" }
        if self.rawValue == 15162 { return "Textbooks|Nonfiction" }
        if self.rawValue == 15163 { return "Textbooks|Nonfiction|Family & Relationships" }
        if self.rawValue == 15164 { return "Textbooks|Nonfiction|Transportation" }
        if self.rawValue == 15165 { return "Textbooks|Nonfiction|True Crime" }
        if self.rawValue == 15166 { return "Textbooks|Parenting" }
        if self.rawValue == 15167 { return "Textbooks|Philosophy" }
        if self.rawValue == 15168 { return "Textbooks|Philosophy|Aesthetics" }
        if self.rawValue == 15169 { return "Textbooks|Philosophy|Epistemology" }
        if self.rawValue == 15170 { return "Textbooks|Philosophy|Ethics" }
        if self.rawValue == 15171 { return "Textbooks|Philosophy|Philosophy of Language" }
        if self.rawValue == 15172 { return "Textbooks|Philosophy|Logic" }
        if self.rawValue == 15173 { return "Textbooks|Philosophy|Metaphysics" }
        if self.rawValue == 15174 { return "Textbooks|Philosophy|Political Philosophy" }
        if self.rawValue == 15175 { return "Textbooks|Philosophy|Philosophy of Religion" }
        if self.rawValue == 15176 { return "Textbooks|Politics & Current Events" }
        if self.rawValue == 15177 { return "Textbooks|Politics & Current Events|Current Events" }
        if self.rawValue == 15178 { return "Textbooks|Politics & Current Events|Foreign Policy & International Relations" }
        if self.rawValue == 15179 { return "Textbooks|Politics & Current Events|Local Governments" }
        if self.rawValue == 15180 { return "Textbooks|Politics & Current Events|National Governments" }
        if self.rawValue == 15181 { return "Textbooks|Politics & Current Events|Political Science" }
        if self.rawValue == 15182 { return "Textbooks|Politics & Current Events|Public Administration" }
        if self.rawValue == 15183 { return "Textbooks|Politics & Current Events|World Affairs" }
        if self.rawValue == 15184 { return "Textbooks|Professional & Technical" }
        if self.rawValue == 15185 { return "Textbooks|Professional & Technical|Design" }
        if self.rawValue == 15186 { return "Textbooks|Professional & Technical|Language Arts & Disciplines" }
        if self.rawValue == 15187 { return "Textbooks|Professional & Technical|Engineering" }
        if self.rawValue == 15188 { return "Textbooks|Professional & Technical|Law" }
        if self.rawValue == 15189 { return "Textbooks|Professional & Technical|Medical" }
        if self.rawValue == 15190 { return "Textbooks|Reference" }
        if self.rawValue == 15191 { return "Textbooks|Reference|Almanacs & Yearbooks" }
        if self.rawValue == 15192 { return "Textbooks|Reference|Atlases & Maps" }
        if self.rawValue == 15193 { return "Textbooks|Reference|Catalogs & Directories" }
        if self.rawValue == 15194 { return "Textbooks|Reference|Consumer Guides" }
        if self.rawValue == 15195 { return "Textbooks|Reference|Dictionaries & Thesauruses" }
        if self.rawValue == 15196 { return "Textbooks|Reference|Encyclopedias" }
        if self.rawValue == 15197 { return "Textbooks|Reference|Etiquette" }
        if self.rawValue == 15198 { return "Textbooks|Reference|Quotations" }
        if self.rawValue == 15199 { return "Textbooks|Reference|Study Aids" }
        if self.rawValue == 15200 { return "Textbooks|Reference|Words & Language" }
        if self.rawValue == 15201 { return "Textbooks|Reference|Writing" }
        if self.rawValue == 15202 { return "Textbooks|Religion & Spirituality" }
        if self.rawValue == 15203 { return "Textbooks|Religion & Spirituality|Bible Studies" }
        if self.rawValue == 15204 { return "Textbooks|Religion & Spirituality|Bibles" }
        if self.rawValue == 15205 { return "Textbooks|Religion & Spirituality|Buddhism" }
        if self.rawValue == 15206 { return "Textbooks|Religion & Spirituality|Christianity" }
        if self.rawValue == 15207 { return "Textbooks|Religion & Spirituality|Comparative Religion" }
        if self.rawValue == 15208 { return "Textbooks|Religion & Spirituality|Hinduism" }
        if self.rawValue == 15209 { return "Textbooks|Religion & Spirituality|Islam" }
        if self.rawValue == 15210 { return "Textbooks|Religion & Spirituality|Judaism" }
        if self.rawValue == 15211 { return "Textbooks|Religion & Spirituality|Spirituality" }
        if self.rawValue == 15212 { return "Textbooks|Romance" }
        if self.rawValue == 15213 { return "Textbooks|Romance|Contemporary" }
        if self.rawValue == 15214 { return "Textbooks|Romance|Erotic Romance" }
        if self.rawValue == 15215 { return "Textbooks|Romance|Paranormal" }
        if self.rawValue == 15216 { return "Textbooks|Romance|Historical" }
        if self.rawValue == 15217 { return "Textbooks|Romance|Short Stories" }
        if self.rawValue == 15218 { return "Textbooks|Romance|Suspense" }
        if self.rawValue == 15219 { return "Textbooks|Romance|Western" }
        if self.rawValue == 15220 { return "Textbooks|Sci-Fi & Fantasy" }
        if self.rawValue == 15221 { return "Textbooks|Sci-Fi & Fantasy|Fantasy" }
        if self.rawValue == 15222 { return "Textbooks|Sci-Fi & Fantasy|Fantasy|Contemporary" }
        if self.rawValue == 15223 { return "Textbooks|Sci-Fi & Fantasy|Fantasy|Epic" }
        if self.rawValue == 15224 { return "Textbooks|Sci-Fi & Fantasy|Fantasy|Historical" }
        if self.rawValue == 15225 { return "Textbooks|Sci-Fi & Fantasy|Fantasy|Paranormal" }
        if self.rawValue == 15226 { return "Textbooks|Sci-Fi & Fantasy|Fantasy|Short Stories" }
        if self.rawValue == 15227 { return "Textbooks|Sci-Fi & Fantasy|Science Fiction" }
        if self.rawValue == 15228 { return "Textbooks|Sci-Fi & Fantasy|Science Fiction & Literature" }
        if self.rawValue == 15229 { return "Textbooks|Sci-Fi & Fantasy|Science Fiction & Literature|Adventure" }
        if self.rawValue == 15230 { return "Textbooks|Sci-Fi & Fantasy|Science Fiction & Literature|High Tech" }
        if self.rawValue == 15231 { return "Textbooks|Sci-Fi & Fantasy|Science Fiction & Literature|Short Stories" }
        if self.rawValue == 15232 { return "Textbooks|Science & Nature" }
        if self.rawValue == 15233 { return "Textbooks|Science & Nature|Agriculture" }
        if self.rawValue == 15234 { return "Textbooks|Science & Nature|Astronomy" }
        if self.rawValue == 15235 { return "Textbooks|Science & Nature|Atmosphere" }
        if self.rawValue == 15236 { return "Textbooks|Science & Nature|Biology" }
        if self.rawValue == 15237 { return "Textbooks|Science & Nature|Chemistry" }
        if self.rawValue == 15238 { return "Textbooks|Science & Nature|Earth Sciences" }
        if self.rawValue == 15239 { return "Textbooks|Science & Nature|Ecology" }
        if self.rawValue == 15240 { return "Textbooks|Science & Nature|Environment" }
        if self.rawValue == 15241 { return "Textbooks|Science & Nature|Essays" }
        if self.rawValue == 15242 { return "Textbooks|Science & Nature|Geography" }
        if self.rawValue == 15243 { return "Textbooks|Science & Nature|Geology" }
        if self.rawValue == 15244 { return "Textbooks|Science & Nature|History" }
        if self.rawValue == 15245 { return "Textbooks|Science & Nature|Life Sciences" }
        if self.rawValue == 15246 { return "Textbooks|Science & Nature|Nature" }
        if self.rawValue == 15247 { return "Textbooks|Science & Nature|Physics" }
        if self.rawValue == 15248 { return "Textbooks|Science & Nature|Reference" }
        if self.rawValue == 15249 { return "Textbooks|Social Science" }
        if self.rawValue == 15250 { return "Textbooks|Social Science|Anthropology" }
        if self.rawValue == 15251 { return "Textbooks|Social Science|Archaeology" }
        if self.rawValue == 15252 { return "Textbooks|Social Science|Civics" }
        if self.rawValue == 15253 { return "Textbooks|Social Science|Government" }
        if self.rawValue == 15254 { return "Textbooks|Social Science|Social Studies" }
        if self.rawValue == 15255 { return "Textbooks|Social Science|Social Welfare" }
        if self.rawValue == 15256 { return "Textbooks|Social Science|Society" }
        if self.rawValue == 15257 { return "Textbooks|Social Science|Society|African Studies" }
        if self.rawValue == 15258 { return "Textbooks|Social Science|Society|American Studies" }
        if self.rawValue == 15259 { return "Textbooks|Social Science|Society|Asia Pacific Studies" }
        if self.rawValue == 15260 { return "Textbooks|Social Science|Society|Cross-Cultural Studies" }
        if self.rawValue == 15261 { return "Textbooks|Social Science|Society|European Studies" }
        if self.rawValue == 15262 { return "Textbooks|Social Science|Society|Immigration & Emigration" }
        if self.rawValue == 15263 { return "Textbooks|Social Science|Society|Indigenous Studies" }
        if self.rawValue == 15264 { return "Textbooks|Social Science|Society|Latin & Caribbean Studies" }
        if self.rawValue == 15265 { return "Textbooks|Social Science|Society|Middle Eastern Studies" }
        if self.rawValue == 15266 { return "Textbooks|Social Science|Society|Race & Ethnicity Studies" }
        if self.rawValue == 15267 { return "Textbooks|Social Science|Society|Sexuality Studies" }
        if self.rawValue == 15268 { return "Textbooks|Social Science|Society|Women's Studies" }
        if self.rawValue == 15269 { return "Textbooks|Social Science|Sociology" }
        if self.rawValue == 15270 { return "Textbooks|Sports & Outdoors" }
        if self.rawValue == 15271 { return "Textbooks|Sports & Outdoors|Baseball" }
        if self.rawValue == 15272 { return "Textbooks|Sports & Outdoors|Basketball" }
        if self.rawValue == 15273 { return "Textbooks|Sports & Outdoors|Coaching" }
        if self.rawValue == 15274 { return "Textbooks|Sports & Outdoors|Equestrian" }
        if self.rawValue == 15275 { return "Textbooks|Sports & Outdoors|Extreme Sports" }
        if self.rawValue == 15276 { return "Textbooks|Sports & Outdoors|Football" }
        if self.rawValue == 15277 { return "Textbooks|Sports & Outdoors|Golf" }
        if self.rawValue == 15278 { return "Textbooks|Sports & Outdoors|Hockey" }
        if self.rawValue == 15279 { return "Textbooks|Sports & Outdoors|Motor Sports" }
        if self.rawValue == 15280 { return "Textbooks|Sports & Outdoors|Mountaineering" }
        if self.rawValue == 15281 { return "Textbooks|Sports & Outdoors|Outdoors" }
        if self.rawValue == 15282 { return "Textbooks|Sports & Outdoors|Racket Sports" }
        if self.rawValue == 15283 { return "Textbooks|Sports & Outdoors|Reference" }
        if self.rawValue == 15284 { return "Textbooks|Sports & Outdoors|Soccer" }
        if self.rawValue == 15285 { return "Textbooks|Sports & Outdoors|Training" }
        if self.rawValue == 15286 { return "Textbooks|Sports & Outdoors|Water Sports" }
        if self.rawValue == 15287 { return "Textbooks|Sports & Outdoors|Winter Sports" }
        if self.rawValue == 15288 { return "Textbooks|Teaching & Learning" }
        if self.rawValue == 15289 { return "Textbooks|Teaching & Learning|Adult Education" }
        if self.rawValue == 15290 { return "Textbooks|Teaching & Learning|Curriculum & Teaching" }
        if self.rawValue == 15291 { return "Textbooks|Teaching & Learning|Educational Leadership" }
        if self.rawValue == 15292 { return "Textbooks|Teaching & Learning|Educational Technology" }
        if self.rawValue == 15293 { return "Textbooks|Teaching & Learning|Family & Childcare" }
        if self.rawValue == 15294 { return "Textbooks|Teaching & Learning|Information & Library Science" }
        if self.rawValue == 15295 { return "Textbooks|Teaching & Learning|Learning Resources" }
        if self.rawValue == 15296 { return "Textbooks|Teaching & Learning|Psychology & Research" }
        if self.rawValue == 15297 { return "Textbooks|Teaching & Learning|Special Education" }
        if self.rawValue == 15298 { return "Textbooks|Travel & Adventure" }
        if self.rawValue == 15299 { return "Textbooks|Travel & Adventure|Africa" }
        if self.rawValue == 15300 { return "Textbooks|Travel & Adventure|Americas" }
        if self.rawValue == 15301 { return "Textbooks|Travel & Adventure|Americas|Canada" }
        if self.rawValue == 15302 { return "Textbooks|Travel & Adventure|Americas|Latin America" }
        if self.rawValue == 15303 { return "Textbooks|Travel & Adventure|Americas|United States" }
        if self.rawValue == 15304 { return "Textbooks|Travel & Adventure|Asia" }
        if self.rawValue == 15305 { return "Textbooks|Travel & Adventure|Caribbean" }
        if self.rawValue == 15306 { return "Textbooks|Travel & Adventure|Essays & Memoirs" }
        if self.rawValue == 15307 { return "Textbooks|Travel & Adventure|Europe" }
        if self.rawValue == 15308 { return "Textbooks|Travel & Adventure|Middle East" }
        if self.rawValue == 15309 { return "Textbooks|Travel & Adventure|Oceania" }
        if self.rawValue == 15310 { return "Textbooks|Travel & Adventure|Specialty Travel" }
        if self.rawValue == 15311 { return "Textbooks|Comics & Graphic Novels|Comics" }
        if self.rawValue == 15312 { return "Textbooks|Reference|Manuals" }
        if self.rawValue == 16001 { return "App Store|Stickers|Emoji & Expressions" }
        if self.rawValue == 16003 { return "App Store|Stickers|Animals & Nature" }
        if self.rawValue == 16005 { return "App Store|Stickers|Art" }
        if self.rawValue == 16006 { return "App Store|Stickers|Celebrations" }
        if self.rawValue == 16007 { return "App Store|Stickers|Celebrities" }
        if self.rawValue == 16008 { return "App Store|Stickers|Comics & Cartoons" }
        if self.rawValue == 16009 { return "App Store|Stickers|Eating & Drinking" }
        if self.rawValue == 16010 { return "App Store|Stickers|Gaming" }
        if self.rawValue == 16014 { return "App Store|Stickers|Movies & TV" }
        if self.rawValue == 16015 { return "App Store|Stickers|Music" }
        if self.rawValue == 16017 { return "App Store|Stickers|People" }
        if self.rawValue == 16019 { return "App Store|Stickers|Places & Objects" }
        if self.rawValue == 16021 { return "App Store|Stickers|Sports & Activities" }
        if self.rawValue == 16025 { return "App Store|Stickers|Kids & Family" }
        if self.rawValue == 16026 { return "App Store|Stickers|Fashion" }
        if self.rawValue == 100000 { return "Music|Christian & Gospel" }
        if self.rawValue == 100001 { return "Music|Classical|Art Song" }
        if self.rawValue == 100002 { return "Music|Classical|Brass & Woodwinds" }
        if self.rawValue == 100003 { return "Music|Classical|Solo Instrumental" }
        if self.rawValue == 100004 { return "Music|Classical|Contemporary Era" }
        if self.rawValue == 100005 { return "Music|Classical|Oratorio" }
        if self.rawValue == 100006 { return "Music|Classical|Cantata" }
        if self.rawValue == 100007 { return "Music|Classical|Electronic" }
        if self.rawValue == 100008 { return "Music|Classical|Sacred" }
        if self.rawValue == 100009 { return "Music|Classical|Guitar" }
        if self.rawValue == 100010 { return "Music|Classical|Piano" }
        if self.rawValue == 100011 { return "Music|Classical|Violin" }
        if self.rawValue == 100012 { return "Music|Classical|Cello" }
        if self.rawValue == 100013 { return "Music|Classical|Percussion" }
        if self.rawValue == 100014 { return "Music|Electronic|Dubstep" }
        if self.rawValue == 100015 { return "Music|Electronic|Bass" }
        if self.rawValue == 100016 { return "Music|Hip-Hop/Rap|UK Hip-Hop" }
        if self.rawValue == 100017 { return "Music|Reggae|Lovers Rock" }
        if self.rawValue == 100018 { return "Music|Alternative|EMO" }
        if self.rawValue == 100019 { return "Music|Alternative|Pop Punk" }
        if self.rawValue == 100020 { return "Music|Alternative|Indie Pop" }
        if self.rawValue == 100021 { return "Music|New Age|Yoga" }
        if self.rawValue == 100022 { return "Music|Pop|Tribute" }
        if self.rawValue == 100023 { return "Music|Pop|Shows" }
        if self.rawValue == 100024 { return "Music|Cuban" }
        if self.rawValue == 100025 { return "Music|Cuban|Mambo" }
        if self.rawValue == 100026 { return "Music|Cuban|Chachacha" }
        if self.rawValue == 100027 { return "Music|Cuban|Guajira" }
        if self.rawValue == 100028 { return "Music|Cuban|Son" }
        if self.rawValue == 100029 { return "Music|Cuban|Bolero" }
        if self.rawValue == 100030 { return "Music|Cuban|Guaracha" }
        if self.rawValue == 100031 { return "Music|Cuban|Timba" }
        if self.rawValue == 100032 { return "Music|Soundtrack|Video Game" }
        if self.rawValue == 100033 { return "Music|Indian|Regional Indian|Punjabi|Punjabi Pop" }
        if self.rawValue == 100034 { return "Music|Indian|Regional Indian|Bengali|Rabindra Sangeet" }
        if self.rawValue == 100035 { return "Music|Indian|Regional Indian|Malayalam" }
        if self.rawValue == 100036 { return "Music|Indian|Regional Indian|Kannada" }
        if self.rawValue == 100037 { return "Music|Indian|Regional Indian|Marathi" }
        if self.rawValue == 100038 { return "Music|Indian|Regional Indian|Gujarati" }
        if self.rawValue == 100039 { return "Music|Indian|Regional Indian|Assamese" }
        if self.rawValue == 100040 { return "Music|Indian|Regional Indian|Bhojpuri" }
        if self.rawValue == 100041 { return "Music|Indian|Regional Indian|Haryanvi" }
        if self.rawValue == 100042 { return "Music|Indian|Regional Indian|Odia" }
        if self.rawValue == 100043 { return "Music|Indian|Regional Indian|Rajasthani" }
        if self.rawValue == 100044 { return "Music|Indian|Regional Indian|Urdu" }
        if self.rawValue == 100045 { return "Music|Indian|Regional Indian|Punjabi" }
        if self.rawValue == 100046 { return "Music|Indian|Regional Indian|Bengali" }
        if self.rawValue == 100047 { return "Music|Indian|Indian Classical|Carnatic Classical" }
        if self.rawValue == 100048 { return "Music|Indian|Indian Classical|Hindustani Classical" }
        if self.rawValue == 100049 { return "Music|African|Afro House" }
        if self.rawValue == 100050 { return "Music|African|Afro Soul" }
        if self.rawValue == 100051 { return "Music|African|Afrobeats" }
        if self.rawValue == 100052 { return "Music|African|Benga" }
        if self.rawValue == 100053 { return "Music|African|Bongo-Flava" }
        if self.rawValue == 100054 { return "Music|African|Coupe-Decale" }
        if self.rawValue == 100055 { return "Music|African|Gqom" }
        if self.rawValue == 100056 { return "Music|African|Highlife" }
        if self.rawValue == 100057 { return "Music|African|Kuduro" }
        if self.rawValue == 100058 { return "Music|African|Kizomba" }
        if self.rawValue == 100059 { return "Music|African|Kwaito" }
        if self.rawValue == 100060 { return "Music|African|Mbalax" }
        if self.rawValue == 100061 { return "Music|African|Ndombolo" }
        if self.rawValue == 100062 { return "Music|African|Shangaan Electro" }
        if self.rawValue == 100063 { return "Music|African|Soukous" }
        if self.rawValue == 100064 { return "Music|African|Taarab" }
        if self.rawValue == 100065 { return "Music|African|Zouglou" }
        if self.rawValue == 100066 { return "Music|Turkish|Ozgun" }
        if self.rawValue == 100067 { return "Music|Turkish|Fantezi" }
        if self.rawValue == 100068 { return "Music|Turkish|Religious" }
        if self.rawValue == 100069 { return "Music|Pop|Turkish Pop" }
        if self.rawValue == 100070 { return "Music|Rock|Turkish Rock" }
        if self.rawValue == 100071 { return "Music|Alternative|Turkish Alternative" }
        if self.rawValue == 100072 { return "Music|Hip-Hop/Rap|Turkish Hip-Hop/Rap" }
        if self.rawValue == 100073 { return "Music|African|Maskandi" }
        if self.rawValue == 100074 { return "Music|Russian|Russian Romance" }
        if self.rawValue == 100075 { return "Music|Russian|Russian Bard" }
        if self.rawValue == 100076 { return "Music|Russian|Russian Pop" }
        if self.rawValue == 100077 { return "Music|Russian|Russian Rock" }
        if self.rawValue == 100078 { return "Music|Russian|Russian Hip-Hop" }
        if self.rawValue == 100079 { return "Music|Arabic|Levant" }
        if self.rawValue == 100080 { return "Music|Arabic|Levant|Dabke" }
        if self.rawValue == 100081 { return "Music|Arabic|Maghreb Rai" }
        if self.rawValue == 100082 { return "Music|Arabic|Khaleeji|Khaleeji Jalsat" }
        if self.rawValue == 100083 { return "Music|Arabic|Khaleeji|Khaleeji Shailat" }
        if self.rawValue == 100084 { return "Music|Tarab" }
        if self.rawValue == 100085 { return "Music|Tarab|Iraqi Tarab" }
        if self.rawValue == 100086 { return "Music|Tarab|Egyptian Tarab" }
        if self.rawValue == 100087 { return "Music|Tarab|Khaleeji Tarab" }
        if self.rawValue == 100088 { return "Music|Pop|Levant Pop" }
        if self.rawValue == 100089 { return "Music|Pop|Iraqi Pop" }
        if self.rawValue == 100090 { return "Music|Pop|Egyptian Pop" }
        if self.rawValue == 100091 { return "Music|Pop|Maghreb Pop" }
        if self.rawValue == 100092 { return "Music|Pop|Khaleeji Pop" }
        if self.rawValue == 100093 { return "Music|Hip-Hop/Rap|Levant Hip-Hop" }
        if self.rawValue == 100094 { return "Music|Hip-Hop/Rap|Egyptian Hip-Hop" }
        if self.rawValue == 100095 { return "Music|Hip-Hop/Rap|Maghreb Hip-Hop" }
        if self.rawValue == 100096 { return "Music|Hip-Hop/Rap|Khaleeji Hip-Hop" }
        if self.rawValue == 100097 { return "Music|Alternative|Indie Levant" }
        if self.rawValue == 100098 { return "Music|Alternative|Indie Egyptian" }
        if self.rawValue == 100099 { return "Music|Alternative|Indie Maghreb" }
        if self.rawValue == 100100 { return "Music|Electronic|Levant Electronic" }
        if self.rawValue == 100101 { return "Music|Electronic|Electro-Cha'abi" }
        if self.rawValue == 100102 { return "Music|Electronic|Maghreb Electronic" }
        if self.rawValue == 100103 { return "Music|Folk|Iraqi Folk" }
        if self.rawValue == 100104 { return "Music|Folk|Khaleeji Folk" }
        if self.rawValue == 100105 { return "Music|Dance|Maghreb Dance" }
        if self.rawValue == 40000000 { return "iTunes U" }
        if self.rawValue == 40000001 { return "iTunes U|Business & Economics" }
        if self.rawValue == 40000002 { return "iTunes U|Business & Economics|Economics" }
        if self.rawValue == 40000003 { return "iTunes U|Business & Economics|Finance" }
        if self.rawValue == 40000004 { return "iTunes U|Business & Economics|Hospitality" }
        if self.rawValue == 40000005 { return "iTunes U|Business & Economics|Management" }
        if self.rawValue == 40000006 { return "iTunes U|Business & Economics|Marketing" }
        if self.rawValue == 40000007 { return "iTunes U|Business & Economics|Personal Finance" }
        if self.rawValue == 40000008 { return "iTunes U|Business & Economics|Real Estate" }
        if self.rawValue == 40000009 { return "iTunes U|Engineering" }
        if self.rawValue == 40000010 { return "iTunes U|Engineering|Chemical & Petroleum Engineering" }
        if self.rawValue == 40000011 { return "iTunes U|Engineering|Civil Engineering" }
        if self.rawValue == 40000012 { return "iTunes U|Engineering|Computer Science" }
        if self.rawValue == 40000013 { return "iTunes U|Engineering|Electrical Engineering" }
        if self.rawValue == 40000014 { return "iTunes U|Engineering|Environmental Engineering" }
        if self.rawValue == 40000015 { return "iTunes U|Engineering|Mechanical Engineering" }
        if self.rawValue == 40000016 { return "iTunes U|Music, Art, & Design" }
        if self.rawValue == 40000017 { return "iTunes U|Music, Art, & Design|Architecture" }
        if self.rawValue == 40000019 { return "iTunes U|Music, Art, & Design|Art History" }
        if self.rawValue == 40000020 { return "iTunes U|Music, Art, & Design|Dance" }
        if self.rawValue == 40000021 { return "iTunes U|Music, Art, & Design|Film" }
        if self.rawValue == 40000022 { return "iTunes U|Music, Art, & Design|Design" }
        if self.rawValue == 40000023 { return "iTunes U|Music, Art, & Design|Interior Design" }
        if self.rawValue == 40000024 { return "iTunes U|Music, Art, & Design|Music" }
        if self.rawValue == 40000025 { return "iTunes U|Music, Art, & Design|Theater" }
        if self.rawValue == 40000026 { return "iTunes U|Health & Medicine" }
        if self.rawValue == 40000027 { return "iTunes U|Health & Medicine|Anatomy & Physiology" }
        if self.rawValue == 40000028 { return "iTunes U|Health & Medicine|Behavioral Science" }
        if self.rawValue == 40000029 { return "iTunes U|Health & Medicine|Dentistry" }
        if self.rawValue == 40000030 { return "iTunes U|Health & Medicine|Diet & Nutrition" }
        if self.rawValue == 40000031 { return "iTunes U|Health & Medicine|Emergency Medicine" }
        if self.rawValue == 40000032 { return "iTunes U|Health & Medicine|Genetics" }
        if self.rawValue == 40000033 { return "iTunes U|Health & Medicine|Gerontology" }
        if self.rawValue == 40000034 { return "iTunes U|Health & Medicine|Health & Exercise Science" }
        if self.rawValue == 40000035 { return "iTunes U|Health & Medicine|Immunology" }
        if self.rawValue == 40000036 { return "iTunes U|Health & Medicine|Neuroscience" }
        if self.rawValue == 40000037 { return "iTunes U|Health & Medicine|Pharmacology & Toxicology" }
        if self.rawValue == 40000038 { return "iTunes U|Health & Medicine|Psychiatry" }
        if self.rawValue == 40000039 { return "iTunes U|Health & Medicine|Global Health" }
        if self.rawValue == 40000040 { return "iTunes U|Health & Medicine|Radiology" }
        if self.rawValue == 40000041 { return "iTunes U|History" }
        if self.rawValue == 40000042 { return "iTunes U|History|Ancient History" }
        if self.rawValue == 40000043 { return "iTunes U|History|Medieval History" }
        if self.rawValue == 40000044 { return "iTunes U|History|Military History" }
        if self.rawValue == 40000045 { return "iTunes U|History|Modern History" }
        if self.rawValue == 40000046 { return "iTunes U|History|African History" }
        if self.rawValue == 40000047 { return "iTunes U|History|Asia-Pacific History" }
        if self.rawValue == 40000048 { return "iTunes U|History|European History" }
        if self.rawValue == 40000049 { return "iTunes U|History|Middle Eastern History" }
        if self.rawValue == 40000050 { return "iTunes U|History|North American History" }
        if self.rawValue == 40000051 { return "iTunes U|History|South American History" }
        if self.rawValue == 40000053 { return "iTunes U|Communications & Journalism" }
        if self.rawValue == 40000054 { return "iTunes U|Philosophy" }
        if self.rawValue == 40000055 { return "iTunes U|Religion & Spirituality" }
        if self.rawValue == 40000056 { return "iTunes U|Languages" }
        if self.rawValue == 40000057 { return "iTunes U|Languages|African Languages" }
        if self.rawValue == 40000058 { return "iTunes U|Languages|Ancient Languages" }
        if self.rawValue == 40000061 { return "iTunes U|Languages|English" }
        if self.rawValue == 40000063 { return "iTunes U|Languages|French" }
        if self.rawValue == 40000064 { return "iTunes U|Languages|German" }
        if self.rawValue == 40000065 { return "iTunes U|Languages|Italian" }
        if self.rawValue == 40000066 { return "iTunes U|Languages|Linguistics" }
        if self.rawValue == 40000068 { return "iTunes U|Languages|Spanish" }
        if self.rawValue == 40000069 { return "iTunes U|Languages|Speech Pathology" }
        if self.rawValue == 40000070 { return "iTunes U|Writing & Literature" }
        if self.rawValue == 40000071 { return "iTunes U|Writing & Literature|Anthologies" }
        if self.rawValue == 40000072 { return "iTunes U|Writing & Literature|Biography" }
        if self.rawValue == 40000073 { return "iTunes U|Writing & Literature|Classics" }
        if self.rawValue == 40000074 { return "iTunes U|Writing & Literature|Literary Criticism" }
        if self.rawValue == 40000075 { return "iTunes U|Writing & Literature|Fiction" }
        if self.rawValue == 40000076 { return "iTunes U|Writing & Literature|Poetry" }
        if self.rawValue == 40000077 { return "iTunes U|Mathematics" }
        if self.rawValue == 40000078 { return "iTunes U|Mathematics|Advanced Mathematics" }
        if self.rawValue == 40000079 { return "iTunes U|Mathematics|Algebra" }
        if self.rawValue == 40000080 { return "iTunes U|Mathematics|Arithmetic" }
        if self.rawValue == 40000081 { return "iTunes U|Mathematics|Calculus" }
        if self.rawValue == 40000082 { return "iTunes U|Mathematics|Geometry" }
        if self.rawValue == 40000083 { return "iTunes U|Mathematics|Statistics" }
        if self.rawValue == 40000084 { return "iTunes U|Science" }
        if self.rawValue == 40000085 { return "iTunes U|Science|Agricultural" }
        if self.rawValue == 40000086 { return "iTunes U|Science|Astronomy" }
        if self.rawValue == 40000087 { return "iTunes U|Science|Atmosphere" }
        if self.rawValue == 40000088 { return "iTunes U|Science|Biology" }
        if self.rawValue == 40000089 { return "iTunes U|Science|Chemistry" }
        if self.rawValue == 40000090 { return "iTunes U|Science|Ecology" }
        if self.rawValue == 40000091 { return "iTunes U|Science|Geography" }
        if self.rawValue == 40000092 { return "iTunes U|Science|Geology" }
        if self.rawValue == 40000093 { return "iTunes U|Science|Physics" }
        if self.rawValue == 40000094 { return "iTunes U|Social Science" }
        if self.rawValue == 40000095 { return "iTunes U|Law & Politics|Law" }
        if self.rawValue == 40000096 { return "iTunes U|Law & Politics|Political Science" }
        if self.rawValue == 40000097 { return "iTunes U|Law & Politics|Public Administration" }
        if self.rawValue == 40000098 { return "iTunes U|Social Science|Psychology" }
        if self.rawValue == 40000099 { return "iTunes U|Social Science|Social Welfare" }
        if self.rawValue == 40000100 { return "iTunes U|Social Science|Sociology" }
        if self.rawValue == 40000101 { return "iTunes U|Society" }
        if self.rawValue == 40000103 { return "iTunes U|Society|Asia Pacific Studies" }
        if self.rawValue == 40000104 { return "iTunes U|Society|European Studies" }
        if self.rawValue == 40000105 { return "iTunes U|Society|Indigenous Studies" }
        if self.rawValue == 40000106 { return "iTunes U|Society|Latin & Caribbean Studies" }
        if self.rawValue == 40000107 { return "iTunes U|Society|Middle Eastern Studies" }
        if self.rawValue == 40000108 { return "iTunes U|Society|Women's Studies" }
        if self.rawValue == 40000109 { return "iTunes U|Teaching & Learning" }
        if self.rawValue == 40000110 { return "iTunes U|Teaching & Learning|Curriculum & Teaching" }
        if self.rawValue == 40000111 { return "iTunes U|Teaching & Learning|Educational Leadership" }
        if self.rawValue == 40000112 { return "iTunes U|Teaching & Learning|Family & Childcare" }
        if self.rawValue == 40000113 { return "iTunes U|Teaching & Learning|Learning Resources" }
        if self.rawValue == 40000114 { return "iTunes U|Teaching & Learning|Psychology & Research" }
        if self.rawValue == 40000115 { return "iTunes U|Teaching & Learning|Special Education" }
        if self.rawValue == 40000116 { return "iTunes U|Music, Art, & Design|Culinary Arts" }
        if self.rawValue == 40000117 { return "iTunes U|Music, Art, & Design|Fashion" }
        if self.rawValue == 40000118 { return "iTunes U|Music, Art, & Design|Media Arts" }
        if self.rawValue == 40000119 { return "iTunes U|Music, Art, & Design|Photography" }
        if self.rawValue == 40000120 { return "iTunes U|Music, Art, & Design|Visual Art" }
        if self.rawValue == 40000121 { return "iTunes U|Business & Economics|Entrepreneurship" }
        if self.rawValue == 40000122 { return "iTunes U|Communications & Journalism|Broadcasting" }
        if self.rawValue == 40000123 { return "iTunes U|Communications & Journalism|Digital Media" }
        if self.rawValue == 40000124 { return "iTunes U|Communications & Journalism|Journalism" }
        if self.rawValue == 40000125 { return "iTunes U|Communications & Journalism|Photojournalism" }
        if self.rawValue == 40000126 { return "iTunes U|Communications & Journalism|Print" }
        if self.rawValue == 40000127 { return "iTunes U|Communications & Journalism|Speech" }
        if self.rawValue == 40000128 { return "iTunes U|Communications & Journalism|Writing" }
        if self.rawValue == 40000129 { return "iTunes U|Health & Medicine|Nursing" }
        if self.rawValue == 40000130 { return "iTunes U|Languages|Arabic" }
        if self.rawValue == 40000131 { return "iTunes U|Languages|Chinese" }
        if self.rawValue == 40000132 { return "iTunes U|Languages|Hebrew" }
        if self.rawValue == 40000133 { return "iTunes U|Languages|Hindi" }
        if self.rawValue == 40000134 { return "iTunes U|Languages|Indigenous Languages" }
        if self.rawValue == 40000135 { return "iTunes U|Languages|Japanese" }
        if self.rawValue == 40000136 { return "iTunes U|Languages|Korean" }
        if self.rawValue == 40000137 { return "iTunes U|Languages|Other Languages" }
        if self.rawValue == 40000138 { return "iTunes U|Languages|Portuguese" }
        if self.rawValue == 40000139 { return "iTunes U|Languages|Russian" }
        if self.rawValue == 40000140 { return "iTunes U|Law & Politics" }
        if self.rawValue == 40000141 { return "iTunes U|Law & Politics|Foreign Policy & International Relations" }
        if self.rawValue == 40000142 { return "iTunes U|Law & Politics|Local Governments" }
        if self.rawValue == 40000143 { return "iTunes U|Law & Politics|National Governments" }
        if self.rawValue == 40000144 { return "iTunes U|Law & Politics|World Affairs" }
        if self.rawValue == 40000145 { return "iTunes U|Writing & Literature|Comparative Literature" }
        if self.rawValue == 40000146 { return "iTunes U|Philosophy|Aesthetics" }
        if self.rawValue == 40000147 { return "iTunes U|Philosophy|Epistemology" }
        if self.rawValue == 40000148 { return "iTunes U|Philosophy|Ethics" }
        if self.rawValue == 40000149 { return "iTunes U|Philosophy|Metaphysics" }
        if self.rawValue == 40000150 { return "iTunes U|Philosophy|Political Philosophy" }
        if self.rawValue == 40000151 { return "iTunes U|Philosophy|Logic" }
        if self.rawValue == 40000152 { return "iTunes U|Philosophy|Philosophy of Language" }
        if self.rawValue == 40000153 { return "iTunes U|Philosophy|Philosophy of Religion" }
        if self.rawValue == 40000154 { return "iTunes U|Social Science|Archaeology" }
        if self.rawValue == 40000155 { return "iTunes U|Social Science|Anthropology" }
        if self.rawValue == 40000156 { return "iTunes U|Religion & Spirituality|Buddhism" }
        if self.rawValue == 40000157 { return "iTunes U|Religion & Spirituality|Christianity" }
        if self.rawValue == 40000158 { return "iTunes U|Religion & Spirituality|Comparative Religion" }
        if self.rawValue == 40000159 { return "iTunes U|Religion & Spirituality|Hinduism" }
        if self.rawValue == 40000160 { return "iTunes U|Religion & Spirituality|Islam" }
        if self.rawValue == 40000161 { return "iTunes U|Religion & Spirituality|Judaism" }
        if self.rawValue == 40000162 { return "iTunes U|Religion & Spirituality|Other Religions" }
        if self.rawValue == 40000163 { return "iTunes U|Religion & Spirituality|Spirituality" }
        if self.rawValue == 40000164 { return "iTunes U|Science|Environment" }
        if self.rawValue == 40000165 { return "iTunes U|Society|African Studies" }
        if self.rawValue == 40000166 { return "iTunes U|Society|American Studies" }
        if self.rawValue == 40000167 { return "iTunes U|Society|Cross-cultural Studies" }
        if self.rawValue == 40000168 { return "iTunes U|Society|Immigration & Emigration" }
        if self.rawValue == 40000169 { return "iTunes U|Society|Race & Ethnicity Studies" }
        if self.rawValue == 40000170 { return "iTunes U|Society|Sexuality Studies" }
        if self.rawValue == 40000171 { return "iTunes U|Teaching & Learning|Educational Technology" }
        if self.rawValue == 40000172 { return "iTunes U|Teaching & Learning|Information/Library Science" }
        if self.rawValue == 40000173 { return "iTunes U|Languages|Dutch" }
        if self.rawValue == 40000174 { return "iTunes U|Languages|Luxembourgish" }
        if self.rawValue == 40000175 { return "iTunes U|Languages|Swedish" }
        if self.rawValue == 40000176 { return "iTunes U|Languages|Norwegian" }
        if self.rawValue == 40000177 { return "iTunes U|Languages|Finnish" }
        if self.rawValue == 40000178 { return "iTunes U|Languages|Danish" }
        if self.rawValue == 40000179 { return "iTunes U|Languages|Polish" }
        if self.rawValue == 40000180 { return "iTunes U|Languages|Turkish" }
        if self.rawValue == 40000181 { return "iTunes U|Languages|Flemish" }
        if self.rawValue == 50000024 { return "Audiobooks" }
        if self.rawValue == 50000040 { return "Audiobooks|Fiction" }
        if self.rawValue == 50000041 { return "Audiobooks|Arts & Entertainment" }
        if self.rawValue == 50000042 { return "Audiobooks|Biographies & Memoirs" }
        if self.rawValue == 50000043 { return "Audiobooks|Business & Personal Finance" }
        if self.rawValue == 50000044 { return "Audiobooks|Kids & Young Adults" }
        if self.rawValue == 50000045 { return "Audiobooks|Classics" }
        if self.rawValue == 50000046 { return "Audiobooks|Comedy" }
        if self.rawValue == 50000047 { return "Audiobooks|Drama & Poetry" }
        if self.rawValue == 50000048 { return "Audiobooks|Speakers & Storytellers" }
        if self.rawValue == 50000049 { return "Audiobooks|History" }
        if self.rawValue == 50000050 { return "Audiobooks|Languages" }
        if self.rawValue == 50000051 { return "Audiobooks|Mysteries & Thrillers" }
        if self.rawValue == 50000052 { return "Audiobooks|Nonfiction" }
        if self.rawValue == 50000053 { return "Audiobooks|Religion & Spirituality" }
        if self.rawValue == 50000054 { return "Audiobooks|Science & Nature" }
        if self.rawValue == 50000055 { return "Audiobooks|Sci Fi & Fantasy" }
        if self.rawValue == 50000056 { return "Audiobooks|Self-Development" }
        if self.rawValue == 50000057 { return "Audiobooks|Sports & Outdoors" }
        if self.rawValue == 50000058 { return "Audiobooks|Technology" }
        if self.rawValue == 50000059 { return "Audiobooks|Travel & Adventure" }
        if self.rawValue == 50000061 { return "Music|Spoken Word" }
        if self.rawValue == 50000063 { return "Music|Disney" }
        if self.rawValue == 50000064 { return "Music|French Pop" }
        if self.rawValue == 50000066 { return "Music|German Pop" }
        if self.rawValue == 50000068 { return "Music|German Folk" }
        if self.rawValue == 50000069 { return "Audiobooks|Romance" }
        if self.rawValue == 50000070 { return "Audiobooks|Audiobooks Latino" }
        if self.rawValue == 50000071 { return "Books|Comics & Graphic Novels|Manga|Action" }
        if self.rawValue == 50000072 { return "Books|Comics & Graphic Novels|Manga|Comedy" }
        if self.rawValue == 50000073 { return "Books|Comics & Graphic Novels|Manga|Erotica" }
        if self.rawValue == 50000074 { return "Books|Comics & Graphic Novels|Manga|Fantasy" }
        if self.rawValue == 50000075 { return "Books|Comics & Graphic Novels|Manga|Four Cell Manga" }
        if self.rawValue == 50000076 { return "Books|Comics & Graphic Novels|Manga|Gay & Lesbian" }
        if self.rawValue == 50000077 { return "Books|Comics & Graphic Novels|Manga|Hard-Boiled" }
        if self.rawValue == 50000078 { return "Books|Comics & Graphic Novels|Manga|Heroes" }
        if self.rawValue == 50000079 { return "Books|Comics & Graphic Novels|Manga|Historical Fiction" }
        if self.rawValue == 50000080 { return "Books|Comics & Graphic Novels|Manga|Mecha" }
        if self.rawValue == 50000081 { return "Books|Comics & Graphic Novels|Manga|Mystery" }
        if self.rawValue == 50000082 { return "Books|Comics & Graphic Novels|Manga|Nonfiction" }
        if self.rawValue == 50000083 { return "Books|Comics & Graphic Novels|Manga|Religious" }
        if self.rawValue == 50000084 { return "Books|Comics & Graphic Novels|Manga|Romance" }
        if self.rawValue == 50000085 { return "Books|Comics & Graphic Novels|Manga|Romantic Comedy" }
        if self.rawValue == 50000086 { return "Books|Comics & Graphic Novels|Manga|Science Fiction" }
        if self.rawValue == 50000087 { return "Books|Comics & Graphic Novels|Manga|Sports" }
        if self.rawValue == 50000088 { return "Books|Fiction & Literature|Light Novels" }
        if self.rawValue == 50000089 { return "Books|Comics & Graphic Novels|Manga|Horror" }
        if self.rawValue == 50000090 { return "Books|Comics & Graphic Novels|Comics" }
        if self.rawValue == 50000091 { return "Books|Romance|Multicultural" }
        if self.rawValue == 50000092 { return "Audiobooks|Erotica" }
        if self.rawValue == 50000093 { return "Audiobooks|Light Novels" }
        else { return nil }
    }

}
