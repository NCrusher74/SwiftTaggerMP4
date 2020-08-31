//  GenreID
//  SwiftTaggerMP4
//
//  Created by Nolaine Crusher on 5/2/20.
//  Copyright © 2020 Nolaine Crusher. All rights reserved.
//

import SE0270_RangeSet

enum Genres: Int, CaseIterable {
    case unknown = 0
    case musicBlues = 2
    case musicComedy = 3
    case musicChildrensMusic = 4
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
    case musicChildrensMusicLullabies = 1014
    case musicChildrensMusicSingAlong = 1015
    case musicChildrensMusicStories = 1016
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
    case musicDanceJungleDrumnbass = 1049
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
    case musicRockDeathMetalBlackMetal = 1149
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
    case podcastsEducationK12 = 1415
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
    case musicVideosChildrensMusic = 1604
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
    case musicVideosChildrensMusicLullabies = 1744
    case musicVideosChildrensMusicSingAlong = 1745
    case musicVideosChildrensMusicStories = 1746
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
    case musicVideosDanceJungleDrumnbass = 1791
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
    case musicVideosHipHopRapWestCoastRap = 1811
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
    case tonesRingtonesDanceJungleDrumnbass = 8146
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
    
    var predefinedGenres: String? {
        switch self {
            case .musicBlues : return "Music|Blues"
            case .musicComedy : return "Music|Comedy"
            case .musicChildrensMusic : return "Music|Children's Music"
            case .musicClassical : return "Music|Classical"
            case .musicCountry : return "Music|Country"
            case .musicElectronic : return "Music|Electronic"
            case .musicHoliday : return "Music|Holiday"
            case .musicClassicalOpera : return "Music|Classical|Opera"
            case .musicSingerSongwriter : return "Music|Singer/Songwriter"
            case .musicJazz : return "Music|Jazz"
            case .musicLatino : return "Music|Latino"
            case .musicNewAge : return "Music|New Age"
            case .musicPop : return "Music|Pop"
            case .musicRandBSoul : return "Music|RandB/Soul"
            case .musicSoundtrack : return "Music|Soundtrack"
            case .musicDance : return "Music|Dance"
            case .musicHipHopRap : return "Music|Hip-Hop/Rap"
            case .musicWorld : return "Music|World"
            case .musicAlternative : return "Music|Alternative"
            case .musicRock : return "Music|Rock"
            case .musicChristianandGospel : return "Music|Christian and Gospel"
            case .musicVocal : return "Music|Vocal"
            case .musicReggae : return "Music|Reggae"
            case .musicEasyListening : return "Music|Easy Listening"
            case .podcasts : return "Podcasts"
            case .musicJPop : return "Music|J-Pop"
            case .musicEnka : return "Music|Enka"
            case .musicAnime : return "Music|Anime"
            case .musicKayokyoku : return "Music|Kayokyoku"
            case .musicVideos : return "Music Videos"
            case .tVShows : return "TV Shows"
            case .movies : return "Movies"
            case .music : return "Music"
            case .iPodGames : return "iPod Games"
            case .appStore : return "App Store"
            case .tones : return "Tones"
            case .books : return "Books"
            case .macAppStore : return "Mac App Store"
            case .textbooks : return "Textbooks"
            case .musicFitnessandWorkout : return "Music|Fitness & Workout"
            case .musicPopKPop : return "Music|Pop|K-Pop"
            case .musicKaraoke : return "Music|Karaoke"
            case .musicInstrumental : return "Music|Instrumental"
            case .audiobooksNews : return "Audiobooks|News"
            case .audiobooksProgramsandPerformances : return "Audiobooks|Programs & Performances"
            case .fitnessMusic : return "Fitness Music"
            case .fitnessMusicPop : return "Fitness Music|Pop"
            case .fitnessMusicDance : return "Fitness Music|Dance"
            case .fitnessMusicHipHop : return "Fitness Music|Hip-Hop"
            case .fitnessMusicRock : return "Fitness Music|Rock"
            case .fitnessMusicAltIndie : return "Fitness Music|Alt/Indie"
            case .fitnessMusicLatino : return "Fitness Music|Latino"
            case .fitnessMusicCountry : return "Fitness Music|Country"
            case .fitnessMusicWorld : return "Fitness Music|World"
            case .fitnessMusicNewAge : return "Fitness Music|New Age"
            case .fitnessMusicClassical : return "Fitness Music|Classical"
            case .musicAlternativeCollegeRock : return "Music|Alternative|College Rock"
            case .musicAlternativeGothRock : return "Music|Alternative|Goth Rock"
            case .musicAlternativeGrunge : return "Music|Alternative|Grunge"
            case .musicAlternativeIndieRock : return "Music|Alternative|Indie Rock"
            case .musicAlternativeNewWave : return "Music|Alternative|New Wave"
            case .musicAlternativePunk : return "Music|Alternative|Punk"
            case .musicBluesChicagoBlues : return "Music|Blues|Chicago Blues"
            case .musicBluesClassicBlues : return "Music|Blues|Classic Blues"
            case .musicBluesContemporaryBlues : return "Music|Blues|Contemporary Blues"
            case .musicBluesCountryBlues : return "Music|Blues|Country Blues"
            case .musicBluesDeltaBlues : return "Music|Blues|Delta Blues"
            case .musicBluesElectricBlues : return "Music|Blues|Electric Blues"
            case .musicChildrensMusicLullabies : return "Music|Children's Music|Lullabies"
            case .musicChildrensMusicSingAlong : return "Music|Children's Music|Sing-Along"
            case .musicChildrensMusicStories : return "Music|Children's Music|Stories"
            case .musicClassicalAvantGarde : return "Music|Classical|Avant-Garde"
            case .musicClassicalBaroqueEra : return "Music|Classical|Baroque Era"
            case .musicClassicalChamberMusic : return "Music|Classical|Chamber Music"
            case .musicClassicalChant : return "Music|Classical|Chant"
            case .musicClassicalChoral : return "Music|Classical|Choral"
            case .musicClassicalClassicalCrossover : return "Music|Classical|Classical Crossover"
            case .musicClassicalEarlyMusic : return "Music|Classical|Early Music"
            case .musicClassicalImpressionist : return "Music|Classical|Impressionist"
            case .musicClassicalMedievalEra : return "Music|Classical|Medieval Era"
            case .musicClassicalMinimalism : return "Music|Classical|Minimalism"
            case .musicClassicalModernEra : return "Music|Classical|Modern Era"
            case .musicClassicalOrchestral : return "Music|Classical|Orchestral"
            case .musicClassicalRenaissance : return "Music|Classical|Renaissance"
            case .musicClassicalRomanticEra : return "Music|Classical|Romantic Era"
            case .musicClassicalWeddingMusic : return "Music|Classical|Wedding Music"
            case .musicCountryAlternativeCountry : return "Music|Country|Alternative Country"
            case .musicCountryAmericana : return "Music|Country|Americana"
            case .musicCountryBluegrass : return "Music|Country|Bluegrass"
            case .musicCountryContemporaryBluegrass : return "Music|Country|Contemporary Bluegrass"
            case .musicCountryContemporaryCountry : return "Music|Country|Contemporary Country"
            case .musicCountryCountryGospel : return "Music|Country|Country Gospel"
            case .musicCountryHonkyTonk : return "Music|Country|Honky Tonk"
            case .musicCountryOutlawCountry : return "Music|Country|Outlaw Country"
            case .musicCountryTraditionalBluegrass : return "Music|Country|Traditional Bluegrass"
            case .musicCountryTraditionalCountry : return "Music|Country|Traditional Country"
            case .musicCountryUrbanCowboy : return "Music|Country|Urban Cowboy"
            case .musicDanceBreakbeat : return "Music|Dance|Breakbeat"
            case .musicDanceExercise : return "Music|Dance|Exercise"
            case .musicDanceGarage : return "Music|Dance|Garage"
            case .musicDanceHardcore : return "Music|Dance|Hardcore"
            case .musicDanceHouse : return "Music|Dance|House"
            case .musicDanceJungleDrumnbass : return "Music|Dance|Jungle/Drum'n'bass"
            case .musicDanceTechno : return "Music|Dance|Techno"
            case .musicDanceTrance : return "Music|Dance|Trance"
            case .musicJazzBigBand : return "Music|Jazz|Big Band"
            case .musicJazzBop : return "Music|Jazz|Bop"
            case .musicEasyListeningLounge : return "Music|Easy Listening|Lounge"
            case .musicEasyListeningSwing : return "Music|Easy Listening|Swing"
            case .musicElectronicAmbient : return "Music|Electronic|Ambient"
            case .musicElectronicDowntempo : return "Music|Electronic|Downtempo"
            case .musicElectronicElectronica : return "Music|Electronic|Electronica"
            case .musicElectronicIDMExperimental : return "Music|Electronic|IDM/Experimental"
            case .musicElectronicIndustrial : return "Music|Electronic|Industrial"
            case .musicSingerSongwriterAlternativeFolk : return "Music|Singer/Songwriter|Alternative Folk"
            case .musicSingerSongwriterContemporaryFolk : return "Music|Singer/Songwriter|Contemporary Folk"
            case .musicSingerSongwriterContemporarySingerSongwriter : return "Music|Singer/Songwriter|Contemporary Singer/Songwriter"
            case .musicSingerSongwriterFolkRock : return "Music|Singer/Songwriter|Folk-Rock"
            case .musicSingerSongwriterNewAcoustic : return "Music|Singer/Songwriter|New Acoustic"
            case .musicSingerSongwriterTraditionalFolk : return "Music|Singer/Songwriter|Traditional Folk"
            case .musicHipHopRapAlternativeRap : return "Music|Hip-Hop/Rap|Alternative Rap"
            case .musicHipHopRapDirtySouth : return "Music|Hip-Hop/Rap|Dirty South"
            case .musicHipHopRapEastCoastRap : return "Music|Hip-Hop/Rap|East Coast Rap"
            case .musicHipHopRapGangstaRap : return "Music|Hip-Hop/Rap|Gangsta Rap"
            case .musicHipHopRapHardcoreRap : return "Music|Hip-Hop/Rap|Hardcore Rap"
            case .musicHipHopRapHipHop : return "Music|Hip-Hop/Rap|Hip-Hop"
            case .musicHipHopRapLatinRap : return "Music|Hip-Hop/Rap|Latin Rap"
            case .musicHipHopRapOldSchoolRap : return "Music|Hip-Hop/Rap|Old School Rap"
            case .musicHipHopRapRap : return "Music|Hip-Hop/Rap|Rap"
            case .musicHipHopRapUndergroundRap : return "Music|Hip-Hop/Rap|Underground Rap"
            case .musicHipHopRapWestCoastRap : return "Music|Hip-Hop/Rap|West Coast Rap"
            case .musicHolidayChanukah : return "Music|Holiday|Chanukah"
            case .musicHolidayChristmas : return "Music|Holiday|Christmas"
            case .musicHolidayChristmasChildrens: return "Music|Holiday|Christmas: Children's"
            case .musicHolidayChristmasClassic: return "Music|Holiday|Christmas: Classic"
            case .musicHolidayChristmasClassical: return "Music|Holiday|Christmas: Classical"
            case .musicHolidayChristmasJazz: return "Music|Holiday|Christmas: Jazz"
            case .musicHolidayChristmasModern: return "Music|Holiday|Christmas: Modern"
            case .musicHolidayChristmasPop: return "Music|Holiday|Christmas: Pop"
            case .musicHolidayChristmasRandB: return "Music|Holiday|Christmas: R&B"
            case .musicHolidayChristmasReligious: return "Music|Holiday|Christmas: Religious"
            case .musicHolidayChristmasRock: return "Music|Holiday|Christmas: Rock"
            case .musicHolidayEaster : return "Music|Holiday|Easter"
            case .musicHolidayHalloween : return "Music|Holiday|Halloween"
            case .musicHolidayHolidayOther: return "Music|Holiday|Holiday: Other"
            case .musicHolidayThanksgiving : return "Music|Holiday|Thanksgiving"
            case .musicChristianandGospelCCM : return "Music|Christian & Gospel|CCM"
            case .musicChristianandGospelChristianMetal : return "Music|Christian & Gospel|Christian Metal"
            case .musicChristianandGospelChristianPop : return "Music|Christian & Gospel|Christian Pop"
            case .musicChristianandGospelChristianRap : return "Music|Christian & Gospel|Christian Rap"
            case .musicChristianandGospelChristianRock : return "Music|Christian & Gospel|Christian Rock"
            case .musicChristianandGospelClassicChristian : return "Music|Christian & Gospel|Classic Christian"
            case .musicChristianandGospelContemporaryGospel : return "Music|Christian & Gospel|Contemporary Gospel"
            case .musicChristianandGospelGospel : return "Music|Christian & Gospel|Gospel"
            case .musicChristianandGospelPraiseandWorship : return "Music|Christian & Gospel|Praise & Worship"
            case .musicChristianandGospelSouthernGospel : return "Music|Christian & Gospel|Southern Gospel"
            case .musicChristianandGospelTraditionalGospel : return "Music|Christian & Gospel|Traditional Gospel"
            case .musicJazzAvantGardeJazz : return "Music|Jazz|Avant-Garde Jazz"
            case .musicJazzContemporaryJazz : return "Music|Jazz|Contemporary Jazz"
            case .musicJazzCrossoverJazz : return "Music|Jazz|Crossover Jazz"
            case .musicJazzDixieland : return "Music|Jazz|Dixieland"
            case .musicJazzFusion : return "Music|Jazz|Fusion"
            case .musicJazzLatinJazz : return "Music|Jazz|Latin Jazz"
            case .musicJazzMainstreamJazz : return "Music|Jazz|Mainstream Jazz"
            case .musicJazzRagtime : return "Music|Jazz|Ragtime"
            case .musicJazzSmoothJazz : return "Music|Jazz|Smooth Jazz"
            case .musicLatinoLatinJazz : return "Music|Latino|Latin Jazz"
            case .musicLatinoContemporaryLatin : return "Music|Latino|Contemporary Latin"
            case .musicLatinoPopLatino : return "Music|Latino|Pop Latino"
            case .musicLatinoRaices : return "Music|Latino|Raices"
            case .musicLatinoUrbanolatino : return "Music|Latino|Urbano latino"
            case .musicLatinoBaladasyBoleros : return "Music|Latino|Baladas y Boleros"
            case .musicLatinoRockyAlternativo : return "Music|Latino|Rock y Alternativo"
            case .musicBrazilian : return "Music|Brazilian"
            case .musicLatinoMusicaMexicana : return "Music|Latino|Musica Mexicana"
            case .musicLatinoMusicatropical : return "Music|Latino|Musica tropical"
            case .musicNewAgeEnvironmental : return "Music|New Age|Environmental"
            case .musicNewAgeHealing : return "Music|New Age|Healing"
            case .musicNewAgeMeditation : return "Music|New Age|Meditation"
            case .musicNewAgeNature : return "Music|New Age|Nature"
            case .musicNewAgeRelaxation : return "Music|New Age|Relaxation"
            case .musicNewAgeTravel : return "Music|New Age|Travel"
            case .musicPopAdultContemporary : return "Music|Pop|Adult Contemporary"
            case .musicPopBritpop : return "Music|Pop|Britpop"
            case .musicPopPopRock : return "Music|Pop|Pop/Rock"
            case .musicPopSoftRock : return "Music|Pop|Soft Rock"
            case .musicPopTeenPop : return "Music|Pop|Teen Pop"
            case .musicRandBSoulContemporaryRandB : return "Music|R&B/Soul|Contemporary R&B"
            case .musicRandBSoulDisco : return "Music|R&B/Soul|Disco"
            case .musicRandBSoulDooWop : return "Music|R&B/Soul|Doo Wop"
            case .musicRandBSoulFunk : return "Music|R&B/Soul|Funk"
            case .musicRandBSoulMotown : return "Music|R&B/Soul|Motown"
            case .musicRandBSoulNeoSoul : return "Music|R&B/Soul|Neo-Soul"
            case .musicRandBSoulQuietStorm : return "Music|R&B/Soul|Quiet Storm"
            case .musicRandBSoulSoul : return "Music|R&B/Soul|Soul"
            case .musicRockAdultAlternative : return "Music|Rock|Adult Alternative"
            case .musicRockAmericanTradRock : return "Music|Rock|American Trad Rock"
            case .musicRockArenaRock : return "Music|Rock|Arena Rock"
            case .musicRockBluesRock : return "Music|Rock|Blues-Rock"
            case .musicRockBritishInvasion : return "Music|Rock|British Invasion"
            case .musicRockDeathMetalBlackMetal : return "Music|Rock|Death Metal/Black Metal"
            case .musicRockGlamRock : return "Music|Rock|Glam Rock"
            case .musicRockHairMetal : return "Music|Rock|Hair Metal"
            case .musicRockHardRock : return "Music|Rock|Hard Rock"
            case .musicRockMetal : return "Music|Rock|Metal"
            case .musicRockJamBands : return "Music|Rock|Jam Bands"
            case .musicRockProgRockArtRock : return "Music|Rock|Prog-Rock/Art Rock"
            case .musicRockPsychedelic : return "Music|Rock|Psychedelic"
            case .musicRockRockandRoll : return "Music|Rock|Rock & Roll"
            case .musicRockRockabilly : return "Music|Rock|Rockabilly"
            case .musicRockRootsRock : return "Music|Rock|Roots Rock"
            case .musicRockSingerSongwriter : return "Music|Rock|Singer/Songwriter"
            case .musicRockSouthernRock : return "Music|Rock|Southern Rock"
            case .musicRockSurf : return "Music|Rock|Surf"
            case .musicRockTexMex : return "Music|Rock|Tex-Mex"
            case .musicSoundtrackForeignCinema : return "Music|Soundtrack|Foreign Cinema"
            case .musicSoundtrackMusicals : return "Music|Soundtrack|Musicals"
            case .musicComedyNovelty : return "Music|Comedy|Novelty"
            case .musicSoundtrackOriginalScore : return "Music|Soundtrack|Original Score"
            case .musicSoundtrackSoundtrack : return "Music|Soundtrack|Soundtrack"
            case .musicComedyStandupComedy : return "Music|Comedy|Standup Comedy"
            case .musicSoundtrackTVSoundtrack : return "Music|Soundtrack|TV Soundtrack"
            case .musicVocalStandards : return "Music|Vocal|Standards"
            case .musicVocalTraditionalPop : return "Music|Vocal|Traditional Pop"
            case .musicJazzVocalJazz : return "Music|Jazz|Vocal Jazz"
            case .musicVocalVocalPop : return "Music|Vocal|Vocal Pop"
            case .musicAfricanAfroBeat : return "Music|African|Afro-Beat"
            case .musicAfricanAfroPop : return "Music|African|Afro-Pop"
            case .musicWorldCajun : return "Music|World|Cajun"
            case .musicWorldCeltic : return "Music|World|Celtic"
            case .musicWorldCelticFolk : return "Music|World|Celtic Folk"
            case .musicWorldContemporaryCeltic : return "Music|World|Contemporary Celtic"
            case .musicReggaeModernDancehall : return "Music|Reggae|Modern Dancehall"
            case .musicWorldDrinkingSongs : return "Music|World|Drinking Songs"
            case .musicIndianIndianPop : return "Music|Indian|Indian Pop"
            case .musicWorldJapanesePop : return "Music|World|Japanese Pop"
            case .musicWorldKlezmer : return "Music|World|Klezmer"
            case .musicWorldPolka : return "Music|World|Polka"
            case .musicWorldTraditionalCeltic : return "Music|World|Traditional Celtic"
            case .musicWorldWorldbeat : return "Music|World|Worldbeat"
            case .musicWorldZydeco : return "Music|World|Zydeco"
            case .musicReggaeRootsReggae : return "Music|Reggae|Roots Reggae"
            case .musicReggaeDub : return "Music|Reggae|Dub"
            case .musicReggaeSka : return "Music|Reggae|Ska"
            case .musicWorldCaribbean : return "Music|World|Caribbean"
            case .musicWorldSouthAmerica : return "Music|World|South America"
            case .musicArabic : return "Music|Arabic"
            case .musicWorldNorthAmerica : return "Music|World|North America"
            case .musicWorldHawaii : return "Music|World|Hawaii"
            case .musicWorldAustralia : return "Music|World|Australia"
            case .musicWorldJapan : return "Music|World|Japan"
            case .musicWorldFrance : return "Music|World|France"
            case .musicAfrican : return "Music|African"
            case .musicWorldAsia : return "Music|World|Asia"
            case .musicWorldEurope : return "Music|World|Europe"
            case .musicWorldSouthAfrica : return "Music|World|South Africa"
            case .musicJazzHardBop : return "Music|Jazz|Hard Bop"
            case .musicJazzTradJazz : return "Music|Jazz|Trad Jazz"
            case .musicJazzCoolJazz : return "Music|Jazz|Cool Jazz"
            case .musicBluesAcousticBlues : return "Music|Blues|Acoustic Blues"
            case .musicClassicalHighClassical : return "Music|Classical|High Classical"
            case .musicBrazilianAxe : return "Music|Brazilian|Axe"
            case .musicBrazilianBossaNova : return "Music|Brazilian|Bossa Nova"
            case .musicBrazilianChoro : return "Music|Brazilian|Choro"
            case .musicBrazilianForro : return "Music|Brazilian|Forro"
            case .musicBrazilianFrevo : return "Music|Brazilian|Frevo"
            case .musicBrazilianMPB : return "Music|Brazilian|MPB"
            case .musicBrazilianPagode : return "Music|Brazilian|Pagode"
            case .musicBrazilianSamba : return "Music|Brazilian|Samba"
            case .musicBrazilianSertanejo : return "Music|Brazilian|Sertanejo"
            case .musicBrazilianBaileFunk : return "Music|Brazilian|Baile Funk"
            case .musicAlternativeChineseAlt : return "Music|Alternative|Chinese Alt"
            case .musicAlternativeKoreanIndie : return "Music|Alternative|Korean Indie"
            case .musicChinese : return "Music|Chinese"
            case .musicChineseChineseClassical : return "Music|Chinese|Chinese Classical"
            case .musicChineseChineseFlute : return "Music|Chinese|Chinese Flute"
            case .musicChineseChineseOpera : return "Music|Chinese|Chinese Opera"
            case .musicChineseChineseOrchestral : return "Music|Chinese|Chinese Orchestral"
            case .musicChineseChineseRegionalFolk : return "Music|Chinese|Chinese Regional Folk"
            case .musicChineseChineseStrings : return "Music|Chinese|Chinese Strings"
            case .musicChineseTaiwaneseFolk : return "Music|Chinese|Taiwanese Folk"
            case .musicChineseTibetanNativeMusic : return "Music|Chinese|Tibetan Native Music"
            case .musicHipHopRapChineseHipHop : return "Music|Hip-Hop/Rap|Chinese Hip-Hop"
            case .musicHipHopRapKoreanHipHop : return "Music|Hip-Hop/Rap|Korean Hip-Hop"
            case .musicKorean : return "Music|Korean"
            case .musicKoreanKoreanClassical : return "Music|Korean|Korean Classical"
            case .musicKoreanKoreanTradSong : return "Music|Korean|Korean Trad Song"
            case .musicKoreanKoreanTradInstrumental : return "Music|Korean|Korean Trad Instrumental"
            case .musicKoreanKoreanTradTheater : return "Music|Korean|Korean Trad Theater"
            case .musicRockChineseRock : return "Music|Rock|Chinese Rock"
            case .musicRockKoreanRock : return "Music|Rock|Korean Rock"
            case .musicPopCPop : return "Music|Pop|C-Pop"
            case .musicPopCantopopHKPop : return "Music|Pop|Cantopop/HK-Pop"
            case .musicPopKoreanFolkPop : return "Music|Pop|Korean Folk-Pop"
            case .musicPopMandopop : return "Music|Pop|Mandopop"
            case .musicPopTaiPop : return "Music|Pop|Tai-Pop"
            case .musicPopMalaysianPop : return "Music|Pop|Malaysian Pop"
            case .musicPopPinoyPop : return "Music|Pop|Pinoy Pop"
            case .musicPopOriginalPilipinoMusic : return "Music|Pop|Original Pilipino Music"
            case .musicPopManillaSound : return "Music|Pop|Manilla Sound"
            case .musicPopIndoPop : return "Music|Pop|Indo Pop"
            case .musicPopThaiPop : return "Music|Pop|Thai Pop"
            case .musicVocalTrot : return "Music|Vocal|Trot"
            case .musicIndian : return "Music|Indian"
            case .musicIndianBollywood : return "Music|Indian|Bollywood"
            case .musicIndianRegionalIndianTamil : return "Music|Indian|Regional Indian|Tamil"
            case .musicIndianRegionalIndianTelugu : return "Music|Indian|Regional Indian|Telugu"
            case .musicIndianRegionalIndian : return "Music|Indian|Regional Indian"
            case .musicIndianDevotionalandSpiritual : return "Music|Indian|Devotional & Spiritual"
            case .musicIndianSufi : return "Music|Indian|Sufi"
            case .musicIndianIndianClassical : return "Music|Indian|Indian Classical"
            case .musicRussianRussianChanson : return "Music|Russian|Russian Chanson"
            case .musicWorldDini : return "Music|World|Dini"
            case .musicTurkishHalk : return "Music|Turkish|Halk"
            case .musicTurkishSanat : return "Music|Turkish|Sanat"
            case .musicWorldDangdut : return "Music|World|Dangdut"
            case .musicWorldIndonesianReligious : return "Music|World|Indonesian Religious"
            case .musicWorldCalypso : return "Music|World|Calypso"
            case .musicWorldSoca : return "Music|World|Soca"
            case .musicIndianGhazals : return "Music|Indian|Ghazals"
            case .musicIndianIndianFolk : return "Music|Indian|Indian Folk"
            case .musicTurkishArabesque : return "Music|Turkish|Arabesque"
            case .musicAfricanAfrikaans : return "Music|African|Afrikaans"
            case .musicWorldFarsi : return "Music|World|Farsi"
            case .musicWorldIsraeli : return "Music|World|Israeli"
            case .musicArabicKhaleeji : return "Music|Arabic|Khaleeji"
            case .musicArabicNorthAfrican : return "Music|Arabic|North African"
            case .musicArabicArabicPop : return "Music|Arabic|Arabic Pop"
            case .musicArabicIslamic : return "Music|Arabic|Islamic"
            case .musicSoundtrackSoundEffects : return "Music|Soundtrack|Sound Effects"
            case .musicFolk : return "Music|Folk"
            case .musicOrchestral : return "Music|Orchestral"
            case .musicMarching : return "Music|Marching"
            case .musicPopOldies : return "Music|Pop|Oldies"
            case .musicCountryThaiCountry : return "Music|Country|Thai Country"
            case .musicWorldFlamenco : return "Music|World|Flamenco"
            case .musicWorldTango : return "Music|World|Tango"
            case .musicWorldFado : return "Music|World|Fado"
            case .musicWorldIberia : return "Music|World|Iberia"
            case .musicRussian : return "Music|Russian"
            case .musicTurkish : return "Music|Turkish"
            case .podcastsArts : return "Podcasts|Arts"
            case .podcastsSocietyandCulturePersonalJournals : return "Podcasts|Society & Culture|Personal Journals"
            case .podcastsComedy : return "Podcasts|Comedy"
            case .podcastsEducation : return "Podcasts|Education"
            case .podcastsKidsandFamily : return "Podcasts|Kids & Family"
            case .podcastsArtsFood : return "Podcasts|Arts|Food"
            case .podcastsHealth : return "Podcasts|Health"
            case .podcastsTVandFilm : return "Podcasts|TV & Film"
            case .podcastsMusic : return "Podcasts|Music"
            case .podcastsNewsandPolitics : return "Podcasts|News & Politics"
            case .podcastsReligionandSpirituality : return "Podcasts|Religion & Spirituality"
            case .podcastsScienceandMedicine : return "Podcasts|Science & Medicine"
            case .podcastsSportsandRecreation : return "Podcasts|Sports & Recreation"
            case .podcastsTechnology : return "Podcasts|Technology"
            case .podcastsSocietyandCulturePlacesandTravel : return "Podcasts|Society & Culture|Places & Travel"
            case .podcastsBusiness : return "Podcasts|Business"
            case .podcastsGamesandHobbies : return "Podcasts|Games & Hobbies"
            case .podcastsSocietyandCulture : return "Podcasts|Society & Culture"
            case .podcastsGovernmentandOrganizations : return "Podcasts|Government & Organizations"
            case .musicVideosClassicalPiano : return "Music Videos|Classical|Piano"
            case .podcastsArtsLiterature : return "Podcasts|Arts|Literature"
            case .podcastsArtsDesign : return "Podcasts|Arts|Design"
            case .podcastsGamesandHobbiesVideoGames : return "Podcasts|Games & Hobbies|Video Games"
            case .podcastsArtsPerformingArts : return "Podcasts|Arts|Performing Arts"
            case .podcastsArtsVisualArts : return "Podcasts|Arts|Visual Arts"
            case .podcastsBusinessCareers : return "Podcasts|Business|Careers"
            case .podcastsBusinessInvesting : return "Podcasts|Business|Investing"
            case .podcastsBusinessManagementandMarketing : return "Podcasts|Business|Management & Marketing"
            case .podcastsEducationK12 : return "Podcasts|Education|K-12"
            case .podcastsEducationHigherEducation : return "Podcasts|Education|Higher Education"
            case .podcastsHealthFitnessandNutrition : return "Podcasts|Health|Fitness & Nutrition"
            case .podcastsHealthSelfHelp : return "Podcasts|Health|Self-Help"
            case .podcastsHealthSexuality : return "Podcasts|Health|Sexuality"
            case .podcastsReligionandSpiritualityBuddhism : return "Podcasts|Religion & Spirituality|Buddhism"
            case .podcastsReligionandSpiritualityChristianity : return "Podcasts|Religion & Spirituality|Christianity"
            case .podcastsReligionandSpiritualityIslam : return "Podcasts|Religion & Spirituality|Islam"
            case .podcastsReligionandSpiritualityJudaism : return "Podcasts|Religion & Spirituality|Judaism"
            case .podcastsSocietyandCulturePhilosophy : return "Podcasts|Society & Culture|Philosophy"
            case .podcastsReligionandSpiritualitySpirituality : return "Podcasts|Religion & Spirituality|Spirituality"
            case .podcastsTechnologyGadgets : return "Podcasts|Technology|Gadgets"
            case .podcastsTechnologyTechNews : return "Podcasts|Technology|Tech News"
            case .podcastsTechnologyPodcasting : return "Podcasts|Technology|Podcasting"
            case .podcastsGamesandHobbiesAutomotive : return "Podcasts|Games & Hobbies|Automotive"
            case .podcastsGamesandHobbiesAviation : return "Podcasts|Games & Hobbies|Aviation"
            case .podcastsSportsandRecreationOutdoor : return "Podcasts|Sports & Recreation|Outdoor"
            case .podcastsArtsFashionandBeauty : return "Podcasts|Arts|Fashion & Beauty"
            case .podcastsGamesandHobbiesHobbies : return "Podcasts|Games & Hobbies|Hobbies"
            case .podcastsGamesandHobbiesOtherGames : return "Podcasts|Games & Hobbies|Other Games"
            case .podcastsSocietyandCultureHistory : return "Podcasts|Society & Culture|History"
            case .podcastsReligionandSpiritualityHinduism : return "Podcasts|Religion & Spirituality|Hinduism"
            case .podcastsReligionandSpiritualityOther : return "Podcasts|Religion & Spirituality|Other"
            case .podcastsSportsandRecreationProfessional : return "Podcasts|Sports & Recreation|Professional"
            case .podcastsSportsandRecreationCollegeandHighSchool : return "Podcasts|Sports & Recreation|College & High School"
            case .podcastsSportsandRecreationAmateur : return "Podcasts|Sports & Recreation|Amateur"
            case .podcastsEducationEducationalTechnology : return "Podcasts|Education|Educational Technology"
            case .podcastsEducationLanguageCourses : return "Podcasts|Education|Language Courses"
            case .podcastsEducationTraining : return "Podcasts|Education|Training"
            case .podcastsBusinessBusinessNews : return "Podcasts|Business|Business News"
            case .podcastsBusinessShopping : return "Podcasts|Business|Shopping"
            case .podcastsGovernmentandOrganizationsNational : return "Podcasts|Government & Organizations|National"
            case .podcastsGovernmentandOrganizationsRegional : return "Podcasts|Government & Organizations|Regional"
            case .podcastsGovernmentandOrganizationsLocal : return "Podcasts|Government & Organizations|Local"
            case .podcastsGovernmentandOrganizationsNonProfit : return "Podcasts|Government & Organizations|Non-Profit"
            case .podcastsScienceandMedicineNaturalSciences : return "Podcasts|Science & Medicine|Natural Sciences"
            case .podcastsScienceandMedicineMedicine : return "Podcasts|Science & Medicine|Medicine"
            case .podcastsScienceandMedicineSocialSciences : return "Podcasts|Science & Medicine|Social Sciences"
            case .podcastsTechnologySoftwareHowTo : return "Podcasts|Technology|Software How-To"
            case .podcastsHealthAlternativeHealth : return "Podcasts|Health|Alternative Health"
            case .podcastsArtsBooks : return "Podcasts|Arts|Books"
            case .podcastsFiction : return "Podcasts|Fiction"
            case .podcastsFictionDrama : return "Podcasts|Fiction|Drama"
            case .podcastsFictionScienceFiction : return "Podcasts|Fiction|Science Fiction"
            case .podcastsFictionComedyFiction : return "Podcasts|Fiction|Comedy Fiction"
            case .podcastsHistory : return "Podcasts|History"
            case .podcastsTrueCrime : return "Podcasts|True Crime"
            case .podcastsNews : return "Podcasts|News"
            case .podcastsNewsBusinessNews : return "Podcasts|News|Business News"
            case .podcastsBusinessManagement : return "Podcasts|Business|Management"
            case .podcastsBusinessMarketing : return "Podcasts|Business|Marketing"
            case .podcastsBusinessEntrepreneurship : return "Podcasts|Business|Entrepreneurship"
            case .podcastsBusinessNonProfit : return "Podcasts|Business|Non-Profit"
            case .podcastsComedyImprov : return "Podcasts|Comedy|Improv"
            case .podcastsComedyComedyInterviews : return "Podcasts|Comedy|Comedy Interviews"
            case .podcastsComedyStandUp : return "Podcasts|Comedy|Stand-Up"
            case .podcastsEducationLanguageLearning : return "Podcasts|Education|Language Learning"
            case .podcastsEducationHowTo : return "Podcasts|Education|How To"
            case .podcastsEducationSelfImprovement : return "Podcasts|Education|Self-Improvement"
            case .podcastsEducationCourses : return "Podcasts|Education|Courses"
            case .podcastsLeisure : return "Podcasts|Leisure"
            case .podcastsLeisureAutomotive : return "Podcasts|Leisure|Automotive"
            case .podcastsLeisureAviation : return "Podcasts|Leisure|Aviation"
            case .podcastsLeisureHobbies : return "Podcasts|Leisure|Hobbies"
            case .podcastsLeisureCrafts : return "Podcasts|Leisure|Crafts"
            case .podcastsLeisureGames : return "Podcasts|Leisure|Games"
            case .podcastsLeisureHomeandGarden : return "Podcasts|Leisure|Home & Garden"
            case .podcastsLeisureVideoGames : return "Podcasts|Leisure|Video Games"
            case .podcastsLeisureAnimationandManga : return "Podcasts|Leisure|Animation & Manga"
            case .podcastsGovernment : return "Podcasts|Government"
            case .podcastsHealthandFitness : return "Podcasts|Health & Fitness"
            case .podcastsHealthandFitnessAlternativeHealth : return "Podcasts|Health & Fitness|Alternative Health"
            case .podcastsHealthandFitnessFitness : return "Podcasts|Health & Fitness|Fitness"
            case .podcastsHealthandFitnessNutrition : return "Podcasts|Health & Fitness|Nutrition"
            case .podcastsHealthandFitnessSexuality : return "Podcasts|Health & Fitness|Sexuality"
            case .podcastsHealthandFitnessMentalHealth : return "Podcasts|Health & Fitness|Mental Health"
            case .podcastsHealthandFitnessMedicine : return "Podcasts|Health & Fitness|Medicine"
            case .podcastsKidsandFamilyEducationforKids : return "Podcasts|Kids & Family|Education for Kids"
            case .podcastsKidsandFamilyStoriesforKids : return "Podcasts|Kids & Family|Stories for Kids"
            case .podcastsKidsandFamilyParenting : return "Podcasts|Kids & Family|Parenting"
            case .podcastsKidsandFamilyPetsandAnimals : return "Podcasts|Kids & Family|Pets & Animals"
            case .podcastsMusicMusicCommentary : return "Podcasts|Music|Music Commentary"
            case .podcastsMusicMusicHistory : return "Podcasts|Music|Music History"
            case .podcastsMusicMusicInterviews : return "Podcasts|Music|Music Interviews"
            case .podcastsNewsDailyNews : return "Podcasts|News|Daily News"
            case .podcastsNewsPolitics : return "Podcasts|News|Politics"
            case .podcastsNewsTechNews : return "Podcasts|News|Tech News"
            case .podcastsNewsSportsNews : return "Podcasts|News|Sports News"
            case .podcastsNewsNewsCommentary : return "Podcasts|News|News Commentary"
            case .podcastsNewsEntertainmentNews : return "Podcasts|News|Entertainment News"
            case .podcastsReligionandSpiritualityReligion : return "Podcasts|Religion & Spirituality|Religion"
            case .podcastsScience : return "Podcasts|Science"
            case .podcastsScienceNaturalSciences : return "Podcasts|Science|Natural Sciences"
            case .podcastsScienceSocialSciences : return "Podcasts|Science|Social Sciences"
            case .podcastsScienceMathematics : return "Podcasts|Science|Mathematics"
            case .podcastsScienceNature : return "Podcasts|Science|Nature"
            case .podcastsScienceAstronomy : return "Podcasts|Science|Astronomy"
            case .podcastsScienceChemistry : return "Podcasts|Science|Chemistry"
            case .podcastsScienceEarthSciences : return "Podcasts|Science|Earth Sciences"
            case .podcastsScienceLifeSciences : return "Podcasts|Science|Life Sciences"
            case .podcastsSciencePhysics : return "Podcasts|Science|Physics"
            case .podcastsSocietyandCultureDocumentary : return "Podcasts|Society & Culture|Documentary"
            case .podcastsSocietyandCultureRelationships : return "Podcasts|Society & Culture|Relationships"
            case .podcastsSports : return "Podcasts|Sports"
            case .podcastsSportsSoccer : return "Podcasts|Sports|Soccer"
            case .podcastsSportsFootball : return "Podcasts|Sports|Football"
            case .podcastsSportsBasketball : return "Podcasts|Sports|Basketball"
            case .podcastsSportsBaseball : return "Podcasts|Sports|Baseball"
            case .podcastsSportsHockey : return "Podcasts|Sports|Hockey"
            case .podcastsSportsRunning : return "Podcasts|Sports|Running"
            case .podcastsSportsRugby : return "Podcasts|Sports|Rugby"
            case .podcastsSportsGolf : return "Podcasts|Sports|Golf"
            case .podcastsSportsCricket : return "Podcasts|Sports|Cricket"
            case .podcastsSportsWrestling : return "Podcasts|Sports|Wrestling"
            case .podcastsSportsTennis : return "Podcasts|Sports|Tennis"
            case .podcastsSportsVolleyball : return "Podcasts|Sports|Volleyball"
            case .podcastsSportsSwimming : return "Podcasts|Sports|Swimming"
            case .podcastsSportsWilderness : return "Podcasts|Sports|Wilderness"
            case .podcastsSportsFantasySports : return "Podcasts|Sports|Fantasy Sports"
            case .podcastsTVandFilmTVReviews : return "Podcasts|TV & Film|TV Reviews"
            case .podcastsTVandFilmAfterShows : return "Podcasts|TV & Film|After Shows"
            case .podcastsTVandFilmFilmReviews : return "Podcasts|TV & Film|Film Reviews"
            case .podcastsTVandFilmFilmHistory : return "Podcasts|TV & Film|Film History"
            case .podcastsTVandFilmFilmInterviews : return "Podcasts|TV & Film|Film Interviews"
            case .musicVideosBlues : return "Music Videos|Blues"
            case .musicVideosComedy : return "Music Videos|Comedy"
            case .musicVideosChildrensMusic : return "Music Videos|Children's Music"
            case .musicVideosClassical : return "Music Videos|Classical"
            case .musicVideosCountry : return "Music Videos|Country"
            case .musicVideosElectronic : return "Music Videos|Electronic"
            case .musicVideosHoliday : return "Music Videos|Holiday"
            case .musicVideosClassicalOpera : return "Music Videos|Classical|Opera"
            case .musicVideosSingerSongwriter : return "Music Videos|Singer/Songwriter"
            case .musicVideosJazz : return "Music Videos|Jazz"
            case .musicVideosLatin : return "Music Videos|Latin"
            case .musicVideosNewAge : return "Music Videos|New Age"
            case .musicVideosPop : return "Music Videos|Pop"
            case .musicVideosRandBSoul : return "Music Videos|R&B/Soul"
            case .musicVideosSoundtrack : return "Music Videos|Soundtrack"
            case .musicVideosDance : return "Music Videos|Dance"
            case .musicVideosHipHopRap : return "Music Videos|Hip-Hop/Rap"
            case .musicVideosWorld : return "Music Videos|World"
            case .musicVideosAlternative : return "Music Videos|Alternative"
            case .musicVideosRock : return "Music Videos|Rock"
            case .musicVideosChristianandGospel : return "Music Videos|Christian & Gospel"
            case .musicVideosVocal : return "Music Videos|Vocal"
            case .musicVideosReggae : return "Music Videos|Reggae"
            case .musicVideosEasyListening : return "Music Videos|Easy Listening"
            case .musicVideosPodcasts : return "Music Videos|Podcasts"
            case .musicVideosJPop : return "Music Videos|J-Pop"
            case .musicVideosEnka : return "Music Videos|Enka"
            case .musicVideosAnime : return "Music Videos|Anime"
            case .musicVideosKayokyoku : return "Music Videos|Kayokyoku"
            case .musicVideosDisney : return "Music Videos|Disney"
            case .musicVideosFrenchPop : return "Music Videos|French Pop"
            case .musicVideosGermanPop : return "Music Videos|German Pop"
            case .musicVideosGermanFolk : return "Music Videos|German Folk"
            case .musicVideosAlternativeChineseAlt : return "Music Videos|Alternative|Chinese Alt"
            case .musicVideosAlternativeKoreanIndie : return "Music Videos|Alternative|Korean Indie"
            case .musicVideosChinese : return "Music Videos|Chinese"
            case .musicVideosChineseChineseClassical : return "Music Videos|Chinese|Chinese Classical"
            case .musicVideosChineseChineseFlute : return "Music Videos|Chinese|Chinese Flute"
            case .musicVideosChineseChineseOpera : return "Music Videos|Chinese|Chinese Opera"
            case .musicVideosChineseChineseOrchestral : return "Music Videos|Chinese|Chinese Orchestral"
            case .musicVideosChineseChineseRegionalFolk : return "Music Videos|Chinese|Chinese Regional Folk"
            case .musicVideosChineseChineseStrings : return "Music Videos|Chinese|Chinese Strings"
            case .musicVideosChineseTaiwaneseFolk : return "Music Videos|Chinese|Taiwanese Folk"
            case .musicVideosChineseTibetanNativeMusic : return "Music Videos|Chinese|Tibetan Native Music"
            case .musicVideosHipHopRapChineseHipHop : return "Music Videos|Hip-Hop/Rap|Chinese Hip-Hop"
            case .musicVideosHipHopRapKoreanHipHop : return "Music Videos|Hip-Hop/Rap|Korean Hip-Hop"
            case .musicVideosKorean : return "Music Videos|Korean"
            case .musicVideosKoreanKoreanClassical : return "Music Videos|Korean|Korean Classical"
            case .musicVideosKoreanKoreanTradSong : return "Music Videos|Korean|Korean Trad Song"
            case .musicVideosKoreanKoreanTradInstrumental : return "Music Videos|Korean|Korean Trad Instrumental"
            case .musicVideosKoreanKoreanTradTheater : return "Music Videos|Korean|Korean Trad Theater"
            case .musicVideosRockChineseRock : return "Music Videos|Rock|Chinese Rock"
            case .musicVideosRockKoreanRock : return "Music Videos|Rock|Korean Rock"
            case .musicVideosPopCPop : return "Music Videos|Pop|C-Pop"
            case .musicVideosPopCantopopHKPop : return "Music Videos|Pop|Cantopop/HK-Pop"
            case .musicVideosPopKoreanFolkPop : return "Music Videos|Pop|Korean Folk-Pop"
            case .musicVideosPopMandopop : return "Music Videos|Pop|Mandopop"
            case .musicVideosPopTaiPop : return "Music Videos|Pop|Tai-Pop"
            case .musicVideosPopMalaysianPop : return "Music Videos|Pop|Malaysian Pop"
            case .musicVideosPopPinoyPop : return "Music Videos|Pop|Pinoy Pop"
            case .musicVideosPopOriginalPilipinoMusic : return "Music Videos|Pop|Original Pilipino Music"
            case .musicVideosPopManillaSound : return "Music Videos|Pop|Manilla Sound"
            case .musicVideosPopIndoPop : return "Music Videos|Pop|Indo Pop"
            case .musicVideosPopThaiPop : return "Music Videos|Pop|Thai Pop"
            case .musicVideosVocalTrot : return "Music Videos|Vocal|Trot"
            case .musicVideosBrazilian : return "Music Videos|Brazilian"
            case .musicVideosBrazilianAxe : return "Music Videos|Brazilian|Axe"
            case .musicVideosBrazilianBaileFunk : return "Music Videos|Brazilian|Baile Funk"
            case .musicVideosBrazilianBossaNova : return "Music Videos|Brazilian|Bossa Nova"
            case .musicVideosBrazilianChoro : return "Music Videos|Brazilian|Choro"
            case .musicVideosBrazilianForro : return "Music Videos|Brazilian|Forro"
            case .musicVideosBrazilianFrevo : return "Music Videos|Brazilian|Frevo"
            case .musicVideosBrazilianMPB : return "Music Videos|Brazilian|MPB"
            case .musicVideosBrazilianPagode : return "Music Videos|Brazilian|Pagode"
            case .musicVideosBrazilianSamba : return "Music Videos|Brazilian|Samba"
            case .musicVideosBrazilianSertanejo : return "Music Videos|Brazilian|Sertanejo"
            case .musicVideosClassicalHighClassical : return "Music Videos|Classical|High Classical"
            case .musicVideosFitnessandWorkout : return "Music Videos|Fitness & Workout"
            case .musicVideosInstrumental : return "Music Videos|Instrumental"
            case .musicVideosJazzBigBand : return "Music Videos|Jazz|Big Band"
            case .musicVideosPopKPop : return "Music Videos|Pop|K-Pop"
            case .musicVideosKaraoke : return "Music Videos|Karaoke"
            case .musicVideosRockHeavyMetal : return "Music Videos|Rock|Heavy Metal"
            case .musicVideosSpokenWord : return "Music Videos|Spoken Word"
            case .musicVideosIndian : return "Music Videos|Indian"
            case .musicVideosIndianBollywood : return "Music Videos|Indian|Bollywood"
            case .musicVideosIndianRegionalIndianTamil : return "Music Videos|Indian|Regional Indian|Tamil"
            case .musicVideosIndianRegionalIndianTelugu : return "Music Videos|Indian|Regional Indian|Telugu"
            case .musicVideosIndianRegionalIndian : return "Music Videos|Indian|Regional Indian"
            case .musicVideosIndianDevotionalandSpiritual : return "Music Videos|Indian|Devotional & Spiritual"
            case .musicVideosIndianSufi : return "Music Videos|Indian|Sufi"
            case .musicVideosIndianIndianClassical : return "Music Videos|Indian|Indian Classical"
            case .musicVideosRussianRussianChanson : return "Music Videos|Russian|Russian Chanson"
            case .musicVideosWorldDini : return "Music Videos|World|Dini"
            case .musicVideosTurkishHalk : return "Music Videos|Turkish|Halk"
            case .musicVideosTurkishSanat : return "Music Videos|Turkish|Sanat"
            case .musicVideosWorldDangdut : return "Music Videos|World|Dangdut"
            case .musicVideosWorldIndonesianReligious : return "Music Videos|World|Indonesian Religious"
            case .musicVideosIndianIndianPop : return "Music Videos|Indian|Indian Pop"
            case .musicVideosWorldCalypso : return "Music Videos|World|Calypso"
            case .musicVideosWorldSoca : return "Music Videos|World|Soca"
            case .musicVideosIndianGhazals : return "Music Videos|Indian|Ghazals"
            case .musicVideosIndianIndianFolk : return "Music Videos|Indian|Indian Folk"
            case .musicVideosTurkishArabesque : return "Music Videos|Turkish|Arabesque"
            case .musicVideosAfricanAfrikaans : return "Music Videos|African|Afrikaans"
            case .musicVideosWorldFarsi : return "Music Videos|World|Farsi"
            case .musicVideosWorldIsraeli : return "Music Videos|World|Israeli"
            case .musicVideosArabic : return "Music Videos|Arabic"
            case .musicVideosArabicKhaleeji : return "Music Videos|Arabic|Khaleeji"
            case .musicVideosArabicNorthAfrican : return "Music Videos|Arabic|North African"
            case .musicVideosArabicArabicPop : return "Music Videos|Arabic|Arabic Pop"
            case .musicVideosArabicIslamic : return "Music Videos|Arabic|Islamic"
            case .musicVideosSoundtrackSoundEffects : return "Music Videos|Soundtrack|Sound Effects"
            case .musicVideosFolk : return "Music Videos|Folk"
            case .musicVideosOrchestral : return "Music Videos|Orchestral"
            case .musicVideosMarching : return "Music Videos|Marching"
            case .musicVideosPopOldies : return "Music Videos|Pop|Oldies"
            case .musicVideosCountryThaiCountry : return "Music Videos|Country|Thai Country"
            case .musicVideosWorldFlamenco : return "Music Videos|World|Flamenco"
            case .musicVideosWorldTango : return "Music Videos|World|Tango"
            case .musicVideosWorldFado : return "Music Videos|World|Fado"
            case .musicVideosWorldIberia : return "Music Videos|World|Iberia"
            case .musicVideosRussian : return "Music Videos|Russian"
            case .musicVideosTurkish : return "Music Videos|Turkish"
            case .musicVideosAlternativeCollegeRock : return "Music Videos|Alternative|College Rock"
            case .musicVideosAlternativeGothRock : return "Music Videos|Alternative|Goth Rock"
            case .musicVideosAlternativeGrunge : return "Music Videos|Alternative|Grunge"
            case .musicVideosAlternativeIndieRock : return "Music Videos|Alternative|Indie Rock"
            case .musicVideosAlternativeNewWave : return "Music Videos|Alternative|New Wave"
            case .musicVideosAlternativePunk : return "Music Videos|Alternative|Punk"
            case .musicVideosBluesAcousticBlues : return "Music Videos|Blues|Acoustic Blues"
            case .musicVideosBluesChicagoBlues : return "Music Videos|Blues|Chicago Blues"
            case .musicVideosBluesClassicBlues : return "Music Videos|Blues|Classic Blues"
            case .musicVideosBluesContemporaryBlues : return "Music Videos|Blues|Contemporary Blues"
            case .musicVideosBluesCountryBlues : return "Music Videos|Blues|Country Blues"
            case .musicVideosBluesDeltaBlues : return "Music Videos|Blues|Delta Blues"
            case .musicVideosBluesElectricBlues : return "Music Videos|Blues|Electric Blues"
            case .musicVideosChildrensMusicLullabies : return "Music Videos|Children's Music|Lullabies"
            case .musicVideosChildrensMusicSingAlong : return "Music Videos|Children's Music|Sing-Along"
            case .musicVideosChildrensMusicStories : return "Music Videos|Children's Music|Stories"
            case .musicVideosChristianandGospelCCM : return "Music Videos|Christian & Gospel|CCM"
            case .musicVideosChristianandGospelChristianMetal : return "Music Videos|Christian & Gospel|Christian Metal"
            case .musicVideosChristianandGospelChristianPop : return "Music Videos|Christian & Gospel|Christian Pop"
            case .musicVideosChristianandGospelChristianRap : return "Music Videos|Christian & Gospel|Christian Rap"
            case .musicVideosChristianandGospelChristianRock : return "Music Videos|Christian & Gospel|Christian Rock"
            case .musicVideosChristianandGospelClassicChristian : return "Music Videos|Christian & Gospel|Classic Christian"
            case .musicVideosChristianandGospelContemporaryGospel : return "Music Videos|Christian & Gospel|Contemporary Gospel"
            case .musicVideosChristianandGospelGospel : return "Music Videos|Christian & Gospel|Gospel"
            case .musicVideosChristianandGospelPraiseandWorship : return "Music Videos|Christian & Gospel|Praise & Worship"
            case .musicVideosChristianandGospelSouthernGospel : return "Music Videos|Christian & Gospel|Southern Gospel"
            case .musicVideosChristianandGospelTraditionalGospel : return "Music Videos|Christian & Gospel|Traditional Gospel"
            case .musicVideosClassicalAvantGarde : return "Music Videos|Classical|Avant-Garde"
            case .musicVideosClassicalBaroqueEra : return "Music Videos|Classical|Baroque Era"
            case .musicVideosClassicalChamberMusic : return "Music Videos|Classical|Chamber Music"
            case .musicVideosClassicalChant : return "Music Videos|Classical|Chant"
            case .musicVideosClassicalChoral : return "Music Videos|Classical|Choral"
            case .musicVideosClassicalClassicalCrossover : return "Music Videos|Classical|Classical Crossover"
            case .musicVideosClassicalEarlyMusic : return "Music Videos|Classical|Early Music"
            case .musicVideosClassicalImpressionist : return "Music Videos|Classical|Impressionist"
            case .musicVideosClassicalMedievalEra : return "Music Videos|Classical|Medieval Era"
            case .musicVideosClassicalMinimalism : return "Music Videos|Classical|Minimalism"
            case .musicVideosClassicalModernEra : return "Music Videos|Classical|Modern Era"
            case .musicVideosClassicalOrchestral : return "Music Videos|Classical|Orchestral"
            case .musicVideosClassicalRenaissance : return "Music Videos|Classical|Renaissance"
            case .musicVideosClassicalRomanticEra : return "Music Videos|Classical|Romantic Era"
            case .musicVideosClassicalWeddingMusic : return "Music Videos|Classical|Wedding Music"
            case .musicVideosComedyNovelty : return "Music Videos|Comedy|Novelty"
            case .musicVideosComedyStandupComedy : return "Music Videos|Comedy|Standup Comedy"
            case .musicVideosCountryAlternativeCountry : return "Music Videos|Country|Alternative Country"
            case .musicVideosCountryAmericana : return "Music Videos|Country|Americana"
            case .musicVideosCountryBluegrass : return "Music Videos|Country|Bluegrass"
            case .musicVideosCountryContemporaryBluegrass : return "Music Videos|Country|Contemporary Bluegrass"
            case .musicVideosCountryContemporaryCountry : return "Music Videos|Country|Contemporary Country"
            case .musicVideosCountryCountryGospel : return "Music Videos|Country|Country Gospel"
            case .musicVideosCountryHonkyTonk : return "Music Videos|Country|Honky Tonk"
            case .musicVideosCountryOutlawCountry : return "Music Videos|Country|Outlaw Country"
            case .musicVideosCountryTraditionalBluegrass : return "Music Videos|Country|Traditional Bluegrass"
            case .musicVideosCountryTraditionalCountry : return "Music Videos|Country|Traditional Country"
            case .musicVideosCountryUrbanCowboy : return "Music Videos|Country|Urban Cowboy"
            case .musicVideosDanceBreakbeat : return "Music Videos|Dance|Breakbeat"
            case .musicVideosDanceExercise : return "Music Videos|Dance|Exercise"
            case .musicVideosDanceGarage : return "Music Videos|Dance|Garage"
            case .musicVideosDanceHardcore : return "Music Videos|Dance|Hardcore"
            case .musicVideosDanceHouse : return "Music Videos|Dance|House"
            case .musicVideosDanceJungleDrumnbass : return "Music Videos|Dance|Jungle/Drum'n'bass"
            case .musicVideosDanceTechno : return "Music Videos|Dance|Techno"
            case .musicVideosDanceTrance : return "Music Videos|Dance|Trance"
            case .musicVideosEasyListeningLounge : return "Music Videos|Easy Listening|Lounge"
            case .musicVideosEasyListeningSwing : return "Music Videos|Easy Listening|Swing"
            case .musicVideosElectronicAmbient : return "Music Videos|Electronic|Ambient"
            case .musicVideosElectronicDowntempo : return "Music Videos|Electronic|Downtempo"
            case .musicVideosElectronicElectronica : return "Music Videos|Electronic|Electronica"
            case .musicVideosElectronicIDMExperimental : return "Music Videos|Electronic|IDM/Experimental"
            case .musicVideosElectronicIndustrial : return "Music Videos|Electronic|Industrial"
            case .musicVideosHipHopRapAlternativeRap : return "Music Videos|Hip-Hop/Rap|Alternative Rap"
            case .musicVideosHipHopRapDirtySouth : return "Music Videos|Hip-Hop/Rap|Dirty South"
            case .musicVideosHipHopRapEastCoastRap : return "Music Videos|Hip-Hop/Rap|East Coast Rap"
            case .musicVideosHipHopRapGangstaRap : return "Music Videos|Hip-Hop/Rap|Gangsta Rap"
            case .musicVideosHipHopRapHardcoreRap : return "Music Videos|Hip-Hop/Rap|Hardcore Rap"
            case .musicVideosHipHopRapHipHop : return "Music Videos|Hip-Hop/Rap|Hip-Hop"
            case .musicVideosHipHopRapLatinRap : return "Music Videos|Hip-Hop/Rap|Latin Rap"
            case .musicVideosHipHopRapOldSchoolRap : return "Music Videos|Hip-Hop/Rap|Old School Rap"
            case .musicVideosHipHopRapRap : return "Music Videos|Hip-Hop/Rap|Rap"
            case .musicVideosHipHopRapUndergroundRap : return "Music Videos|Hip-Hop/Rap|Underground Rap"
            case .musicVideosHipHopRapWestCoastRap : return "Music Videos|Hip-Hop/Rap|West Coast Rap"
            case .musicVideosHolidayChanukah : return "Music Videos|Holiday|Chanukah"
            case .musicVideosHolidayChristmas : return "Music Videos|Holiday|Christmas"
            case .musicVideosHolidayChristmasChildrens: return "Music Videos|Holiday|Christmas: Children's"
            case .musicVideosHolidayChristmasClassic: return "Music Videos|Holiday|Christmas: Classic"
            case .musicVideosHolidayChristmasClassical: return "Music Videos|Holiday|Christmas: Classical"
            case .musicVideosHolidayChristmasJazz: return "Music Videos|Holiday|Christmas: Jazz"
            case .musicVideosHolidayChristmasModern: return "Music Videos|Holiday|Christmas: Modern"
            case .musicVideosHolidayChristmasPop: return "Music Videos|Holiday|Christmas: Pop"
            case .musicVideosHolidayChristmasRandB: return "Music Videos|Holiday|Christmas: R&B"
            case .musicVideosHolidayChristmasReligious: return "Music Videos|Holiday|Christmas: Religious"
            case .musicVideosHolidayChristmasRock: return "Music Videos|Holiday|Christmas: Rock"
            case .musicVideosHolidayEaster : return "Music Videos|Holiday|Easter"
            case .musicVideosHolidayHalloween : return "Music Videos|Holiday|Halloween"
            case .musicVideosHolidayThanksgiving : return "Music Videos|Holiday|Thanksgiving"
            case .musicVideosJazzAvantGardeJazz : return "Music Videos|Jazz|Avant-Garde Jazz"
            case .musicVideosJazzBop : return "Music Videos|Jazz|Bop"
            case .musicVideosJazzContemporaryJazz : return "Music Videos|Jazz|Contemporary Jazz"
            case .musicVideosJazzCoolJazz : return "Music Videos|Jazz|Cool Jazz"
            case .musicVideosJazzCrossoverJazz : return "Music Videos|Jazz|Crossover Jazz"
            case .musicVideosJazzDixieland : return "Music Videos|Jazz|Dixieland"
            case .musicVideosJazzFusion : return "Music Videos|Jazz|Fusion"
            case .musicVideosJazzHardBop : return "Music Videos|Jazz|Hard Bop"
            case .musicVideosJazzLatinJazz : return "Music Videos|Jazz|Latin Jazz"
            case .musicVideosJazzMainstreamJazz : return "Music Videos|Jazz|Mainstream Jazz"
            case .musicVideosJazzRagtime : return "Music Videos|Jazz|Ragtime"
            case .musicVideosJazzSmoothJazz : return "Music Videos|Jazz|Smooth Jazz"
            case .musicVideosJazzTradJazz : return "Music Videos|Jazz|Trad Jazz"
            case .musicVideosLatinAlternativeandRockinSpanish : return "Music Videos|Latin|Alternative & Rock in Spanish"
            case .musicVideosLatinBaladasyBoleros : return "Music Videos|Latin|Baladas y Boleros"
            case .musicVideosLatinContemporaryLatin : return "Music Videos|Latin|Contemporary Latin"
            case .musicVideosLatinLatinJazz : return "Music Videos|Latin|Latin Jazz"
            case .musicVideosLatinLatinUrban : return "Music Videos|Latin|Latin Urban"
            case .musicVideosLatinPopinSpanish : return "Music Videos|Latin|Pop in Spanish"
            case .musicVideosLatinRaices : return "Music Videos|Latin|Raices"
            case .musicVideosLatinMusicaMexicana : return "Music Videos|Latin|Musica Mexicana"
            case .musicVideosLatinSalsayTropical : return "Music Videos|Latin|Salsa y Tropical"
            case .musicVideosNewAgeHealing : return "Music Videos|New Age|Healing"
            case .musicVideosNewAgeMeditation : return "Music Videos|New Age|Meditation"
            case .musicVideosNewAgeNature : return "Music Videos|New Age|Nature"
            case .musicVideosNewAgeRelaxation : return "Music Videos|New Age|Relaxation"
            case .musicVideosNewAgeTravel : return "Music Videos|New Age|Travel"
            case .musicVideosPopAdultContemporary : return "Music Videos|Pop|Adult Contemporary"
            case .musicVideosPopBritpop : return "Music Videos|Pop|Britpop"
            case .musicVideosPopPopRock : return "Music Videos|Pop|Pop/Rock"
            case .musicVideosPopSoftRock : return "Music Videos|Pop|Soft Rock"
            case .musicVideosPopTeenPop : return "Music Videos|Pop|Teen Pop"
            case .musicVideosRandBSoulContemporaryRandB : return "Music Videos|R&B/Soul|Contemporary R&B"
            case .musicVideosRandBSoulDisco : return "Music Videos|R&B/Soul|Disco"
            case .musicVideosRandBSoulDooWop : return "Music Videos|R&B/Soul|Doo Wop"
            case .musicVideosRandBSoulFunk : return "Music Videos|R&B/Soul|Funk"
            case .musicVideosRandBSoulMotown : return "Music Videos|R&B/Soul|Motown"
            case .musicVideosRandBSoulNeoSoul : return "Music Videos|R&B/Soul|Neo-Soul"
            case .musicVideosRandBSoulSoul : return "Music Videos|R&B/Soul|Soul"
            case .musicVideosReggaeModernDancehall : return "Music Videos|Reggae|Modern Dancehall"
            case .musicVideosReggaeDub : return "Music Videos|Reggae|Dub"
            case .musicVideosReggaeRootsReggae : return "Music Videos|Reggae|Roots Reggae"
            case .musicVideosReggaeSka : return "Music Videos|Reggae|Ska"
            case .musicVideosRockAdultAlternative : return "Music Videos|Rock|Adult Alternative"
            case .musicVideosRockAmericanTradRock : return "Music Videos|Rock|American Trad Rock"
            case .musicVideosRockArenaRock : return "Music Videos|Rock|Arena Rock"
            case .musicVideosRockBluesRock : return "Music Videos|Rock|Blues-Rock"
            case .musicVideosRockBritishInvasion : return "Music Videos|Rock|British Invasion"
            case .musicVideosRockDeathMetalBlackMetal : return "Music Videos|Rock|Death Metal/Black Metal"
            case .musicVideosRockGlamRock : return "Music Videos|Rock|Glam Rock"
            case .musicVideosRockHairMetal : return "Music Videos|Rock|Hair Metal"
            case .musicVideosRockHardRock : return "Music Videos|Rock|Hard Rock"
            case .musicVideosRockJamBands : return "Music Videos|Rock|Jam Bands"
            case .musicVideosRockProgRockArtRock : return "Music Videos|Rock|Prog-Rock/Art Rock"
            case .musicVideosRockPsychedelic : return "Music Videos|Rock|Psychedelic"
            case .musicVideosRockRockandRoll : return "Music Videos|Rock|Rock & Roll"
            case .musicVideosRockRockabilly : return "Music Videos|Rock|Rockabilly"
            case .musicVideosRockRootsRock : return "Music Videos|Rock|Roots Rock"
            case .musicVideosRockSingerSongwriter : return "Music Videos|Rock|Singer/Songwriter"
            case .musicVideosRockSouthernRock : return "Music Videos|Rock|Southern Rock"
            case .musicVideosRockSurf : return "Music Videos|Rock|Surf"
            case .musicVideosRockTexMex : return "Music Videos|Rock|Tex-Mex"
            case .musicVideosSingerSongwriterAlternativeFolk : return "Music Videos|Singer/Songwriter|Alternative Folk"
            case .musicVideosSingerSongwriterContemporaryFolk : return "Music Videos|Singer/Songwriter|Contemporary Folk"
            case .musicVideosSingerSongwriterContemporarySingerSongwriter : return "Music Videos|Singer/Songwriter|Contemporary Singer/Songwriter"
            case .musicVideosSingerSongwriterFolkRock : return "Music Videos|Singer/Songwriter|Folk-Rock"
            case .musicVideosSingerSongwriterNewAcoustic : return "Music Videos|Singer/Songwriter|New Acoustic"
            case .musicVideosSingerSongwriterTraditionalFolk : return "Music Videos|Singer/Songwriter|Traditional Folk"
            case .musicVideosSoundtrackForeignCinema : return "Music Videos|Soundtrack|Foreign Cinema"
            case .musicVideosSoundtrackMusicals : return "Music Videos|Soundtrack|Musicals"
            case .musicVideosSoundtrackOriginalScore : return "Music Videos|Soundtrack|Original Score"
            case .musicVideosSoundtrackSoundtrack : return "Music Videos|Soundtrack|Soundtrack"
            case .musicVideosSoundtrackTVSoundtrack : return "Music Videos|Soundtrack|TV Soundtrack"
            case .musicVideosVocalStandards : return "Music Videos|Vocal|Standards"
            case .musicVideosVocalTraditionalPop : return "Music Videos|Vocal|Traditional Pop"
            case .musicVideosJazzVocalJazz : return "Music Videos|Jazz|Vocal Jazz"
            case .musicVideosVocalVocalPop : return "Music Videos|Vocal|Vocal Pop"
            case .musicVideosAfrican : return "Music Videos|African"
            case .musicVideosAfricanAfroBeat : return "Music Videos|African|Afro-Beat"
            case .musicVideosAfricanAfroPop : return "Music Videos|African|Afro-Pop"
            case .musicVideosWorldAsia : return "Music Videos|World|Asia"
            case .musicVideosWorldAustralia : return "Music Videos|World|Australia"
            case .musicVideosWorldCajun : return "Music Videos|World|Cajun"
            case .musicVideosWorldCaribbean : return "Music Videos|World|Caribbean"
            case .musicVideosWorldCeltic : return "Music Videos|World|Celtic"
            case .musicVideosWorldCelticFolk : return "Music Videos|World|Celtic Folk"
            case .musicVideosWorldContemporaryCeltic : return "Music Videos|World|Contemporary Celtic"
            case .musicVideosWorldEurope : return "Music Videos|World|Europe"
            case .musicVideosWorldFrance : return "Music Videos|World|France"
            case .musicVideosWorldHawaii : return "Music Videos|World|Hawaii"
            case .musicVideosWorldJapan : return "Music Videos|World|Japan"
            case .musicVideosWorldKlezmer : return "Music Videos|World|Klezmer"
            case .musicVideosWorldNorthAmerica : return "Music Videos|World|North America"
            case .musicVideosWorldPolka : return "Music Videos|World|Polka"
            case .musicVideosWorldSouthAfrica : return "Music Videos|World|South Africa"
            case .musicVideosWorldSouthAmerica : return "Music Videos|World|South America"
            case .musicVideosWorldTraditionalCeltic : return "Music Videos|World|Traditional Celtic"
            case .musicVideosWorldWorldbeat : return "Music Videos|World|Worldbeat"
            case .musicVideosWorldZydeco : return "Music Videos|World|Zydeco"
            case .musicVideosClassicalArtSong : return "Music Videos|Classical|Art Song"
            case .musicVideosClassicalBrassandWoodwinds : return "Music Videos|Classical|Brass & Woodwinds"
            case .musicVideosClassicalSoloInstrumental : return "Music Videos|Classical|Solo Instrumental"
            case .musicVideosClassicalContemporaryEra : return "Music Videos|Classical|Contemporary Era"
            case .musicVideosClassicalOratorio : return "Music Videos|Classical|Oratorio"
            case .musicVideosClassicalCantata : return "Music Videos|Classical|Cantata"
            case .musicVideosClassicalElectronic : return "Music Videos|Classical|Electronic"
            case .musicVideosClassicalSacred : return "Music Videos|Classical|Sacred"
            case .musicVideosClassicalGuitar : return "Music Videos|Classical|Guitar"
            case .musicVideosClassicalViolin : return "Music Videos|Classical|Violin"
            case .musicVideosClassicalCello : return "Music Videos|Classical|Cello"
            case .musicVideosClassicalPercussion : return "Music Videos|Classical|Percussion"
            case .musicVideosElectronicDubstep : return "Music Videos|Electronic|Dubstep"
            case .musicVideosElectronicBass : return "Music Videos|Electronic|Bass"
            case .musicVideosHipHopRapUKHipHop : return "Music Videos|Hip-Hop/Rap|UK Hip-Hop"
            case .musicVideosReggaeLoversRock : return "Music Videos|Reggae|Lovers Rock"
            case .musicVideosAlternativeEMO : return "Music Videos|Alternative|EMO"
            case .musicVideosAlternativePopPunk : return "Music Videos|Alternative|Pop Punk"
            case .musicVideosAlternativeIndiePop : return "Music Videos|Alternative|Indie Pop"
            case .musicVideosNewAgeYoga : return "Music Videos|New Age|Yoga"
            case .musicVideosPopTribute : return "Music Videos|Pop|Tribute"
            case .musicVideosPopShows : return "Music Videos|Pop|Shows"
            case .musicVideosCuban : return "Music Videos|Cuban"
            case .musicVideosCubanMambo : return "Music Videos|Cuban|Mambo"
            case .musicVideosCubanChachacha : return "Music Videos|Cuban|Chachacha"
            case .musicVideosCubanGuajira : return "Music Videos|Cuban|Guajira"
            case .musicVideosCubanSon : return "Music Videos|Cuban|Son"
            case .musicVideosCubanBolero : return "Music Videos|Cuban|Bolero"
            case .musicVideosCubanGuaracha : return "Music Videos|Cuban|Guaracha"
            case .musicVideosCubanTimba : return "Music Videos|Cuban|Timba"
            case .musicVideosSoundtrackVideoGame : return "Music Videos|Soundtrack|Video Game"
            case .musicVideosIndianRegionalIndianPunjabiPunjabiPop : return "Music Videos|Indian|Regional Indian|Punjabi|Punjabi Pop"
            case .musicVideosIndianRegionalIndianBengaliRabindraSangeet : return "Music Videos|Indian|Regional Indian|Bengali|Rabindra Sangeet"
            case .musicVideosIndianRegionalIndianMalayalam : return "Music Videos|Indian|Regional Indian|Malayalam"
            case .musicVideosIndianRegionalIndianKannada : return "Music Videos|Indian|Regional Indian|Kannada"
            case .musicVideosIndianRegionalIndianMarathi : return "Music Videos|Indian|Regional Indian|Marathi"
            case .musicVideosIndianRegionalIndianGujarati : return "Music Videos|Indian|Regional Indian|Gujarati"
            case .musicVideosIndianRegionalIndianAssamese : return "Music Videos|Indian|Regional Indian|Assamese"
            case .musicVideosIndianRegionalIndianBhojpuri : return "Music Videos|Indian|Regional Indian|Bhojpuri"
            case .musicVideosIndianRegionalIndianHaryanvi : return "Music Videos|Indian|Regional Indian|Haryanvi"
            case .musicVideosIndianRegionalIndianOdia : return "Music Videos|Indian|Regional Indian|Odia"
            case .musicVideosIndianRegionalIndianRajasthani : return "Music Videos|Indian|Regional Indian|Rajasthani"
            case .musicVideosIndianRegionalIndianUrdu : return "Music Videos|Indian|Regional Indian|Urdu"
            case .musicVideosIndianRegionalIndianPunjabi : return "Music Videos|Indian|Regional Indian|Punjabi"
            case .musicVideosIndianRegionalIndianBengali : return "Music Videos|Indian|Regional Indian|Bengali"
            case .musicVideosIndianIndianClassicalCarnaticClassical : return "Music Videos|Indian|Indian Classical|Carnatic Classical"
            case .musicVideosIndianIndianClassicalHindustaniClassical : return "Music Videos|Indian|Indian Classical|Hindustani Classical"
            case .musicVideosAfricanAfroHouse : return "Music Videos|African|Afro House"
            case .musicVideosAfricanAfroSoul : return "Music Videos|African|Afro Soul"
            case .musicVideosAfricanAfrobeats : return "Music Videos|African|Afrobeats"
            case .musicVideosAfricanBenga : return "Music Videos|African|Benga"
            case .musicVideosAfricanBongoFlava : return "Music Videos|African|Bongo-Flava"
            case .musicVideosAfricanCoupeDecale : return "Music Videos|African|Coupe-Decale"
            case .musicVideosAfricanGqom : return "Music Videos|African|Gqom"
            case .musicVideosAfricanHighlife : return "Music Videos|African|Highlife"
            case .musicVideosAfricanKuduro : return "Music Videos|African|Kuduro"
            case .musicVideosAfricanKizomba : return "Music Videos|African|Kizomba"
            case .musicVideosAfricanKwaito : return "Music Videos|African|Kwaito"
            case .musicVideosAfricanMbalax : return "Music Videos|African|Mbalax"
            case .musicVideosAfricanNdombolo : return "Music Videos|African|Ndombolo"
            case .musicVideosAfricanShangaanElectro : return "Music Videos|African|Shangaan Electro"
            case .musicVideosAfricanSoukous : return "Music Videos|African|Soukous"
            case .musicVideosAfricanTaarab : return "Music Videos|African|Taarab"
            case .musicVideosAfricanZouglou : return "Music Videos|African|Zouglou"
            case .musicVideosTurkishOzgun : return "Music Videos|Turkish|Ozgun"
            case .musicVideosTurkishFantezi : return "Music Videos|Turkish|Fantezi"
            case .musicVideosTurkishReligious : return "Music Videos|Turkish|Religious"
            case .musicVideosPopTurkishPop : return "Music Videos|Pop|Turkish Pop"
            case .musicVideosRockTurkishRock : return "Music Videos|Rock|Turkish Rock"
            case .musicVideosAlternativeTurkishAlternative : return "Music Videos|Alternative|Turkish Alternative"
            case .musicVideosHipHopRapTurkishHipHopRap : return "Music Videos|Hip-Hop/Rap|Turkish Hip-Hop/Rap"
            case .musicVideosAfricanMaskandi : return "Music Videos|African|Maskandi"
            case .musicVideosRussianRussianRomance : return "Music Videos|Russian|Russian Romance"
            case .musicVideosRussianRussianBard : return "Music Videos|Russian|Russian Bard"
            case .musicVideosRussianRussianPop : return "Music Videos|Russian|Russian Pop"
            case .musicVideosRussianRussianRock : return "Music Videos|Russian|Russian Rock"
            case .musicVideosRussianRussianHipHop : return "Music Videos|Russian|Russian Hip-Hop"
            case .musicVideosArabicLevant : return "Music Videos|Arabic|Levant"
            case .musicVideosArabicLevantDabke : return "Music Videos|Arabic|Levant|Dabke"
            case .musicVideosArabicMaghrebRai : return "Music Videos|Arabic|Maghreb Rai"
            case .musicVideosArabicKhaleejiKhaleejiJalsat : return "Music Videos|Arabic|Khaleeji|Khaleeji Jalsat"
            case .musicVideosArabicKhaleejiKhaleejiShailat : return "Music Videos|Arabic|Khaleeji|Khaleeji Shailat"
            case .musicVideosTarab : return "Music Videos|Tarab"
            case .musicVideosTarabIraqiTarab : return "Music Videos|Tarab|Iraqi Tarab"
            case .musicVideosTarabEgyptianTarab : return "Music Videos|Tarab|Egyptian Tarab"
            case .musicVideosTarabKhaleejiTarab : return "Music Videos|Tarab|Khaleeji Tarab"
            case .musicVideosPopLevantPop : return "Music Videos|Pop|Levant Pop"
            case .musicVideosPopIraqiPop : return "Music Videos|Pop|Iraqi Pop"
            case .musicVideosPopEgyptianPop : return "Music Videos|Pop|Egyptian Pop"
            case .musicVideosPopMaghrebPop : return "Music Videos|Pop|Maghreb Pop"
            case .musicVideosPopKhaleejiPop : return "Music Videos|Pop|Khaleeji Pop"
            case .musicVideosHipHopRapLevantHipHop : return "Music Videos|Hip-Hop/Rap|Levant Hip-Hop"
            case .musicVideosHipHopRapEgyptianHipHop : return "Music Videos|Hip-Hop/Rap|Egyptian Hip-Hop"
            case .musicVideosHipHopRapMaghrebHipHop : return "Music Videos|Hip-Hop/Rap|Maghreb Hip-Hop"
            case .musicVideosHipHopRapKhaleejiHipHop : return "Music Videos|Hip-Hop/Rap|Khaleeji Hip-Hop"
            case .musicVideosAlternativeIndieLevant : return "Music Videos|Alternative|Indie Levant"
            case .musicVideosAlternativeIndieEgyptian : return "Music Videos|Alternative|Indie Egyptian"
            case .musicVideosAlternativeIndieMaghreb : return "Music Videos|Alternative|Indie Maghreb"
            case .musicVideosElectronicLevantElectronic : return "Music Videos|Electronic|Levant Electronic"
            case .musicVideosElectronicElectroChaabi : return "Music Videos|Electronic|Electro-Cha'abi"
            case .musicVideosElectronicMaghrebElectronic : return "Music Videos|Electronic|Maghreb Electronic"
            case .musicVideosFolkIraqiFolk : return "Music Videos|Folk|Iraqi Folk"
            case .musicVideosFolkKhaleejiFolk : return "Music Videos|Folk|Khaleeji Folk"
            case .musicVideosDanceMaghrebDance : return "Music Videos|Dance|Maghreb Dance"
            case .tVShowsComedy : return "TV Shows|Comedy"
            case .tVShowsDrama : return "TV Shows|Drama"
            case .tVShowsAnimation : return "TV Shows|Animation"
            case .tVShowsActionandAdventure : return "TV Shows|Action & Adventure"
            case .tVShowsClassics : return "TV Shows|Classics"
            case .tVShowsKidsandFamily : return "TV Shows|Kids & Family"
            case .tVShowsNonfiction : return "TV Shows|Nonfiction"
            case .tVShowsRealityTV : return "TV Shows|Reality TV"
            case .tVShowsSciFiandFantasy : return "TV Shows|Sci-Fi & Fantasy"
            case .tVShowsSports : return "TV Shows|Sports"
            case .tVShowsTeens : return "TV Shows|Teens"
            case .tVShowsLatinoTV : return "TV Shows|Latino TV"
            case .moviesActionandAdventure : return "Movies|Action & Adventure"
            case .moviesAnime : return "Movies|Anime"
            case .moviesClassics : return "Movies|Classics"
            case .moviesComedy : return "Movies|Comedy"
            case .moviesDocumentary : return "Movies|Documentary"
            case .moviesDrama : return "Movies|Drama"
            case .moviesForeign : return "Movies|Foreign"
            case .moviesHorror : return "Movies|Horror"
            case .moviesIndependent : return "Movies|Independent"
            case .moviesKidsandFamily : return "Movies|Kids & Family"
            case .moviesMusicals : return "Movies|Musicals"
            case .moviesRomance : return "Movies|Romance"
            case .moviesSciFiandFantasy : return "Movies|Sci-Fi & Fantasy"
            case .moviesShortFilms : return "Movies|Short Films"
            case .moviesSpecialInterest : return "Movies|Special Interest"
            case .moviesThriller : return "Movies|Thriller"
            case .moviesSports : return "Movies|Sports"
            case .moviesWestern : return "Movies|Western"
            case .moviesUrban : return "Movies|Urban"
            case .moviesHoliday : return "Movies|Holiday"
            case .moviesMadeforTV : return "Movies|Made for TV"
            case .moviesConcertFilms : return "Movies|Concert Films"
            case .moviesMusicDocumentaries : return "Movies|Music Documentaries"
            case .moviesMusicFeatureFilms : return "Movies|Music Feature Films"
            case .moviesJapaneseCinema : return "Movies|Japanese Cinema"
            case .moviesJidaigeki : return "Movies|Jidaigeki"
            case .moviesTokusatsu : return "Movies|Tokusatsu"
            case .moviesKoreanCinema : return "Movies|Korean Cinema"
            case .moviesRussian : return "Movies|Russian"
            case .moviesTurkish : return "Movies|Turkish"
            case .moviesBollywood : return "Movies|Bollywood"
            case .moviesRegionalIndian : return "Movies|Regional Indian"
            case .moviesMiddleEastern : return "Movies|Middle Eastern"
            case .moviesAfrican : return "Movies|African"
            case .appStoreBusiness : return "App Store|Business"
            case .appStoreWeather : return "App Store|Weather"
            case .appStoreUtilities : return "App Store|Utilities"
            case .appStoreTravel : return "App Store|Travel"
            case .appStoreSports : return "App Store|Sports"
            case .appStoreSocialNetworking : return "App Store|Social Networking"
            case .appStoreReference : return "App Store|Reference"
            case .appStoreProductivity : return "App Store|Productivity"
            case .appStorePhotoandVideo : return "App Store|Photo & Video"
            case .appStoreNews : return "App Store|News"
            case .appStoreNavigation : return "App Store|Navigation"
            case .appStoreMusic : return "App Store|Music"
            case .appStoreLifestyle : return "App Store|Lifestyle"
            case .appStoreHealthandFitness : return "App Store|Health & Fitness"
            case .appStoreGames : return "App Store|Games"
            case .appStoreFinance : return "App Store|Finance"
            case .appStoreEntertainment : return "App Store|Entertainment"
            case .appStoreEducation : return "App Store|Education"
            case .appStoreBooks : return "App Store|Books"
            case .appStoreMedical : return "App Store|Medical"
            case .appStoreMagazinesandNewspapers : return "App Store|Magazines & Newspapers"
            case .appStoreCatalogs : return "App Store|Catalogs"
            case .appStoreFoodandDrink : return "App Store|Food & Drink"
            case .appStoreShopping : return "App Store|Shopping"
            case .appStoreStickers : return "App Store|Stickers"
            case .appStoreDeveloperTools : return "App Store|Developer Tools"
            case .appStoreGraphicsandDesign : return "App Store|Graphics & Design"
            case .appStoreGamesAction : return "App Store|Games|Action"
            case .appStoreGamesAdventure : return "App Store|Games|Adventure"
            case .appStoreGamesCasual : return "App Store|Games|Casual"
            case .appStoreGamesBoard : return "App Store|Games|Board"
            case .appStoreGamesCard : return "App Store|Games|Card"
            case .appStoreGamesCasino : return "App Store|Games|Casino"
            case .appStoreGamesDice : return "App Store|Games|Dice"
            case .appStoreGamesEducational : return "App Store|Games|Educational"
            case .appStoreGamesFamily : return "App Store|Games|Family"
            case .appStoreGamesMusic : return "App Store|Games|Music"
            case .appStoreGamesPuzzle : return "App Store|Games|Puzzle"
            case .appStoreGamesRacing : return "App Store|Games|Racing"
            case .appStoreGamesRolePlaying : return "App Store|Games|Role Playing"
            case .appStoreGamesSimulation : return "App Store|Games|Simulation"
            case .appStoreGamesSports : return "App Store|Games|Sports"
            case .appStoreGamesStrategy : return "App Store|Games|Strategy"
            case .appStoreGamesTrivia : return "App Store|Games|Trivia"
            case .appStoreGamesWord : return "App Store|Games|Word"
            case .tonesRingtonesAlternative : return "Tones|Ringtones|Alternative"
            case .tonesRingtonesBlues : return "Tones|Ringtones|Blues"
            case .tonesRingtonesChildrensMusic : return "Tones|Ringtones|Children's Music"
            case .tonesRingtonesClassical : return "Tones|Ringtones|Classical"
            case .tonesRingtonesComedy : return "Tones|Ringtones|Comedy"
            case .tonesRingtonesCountry : return "Tones|Ringtones|Country"
            case .tonesRingtonesDance : return "Tones|Ringtones|Dance"
            case .tonesRingtonesElectronic : return "Tones|Ringtones|Electronic"
            case .tonesRingtonesEnka : return "Tones|Ringtones|Enka"
            case .tonesRingtonesFrenchPop : return "Tones|Ringtones|French Pop"
            case .tonesRingtonesGermanFolk : return "Tones|Ringtones|German Folk"
            case .tonesRingtonesGermanPop : return "Tones|Ringtones|German Pop"
            case .tonesRingtonesHipHopRap : return "Tones|Ringtones|Hip-Hop/Rap"
            case .tonesRingtonesHoliday : return "Tones|Ringtones|Holiday"
            case .tonesRingtonesInspirational : return "Tones|Ringtones|Inspirational"
            case .tonesRingtonesJPop : return "Tones|Ringtones|J-Pop"
            case .tonesRingtonesJazz : return "Tones|Ringtones|Jazz"
            case .tonesRingtonesKayokyoku : return "Tones|Ringtones|Kayokyoku"
            case .tonesRingtonesLatin : return "Tones|Ringtones|Latin"
            case .tonesRingtonesNewAge : return "Tones|Ringtones|New Age"
            case .tonesRingtonesClassicalOpera : return "Tones|Ringtones|Classical|Opera"
            case .tonesRingtonesPop : return "Tones|Ringtones|Pop"
            case .tonesRingtonesRandBSoul : return "Tones|Ringtones|R&B/Soul"
            case .tonesRingtonesReggae : return "Tones|Ringtones|Reggae"
            case .tonesRingtonesRock : return "Tones|Ringtones|Rock"
            case .tonesRingtonesSingerSongwriter : return "Tones|Ringtones|Singer/Songwriter"
            case .tonesRingtonesSoundtrack : return "Tones|Ringtones|Soundtrack"
            case .tonesRingtonesSpokenWord : return "Tones|Ringtones|Spoken Word"
            case .tonesRingtonesVocal : return "Tones|Ringtones|Vocal"
            case .tonesRingtonesWorld : return "Tones|Ringtones|World"
            case .tonesAlertTonesSoundEffects : return "Tones|Alert Tones|Sound Effects"
            case .tonesAlertTonesDialogue : return "Tones|Alert Tones|Dialogue"
            case .tonesAlertTonesMusic : return "Tones|Alert Tones|Music"
            case .tonesRingtones : return "Tones|Ringtones"
            case .tonesAlertTones : return "Tones|Alert Tones"
            case .tonesRingtonesAlternativeChineseAlt : return "Tones|Ringtones|Alternative|Chinese Alt"
            case .tonesRingtonesAlternativeCollegeRock : return "Tones|Ringtones|Alternative|College Rock"
            case .tonesRingtonesAlternativeGothRock : return "Tones|Ringtones|Alternative|Goth Rock"
            case .tonesRingtonesAlternativeGrunge : return "Tones|Ringtones|Alternative|Grunge"
            case .tonesRingtonesAlternativeIndieRock : return "Tones|Ringtones|Alternative|Indie Rock"
            case .tonesRingtonesAlternativeKoreanIndie : return "Tones|Ringtones|Alternative|Korean Indie"
            case .tonesRingtonesAlternativeNewWave : return "Tones|Ringtones|Alternative|New Wave"
            case .tonesRingtonesAlternativePunk : return "Tones|Ringtones|Alternative|Punk"
            case .tonesRingtonesAnime : return "Tones|Ringtones|Anime"
            case .tonesRingtonesArabic : return "Tones|Ringtones|Arabic"
            case .tonesRingtonesArabicArabicPop : return "Tones|Ringtones|Arabic|Arabic Pop"
            case .tonesRingtonesArabicIslamic : return "Tones|Ringtones|Arabic|Islamic"
            case .tonesRingtonesArabicKhaleeji : return "Tones|Ringtones|Arabic|Khaleeji"
            case .tonesRingtonesArabicNorthAfrican : return "Tones|Ringtones|Arabic|North African"
            case .tonesRingtonesBluesAcousticBlues : return "Tones|Ringtones|Blues|Acoustic Blues"
            case .tonesRingtonesBluesChicagoBlues : return "Tones|Ringtones|Blues|Chicago Blues"
            case .tonesRingtonesBluesClassicBlues : return "Tones|Ringtones|Blues|Classic Blues"
            case .tonesRingtonesBluesContemporaryBlues : return "Tones|Ringtones|Blues|Contemporary Blues"
            case .tonesRingtonesBluesCountryBlues : return "Tones|Ringtones|Blues|Country Blues"
            case .tonesRingtonesBluesDeltaBlues : return "Tones|Ringtones|Blues|Delta Blues"
            case .tonesRingtonesBluesElectricBlues : return "Tones|Ringtones|Blues|Electric Blues"
            case .tonesRingtonesBrazilian : return "Tones|Ringtones|Brazilian"
            case .tonesRingtonesBrazilianAxe : return "Tones|Ringtones|Brazilian|Axe"
            case .tonesRingtonesBrazilianBaileFunk : return "Tones|Ringtones|Brazilian|Baile Funk"
            case .tonesRingtonesBrazilianBossaNova : return "Tones|Ringtones|Brazilian|Bossa Nova"
            case .tonesRingtonesBrazilianChoro : return "Tones|Ringtones|Brazilian|Choro"
            case .tonesRingtonesBrazilianForro : return "Tones|Ringtones|Brazilian|Forro"
            case .tonesRingtonesBrazilianFrevo : return "Tones|Ringtones|Brazilian|Frevo"
            case .tonesRingtonesBrazilianMPB : return "Tones|Ringtones|Brazilian|MPB"
            case .tonesRingtonesBrazilianPagode : return "Tones|Ringtones|Brazilian|Pagode"
            case .tonesRingtonesBrazilianSamba : return "Tones|Ringtones|Brazilian|Samba"
            case .tonesRingtonesBrazilianSertanejo : return "Tones|Ringtones|Brazilian|Sertanejo"
            case .tonesRingtonesChildrensMusicLullabies : return "Tones|Ringtones|Children's Music|Lullabies"
            case .tonesRingtonesChildrensMusicSingAlong : return "Tones|Ringtones|Children's Music|Sing-Along"
            case .tonesRingtonesChildrensMusicStories : return "Tones|Ringtones|Children's Music|Stories"
            case .tonesRingtonesChinese : return "Tones|Ringtones|Chinese"
            case .tonesRingtonesChineseChineseClassical : return "Tones|Ringtones|Chinese|Chinese Classical"
            case .tonesRingtonesChineseChineseFlute : return "Tones|Ringtones|Chinese|Chinese Flute"
            case .tonesRingtonesChineseChineseOpera : return "Tones|Ringtones|Chinese|Chinese Opera"
            case .tonesRingtonesChineseChineseOrchestral : return "Tones|Ringtones|Chinese|Chinese Orchestral"
            case .tonesRingtonesChineseChineseRegionalFolk : return "Tones|Ringtones|Chinese|Chinese Regional Folk"
            case .tonesRingtonesChineseChineseStrings : return "Tones|Ringtones|Chinese|Chinese Strings"
            case .tonesRingtonesChineseTaiwaneseFolk : return "Tones|Ringtones|Chinese|Taiwanese Folk"
            case .tonesRingtonesChineseTibetanNativeMusic : return "Tones|Ringtones|Chinese|Tibetan Native Music"
            case .tonesRingtonesChristianandGospel : return "Tones|Ringtones|Christian & Gospel"
            case .tonesRingtonesChristianandGospelCCM : return "Tones|Ringtones|Christian & Gospel|CCM"
            case .tonesRingtonesChristianandGospelChristianMetal : return "Tones|Ringtones|Christian & Gospel|Christian Metal"
            case .tonesRingtonesChristianandGospelChristianPop : return "Tones|Ringtones|Christian & Gospel|Christian Pop"
            case .tonesRingtonesChristianandGospelChristianRap : return "Tones|Ringtones|Christian & Gospel|Christian Rap"
            case .tonesRingtonesChristianandGospelChristianRock : return "Tones|Ringtones|Christian & Gospel|Christian Rock"
            case .tonesRingtonesChristianandGospelClassicChristian : return "Tones|Ringtones|Christian & Gospel|Classic Christian"
            case .tonesRingtonesChristianandGospelContemporaryGospel : return "Tones|Ringtones|Christian & Gospel|Contemporary Gospel"
            case .tonesRingtonesChristianandGospelGospel : return "Tones|Ringtones|Christian & Gospel|Gospel"
            case .tonesRingtonesChristianandGospelPraiseandWorship : return "Tones|Ringtones|Christian & Gospel|Praise & Worship"
            case .tonesRingtonesChristianandGospelSouthernGospel : return "Tones|Ringtones|Christian & Gospel|Southern Gospel"
            case .tonesRingtonesChristianandGospelTraditionalGospel : return "Tones|Ringtones|Christian & Gospel|Traditional Gospel"
            case .tonesRingtonesClassicalAvantGarde : return "Tones|Ringtones|Classical|Avant-Garde"
            case .tonesRingtonesClassicalBaroqueEra : return "Tones|Ringtones|Classical|Baroque Era"
            case .tonesRingtonesClassicalChamberMusic : return "Tones|Ringtones|Classical|Chamber Music"
            case .tonesRingtonesClassicalChant : return "Tones|Ringtones|Classical|Chant"
            case .tonesRingtonesClassicalChoral : return "Tones|Ringtones|Classical|Choral"
            case .tonesRingtonesClassicalClassicalCrossover : return "Tones|Ringtones|Classical|Classical Crossover"
            case .tonesRingtonesClassicalEarlyMusic : return "Tones|Ringtones|Classical|Early Music"
            case .tonesRingtonesClassicalHighClassical : return "Tones|Ringtones|Classical|High Classical"
            case .tonesRingtonesClassicalImpressionist : return "Tones|Ringtones|Classical|Impressionist"
            case .tonesRingtonesClassicalMedievalEra : return "Tones|Ringtones|Classical|Medieval Era"
            case .tonesRingtonesClassicalMinimalism : return "Tones|Ringtones|Classical|Minimalism"
            case .tonesRingtonesClassicalModernEra : return "Tones|Ringtones|Classical|Modern Era"
            case .tonesRingtonesClassicalOrchestral : return "Tones|Ringtones|Classical|Orchestral"
            case .tonesRingtonesClassicalRenaissance : return "Tones|Ringtones|Classical|Renaissance"
            case .tonesRingtonesClassicalRomanticEra : return "Tones|Ringtones|Classical|Romantic Era"
            case .tonesRingtonesClassicalWeddingMusic : return "Tones|Ringtones|Classical|Wedding Music"
            case .tonesRingtonesComedyNovelty : return "Tones|Ringtones|Comedy|Novelty"
            case .tonesRingtonesComedyStandupComedy : return "Tones|Ringtones|Comedy|Standup Comedy"
            case .tonesRingtonesCountryAlternativeCountry : return "Tones|Ringtones|Country|Alternative Country"
            case .tonesRingtonesCountryAmericana : return "Tones|Ringtones|Country|Americana"
            case .tonesRingtonesCountryBluegrass : return "Tones|Ringtones|Country|Bluegrass"
            case .tonesRingtonesCountryContemporaryBluegrass : return "Tones|Ringtones|Country|Contemporary Bluegrass"
            case .tonesRingtonesCountryContemporaryCountry : return "Tones|Ringtones|Country|Contemporary Country"
            case .tonesRingtonesCountryCountryGospel : return "Tones|Ringtones|Country|Country Gospel"
            case .tonesRingtonesCountryHonkyTonk : return "Tones|Ringtones|Country|Honky Tonk"
            case .tonesRingtonesCountryOutlawCountry : return "Tones|Ringtones|Country|Outlaw Country"
            case .tonesRingtonesCountryThaiCountry : return "Tones|Ringtones|Country|Thai Country"
            case .tonesRingtonesCountryTraditionalBluegrass : return "Tones|Ringtones|Country|Traditional Bluegrass"
            case .tonesRingtonesCountryTraditionalCountry : return "Tones|Ringtones|Country|Traditional Country"
            case .tonesRingtonesCountryUrbanCowboy : return "Tones|Ringtones|Country|Urban Cowboy"
            case .tonesRingtonesDanceBreakbeat : return "Tones|Ringtones|Dance|Breakbeat"
            case .tonesRingtonesDanceExercise : return "Tones|Ringtones|Dance|Exercise"
            case .tonesRingtonesDanceGarage : return "Tones|Ringtones|Dance|Garage"
            case .tonesRingtonesDanceHardcore : return "Tones|Ringtones|Dance|Hardcore"
            case .tonesRingtonesDanceHouse : return "Tones|Ringtones|Dance|House"
            case .tonesRingtonesDanceJungleDrumnbass : return "Tones|Ringtones|Dance|Jungle/Drum'n'bass"
            case .tonesRingtonesDanceTechno : return "Tones|Ringtones|Dance|Techno"
            case .tonesRingtonesDanceTrance : return "Tones|Ringtones|Dance|Trance"
            case .tonesRingtonesDisney : return "Tones|Ringtones|Disney"
            case .tonesRingtonesEasyListening : return "Tones|Ringtones|Easy Listening"
            case .tonesRingtonesEasyListeningLounge : return "Tones|Ringtones|Easy Listening|Lounge"
            case .tonesRingtonesEasyListeningSwing : return "Tones|Ringtones|Easy Listening|Swing"
            case .tonesRingtonesElectronicAmbient : return "Tones|Ringtones|Electronic|Ambient"
            case .tonesRingtonesElectronicDowntempo : return "Tones|Ringtones|Electronic|Downtempo"
            case .tonesRingtonesElectronicElectronica : return "Tones|Ringtones|Electronic|Electronica"
            case .tonesRingtonesElectronicIDMExperimental : return "Tones|Ringtones|Electronic|IDM/Experimental"
            case .tonesRingtonesElectronicIndustrial : return "Tones|Ringtones|Electronic|Industrial"
            case .tonesRingtonesFitnessandWorkout : return "Tones|Ringtones|Fitness & Workout"
            case .tonesRingtonesFolk : return "Tones|Ringtones|Folk"
            case .tonesRingtonesHipHopRapAlternativeRap : return "Tones|Ringtones|Hip-Hop/Rap|Alternative Rap"
            case .tonesRingtonesHipHopRapChineseHipHop : return "Tones|Ringtones|Hip-Hop/Rap|Chinese Hip-Hop"
            case .tonesRingtonesHipHopRapDirtySouth : return "Tones|Ringtones|Hip-Hop/Rap|Dirty South"
            case .tonesRingtonesHipHopRapEastCoastRap : return "Tones|Ringtones|Hip-Hop/Rap|East Coast Rap"
            case .tonesRingtonesHipHopRapGangstaRap : return "Tones|Ringtones|Hip-Hop/Rap|Gangsta Rap"
            case .tonesRingtonesHipHopRapHardcoreRap : return "Tones|Ringtones|Hip-Hop/Rap|Hardcore Rap"
            case .tonesRingtonesHipHopRapHipHop : return "Tones|Ringtones|Hip-Hop/Rap|Hip-Hop"
            case .tonesRingtonesHipHopRapKoreanHipHop : return "Tones|Ringtones|Hip-Hop/Rap|Korean Hip-Hop"
            case .tonesRingtonesHipHopRapLatinRap : return "Tones|Ringtones|Hip-Hop/Rap|Latin Rap"
            case .tonesRingtonesHipHopRapOldSchoolRap : return "Tones|Ringtones|Hip-Hop/Rap|Old School Rap"
            case .tonesRingtonesHipHopRapRap : return "Tones|Ringtones|Hip-Hop/Rap|Rap"
            case .tonesRingtonesHipHopRapUndergroundRap : return "Tones|Ringtones|Hip-Hop/Rap|Underground Rap"
            case .tonesRingtonesHipHopRapWestCoastRap : return "Tones|Ringtones|Hip-Hop/Rap|West Coast Rap"
            case .tonesRingtonesHolidayChanukah : return "Tones|Ringtones|Holiday|Chanukah"
            case .tonesRingtonesHolidayChristmas : return "Tones|Ringtones|Holiday|Christmas"
            case .tonesRingtonesHolidayChristmasChildrens: return "Tones|Ringtones|Holiday|Christmas: Children's"
            case .tonesRingtonesHolidayChristmasClassic: return "Tones|Ringtones|Holiday|Christmas: Classic"
            case .tonesRingtonesHolidayChristmasClassical: return "Tones|Ringtones|Holiday|Christmas: Classical"
            case .tonesRingtonesHolidayChristmasJazz: return "Tones|Ringtones|Holiday|Christmas: Jazz"
            case .tonesRingtonesHolidayChristmasModern: return "Tones|Ringtones|Holiday|Christmas: Modern"
            case .tonesRingtonesHolidayChristmasPop: return "Tones|Ringtones|Holiday|Christmas: Pop"
            case .tonesRingtonesHolidayChristmasRandB: return "Tones|Ringtones|Holiday|Christmas: R&B"
            case .tonesRingtonesHolidayChristmasReligious: return "Tones|Ringtones|Holiday|Christmas: Religious"
            case .tonesRingtonesHolidayChristmasRock: return "Tones|Ringtones|Holiday|Christmas: Rock"
            case .tonesRingtonesHolidayEaster : return "Tones|Ringtones|Holiday|Easter"
            case .tonesRingtonesHolidayHalloween : return "Tones|Ringtones|Holiday|Halloween"
            case .tonesRingtonesHolidayThanksgiving : return "Tones|Ringtones|Holiday|Thanksgiving"
            case .tonesRingtonesIndian : return "Tones|Ringtones|Indian"
            case .tonesRingtonesIndianBollywood : return "Tones|Ringtones|Indian|Bollywood"
            case .tonesRingtonesIndianDevotionalandSpiritual : return "Tones|Ringtones|Indian|Devotional & Spiritual"
            case .tonesRingtonesIndianGhazals : return "Tones|Ringtones|Indian|Ghazals"
            case .tonesRingtonesIndianIndianClassical : return "Tones|Ringtones|Indian|Indian Classical"
            case .tonesRingtonesIndianIndianFolk : return "Tones|Ringtones|Indian|Indian Folk"
            case .tonesRingtonesIndianIndianPop : return "Tones|Ringtones|Indian|Indian Pop"
            case .tonesRingtonesIndianRegionalIndian : return "Tones|Ringtones|Indian|Regional Indian"
            case .tonesRingtonesIndianSufi : return "Tones|Ringtones|Indian|Sufi"
            case .tonesRingtonesIndianRegionalIndianTamil : return "Tones|Ringtones|Indian|Regional Indian|Tamil"
            case .tonesRingtonesIndianRegionalIndianTelugu : return "Tones|Ringtones|Indian|Regional Indian|Telugu"
            case .tonesRingtonesInstrumental : return "Tones|Ringtones|Instrumental"
            case .tonesRingtonesJazzAvantGardeJazz : return "Tones|Ringtones|Jazz|Avant-Garde Jazz"
            case .tonesRingtonesJazzBigBand : return "Tones|Ringtones|Jazz|Big Band"
            case .tonesRingtonesJazzBop : return "Tones|Ringtones|Jazz|Bop"
            case .tonesRingtonesJazzContemporaryJazz : return "Tones|Ringtones|Jazz|Contemporary Jazz"
            case .tonesRingtonesJazzCoolJazz : return "Tones|Ringtones|Jazz|Cool Jazz"
            case .tonesRingtonesJazzCrossoverJazz : return "Tones|Ringtones|Jazz|Crossover Jazz"
            case .tonesRingtonesJazzDixieland : return "Tones|Ringtones|Jazz|Dixieland"
            case .tonesRingtonesJazzFusion : return "Tones|Ringtones|Jazz|Fusion"
            case .tonesRingtonesJazzHardBop : return "Tones|Ringtones|Jazz|Hard Bop"
            case .tonesRingtonesJazzLatinJazz : return "Tones|Ringtones|Jazz|Latin Jazz"
            case .tonesRingtonesJazzMainstreamJazz : return "Tones|Ringtones|Jazz|Mainstream Jazz"
            case .tonesRingtonesJazzRagtime : return "Tones|Ringtones|Jazz|Ragtime"
            case .tonesRingtonesJazzSmoothJazz : return "Tones|Ringtones|Jazz|Smooth Jazz"
            case .tonesRingtonesJazzTradJazz : return "Tones|Ringtones|Jazz|Trad Jazz"
            case .tonesRingtonesPopKPop : return "Tones|Ringtones|Pop|K-Pop"
            case .tonesRingtonesKaraoke : return "Tones|Ringtones|Karaoke"
            case .tonesRingtonesKorean : return "Tones|Ringtones|Korean"
            case .tonesRingtonesKoreanKoreanClassical : return "Tones|Ringtones|Korean|Korean Classical"
            case .tonesRingtonesKoreanKoreanTradInstrumental : return "Tones|Ringtones|Korean|Korean Trad Instrumental"
            case .tonesRingtonesKoreanKoreanTradSong : return "Tones|Ringtones|Korean|Korean Trad Song"
            case .tonesRingtonesKoreanKoreanTradTheater : return "Tones|Ringtones|Korean|Korean Trad Theater"
            case .tonesRingtonesLatinAlternativeandRockinSpanish : return "Tones|Ringtones|Latin|Alternative & Rock in Spanish"
            case .tonesRingtonesLatinBaladasyBoleros : return "Tones|Ringtones|Latin|Baladas y Boleros"
            case .tonesRingtonesLatinContemporaryLatin : return "Tones|Ringtones|Latin|Contemporary Latin"
            case .tonesRingtonesLatinLatinJazz : return "Tones|Ringtones|Latin|Latin Jazz"
            case .tonesRingtonesLatinLatinUrban : return "Tones|Ringtones|Latin|Latin Urban"
            case .tonesRingtonesLatinPopinSpanish : return "Tones|Ringtones|Latin|Pop in Spanish"
            case .tonesRingtonesLatinRaices : return "Tones|Ringtones|Latin|Raices"
            case .tonesRingtonesLatinMusicaMexicana : return "Tones|Ringtones|Latin|Musica Mexicana"
            case .tonesRingtonesLatinSalsayTropical : return "Tones|Ringtones|Latin|Salsa y Tropical"
            case .tonesRingtonesMarchingBands : return "Tones|Ringtones|Marching Bands"
            case .tonesRingtonesNewAgeHealing : return "Tones|Ringtones|New Age|Healing"
            case .tonesRingtonesNewAgeMeditation : return "Tones|Ringtones|New Age|Meditation"
            case .tonesRingtonesNewAgeNature : return "Tones|Ringtones|New Age|Nature"
            case .tonesRingtonesNewAgeRelaxation : return "Tones|Ringtones|New Age|Relaxation"
            case .tonesRingtonesNewAgeTravel : return "Tones|Ringtones|New Age|Travel"
            case .tonesRingtonesOrchestral : return "Tones|Ringtones|Orchestral"
            case .tonesRingtonesPopAdultContemporary : return "Tones|Ringtones|Pop|Adult Contemporary"
            case .tonesRingtonesPopBritpop : return "Tones|Ringtones|Pop|Britpop"
            case .tonesRingtonesPopCPop : return "Tones|Ringtones|Pop|C-Pop"
            case .tonesRingtonesPopCantopopHKPop : return "Tones|Ringtones|Pop|Cantopop/HK-Pop"
            case .tonesRingtonesPopIndoPop : return "Tones|Ringtones|Pop|Indo Pop"
            case .tonesRingtonesPopKoreanFolkPop : return "Tones|Ringtones|Pop|Korean Folk-Pop"
            case .tonesRingtonesPopMalaysianPop : return "Tones|Ringtones|Pop|Malaysian Pop"
            case .tonesRingtonesPopMandopop : return "Tones|Ringtones|Pop|Mandopop"
            case .tonesRingtonesPopManillaSound : return "Tones|Ringtones|Pop|Manilla Sound"
            case .tonesRingtonesPopOldies : return "Tones|Ringtones|Pop|Oldies"
            case .tonesRingtonesPopOriginalPilipinoMusic : return "Tones|Ringtones|Pop|Original Pilipino Music"
            case .tonesRingtonesPopPinoyPop : return "Tones|Ringtones|Pop|Pinoy Pop"
            case .tonesRingtonesPopPopRock : return "Tones|Ringtones|Pop|Pop/Rock"
            case .tonesRingtonesPopSoftRock : return "Tones|Ringtones|Pop|Soft Rock"
            case .tonesRingtonesPopTaiPop : return "Tones|Ringtones|Pop|Tai-Pop"
            case .tonesRingtonesPopTeenPop : return "Tones|Ringtones|Pop|Teen Pop"
            case .tonesRingtonesPopThaiPop : return "Tones|Ringtones|Pop|Thai Pop"
            case .tonesRingtonesRandBSoulContemporaryRandB : return "Tones|Ringtones|R&B/Soul|Contemporary R&B"
            case .tonesRingtonesRandBSoulDisco : return "Tones|Ringtones|R&B/Soul|Disco"
            case .tonesRingtonesRandBSoulDooWop : return "Tones|Ringtones|R&B/Soul|Doo Wop"
            case .tonesRingtonesRandBSoulFunk : return "Tones|Ringtones|R&B/Soul|Funk"
            case .tonesRingtonesRandBSoulMotown : return "Tones|Ringtones|R&B/Soul|Motown"
            case .tonesRingtonesRandBSoulNeoSoul : return "Tones|Ringtones|R&B/Soul|Neo-Soul"
            case .tonesRingtonesRandBSoulSoul : return "Tones|Ringtones|R&B/Soul|Soul"
            case .tonesRingtonesReggaeModernDancehall : return "Tones|Ringtones|Reggae|Modern Dancehall"
            case .tonesRingtonesReggaeDub : return "Tones|Ringtones|Reggae|Dub"
            case .tonesRingtonesReggaeRootsReggae : return "Tones|Ringtones|Reggae|Roots Reggae"
            case .tonesRingtonesReggaeSka : return "Tones|Ringtones|Reggae|Ska"
            case .tonesRingtonesRockAdultAlternative : return "Tones|Ringtones|Rock|Adult Alternative"
            case .tonesRingtonesRockAmericanTradRock : return "Tones|Ringtones|Rock|American Trad Rock"
            case .tonesRingtonesRockArenaRock : return "Tones|Ringtones|Rock|Arena Rock"
            case .tonesRingtonesRockBluesRock : return "Tones|Ringtones|Rock|Blues-Rock"
            case .tonesRingtonesRockBritishInvasion : return "Tones|Ringtones|Rock|British Invasion"
            case .tonesRingtonesRockChineseRock : return "Tones|Ringtones|Rock|Chinese Rock"
            case .tonesRingtonesRockDeathMetalBlackMetal : return "Tones|Ringtones|Rock|Death Metal/Black Metal"
            case .tonesRingtonesRockGlamRock : return "Tones|Ringtones|Rock|Glam Rock"
            case .tonesRingtonesRockHairMetal : return "Tones|Ringtones|Rock|Hair Metal"
            case .tonesRingtonesRockHardRock : return "Tones|Ringtones|Rock|Hard Rock"
            case .tonesRingtonesRockMetal : return "Tones|Ringtones|Rock|Metal"
            case .tonesRingtonesRockJamBands : return "Tones|Ringtones|Rock|Jam Bands"
            case .tonesRingtonesRockKoreanRock : return "Tones|Ringtones|Rock|Korean Rock"
            case .tonesRingtonesRockProgRockArtRock : return "Tones|Ringtones|Rock|Prog-Rock/Art Rock"
            case .tonesRingtonesRockPsychedelic : return "Tones|Ringtones|Rock|Psychedelic"
            case .tonesRingtonesRockRockandRoll : return "Tones|Ringtones|Rock|Rock & Roll"
            case .tonesRingtonesRockRockabilly : return "Tones|Ringtones|Rock|Rockabilly"
            case .tonesRingtonesRockRootsRock : return "Tones|Ringtones|Rock|Roots Rock"
            case .tonesRingtonesRockSingerSongwriter : return "Tones|Ringtones|Rock|Singer/Songwriter"
            case .tonesRingtonesRockSouthernRock : return "Tones|Ringtones|Rock|Southern Rock"
            case .tonesRingtonesRockSurf : return "Tones|Ringtones|Rock|Surf"
            case .tonesRingtonesRockTexMex : return "Tones|Ringtones|Rock|Tex-Mex"
            case .tonesRingtonesSingerSongwriterAlternativeFolk : return "Tones|Ringtones|Singer/Songwriter|Alternative Folk"
            case .tonesRingtonesSingerSongwriterContemporaryFolk : return "Tones|Ringtones|Singer/Songwriter|Contemporary Folk"
            case .tonesRingtonesSingerSongwriterContemporarySingerSongwriter : return "Tones|Ringtones|Singer/Songwriter|Contemporary Singer/Songwriter"
            case .tonesRingtonesSingerSongwriterFolkRock : return "Tones|Ringtones|Singer/Songwriter|Folk-Rock"
            case .tonesRingtonesSingerSongwriterNewAcoustic : return "Tones|Ringtones|Singer/Songwriter|New Acoustic"
            case .tonesRingtonesSingerSongwriterTraditionalFolk : return "Tones|Ringtones|Singer/Songwriter|Traditional Folk"
            case .tonesRingtonesSoundtrackForeignCinema : return "Tones|Ringtones|Soundtrack|Foreign Cinema"
            case .tonesRingtonesSoundtrackMusicals : return "Tones|Ringtones|Soundtrack|Musicals"
            case .tonesRingtonesSoundtrackOriginalScore : return "Tones|Ringtones|Soundtrack|Original Score"
            case .tonesRingtonesSoundtrackSoundEffects : return "Tones|Ringtones|Soundtrack|Sound Effects"
            case .tonesRingtonesSoundtrackSoundtrack : return "Tones|Ringtones|Soundtrack|Soundtrack"
            case .tonesRingtonesSoundtrackTVSoundtrack : return "Tones|Ringtones|Soundtrack|TV Soundtrack"
            case .tonesRingtonesVocalStandards : return "Tones|Ringtones|Vocal|Standards"
            case .tonesRingtonesVocalTraditionalPop : return "Tones|Ringtones|Vocal|Traditional Pop"
            case .tonesRingtonesVocalTrot : return "Tones|Ringtones|Vocal|Trot"
            case .tonesRingtonesJazzVocalJazz : return "Tones|Ringtones|Jazz|Vocal Jazz"
            case .tonesRingtonesVocalVocalPop : return "Tones|Ringtones|Vocal|Vocal Pop"
            case .tonesRingtonesAfrican : return "Tones|Ringtones|African"
            case .tonesRingtonesAfricanAfrikaans : return "Tones|Ringtones|African|Afrikaans"
            case .tonesRingtonesAfricanAfroBeat : return "Tones|Ringtones|African|Afro-Beat"
            case .tonesRingtonesAfricanAfroPop : return "Tones|Ringtones|African|Afro-Pop"
            case .tonesRingtonesTurkishArabesque : return "Tones|Ringtones|Turkish|Arabesque"
            case .tonesRingtonesWorldAsia : return "Tones|Ringtones|World|Asia"
            case .tonesRingtonesWorldAustralia : return "Tones|Ringtones|World|Australia"
            case .tonesRingtonesWorldCajun : return "Tones|Ringtones|World|Cajun"
            case .tonesRingtonesWorldCalypso : return "Tones|Ringtones|World|Calypso"
            case .tonesRingtonesWorldCaribbean : return "Tones|Ringtones|World|Caribbean"
            case .tonesRingtonesWorldCeltic : return "Tones|Ringtones|World|Celtic"
            case .tonesRingtonesWorldCelticFolk : return "Tones|Ringtones|World|Celtic Folk"
            case .tonesRingtonesWorldContemporaryCeltic : return "Tones|Ringtones|World|Contemporary Celtic"
            case .tonesRingtonesWorldDangdut : return "Tones|Ringtones|World|Dangdut"
            case .tonesRingtonesWorldDini : return "Tones|Ringtones|World|Dini"
            case .tonesRingtonesWorldEurope : return "Tones|Ringtones|World|Europe"
            case .tonesRingtonesWorldFado : return "Tones|Ringtones|World|Fado"
            case .tonesRingtonesWorldFarsi : return "Tones|Ringtones|World|Farsi"
            case .tonesRingtonesWorldFlamenco : return "Tones|Ringtones|World|Flamenco"
            case .tonesRingtonesWorldFrance : return "Tones|Ringtones|World|France"
            case .tonesRingtonesTurkishHalk : return "Tones|Ringtones|Turkish|Halk"
            case .tonesRingtonesWorldHawaii : return "Tones|Ringtones|World|Hawaii"
            case .tonesRingtonesWorldIberia : return "Tones|Ringtones|World|Iberia"
            case .tonesRingtonesWorldIndonesianReligious : return "Tones|Ringtones|World|Indonesian Religious"
            case .tonesRingtonesWorldIsraeli : return "Tones|Ringtones|World|Israeli"
            case .tonesRingtonesWorldJapan : return "Tones|Ringtones|World|Japan"
            case .tonesRingtonesWorldKlezmer : return "Tones|Ringtones|World|Klezmer"
            case .tonesRingtonesWorldNorthAmerica : return "Tones|Ringtones|World|North America"
            case .tonesRingtonesWorldPolka : return "Tones|Ringtones|World|Polka"
            case .tonesRingtonesRussian : return "Tones|Ringtones|Russian"
            case .tonesRingtonesRussianRussianChanson : return "Tones|Ringtones|Russian|Russian Chanson"
            case .tonesRingtonesTurkishSanat : return "Tones|Ringtones|Turkish|Sanat"
            case .tonesRingtonesWorldSoca : return "Tones|Ringtones|World|Soca"
            case .tonesRingtonesWorldSouthAfrica : return "Tones|Ringtones|World|South Africa"
            case .tonesRingtonesWorldSouthAmerica : return "Tones|Ringtones|World|South America"
            case .tonesRingtonesWorldTango : return "Tones|Ringtones|World|Tango"
            case .tonesRingtonesWorldTraditionalCeltic : return "Tones|Ringtones|World|Traditional Celtic"
            case .tonesRingtonesTurkish : return "Tones|Ringtones|Turkish"
            case .tonesRingtonesWorldWorldbeat : return "Tones|Ringtones|World|Worldbeat"
            case .tonesRingtonesWorldZydeco : return "Tones|Ringtones|World|Zydeco"
            case .tonesRingtonesClassicalArtSong : return "Tones|Ringtones|Classical|Art Song"
            case .tonesRingtonesClassicalBrassandWoodwinds : return "Tones|Ringtones|Classical|Brass & Woodwinds"
            case .tonesRingtonesClassicalSoloInstrumental : return "Tones|Ringtones|Classical|Solo Instrumental"
            case .tonesRingtonesClassicalContemporaryEra : return "Tones|Ringtones|Classical|Contemporary Era"
            case .tonesRingtonesClassicalOratorio : return "Tones|Ringtones|Classical|Oratorio"
            case .tonesRingtonesClassicalCantata : return "Tones|Ringtones|Classical|Cantata"
            case .tonesRingtonesClassicalElectronic : return "Tones|Ringtones|Classical|Electronic"
            case .tonesRingtonesClassicalSacred : return "Tones|Ringtones|Classical|Sacred"
            case .tonesRingtonesClassicalGuitar : return "Tones|Ringtones|Classical|Guitar"
            case .tonesRingtonesClassicalPiano : return "Tones|Ringtones|Classical|Piano"
            case .tonesRingtonesClassicalViolin : return "Tones|Ringtones|Classical|Violin"
            case .tonesRingtonesClassicalCello : return "Tones|Ringtones|Classical|Cello"
            case .tonesRingtonesClassicalPercussion : return "Tones|Ringtones|Classical|Percussion"
            case .tonesRingtonesElectronicDubstep : return "Tones|Ringtones|Electronic|Dubstep"
            case .tonesRingtonesElectronicBass : return "Tones|Ringtones|Electronic|Bass"
            case .tonesRingtonesHipHopRapUKHipHop : return "Tones|Ringtones|Hip-Hop/Rap|UK Hip Hop"
            case .tonesRingtonesReggaeLoversRock : return "Tones|Ringtones|Reggae|Lovers Rock"
            case .tonesRingtonesAlternativeEMO : return "Tones|Ringtones|Alternative|EMO"
            case .tonesRingtonesAlternativePopPunk : return "Tones|Ringtones|Alternative|Pop Punk"
            case .tonesRingtonesAlternativeIndiePop : return "Tones|Ringtones|Alternative|Indie Pop"
            case .tonesRingtonesNewAgeYoga : return "Tones|Ringtones|New Age|Yoga"
            case .tonesRingtonesPopTribute : return "Tones|Ringtones|Pop|Tribute"
            case .tonesRingtonesPopShows : return "Tones|Ringtones|Pop|Shows"
            case .tonesRingtonesCuban : return "Tones|Ringtones|Cuban"
            case .tonesRingtonesCubanMambo : return "Tones|Ringtones|Cuban|Mambo"
            case .tonesRingtonesCubanChachacha : return "Tones|Ringtones|Cuban|Chachacha"
            case .tonesRingtonesCubanGuajira : return "Tones|Ringtones|Cuban|Guajira"
            case .tonesRingtonesCubanSon : return "Tones|Ringtones|Cuban|Son"
            case .tonesRingtonesCubanBolero : return "Tones|Ringtones|Cuban|Bolero"
            case .tonesRingtonesCubanGuaracha : return "Tones|Ringtones|Cuban|Guaracha"
            case .tonesRingtonesCubanTimba : return "Tones|Ringtones|Cuban|Timba"
            case .tonesRingtonesSoundtrackVideoGame : return "Tones|Ringtones|Soundtrack|Video Game"
            case .tonesRingtonesIndianRegionalIndianPunjabiPunjabiPop : return "Tones|Ringtones|Indian|Regional Indian|Punjabi|Punjabi Pop"
            case .tonesRingtonesIndianRegionalIndianBengaliRabindraSangeet : return "Tones|Ringtones|Indian|Regional Indian|Bengali|Rabindra Sangeet"
            case .tonesRingtonesIndianRegionalIndianMalayalam : return "Tones|Ringtones|Indian|Regional Indian|Malayalam"
            case .tonesRingtonesIndianRegionalIndianKannada : return "Tones|Ringtones|Indian|Regional Indian|Kannada"
            case .tonesRingtonesIndianRegionalIndianMarathi : return "Tones|Ringtones|Indian|Regional Indian|Marathi"
            case .tonesRingtonesIndianRegionalIndianGujarati : return "Tones|Ringtones|Indian|Regional Indian|Gujarati"
            case .tonesRingtonesIndianRegionalIndianAssamese : return "Tones|Ringtones|Indian|Regional Indian|Assamese"
            case .tonesRingtonesIndianRegionalIndianBhojpuri : return "Tones|Ringtones|Indian|Regional Indian|Bhojpuri"
            case .tonesRingtonesIndianRegionalIndianHaryanvi : return "Tones|Ringtones|Indian|Regional Indian|Haryanvi"
            case .tonesRingtonesIndianRegionalIndianOdia : return "Tones|Ringtones|Indian|Regional Indian|Odia"
            case .tonesRingtonesIndianRegionalIndianRajasthani : return "Tones|Ringtones|Indian|Regional Indian|Rajasthani"
            case .tonesRingtonesIndianRegionalIndianUrdu : return "Tones|Ringtones|Indian|Regional Indian|Urdu"
            case .tonesRingtonesIndianRegionalIndianPunjabi : return "Tones|Ringtones|Indian|Regional Indian|Punjabi"
            case .tonesRingtonesIndianRegionalIndianBengali : return "Tones|Ringtones|Indian|Regional Indian|Bengali"
            case .tonesRingtonesIndianIndianClassicalCarnaticClassical : return "Tones|Ringtones|Indian|Indian Classical|Carnatic Classical"
            case .tonesRingtonesIndianIndianClassicalHindustaniClassical : return "Tones|Ringtones|Indian|Indian Classical|Hindustani Classical"
            case .tonesRingtonesAfricanAfroHouse : return "Tones|Ringtones|African|Afro House"
            case .tonesRingtonesAfricanAfroSoul : return "Tones|Ringtones|African|Afro Soul"
            case .tonesRingtonesAfricanAfrobeats : return "Tones|Ringtones|African|Afrobeats"
            case .tonesRingtonesAfricanBenga : return "Tones|Ringtones|African|Benga"
            case .tonesRingtonesAfricanBongoFlava : return "Tones|Ringtones|African|Bongo-Flava"
            case .tonesRingtonesAfricanCoupeDecale : return "Tones|Ringtones|African|Coupe-Decale"
            case .tonesRingtonesAfricanGqom : return "Tones|Ringtones|African|Gqom"
            case .tonesRingtonesAfricanHighlife : return "Tones|Ringtones|African|Highlife"
            case .tonesRingtonesAfricanKuduro : return "Tones|Ringtones|African|Kuduro"
            case .tonesRingtonesAfricanKizomba : return "Tones|Ringtones|African|Kizomba"
            case .tonesRingtonesAfricanKwaito : return "Tones|Ringtones|African|Kwaito"
            case .tonesRingtonesAfricanMbalax : return "Tones|Ringtones|African|Mbalax"
            case .tonesRingtonesAfricanNdombolo : return "Tones|Ringtones|African|Ndombolo"
            case .tonesRingtonesAfricanShangaanElectro : return "Tones|Ringtones|African|Shangaan Electro"
            case .tonesRingtonesAfricanSoukous : return "Tones|Ringtones|African|Soukous"
            case .tonesRingtonesAfricanTaarab : return "Tones|Ringtones|African|Taarab"
            case .tonesRingtonesAfricanZouglou : return "Tones|Ringtones|African|Zouglou"
            case .tonesRingtonesTurkishOzgun : return "Tones|Ringtones|Turkish|Ozgun"
            case .tonesRingtonesTurkishFantezi : return "Tones|Ringtones|Turkish|Fantezi"
            case .tonesRingtonesTurkishReligious : return "Tones|Ringtones|Turkish|Religious"
            case .tonesRingtonesPopTurkishPop : return "Tones|Ringtones|Pop|Turkish Pop"
            case .tonesRingtonesRockTurkishRock : return "Tones|Ringtones|Rock|Turkish Rock"
            case .tonesRingtonesAlternativeTurkishAlternative : return "Tones|Ringtones|Alternative|Turkish Alternative"
            case .tonesRingtonesHipHopRapTurkishHipHopRap : return "Tones|Ringtones|Hip-Hop/Rap|Turkish Hip-Hop/Rap"
            case .tonesRingtonesAfricanMaskandi : return "Tones|Ringtones|African|Maskandi"
            case .tonesRingtonesRussianRussianRomance : return "Tones|Ringtones|Russian|Russian Romance"
            case .tonesRingtonesRussianRussianBard : return "Tones|Ringtones|Russian|Russian Bard"
            case .tonesRingtonesRussianRussianPop : return "Tones|Ringtones|Russian|Russian Pop"
            case .tonesRingtonesRussianRussianRock : return "Tones|Ringtones|Russian|Russian Rock"
            case .tonesRingtonesRussianRussianHipHop : return "Tones|Ringtones|Russian|Russian Hip-Hop"
            case .tonesRingtonesArabicLevant : return "Tones|Ringtones|Arabic|Levant"
            case .tonesRingtonesArabicLevantDabke : return "Tones|Ringtones|Arabic|Levant|Dabke"
            case .tonesRingtonesArabicMaghrebRai : return "Tones|Ringtones|Arabic|Maghreb Rai"
            case .tonesRingtonesArabicKhaleejiKhaleejiJalsat : return "Tones|Ringtones|Arabic|Khaleeji|Khaleeji Jalsat"
            case .tonesRingtonesArabicKhaleejiKhaleejiShailat : return "Tones|Ringtones|Arabic|Khaleeji|Khaleeji Shailat"
            case .tonesRingtonesTarab : return "Tones|Ringtones|Tarab"
            case .tonesRingtonesTarabIraqiTarab : return "Tones|Ringtones|Tarab|Iraqi Tarab"
            case .tonesRingtonesTarabEgyptianTarab : return "Tones|Ringtones|Tarab|Egyptian Tarab"
            case .tonesRingtonesTarabKhaleejiTarab : return "Tones|Ringtones|Tarab|Khaleeji Tarab"
            case .tonesRingtonesPopLevantPop : return "Tones|Ringtones|Pop|Levant Pop"
            case .tonesRingtonesPopIraqiPop : return "Tones|Ringtones|Pop|Iraqi Pop"
            case .tonesRingtonesPopEgyptianPop : return "Tones|Ringtones|Pop|Egyptian Pop"
            case .tonesRingtonesPopMaghrebPop : return "Tones|Ringtones|Pop|Maghreb Pop"
            case .tonesRingtonesPopKhaleejiPop : return "Tones|Ringtones|Pop|Khaleeji Pop"
            case .tonesRingtonesHipHopRapLevantHipHop : return "Tones|Ringtones|Hip-Hop/Rap|Levant Hip-Hop"
            case .tonesRingtonesHipHopRapEgyptianHipHop : return "Tones|Ringtones|Hip-Hop/Rap|Egyptian Hip-Hop"
            case .tonesRingtonesHipHopRapMaghrebHipHop : return "Tones|Ringtones|Hip-Hop/Rap|Maghreb Hip-Hop"
            case .tonesRingtonesHipHopRapKhaleejiHipHop : return "Tones|Ringtones|Hip-Hop/Rap|Khaleeji Hip-Hop"
            case .tonesRingtonesAlternativeIndieLevant : return "Tones|Ringtones|Alternative|Indie Levant"
            case .tonesRingtonesAlternativeIndieEgyptian : return "Tones|Ringtones|Alternative|Indie Egyptian"
            case .tonesRingtonesAlternativeIndieMaghreb : return "Tones|Ringtones|Alternative|Indie Maghreb"
            case .tonesRingtonesElectronicLevantElectronic : return "Tones|Ringtones|Electronic|Levant Electronic"
            case .tonesRingtonesElectronicElectroChaabi : return "Tones|Ringtones|Electronic|Electro-Cha'abi"
            case .tonesRingtonesElectronicMaghrebElectronic : return "Tones|Ringtones|Electronic|Maghreb Electronic"
            case .tonesRingtonesFolkIraqiFolk : return "Tones|Ringtones|Folk|Iraqi Folk"
            case .tonesRingtonesFolkKhaleejiFolk : return "Tones|Ringtones|Folk|Khaleeji Folk"
            case .tonesRingtonesDanceMaghrebDance : return "Tones|Ringtones|Dance|Maghreb Dance"
            case .booksNonfiction : return "Books|Nonfiction"
            case .booksRomance : return "Books|Romance"
            case .booksTravelandAdventure : return "Books|Travel & Adventure"
            case .booksArtsandEntertainment : return "Books|Arts & Entertainment"
            case .booksBiographiesandMemoirs : return "Books|Biographies & Memoirs"
            case .booksBusinessandPersonalFinance : return "Books|Business & Personal Finance"
            case .booksChildrenandTeens : return "Books|Children & Teens"
            case .booksHumor : return "Books|Humor"
            case .booksHistory : return "Books|History"
            case .booksReligionandSpirituality : return "Books|Religion & Spirituality"
            case .booksScienceandNature : return "Books|Science & Nature"
            case .booksSciFiandFantasy : return "Books|Sci-Fi & Fantasy"
            case .booksLifestyleandHome : return "Books|Lifestyle & Home"
            case .booksSelfDevelopment : return "Books|Self-Development"
            case .booksComicsandGraphicNovels : return "Books|Comics & Graphic Novels"
            case .booksComputersandInternet : return "Books|Computers & Internet"
            case .booksCookbooksFoodandWine: return "Books|Cookbooks, Food & Wine"
            case .booksProfessionalandTechnical : return "Books|Professional & Technical"
            case .booksParenting : return "Books|Parenting"
            case .booksFictionandLiterature : return "Books|Fiction & Literature"
            case .booksMysteriesandThrillers : return "Books|Mysteries & Thrillers"
            case .booksReference : return "Books|Reference"
            case .booksPoliticsandCurrentEvents : return "Books|Politics & Current Events"
            case .booksSportsandOutdoors : return "Books|Sports & Outdoors"
            case .booksLifestyleandHomeAntiquesandCollectibles : return "Books|Lifestyle & Home|Antiques & Collectibles"
            case .booksArtsandEntertainmentArtandArchitecture : return "Books|Arts & Entertainment|Art & Architecture"
            case .booksReligionandSpiritualityBibles : return "Books|Religion & Spirituality|Bibles"
            case .booksSelfDevelopmentSpirituality : return "Books|Self-Development|Spirituality"
            case .booksBusinessandPersonalFinanceIndustriesandProfessions : return "Books|Business & Personal Finance|Industries & Professions"
            case .booksBusinessandPersonalFinanceMarketingandSales : return "Books|Business & Personal Finance|Marketing & Sales"
            case .booksBusinessandPersonalFinanceSmallBusinessandEntrepreneurship : return "Books|Business & Personal Finance|Small Business & Entrepreneurship"
            case .booksBusinessandPersonalFinancePersonalFinance : return "Books|Business & Personal Finance|Personal Finance"
            case .booksBusinessandPersonalFinanceReference : return "Books|Business & Personal Finance|Reference"
            case .booksBusinessandPersonalFinanceCareers : return "Books|Business & Personal Finance|Careers"
            case .booksBusinessandPersonalFinanceEconomics : return "Books|Business & Personal Finance|Economics"
            case .booksBusinessandPersonalFinanceInvesting : return "Books|Business & Personal Finance|Investing"
            case .booksBusinessandPersonalFinanceFinance : return "Books|Business & Personal Finance|Finance"
            case .booksBusinessandPersonalFinanceManagementandLeadership : return "Books|Business & Personal Finance|Management & Leadership"
            case .booksComicsandGraphicNovelsGraphicNovels : return "Books|Comics & Graphic Novels|Graphic Novels"
            case .booksComicsandGraphicNovelsManga : return "Books|Comics & Graphic Novels|Manga"
            case .booksComputersandInternetComputers : return "Books|Computers & Internet|Computers"
            case .booksComputersandInternetDatabases : return "Books|Computers & Internet|Databases"
            case .booksComputersandInternetDigitalMedia : return "Books|Computers & Internet|Digital Media"
            case .booksComputersandInternetInternet : return "Books|Computers & Internet|Internet"
            case .booksComputersandInternetNetwork : return "Books|Computers & Internet|Network"
            case .booksComputersandInternetOperatingSystems : return "Books|Computers & Internet|Operating Systems"
            case .booksComputersandInternetProgramming : return "Books|Computers & Internet|Programming"
            case .booksComputersandInternetSoftware : return "Books|Computers & Internet|Software"
            case .booksComputersandInternetSystemAdministration : return "Books|Computers & Internet|System Administration"
            case .booksCookbooksFoodandWineBeverages: return "Books|Cookbooks, Food & Wine|Beverages"
            case .booksCookbooksFoodandWineCoursesandDishes: return "Books|Cookbooks, Food & Wine|Courses & Dishes"
            case .booksCookbooksFoodandWineSpecialDiet: return "Books|Cookbooks, Food & Wine|Special Diet"
            case .booksCookbooksFoodandWineSpecialOccasions: return "Books|Cookbooks, Food & Wine|Special Occasions"
            case .booksCookbooksFoodandWineMethods: return "Books|Cookbooks, Food & Wine|Methods"
            case .booksCookbooksFoodandWineReference: return "Books|Cookbooks, Food & Wine|Reference"
            case .booksCookbooksFoodandWineRegionalandEthnic: return "Books|Cookbooks, Food & Wine|Regional & Ethnic"
            case .booksCookbooksFoodandWineSpecificIngredients: return "Books|Cookbooks, Food & Wine|Specific Ingredients"
            case .booksLifestyleandHomeCraftsandHobbies : return "Books|Lifestyle & Home|Crafts & Hobbies"
            case .booksProfessionalandTechnicalDesign : return "Books|Professional & Technical|Design"
            case .booksArtsandEntertainmentTheater : return "Books|Arts & Entertainment|Theater"
            case .booksProfessionalandTechnicalEducation : return "Books|Professional & Technical|Education"
            case .booksNonfictionFamilyandRelationships : return "Books|Nonfiction|Family & Relationships"
            case .booksFictionandLiteratureActionandAdventure : return "Books|Fiction & Literature|Action & Adventure"
            case .booksFictionandLiteratureAfricanAmerican : return "Books|Fiction & Literature|African American"
            case .booksFictionandLiteratureReligious : return "Books|Fiction & Literature|Religious"
            case .booksFictionandLiteratureClassics : return "Books|Fiction & Literature|Classics"
            case .booksFictionandLiteratureErotica : return "Books|Fiction & Literature|Erotica"
            case .booksSciFiandFantasyFantasy : return "Books|Sci-Fi & Fantasy|Fantasy"
            case .booksFictionandLiteratureGay : return "Books|Fiction & Literature|Gay"
            case .booksFictionandLiteratureGhost : return "Books|Fiction & Literature|Ghost"
            case .booksFictionandLiteratureHistorical : return "Books|Fiction & Literature|Historical"
            case .booksFictionandLiteratureHorror : return "Books|Fiction & Literature|Horror"
            case .booksFictionandLiteratureLiterary : return "Books|Fiction & Literature|Literary"
            case .booksMysteriesandThrillersHardBoiled : return "Books|Mysteries & Thrillers|Hard-Boiled"
            case .booksMysteriesandThrillersHistorical : return "Books|Mysteries & Thrillers|Historical"
            case .booksMysteriesandThrillersPoliceProcedural : return "Books|Mysteries & Thrillers|Police Procedural"
            case .booksMysteriesandThrillersShortStories : return "Books|Mysteries & Thrillers|Short Stories"
            case .booksMysteriesandThrillersBritishDetectives : return "Books|Mysteries & Thrillers|British Detectives"
            case .booksMysteriesandThrillersWomenSleuths : return "Books|Mysteries & Thrillers|Women Sleuths"
            case .booksRomanceEroticRomance : return "Books|Romance|Erotic Romance"
            case .booksRomanceContemporary : return "Books|Romance|Contemporary"
            case .booksRomanceParanormal : return "Books|Romance|Paranormal"
            case .booksRomanceHistorical : return "Books|Romance|Historical"
            case .booksRomanceShortStories : return "Books|Romance|Short Stories"
            case .booksRomanceSuspense : return "Books|Romance|Suspense"
            case .booksRomanceWestern : return "Books|Romance|Western"
            case .booksSciFiandFantasyScienceFiction : return "Books|Sci-Fi & Fantasy|Science Fiction"
            case .booksSciFiandFantasyScienceFictionandLiterature : return "Books|Sci-Fi & Fantasy|Science Fiction & Literature"
            case .booksFictionandLiteratureShortStories : return "Books|Fiction & Literature|Short Stories"
            case .booksReferenceForeignLanguages : return "Books|Reference|Foreign Languages"
            case .booksArtsandEntertainmentGames : return "Books|Arts & Entertainment|Games"
            case .booksLifestyleandHomeGardening : return "Books|Lifestyle & Home|Gardening"
            case .booksSelfDevelopmentHealthandFitness : return "Books|Self-Development|Health & Fitness"
            case .booksHistoryAfrica : return "Books|History|Africa"
            case .booksHistoryAmericas : return "Books|History|Americas"
            case .booksHistoryAncient : return "Books|History|Ancient"
            case .booksHistoryAsia : return "Books|History|Asia"
            case .booksHistoryAustraliaandOceania : return "Books|History|Australia & Oceania"
            case .booksHistoryEurope : return "Books|History|Europe"
            case .booksHistoryLatinAmerica : return "Books|History|Latin America"
            case .booksHistoryMiddleEast : return "Books|History|Middle East"
            case .booksHistoryMilitary : return "Books|History|Military"
            case .booksHistoryUnitedStates : return "Books|History|United States"
            case .booksHistoryWorld : return "Books|History|World"
            case .booksChildrenandTeensChildrensFiction : return "Books|Children & Teens|Children's Fiction"
            case .booksChildrenandTeensChildrensNonfiction : return "Books|Children & Teens|Children's Nonfiction"
            case .booksProfessionalandTechnicalLaw : return "Books|Professional & Technical|Law"
            case .booksFictionandLiteratureLiteraryCriticism : return "Books|Fiction & Literature|Literary Criticism"
            case .booksScienceandNatureMathematics : return "Books|Science & Nature|Mathematics"
            case .booksProfessionalandTechnicalMedical : return "Books|Professional & Technical|Medical"
            case .booksArtsandEntertainmentMusic : return "Books|Arts & Entertainment|Music"
            case .booksScienceandNatureNature : return "Books|Science & Nature|Nature"
            case .booksArtsandEntertainmentPerformingArts : return "Books|Arts & Entertainment|Performing Arts"
            case .booksLifestyleandHomePets : return "Books|Lifestyle & Home|Pets"
            case .booksNonfictionPhilosophy : return "Books|Nonfiction|Philosophy"
            case .booksArtsandEntertainmentPhotography : return "Books|Arts & Entertainment|Photography"
            case .booksFictionandLiteraturePoetry : return "Books|Fiction & Literature|Poetry"
            case .booksSelfDevelopmentPsychology : return "Books|Self-Development|Psychology"
            case .booksReferenceAlmanacsandYearbooks : return "Books|Reference|Almanacs & Yearbooks"
            case .booksReferenceAtlasesandMaps : return "Books|Reference|Atlases & Maps"
            case .booksReferenceCatalogsandDirectories : return "Books|Reference|Catalogs & Directories"
            case .booksReferenceConsumerGuides : return "Books|Reference|Consumer Guides"
            case .booksReferenceDictionariesandThesauruses : return "Books|Reference|Dictionaries & Thesauruses"
            case .booksReferenceEncyclopedias : return "Books|Reference|Encyclopedias"
            case .booksReferenceEtiquette : return "Books|Reference|Etiquette"
            case .booksReferenceQuotations : return "Books|Reference|Quotations"
            case .booksReferenceWordsandLanguage : return "Books|Reference|Words & Language"
            case .booksReferenceWriting : return "Books|Reference|Writing"
            case .booksReligionandSpiritualityBibleStudies : return "Books|Religion & Spirituality|Bible Studies"
            case .booksReligionandSpiritualityBuddhism : return "Books|Religion & Spirituality|Buddhism"
            case .booksReligionandSpiritualityChristianity : return "Books|Religion & Spirituality|Christianity"
            case .booksReligionandSpiritualityHinduism : return "Books|Religion & Spirituality|Hinduism"
            case .booksReligionandSpiritualityIslam : return "Books|Religion & Spirituality|Islam"
            case .booksReligionandSpiritualityJudaism : return "Books|Religion & Spirituality|Judaism"
            case .booksScienceandNatureAstronomy : return "Books|Science & Nature|Astronomy"
            case .booksScienceandNatureChemistry : return "Books|Science & Nature|Chemistry"
            case .booksScienceandNatureEarthSciences : return "Books|Science & Nature|Earth Sciences"
            case .booksScienceandNatureEssays : return "Books|Science & Nature|Essays"
            case .booksScienceandNatureHistory : return "Books|Science & Nature|History"
            case .booksScienceandNatureLifeSciences : return "Books|Science & Nature|Life Sciences"
            case .booksScienceandNaturePhysics : return "Books|Science & Nature|Physics"
            case .booksScienceandNatureReference : return "Books|Science & Nature|Reference"
            case .booksSelfDevelopmentSelfImprovement : return "Books|Self-Development|Self-Improvement"
            case .booksNonfictionSocialScience : return "Books|Nonfiction|Social Science"
            case .booksSportsandOutdoorsBaseball : return "Books|Sports & Outdoors|Baseball"
            case .booksSportsandOutdoorsBasketball : return "Books|Sports & Outdoors|Basketball"
            case .booksSportsandOutdoorsCoaching : return "Books|Sports & Outdoors|Coaching"
            case .booksSportsandOutdoorsExtremeSports : return "Books|Sports & Outdoors|Extreme Sports"
            case .booksSportsandOutdoorsFootball : return "Books|Sports & Outdoors|Football"
            case .booksSportsandOutdoorsGolf : return "Books|Sports & Outdoors|Golf"
            case .booksSportsandOutdoorsHockey : return "Books|Sports & Outdoors|Hockey"
            case .booksSportsandOutdoorsMountaineering : return "Books|Sports & Outdoors|Mountaineering"
            case .booksSportsandOutdoorsOutdoors : return "Books|Sports & Outdoors|Outdoors"
            case .booksSportsandOutdoorsRacketSports : return "Books|Sports & Outdoors|Racket Sports"
            case .booksSportsandOutdoorsReference : return "Books|Sports & Outdoors|Reference"
            case .booksSportsandOutdoorsSoccer : return "Books|Sports & Outdoors|Soccer"
            case .booksSportsandOutdoorsTraining : return "Books|Sports & Outdoors|Training"
            case .booksSportsandOutdoorsWaterSports : return "Books|Sports & Outdoors|Water Sports"
            case .booksSportsandOutdoorsWinterSports : return "Books|Sports & Outdoors|Winter Sports"
            case .booksReferenceStudyAids : return "Books|Reference|Study Aids"
            case .booksProfessionalandTechnicalEngineering : return "Books|Professional & Technical|Engineering"
            case .booksNonfictionTransportation : return "Books|Nonfiction|Transportation"
            case .booksTravelandAdventureAfrica : return "Books|Travel & Adventure|Africa"
            case .booksTravelandAdventureAsia : return "Books|Travel & Adventure|Asia"
            case .booksTravelandAdventureSpecialtyTravel : return "Books|Travel & Adventure|Specialty Travel"
            case .booksTravelandAdventureCanada : return "Books|Travel & Adventure|Canada"
            case .booksTravelandAdventureCaribbean : return "Books|Travel & Adventure|Caribbean"
            case .booksTravelandAdventureLatinAmerica : return "Books|Travel & Adventure|Latin America"
            case .booksTravelandAdventureEssaysandMemoirs : return "Books|Travel & Adventure|Essays & Memoirs"
            case .booksTravelandAdventureEurope : return "Books|Travel & Adventure|Europe"
            case .booksTravelandAdventureMiddleEast : return "Books|Travel & Adventure|Middle East"
            case .booksTravelandAdventureUnitedStates : return "Books|Travel & Adventure|United States"
            case .booksNonfictionTrueCrime : return "Books|Nonfiction|True Crime"
            case .booksSciFiandFantasyFantasyContemporary : return "Books|Sci-Fi & Fantasy|Fantasy|Contemporary"
            case .booksSciFiandFantasyFantasyEpic : return "Books|Sci-Fi & Fantasy|Fantasy|Epic"
            case .booksSciFiandFantasyFantasyHistorical : return "Books|Sci-Fi & Fantasy|Fantasy|Historical"
            case .booksSciFiandFantasyFantasyParanormal : return "Books|Sci-Fi & Fantasy|Fantasy|Paranormal"
            case .booksSciFiandFantasyFantasyShortStories : return "Books|Sci-Fi & Fantasy|Fantasy|Short Stories"
            case .booksSciFiandFantasyScienceFictionandLiteratureAdventure : return "Books|Sci-Fi & Fantasy|Science Fiction & Literature|Adventure"
            case .booksSciFiandFantasyScienceFictionandLiteratureHighTech : return "Books|Sci-Fi & Fantasy|Science Fiction & Literature|High Tech"
            case .booksSciFiandFantasyScienceFictionandLiteratureShortStories : return "Books|Sci-Fi & Fantasy|Science Fiction & Literature|Short Stories"
            case .booksProfessionalandTechnicalEducationLanguageArtsandDisciplines : return "Books|Professional & Technical|Education|Language Arts & Disciplines"
            case .booksCommunicationsandMedia : return "Books|Communications & Media"
            case .booksCommunicationsandMediaBroadcasting : return "Books|Communications & Media|Broadcasting"
            case .booksCommunicationsandMediaDigitalMedia : return "Books|Communications & Media|Digital Media"
            case .booksCommunicationsandMediaJournalism : return "Books|Communications & Media|Journalism"
            case .booksCommunicationsandMediaPhotojournalism : return "Books|Communications & Media|Photojournalism"
            case .booksCommunicationsandMediaPrint : return "Books|Communications & Media|Print"
            case .booksCommunicationsandMediaSpeech : return "Books|Communications & Media|Speech"
            case .booksCommunicationsandMediaWriting : return "Books|Communications & Media|Writing"
            case .booksArtsandEntertainmentArtandArchitectureUrbanPlanning : return "Books|Arts & Entertainment|Art & Architecture|Urban Planning"
            case .booksArtsandEntertainmentDance : return "Books|Arts & Entertainment|Dance"
            case .booksArtsandEntertainmentFashion : return "Books|Arts & Entertainment|Fashion"
            case .booksArtsandEntertainmentFilm : return "Books|Arts & Entertainment|Film"
            case .booksArtsandEntertainmentInteriorDesign : return "Books|Arts & Entertainment|Interior Design"
            case .booksArtsandEntertainmentMediaArts : return "Books|Arts & Entertainment|Media Arts"
            case .booksArtsandEntertainmentRadio : return "Books|Arts & Entertainment|Radio"
            case .booksArtsandEntertainmentTV : return "Books|Arts & Entertainment|TV"
            case .booksArtsandEntertainmentVisualArts : return "Books|Arts & Entertainment|Visual Arts"
            case .booksBiographiesandMemoirsArtsandEntertainment : return "Books|Biographies & Memoirs|Arts & Entertainment"
            case .booksBiographiesandMemoirsBusiness : return "Books|Biographies & Memoirs|Business"
            case .booksBiographiesandMemoirsCulinary : return "Books|Biographies & Memoirs|Culinary"
            case .booksBiographiesandMemoirsGayandLesbian : return "Books|Biographies & Memoirs|Gay & Lesbian"
            case .booksBiographiesandMemoirsHistorical : return "Books|Biographies & Memoirs|Historical"
            case .booksBiographiesandMemoirsLiterary : return "Books|Biographies & Memoirs|Literary"
            case .booksBiographiesandMemoirsMediaandJournalism : return "Books|Biographies & Memoirs|Media & Journalism"
            case .booksBiographiesandMemoirsMilitary : return "Books|Biographies & Memoirs|Military"
            case .booksBiographiesandMemoirsPolitics : return "Books|Biographies & Memoirs|Politics"
            case .booksBiographiesandMemoirsReligious : return "Books|Biographies & Memoirs|Religious"
            case .booksBiographiesandMemoirsScienceandTechnology : return "Books|Biographies & Memoirs|Science & Technology"
            case .booksBiographiesandMemoirsSports : return "Books|Biographies & Memoirs|Sports"
            case .booksBiographiesandMemoirsWomen : return "Books|Biographies & Memoirs|Women"
            case .booksRomanceNewAdult : return "Books|Romance|New Adult"
            case .booksRomanceRomanticComedy : return "Books|Romance|Romantic Comedy"
            case .booksRomanceGayandLesbian : return "Books|Romance|Gay & Lesbian"
            case .booksFictionandLiteratureEssays : return "Books|Fiction & Literature|Essays"
            case .booksFictionandLiteratureAnthologies : return "Books|Fiction & Literature|Anthologies"
            case .booksFictionandLiteratureComparativeLiterature : return "Books|Fiction & Literature|Comparative Literature"
            case .booksFictionandLiteratureDrama : return "Books|Fiction & Literature|Drama"
            case .booksFictionandLiteratureFairyTalesMythsandFables: return "Books|Fiction & Literature|Fairy Tales, Myths & Fables"
            case .booksFictionandLiteratureFamily : return "Books|Fiction & Literature|Family"
            case .booksComicsandGraphicNovelsMangaSchoolDrama : return "Books|Comics & Graphic Novels|Manga|School Drama"
            case .booksComicsandGraphicNovelsMangaHumanDrama : return "Books|Comics & Graphic Novels|Manga|Human Drama"
            case .booksComicsandGraphicNovelsMangaFamilyDrama : return "Books|Comics & Graphic Novels|Manga|Family Drama"
            case .booksSportsandOutdoorsBoxing : return "Books|Sports & Outdoors|Boxing"
            case .booksSportsandOutdoorsCricket : return "Books|Sports & Outdoors|Cricket"
            case .booksSportsandOutdoorsCycling : return "Books|Sports & Outdoors|Cycling"
            case .booksSportsandOutdoorsEquestrian : return "Books|Sports & Outdoors|Equestrian"
            case .booksSportsandOutdoorsMartialArtsandSelfDefense : return "Books|Sports & Outdoors|Martial Arts & Self Defense"
            case .booksSportsandOutdoorsMotorSports : return "Books|Sports & Outdoors|Motor Sports"
            case .booksSportsandOutdoorsRugby : return "Books|Sports & Outdoors|Rugby"
            case .booksSportsandOutdoorsRunning : return "Books|Sports & Outdoors|Running"
            case .booksSelfDevelopmentDietandNutrition : return "Books|Self-Development|Diet & Nutrition"
            case .booksScienceandNatureAgriculture : return "Books|Science & Nature|Agriculture"
            case .booksScienceandNatureAtmosphere : return "Books|Science & Nature|Atmosphere"
            case .booksScienceandNatureBiology : return "Books|Science & Nature|Biology"
            case .booksScienceandNatureEcology : return "Books|Science & Nature|Ecology"
            case .booksScienceandNatureEnvironment : return "Books|Science & Nature|Environment"
            case .booksScienceandNatureGeography : return "Books|Science & Nature|Geography"
            case .booksScienceandNatureGeology : return "Books|Science & Nature|Geology"
            case .booksNonfictionSocialScienceAnthropology : return "Books|Nonfiction|Social Science|Anthropology"
            case .booksNonfictionSocialScienceArchaeology : return "Books|Nonfiction|Social Science|Archaeology"
            case .booksNonfictionSocialScienceCivics : return "Books|Nonfiction|Social Science|Civics"
            case .booksNonfictionSocialScienceGovernment : return "Books|Nonfiction|Social Science|Government"
            case .booksNonfictionSocialScienceSocialStudies : return "Books|Nonfiction|Social Science|Social Studies"
            case .booksNonfictionSocialScienceSocialWelfare : return "Books|Nonfiction|Social Science|Social Welfare"
            case .booksNonfictionSocialScienceSociety : return "Books|Nonfiction|Social Science|Society"
            case .booksNonfictionPhilosophyAesthetics : return "Books|Nonfiction|Philosophy|Aesthetics"
            case .booksNonfictionPhilosophyEpistemology : return "Books|Nonfiction|Philosophy|Epistemology"
            case .booksNonfictionPhilosophyEthics : return "Books|Nonfiction|Philosophy|Ethics"
            case .booksNonfictionPhilosophyLanguage : return "Books|Nonfiction|Philosophy|Language"
            case .booksNonfictionPhilosophyLogic : return "Books|Nonfiction|Philosophy|Logic"
            case .booksNonfictionPhilosophyMetaphysics : return "Books|Nonfiction|Philosophy|Metaphysics"
            case .booksNonfictionPhilosophyPolitical : return "Books|Nonfiction|Philosophy|Political"
            case .booksNonfictionPhilosophyReligion : return "Books|Nonfiction|Philosophy|Religion"
            case .booksReferenceManuals : return "Books|Reference|Manuals"
            case .booksKids : return "Books|Kids"
            case .booksKidsAnimals : return "Books|Kids|Animals"
            case .booksKidsBasicConcepts : return "Books|Kids|Basic Concepts"
            case .booksKidsBasicConceptsAlphabet : return "Books|Kids|Basic Concepts|Alphabet"
            case .booksKidsBasicConceptsBody : return "Books|Kids|Basic Concepts|Body"
            case .booksKidsBasicConceptsColors : return "Books|Kids|Basic Concepts|Colors"
            case .booksKidsBasicConceptsCountingandNumbers : return "Books|Kids|Basic Concepts|Counting & Numbers"
            case .booksKidsBasicConceptsDateandTime : return "Books|Kids|Basic Concepts|Date & Time"
            case .booksKidsBasicConceptsGeneral : return "Books|Kids|Basic Concepts|General"
            case .booksKidsBasicConceptsMoney : return "Books|Kids|Basic Concepts|Money"
            case .booksKidsBasicConceptsOpposites : return "Books|Kids|Basic Concepts|Opposites"
            case .booksKidsBasicConceptsSeasons : return "Books|Kids|Basic Concepts|Seasons"
            case .booksKidsBasicConceptsSensesandSensation : return "Books|Kids|Basic Concepts|Senses & Sensation"
            case .booksKidsBasicConceptsSizeandShape : return "Books|Kids|Basic Concepts|Size & Shape"
            case .booksKidsBasicConceptsSounds : return "Books|Kids|Basic Concepts|Sounds"
            case .booksKidsBasicConceptsWords : return "Books|Kids|Basic Concepts|Words"
            case .booksKidsBiography : return "Books|Kids|Biography"
            case .booksKidsCareersandOccupations : return "Books|Kids|Careers & Occupations"
            case .booksKidsComputersandTechnology : return "Books|Kids|Computers & Technology"
            case .booksKidsCookingandFood : return "Books|Kids|Cooking & Food"
            case .booksKidsArtsandEntertainment : return "Books|Kids|Arts & Entertainment"
            case .booksKidsArtsandEntertainmentArt : return "Books|Kids|Arts & Entertainment|Art"
            case .booksKidsArtsandEntertainmentCrafts : return "Books|Kids|Arts & Entertainment|Crafts"
            case .booksKidsArtsandEntertainmentMusic : return "Books|Kids|Arts & Entertainment|Music"
            case .booksKidsArtsandEntertainmentPerformingArts : return "Books|Kids|Arts & Entertainment|Performing Arts"
            case .booksKidsFamily : return "Books|Kids|Family"
            case .booksKidsFiction : return "Books|Kids|Fiction"
            case .booksKidsFictionActionandAdventure : return "Books|Kids|Fiction|Action & Adventure"
            case .booksKidsFictionAnimals : return "Books|Kids|Fiction|Animals"
            case .booksKidsFictionClassics : return "Books|Kids|Fiction|Classics"
            case .booksKidsFictionComicsandGraphicNovels : return "Books|Kids|Fiction|Comics & Graphic Novels"
            case .booksKidsFictionCulturePlacesandPeople: return "Books|Kids|Fiction|Culture, Places & People"
            case .booksKidsFictionFamilyandRelationships : return "Books|Kids|Fiction|Family & Relationships"
            case .booksKidsFictionFantasy : return "Books|Kids|Fiction|Fantasy"
            case .booksKidsFictionFairyTalesMythsandFables: return "Books|Kids|Fiction|Fairy Tales, Myths & Fables"
            case .booksKidsFictionFavoriteCharacters : return "Books|Kids|Fiction|Favorite Characters"
            case .booksKidsFictionHistorical : return "Books|Kids|Fiction|Historical"
            case .booksKidsFictionHolidaysandCelebrations : return "Books|Kids|Fiction|Holidays & Celebrations"
            case .booksKidsFictionMonstersandGhosts : return "Books|Kids|Fiction|Monsters & Ghosts"
            case .booksKidsFictionMysteries : return "Books|Kids|Fiction|Mysteries"
            case .booksKidsFictionNature : return "Books|Kids|Fiction|Nature"
            case .booksKidsFictionReligion : return "Books|Kids|Fiction|Religion"
            case .booksKidsFictionSciFi : return "Books|Kids|Fiction|Sci-Fi"
            case .booksKidsFictionSocialIssues : return "Books|Kids|Fiction|Social Issues"
            case .booksKidsFictionSportsandRecreation : return "Books|Kids|Fiction|Sports & Recreation"
            case .booksKidsFictionTransportation : return "Books|Kids|Fiction|Transportation"
            case .booksKidsGamesandActivities : return "Books|Kids|Games & Activities"
            case .booksKidsGeneralNonfiction : return "Books|Kids|General Nonfiction"
            case .booksKidsHealth : return "Books|Kids|Health"
            case .booksKidsHistory : return "Books|Kids|History"
            case .booksKidsHolidaysandCelebrations : return "Books|Kids|Holidays & Celebrations"
            case .booksKidsHolidaysandCelebrationsBirthdays : return "Books|Kids|Holidays & Celebrations|Birthdays"
            case .booksKidsHolidaysandCelebrationsChristmasandAdvent : return "Books|Kids|Holidays & Celebrations|Christmas & Advent"
            case .booksKidsHolidaysandCelebrationsEasterandLent : return "Books|Kids|Holidays & Celebrations|Easter & Lent"
            case .booksKidsHolidaysandCelebrationsGeneral : return "Books|Kids|Holidays & Celebrations|General"
            case .booksKidsHolidaysandCelebrationsHalloween : return "Books|Kids|Holidays & Celebrations|Halloween"
            case .booksKidsHolidaysandCelebrationsHanukkah : return "Books|Kids|Holidays & Celebrations|Hanukkah"
            case .booksKidsHolidaysandCelebrationsOther : return "Books|Kids|Holidays & Celebrations|Other"
            case .booksKidsHolidaysandCelebrationsPassover : return "Books|Kids|Holidays & Celebrations|Passover"
            case .booksKidsHolidaysandCelebrationsPatrioticHolidays : return "Books|Kids|Holidays & Celebrations|Patriotic Holidays"
            case .booksKidsHolidaysandCelebrationsRamadan : return "Books|Kids|Holidays & Celebrations|Ramadan"
            case .booksKidsHolidaysandCelebrationsThanksgiving : return "Books|Kids|Holidays & Celebrations|Thanksgiving"
            case .booksKidsHolidaysandCelebrationsValentinesDay : return "Books|Kids|Holidays & Celebrations|Valentine's Day"
            case .booksKidsHumor : return "Books|Kids|Humor"
            case .booksKidsHumorJokesandRiddles : return "Books|Kids|Humor|Jokes & Riddles"
            case .booksKidsPoetry : return "Books|Kids|Poetry"
            case .booksKidsLearningtoRead : return "Books|Kids|Learning to Read"
            case .booksKidsLearningtoReadChapterBooks : return "Books|Kids|Learning to Read|Chapter Books"
            case .booksKidsLearningtoReadEarlyReaders : return "Books|Kids|Learning to Read|Early Readers"
            case .booksKidsLearningtoReadIntermediateReaders : return "Books|Kids|Learning to Read|Intermediate Readers"
            case .booksKidsNurseryRhymes : return "Books|Kids|Nursery Rhymes"
            case .booksKidsGovernment : return "Books|Kids|Government"
            case .booksKidsReference : return "Books|Kids|Reference"
            case .booksKidsReligion : return "Books|Kids|Religion"
            case .booksKidsScienceandNature : return "Books|Kids|Science & Nature"
            case .booksKidsSocialIssues : return "Books|Kids|Social Issues"
            case .booksKidsSocialStudies : return "Books|Kids|Social Studies"
            case .booksKidsSportsandRecreation : return "Books|Kids|Sports & Recreation"
            case .booksKidsTransportation : return "Books|Kids|Transportation"
            case .booksYoungAdult : return "Books|Young Adult"
            case .booksYoungAdultAnimals : return "Books|Young Adult|Animals"
            case .booksYoungAdultBiography : return "Books|Young Adult|Biography"
            case .booksYoungAdultCareersandOccupations : return "Books|Young Adult|Careers & Occupations"
            case .booksYoungAdultComputersandTechnology : return "Books|Young Adult|Computers & Technology"
            case .booksYoungAdultCookingandFood : return "Books|Young Adult|Cooking & Food"
            case .booksYoungAdultArtsandEntertainment : return "Books|Young Adult|Arts & Entertainment"
            case .booksYoungAdultArtsandEntertainmentArt : return "Books|Young Adult|Arts & Entertainment|Art"
            case .booksYoungAdultArtsandEntertainmentCrafts : return "Books|Young Adult|Arts & Entertainment|Crafts"
            case .booksYoungAdultArtsandEntertainmentMusic : return "Books|Young Adult|Arts & Entertainment|Music"
            case .booksYoungAdultArtsandEntertainmentPerformingArts : return "Books|Young Adult|Arts & Entertainment|Performing Arts"
            case .booksYoungAdultFamily : return "Books|Young Adult|Family"
            case .booksYoungAdultFiction : return "Books|Young Adult|Fiction"
            case .booksYoungAdultFictionActionandAdventure : return "Books|Young Adult|Fiction|Action & Adventure"
            case .booksYoungAdultFictionAnimals : return "Books|Young Adult|Fiction|Animals"
            case .booksYoungAdultFictionClassics : return "Books|Young Adult|Fiction|Classics"
            case .booksYoungAdultFictionComicsandGraphicNovels : return "Books|Young Adult|Fiction|Comics & Graphic Novels"
            case .booksYoungAdultFictionCulturePlacesandPeople: return "Books|Young Adult|Fiction|Culture, Places & People"
            case .booksYoungAdultFictionDystopian : return "Books|Young Adult|Fiction|Dystopian"
            case .booksYoungAdultFictionFamilyandRelationships : return "Books|Young Adult|Fiction|Family & Relationships"
            case .booksYoungAdultFictionFantasy : return "Books|Young Adult|Fiction|Fantasy"
            case .booksYoungAdultFictionFairyTalesMythsandFables: return "Books|Young Adult|Fiction|Fairy Tales, Myths & Fables"
            case .booksYoungAdultFictionFavoriteCharacters : return "Books|Young Adult|Fiction|Favorite Characters"
            case .booksYoungAdultFictionHistorical : return "Books|Young Adult|Fiction|Historical"
            case .booksYoungAdultFictionHolidaysandCelebrations : return "Books|Young Adult|Fiction|Holidays & Celebrations"
            case .booksYoungAdultFictionHorrorMonstersandGhosts: return "Books|Young Adult|Fiction|Horror, Monsters & Ghosts"
            case .booksYoungAdultFictionCrimeandMystery : return "Books|Young Adult|Fiction|Crime & Mystery"
            case .booksYoungAdultFictionNature : return "Books|Young Adult|Fiction|Nature"
            case .booksYoungAdultFictionReligion : return "Books|Young Adult|Fiction|Religion"
            case .booksYoungAdultFictionRomance : return "Books|Young Adult|Fiction|Romance"
            case .booksYoungAdultFictionSciFi : return "Books|Young Adult|Fiction|Sci-Fi"
            case .booksYoungAdultFictionComingofAge : return "Books|Young Adult|Fiction|Coming of Age"
            case .booksYoungAdultFictionSportsandRecreation : return "Books|Young Adult|Fiction|Sports & Recreation"
            case .booksYoungAdultFictionTransportation : return "Books|Young Adult|Fiction|Transportation"
            case .booksYoungAdultGamesandActivities : return "Books|Young Adult|Games & Activities"
            case .booksYoungAdultGeneralNonfiction : return "Books|Young Adult|General Nonfiction"
            case .booksYoungAdultHealth : return "Books|Young Adult|Health"
            case .booksYoungAdultHistory : return "Books|Young Adult|History"
            case .booksYoungAdultHolidaysandCelebrations : return "Books|Young Adult|Holidays & Celebrations"
            case .booksYoungAdultHolidaysandCelebrationsBirthdays : return "Books|Young Adult|Holidays & Celebrations|Birthdays"
            case .booksYoungAdultHolidaysandCelebrationsChristmasandAdvent : return "Books|Young Adult|Holidays & Celebrations|Christmas & Advent"
            case .booksYoungAdultHolidaysandCelebrationsEasterandLent : return "Books|Young Adult|Holidays & Celebrations|Easter & Lent"
            case .booksYoungAdultHolidaysandCelebrationsGeneral : return "Books|Young Adult|Holidays & Celebrations|General"
            case .booksYoungAdultHolidaysandCelebrationsHalloween : return "Books|Young Adult|Holidays & Celebrations|Halloween"
            case .booksYoungAdultHolidaysandCelebrationsHanukkah : return "Books|Young Adult|Holidays & Celebrations|Hanukkah"
            case .booksYoungAdultHolidaysandCelebrationsOther : return "Books|Young Adult|Holidays & Celebrations|Other"
            case .booksYoungAdultHolidaysandCelebrationsPassover : return "Books|Young Adult|Holidays & Celebrations|Passover"
            case .booksYoungAdultHolidaysandCelebrationsPatrioticHolidays : return "Books|Young Adult|Holidays & Celebrations|Patriotic Holidays"
            case .booksYoungAdultHolidaysandCelebrationsRamadan : return "Books|Young Adult|Holidays & Celebrations|Ramadan"
            case .booksYoungAdultHolidaysandCelebrationsThanksgiving : return "Books|Young Adult|Holidays & Celebrations|Thanksgiving"
            case .booksYoungAdultHolidaysandCelebrationsValentinesDay : return "Books|Young Adult|Holidays & Celebrations|Valentine's Day"
            case .booksYoungAdultHumor : return "Books|Young Adult|Humor"
            case .booksYoungAdultHumorJokesandRiddles : return "Books|Young Adult|Humor|Jokes & Riddles"
            case .booksYoungAdultPoetry : return "Books|Young Adult|Poetry"
            case .booksYoungAdultPoliticsandGovernment : return "Books|Young Adult|Politics & Government"
            case .booksYoungAdultReference : return "Books|Young Adult|Reference"
            case .booksYoungAdultReligion : return "Books|Young Adult|Religion"
            case .booksYoungAdultScienceandNature : return "Books|Young Adult|Science & Nature"
            case .booksYoungAdultComingofAge : return "Books|Young Adult|Coming of Age"
            case .booksYoungAdultSocialStudies : return "Books|Young Adult|Social Studies"
            case .booksYoungAdultSportsandRecreation : return "Books|Young Adult|Sports & Recreation"
            case .booksYoungAdultTransportation : return "Books|Young Adult|Transportation"
            case .booksMilitaryandWarfare : return "Books|Military & Warfare"
            case .booksRomanceInspirational : return "Books|Romance|Inspirational"
            case .booksRomanceHoliday : return "Books|Romance|Holiday"
            case .booksRomanceWholesome : return "Books|Romance|Wholesome"
            case .booksRomanceMilitary : return "Books|Romance|Military"
            case .booksArtsandEntertainmentArtHistory : return "Books|Arts & Entertainment|Art History"
            case .booksArtsandEntertainmentDesign : return "Books|Arts & Entertainment|Design"
            case .booksBusinessandPersonalFinanceAccounting : return "Books|Business & Personal Finance|Accounting"
            case .booksBusinessandPersonalFinanceHospitality : return "Books|Business & Personal Finance|Hospitality"
            case .booksBusinessandPersonalFinanceRealEstate : return "Books|Business & Personal Finance|Real Estate"
            case .booksHumorJokesandRiddles : return "Books|Humor|Jokes & Riddles"
            case .booksReligionandSpiritualityComparativeReligion : return "Books|Religion & Spirituality|Comparative Religion"
            case .booksCookbooksFoodandWineCulinaryArts: return "Books|Cookbooks, Food & Wine|Culinary Arts"
            case .booksMysteriesandThrillersCozy : return "Books|Mysteries & Thrillers|Cozy"
            case .booksPoliticsandCurrentEventsCurrentEvents : return "Books|Politics & Current Events|Current Events"
            case .booksPoliticsandCurrentEventsForeignPolicyandInternationalRelations : return "Books|Politics & Current Events|Foreign Policy & International Relations"
            case .booksPoliticsandCurrentEventsLocalGovernment : return "Books|Politics & Current Events|Local Government"
            case .booksPoliticsandCurrentEventsNationalGovernment : return "Books|Politics & Current Events|National Government"
            case .booksPoliticsandCurrentEventsPoliticalScience : return "Books|Politics & Current Events|Political Science"
            case .booksPoliticsandCurrentEventsPublicAdministration : return "Books|Politics & Current Events|Administration"
            case .booksPoliticsandCurrentEventsWorldAffairs : return "Books|Politics & Current Events|World Affairs"
            case .booksNonfictionFamilyandRelationshipsFamilyandChildcare : return "Books|Nonfiction|Family & Relationships|Family & Childcare"
            case .booksNonfictionFamilyandRelationshipsLoveandRomance : return "Books|Nonfiction|Family & Relationships|Love & Romance"
            case .booksSciFiandFantasyFantasyUrban : return "Books|Sci-Fi & Fantasy|Fantasy|Urban"
            case .booksReferenceForeignLanguagesArabic : return "Books|Reference|Foreign Languages|Arabic"
            case .booksReferenceForeignLanguagesBilingualEditions : return "Books|Reference|Foreign Languages|Bilingual Editions"
            case .booksReferenceForeignLanguagesAfricanLanguages : return "Books|Reference|Foreign Languages|African Languages"
            case .booksReferenceForeignLanguagesAncientLanguages : return "Books|Reference|Foreign Languages|Ancient Languages"
            case .booksReferenceForeignLanguagesChinese : return "Books|Reference|Foreign Languages|Chinese"
            case .booksReferenceForeignLanguagesEnglish : return "Books|Reference|Foreign Languages|English"
            case .booksReferenceForeignLanguagesFrench : return "Books|Reference|Foreign Languages|French"
            case .booksReferenceForeignLanguagesGerman : return "Books|Reference|Foreign Languages|German"
            case .booksReferenceForeignLanguagesHebrew : return "Books|Reference|Foreign Languages|Hebrew"
            case .booksReferenceForeignLanguagesHindi : return "Books|Reference|Foreign Languages|Hindi"
            case .booksReferenceForeignLanguagesItalian : return "Books|Reference|Foreign Languages|Italian"
            case .booksReferenceForeignLanguagesJapanese : return "Books|Reference|Foreign Languages|Japanese"
            case .booksReferenceForeignLanguagesKorean : return "Books|Reference|Foreign Languages|Korean"
            case .booksReferenceForeignLanguagesLinguistics : return "Books|Reference|Foreign Languages|Linguistics"
            case .booksReferenceForeignLanguagesOtherLanguages : return "Books|Reference|Foreign Languages|Other Languages"
            case .booksReferenceForeignLanguagesPortuguese : return "Books|Reference|Foreign Languages|Portuguese"
            case .booksReferenceForeignLanguagesRussian : return "Books|Reference|Foreign Languages|Russian"
            case .booksReferenceForeignLanguagesSpanish : return "Books|Reference|Foreign Languages|Spanish"
            case .booksReferenceForeignLanguagesSpeechPathology : return "Books|Reference|Foreign Languages|Speech Pathology"
            case .booksScienceandNatureMathematicsAdvancedMathematics : return "Books|Science & Nature|Mathematics|Advanced Mathematics"
            case .booksScienceandNatureMathematicsAlgebra : return "Books|Science & Nature|Mathematics|Algebra"
            case .booksScienceandNatureMathematicsArithmetic : return "Books|Science & Nature|Mathematics|Arithmetic"
            case .booksScienceandNatureMathematicsCalculus : return "Books|Science & Nature|Mathematics|Calculus"
            case .booksScienceandNatureMathematicsGeometry : return "Books|Science & Nature|Mathematics|Geometry"
            case .booksScienceandNatureMathematicsStatistics : return "Books|Science & Nature|Mathematics|Statistics"
            case .booksProfessionalandTechnicalMedicalVeterinary : return "Books|Professional & Technical|Medical|Veterinary"
            case .booksProfessionalandTechnicalMedicalNeuroscience : return "Books|Professional & Technical|Medical|Neuroscience"
            case .booksProfessionalandTechnicalMedicalImmunology : return "Books|Professional & Technical|Medical|Immunology"
            case .booksProfessionalandTechnicalMedicalNursing : return "Books|Professional & Technical|Medical|Nursing"
            case .booksProfessionalandTechnicalMedicalPharmacologyandToxicology : return "Books|Professional & Technical|Medical|Pharmacology & Toxicology"
            case .booksProfessionalandTechnicalMedicalAnatomyandPhysiology : return "Books|Professional & Technical|Medical|Anatomy & Physiology"
            case .booksProfessionalandTechnicalMedicalDentistry : return "Books|Professional & Technical|Medical|Dentistry"
            case .booksProfessionalandTechnicalMedicalEmergencyMedicine : return "Books|Professional & Technical|Medical|Emergency Medicine"
            case .booksProfessionalandTechnicalMedicalGenetics : return "Books|Professional & Technical|Medical|Genetics"
            case .booksProfessionalandTechnicalMedicalPsychiatry : return "Books|Professional & Technical|Medical|Psychiatry"
            case .booksProfessionalandTechnicalMedicalRadiology : return "Books|Professional & Technical|Medical|Radiology"
            case .booksProfessionalandTechnicalMedicalAlternativeMedicine : return "Books|Professional & Technical|Medical|Alternative Medicine"
            case .booksNonfictionPhilosophyPoliticalPhilosophy : return "Books|Nonfiction|Philosophy|Political Philosophy"
            case .booksNonfictionPhilosophyPhilosophyofLanguage : return "Books|Nonfiction|Philosophy|Philosophy of Language"
            case .booksNonfictionPhilosophyPhilosophyofReligion : return "Books|Nonfiction|Philosophy|Philosophy of Religion"
            case .booksNonfictionSocialScienceSociology : return "Books|Nonfiction|Social Science|Sociology"
            case .booksProfessionalandTechnicalEngineeringAeronautics : return "Books|Professional & Technical|Engineering|Aeronautics"
            case .booksProfessionalandTechnicalEngineeringChemicalandPetroleumEngineering : return "Books|Professional & Technical|Engineering|Chemical & Petroleum Engineering"
            case .booksProfessionalandTechnicalEngineeringCivilEngineering : return "Books|Professional & Technical|Engineering|Civil Engineering"
            case .booksProfessionalandTechnicalEngineeringComputerScience : return "Books|Professional & Technical|Engineering|Computer Science"
            case .booksProfessionalandTechnicalEngineeringElectricalEngineering : return "Books|Professional & Technical|Engineering|Electrical Engineering"
            case .booksProfessionalandTechnicalEngineeringEnvironmentalEngineering : return "Books|Professional & Technical|Engineering|Environmental Engineering"
            case .booksProfessionalandTechnicalEngineeringMechanicalEngineering : return "Books|Professional & Technical|Engineering|Mechanical Engineering"
            case .booksProfessionalandTechnicalEngineeringPowerResources : return "Books|Professional & Technical|Engineering|Power Resources"
            case .booksComicsandGraphicNovelsMangaBoys : return "Books|Comics & Graphic Novels|Manga|Boys"
            case .booksComicsandGraphicNovelsMangaMen : return "Books|Comics & Graphic Novels|Manga|Men"
            case .booksComicsandGraphicNovelsMangaGirls : return "Books|Comics & Graphic Novels|Manga|Girls"
            case .booksComicsandGraphicNovelsMangaWomen : return "Books|Comics & Graphic Novels|Manga|Women"
            case .booksComicsandGraphicNovelsMangaOther : return "Books|Comics & Graphic Novels|Manga|Other"
            case .booksComicsandGraphicNovelsMangaYaoi : return "Books|Comics & Graphic Novels|Manga|Yaoi"
            case .booksComicsandGraphicNovelsMangaComicEssays : return "Books|Comics & Graphic Novels|Manga|Comic Essays"
            case .macAppStoreBusiness : return "Mac App Store|Business"
            case .macAppStoreDeveloperTools : return "Mac App Store|Developer Tools"
            case .macAppStoreEducation : return "Mac App Store|Education"
            case .macAppStoreEntertainment : return "Mac App Store|Entertainment"
            case .macAppStoreFinance : return "Mac App Store|Finance"
            case .macAppStoreGames : return "Mac App Store|Games"
            case .macAppStoreHealthandFitness : return "Mac App Store|Health & Fitness"
            case .macAppStoreLifestyle : return "Mac App Store|Lifestyle"
            case .macAppStoreMedical : return "Mac App Store|Medical"
            case .macAppStoreMusic : return "Mac App Store|Music"
            case .macAppStoreNews : return "Mac App Store|News"
            case .macAppStorePhotography : return "Mac App Store|Photography"
            case .macAppStoreProductivity : return "Mac App Store|Productivity"
            case .macAppStoreReference : return "Mac App Store|Reference"
            case .macAppStoreSocialNetworking : return "Mac App Store|Social Networking"
            case .macAppStoreSports : return "Mac App Store|Sports"
            case .macAppStoreTravel : return "Mac App Store|Travel"
            case .macAppStoreUtilities : return "Mac App Store|Utilities"
            case .macAppStoreVideo : return "Mac App Store|Video"
            case .macAppStoreWeather : return "Mac App Store|Weather"
            case .macAppStoreGraphicsandDesign : return "Mac App Store|Graphics & Design"
            case .macAppStoreGamesAction : return "Mac App Store|Games|Action"
            case .macAppStoreGamesAdventure : return "Mac App Store|Games|Adventure"
            case .macAppStoreGamesCasual : return "Mac App Store|Games|Casual"
            case .macAppStoreGamesBoard : return "Mac App Store|Games|Board"
            case .macAppStoreGamesCard : return "Mac App Store|Games|Card"
            case .macAppStoreGamesCasino : return "Mac App Store|Games|Casino"
            case .macAppStoreGamesDice : return "Mac App Store|Games|Dice"
            case .macAppStoreGamesEducational : return "Mac App Store|Games|Educational"
            case .macAppStoreGamesFamily : return "Mac App Store|Games|Family"
            case .macAppStoreGamesKids : return "Mac App Store|Games|Kids"
            case .macAppStoreGamesMusic : return "Mac App Store|Games|Music"
            case .macAppStoreGamesPuzzle : return "Mac App Store|Games|Puzzle"
            case .macAppStoreGamesRacing : return "Mac App Store|Games|Racing"
            case .macAppStoreGamesRolePlaying : return "Mac App Store|Games|Role Playing"
            case .macAppStoreGamesSimulation : return "Mac App Store|Games|Simulation"
            case .macAppStoreGamesSports : return "Mac App Store|Games|Sports"
            case .macAppStoreGamesStrategy : return "Mac App Store|Games|Strategy"
            case .macAppStoreGamesTrivia : return "Mac App Store|Games|Trivia"
            case .macAppStoreGamesWord : return "Mac App Store|Games|Word"
            case .appStoreMagazinesandNewspapersNewsandPolitics : return "App Store|Magazines & Newspapers|News & Politics"
            case .appStoreMagazinesandNewspapersFashionandStyle : return "App Store|Magazines & Newspapers|Fashion & Style"
            case .appStoreMagazinesandNewspapersHomeandGarden : return "App Store|Magazines & Newspapers|Home & Garden"
            case .appStoreMagazinesandNewspapersOutdoorsandNature : return "App Store|Magazines & Newspapers|Outdoors & Nature"
            case .appStoreMagazinesandNewspapersSportsandLeisure : return "App Store|Magazines & Newspapers|Sports & Leisure"
            case .appStoreMagazinesandNewspapersAutomotive : return "App Store|Magazines & Newspapers|Automotive"
            case .appStoreMagazinesandNewspapersArtsandPhotography : return "App Store|Magazines & Newspapers|Arts & Photography"
            case .appStoreMagazinesandNewspapersBridesandWeddings : return "App Store|Magazines & Newspapers|Brides & Weddings"
            case .appStoreMagazinesandNewspapersBusinessandInvesting : return "App Store|Magazines & Newspapers|Business & Investing"
            case .appStoreMagazinesandNewspapersChildrensMagazines : return "App Store|Magazines & Newspapers|Children's Magazines"
            case .appStoreMagazinesandNewspapersComputersandInternet : return "App Store|Magazines & Newspapers|Computers & Internet"
            case .appStoreMagazinesandNewspapersCookingFoodandDrink: return "App Store|Magazines & Newspapers|Cooking, Food & Drink"
            case .appStoreMagazinesandNewspapersCraftsandHobbies : return "App Store|Magazines & Newspapers|Crafts & Hobbies"
            case .appStoreMagazinesandNewspapersElectronicsandAudio : return "App Store|Magazines & Newspapers|Electronics & Audio"
            case .appStoreMagazinesandNewspapersEntertainment : return "App Store|Magazines & Newspapers|Entertainment"
            case .appStoreMagazinesandNewspapersHealthMindandBody: return "App Store|Magazines & Newspapers|Health, Mind & Body"
            case .appStoreMagazinesandNewspapersHistory : return "App Store|Magazines & Newspapers|History"
            case .appStoreMagazinesandNewspapersLiteraryMagazinesandJournals : return "App Store|Magazines & Newspapers|Literary Magazines & Journals"
            case .appStoreMagazinesandNewspapersMensInterest : return "App Store|Magazines & Newspapers|Men's Interest"
            case .appStoreMagazinesandNewspapersMoviesandMusic : return "App Store|Magazines & Newspapers|Movies & Music"
            case .appStoreMagazinesandNewspapersParentingandFamily : return "App Store|Magazines & Newspapers|Parenting & Family"
            case .appStoreMagazinesandNewspapersPets : return "App Store|Magazines & Newspapers|Pets"
            case .appStoreMagazinesandNewspapersProfessionalandTrade : return "App Store|Magazines & Newspapers|Professional & Trade"
            case .appStoreMagazinesandNewspapersRegionalNews : return "App Store|Magazines & Newspapers|Regional News"
            case .appStoreMagazinesandNewspapersScience : return "App Store|Magazines & Newspapers|Science"
            case .appStoreMagazinesandNewspapersTeens : return "App Store|Magazines & Newspapers|Teens"
            case .appStoreMagazinesandNewspapersTravelandRegional : return "App Store|Magazines & Newspapers|Travel & Regional"
            case .appStoreMagazinesandNewspapersWomensInterest : return "App Store|Magazines & Newspapers|Women's Interest"
            case .textbooksArtsandEntertainment : return "Textbooks|Arts & Entertainment"
            case .textbooksArtsandEntertainmentArtandArchitecture : return "Textbooks|Arts & Entertainment|Art & Architecture"
            case .textbooksArtsandEntertainmentArtandArchitectureUrbanPlanning : return "Textbooks|Arts & Entertainment|Art & Architecture|Urban Planning"
            case .textbooksArtsandEntertainmentArtHistory : return "Textbooks|Arts & Entertainment|Art History"
            case .textbooksArtsandEntertainmentDance : return "Textbooks|Arts & Entertainment|Dance"
            case .textbooksArtsandEntertainmentDesign : return "Textbooks|Arts & Entertainment|Design"
            case .textbooksArtsandEntertainmentFashion : return "Textbooks|Arts & Entertainment|Fashion"
            case .textbooksArtsandEntertainmentFilm : return "Textbooks|Arts & Entertainment|Film"
            case .textbooksArtsandEntertainmentGames : return "Textbooks|Arts & Entertainment|Games"
            case .textbooksArtsandEntertainmentInteriorDesign : return "Textbooks|Arts & Entertainment|Interior Design"
            case .textbooksArtsandEntertainmentMediaArts : return "Textbooks|Arts & Entertainment|Media Arts"
            case .textbooksArtsandEntertainmentMusic : return "Textbooks|Arts & Entertainment|Music"
            case .textbooksArtsandEntertainmentPerformingArts : return "Textbooks|Arts & Entertainment|Performing Arts"
            case .textbooksArtsandEntertainmentPhotography : return "Textbooks|Arts & Entertainment|Photography"
            case .textbooksArtsandEntertainmentTheater : return "Textbooks|Arts & Entertainment|Theater"
            case .textbooksArtsandEntertainmentTV : return "Textbooks|Arts & Entertainment|TV"
            case .textbooksArtsandEntertainmentVisualArts : return "Textbooks|Arts & Entertainment|Visual Arts"
            case .textbooksBiographiesandMemoirs : return "Textbooks|Biographies & Memoirs"
            case .textbooksBusinessandPersonalFinance : return "Textbooks|Business & Personal Finance"
            case .textbooksBusinessandPersonalFinanceAccounting : return "Textbooks|Business & Personal Finance|Accounting"
            case .textbooksBusinessandPersonalFinanceCareers : return "Textbooks|Business & Personal Finance|Careers"
            case .textbooksBusinessandPersonalFinanceEconomics : return "Textbooks|Business & Personal Finance|Economics"
            case .textbooksBusinessandPersonalFinanceFinance : return "Textbooks|Business & Personal Finance|Finance"
            case .textbooksBusinessandPersonalFinanceHospitality : return "Textbooks|Business & Personal Finance|Hospitality"
            case .textbooksBusinessandPersonalFinanceIndustriesandProfessions : return "Textbooks|Business & Personal Finance|Industries & Professions"
            case .textbooksBusinessandPersonalFinanceInvesting : return "Textbooks|Business & Personal Finance|Investing"
            case .textbooksBusinessandPersonalFinanceManagementandLeadership : return "Textbooks|Business & Personal Finance|Management & Leadership"
            case .textbooksBusinessandPersonalFinanceMarketingandSales : return "Textbooks|Business & Personal Finance|Marketing & Sales"
            case .textbooksBusinessandPersonalFinancePersonalFinance : return "Textbooks|Business & Personal Finance|Personal Finance"
            case .textbooksBusinessandPersonalFinanceRealEstate : return "Textbooks|Business & Personal Finance|Real Estate"
            case .textbooksBusinessandPersonalFinanceReference : return "Textbooks|Business & Personal Finance|Reference"
            case .textbooksBusinessandPersonalFinanceSmallBusinessandEntrepreneurship : return "Textbooks|Business & Personal Finance|Small Business & Entrepreneurship"
            case .textbooksChildrenandTeens : return "Textbooks|Children & Teens"
            case .textbooksChildrenandTeensFiction : return "Textbooks|Children & Teens|Fiction"
            case .textbooksChildrenandTeensNonfiction : return "Textbooks|Children & Teens|Nonfiction"
            case .textbooksComicsandGraphicNovels : return "Textbooks|Comics & Graphic Novels"
            case .textbooksComicsandGraphicNovelsGraphicNovels : return "Textbooks|Comics & Graphic Novels|Graphic Novels"
            case .textbooksComicsandGraphicNovelsManga : return "Textbooks|Comics & Graphic Novels|Manga"
            case .textbooksCommunicationsandMedia : return "Textbooks|Communications & Media"
            case .textbooksCommunicationsandMediaBroadcasting : return "Textbooks|Communications & Media|Broadcasting"
            case .textbooksCommunicationsandMediaDigitalMedia : return "Textbooks|Communications & Media|Digital Media"
            case .textbooksCommunicationsandMediaJournalism : return "Textbooks|Communications & Media|Journalism"
            case .textbooksCommunicationsandMediaPhotojournalism : return "Textbooks|Communications & Media|Photojournalism"
            case .textbooksCommunicationsandMediaPrint : return "Textbooks|Communications & Media|Print"
            case .textbooksCommunicationsandMediaSpeech : return "Textbooks|Communications & Media|Speech"
            case .textbooksCommunicationsandMediaWriting : return "Textbooks|Communications & Media|Writing"
            case .textbooksComputersandInternet : return "Textbooks|Computers & Internet"
            case .textbooksComputersandInternetComputers : return "Textbooks|Computers & Internet|Computers"
            case .textbooksComputersandInternetDatabases : return "Textbooks|Computers & Internet|Databases"
            case .textbooksComputersandInternetDigitalMedia : return "Textbooks|Computers & Internet|Digital Media"
            case .textbooksComputersandInternetInternet : return "Textbooks|Computers & Internet|Internet"
            case .textbooksComputersandInternetNetwork : return "Textbooks|Computers & Internet|Network"
            case .textbooksComputersandInternetOperatingSystems : return "Textbooks|Computers & Internet|Operating Systems"
            case .textbooksComputersandInternetProgramming : return "Textbooks|Computers & Internet|Programming"
            case .textbooksComputersandInternetSoftware : return "Textbooks|Computers & Internet|Software"
            case .textbooksComputersandInternetSystemAdministration : return "Textbooks|Computers & Internet|System Administration"
            case .textbooksCookbooksFoodandWine: return "Textbooks|Cookbooks, Food & Wine"
            case .textbooksCookbooksFoodandWineBeverages: return "Textbooks|Cookbooks, Food & Wine|Beverages"
            case .textbooksCookbooksFoodandWineCoursesandDishes: return "Textbooks|Cookbooks, Food & Wine|Courses & Dishes"
            case .textbooksCookbooksFoodandWineCulinaryArts: return "Textbooks|Cookbooks, Food & Wine|Culinary Arts"
            case .textbooksCookbooksFoodandWineMethods: return "Textbooks|Cookbooks, Food & Wine|Methods"
            case .textbooksCookbooksFoodandWineReference: return "Textbooks|Cookbooks, Food & Wine|Reference"
            case .textbooksCookbooksFoodandWineRegionalandEthnic: return "Textbooks|Cookbooks, Food & Wine|Regional & Ethnic"
            case .textbooksCookbooksFoodandWineSpecialDiet: return "Textbooks|Cookbooks, Food & Wine|Special Diet"
            case .textbooksCookbooksFoodandWineSpecialOccasions: return "Textbooks|Cookbooks, Food & Wine|Special Occasions"
            case .textbooksCookbooksFoodandWineSpecificIngredients: return "Textbooks|Cookbooks, Food & Wine|Specific Ingredients"
            case .textbooksEngineering : return "Textbooks|Engineering"
            case .textbooksEngineeringAeronautics : return "Textbooks|Engineering|Aeronautics"
            case .textbooksEngineeringChemicalandPetroleumEngineering : return "Textbooks|Engineering|Chemical & Petroleum Engineering"
            case .textbooksEngineeringCivilEngineering : return "Textbooks|Engineering|Civil Engineering"
            case .textbooksEngineeringComputerScience : return "Textbooks|Engineering|Computer Science"
            case .textbooksEngineeringElectricalEngineering : return "Textbooks|Engineering|Electrical Engineering"
            case .textbooksEngineeringEnvironmentalEngineering : return "Textbooks|Engineering|Environmental Engineering"
            case .textbooksEngineeringMechanicalEngineering : return "Textbooks|Engineering|Mechanical Engineering"
            case .textbooksEngineeringPowerResources : return "Textbooks|Engineering|Power Resources"
            case .textbooksFictionandLiterature : return "Textbooks|Fiction & Literature"
            case .textbooksFictionandLiteratureLatino : return "Textbooks|Fiction & Literature|Latino"
            case .textbooksFictionandLiteratureActionandAdventure : return "Textbooks|Fiction & Literature|Action & Adventure"
            case .textbooksFictionandLiteratureAfricanAmerican : return "Textbooks|Fiction & Literature|African American"
            case .textbooksFictionandLiteratureAnthologies : return "Textbooks|Fiction & Literature|Anthologies"
            case .textbooksFictionandLiteratureClassics : return "Textbooks|Fiction & Literature|Classics"
            case .textbooksFictionandLiteratureComparativeLiterature : return "Textbooks|Fiction & Literature|Comparative Literature"
            case .textbooksFictionandLiteratureErotica : return "Textbooks|Fiction & Literature|Erotica"
            case .textbooksFictionandLiteratureGay : return "Textbooks|Fiction & Literature|Gay"
            case .textbooksFictionandLiteratureGhost : return "Textbooks|Fiction & Literature|Ghost"
            case .textbooksFictionandLiteratureHistorical : return "Textbooks|Fiction & Literature|Historical"
            case .textbooksFictionandLiteratureHorror : return "Textbooks|Fiction & Literature|Horror"
            case .textbooksFictionandLiteratureLiterary : return "Textbooks|Fiction & Literature|Literary"
            case .textbooksFictionandLiteratureLiteraryCriticism : return "Textbooks|Fiction & Literature|Literary Criticism"
            case .textbooksFictionandLiteraturePoetry : return "Textbooks|Fiction & Literature|Poetry"
            case .textbooksFictionandLiteratureReligious : return "Textbooks|Fiction & Literature|Religious"
            case .textbooksFictionandLiteratureShortStories : return "Textbooks|Fiction & Literature|Short Stories"
            case .textbooksHealthMindandBody: return "Textbooks|Health, Mind & Body"
            case .textbooksHealthMindandBodyFitness: return "Textbooks|Health, Mind & Body|Fitness"
            case .textbooksHealthMindandBodySelfImprovement: return "Textbooks|Health, Mind & Body|Self-Improvement"
            case .textbooksHistory : return "Textbooks|History"
            case .textbooksHistoryAfrica : return "Textbooks|History|Africa"
            case .textbooksHistoryAmericas : return "Textbooks|History|Americas"
            case .textbooksHistoryAmericasCanada : return "Textbooks|History|Americas|Canada"
            case .textbooksHistoryAmericasLatinAmerica : return "Textbooks|History|Americas|Latin America"
            case .textbooksHistoryAmericasUnitedStates : return "Textbooks|History|Americas|United States"
            case .textbooksHistoryAncient : return "Textbooks|History|Ancient"
            case .textbooksHistoryAsia : return "Textbooks|History|Asia"
            case .textbooksHistoryAustraliaandOceania : return "Textbooks|History|Australia & Oceania"
            case .textbooksHistoryEurope : return "Textbooks|History|Europe"
            case .textbooksHistoryMiddleEast : return "Textbooks|History|Middle East"
            case .textbooksHistoryMilitary : return "Textbooks|History|Military"
            case .textbooksHistoryWorld : return "Textbooks|History|World"
            case .textbooksHumor : return "Textbooks|Humor"
            case .textbooksLanguageStudies : return "Textbooks|Language Studies"
            case .textbooksLanguageStudiesAfricanLanguages : return "Textbooks|Language Studies|African Languages"
            case .textbooksLanguageStudiesAncientLanguages : return "Textbooks|Language Studies|Ancient Languages"
            case .textbooksLanguageStudiesArabic : return "Textbooks|Language Studies|Arabic"
            case .textbooksLanguageStudiesBilingualEditions : return "Textbooks|Language Studies|Bilingual Editions"
            case .textbooksLanguageStudiesChinese : return "Textbooks|Language Studies|Chinese"
            case .textbooksLanguageStudiesEnglish : return "Textbooks|Language Studies|English"
            case .textbooksLanguageStudiesFrench : return "Textbooks|Language Studies|French"
            case .textbooksLanguageStudiesGerman : return "Textbooks|Language Studies|German"
            case .textbooksLanguageStudiesHebrew : return "Textbooks|Language Studies|Hebrew"
            case .textbooksLanguageStudiesHindi : return "Textbooks|Language Studies|Hindi"
            case .textbooksLanguageStudiesIndigenousLanguages : return "Textbooks|Language Studies|Indigenous Languages"
            case .textbooksLanguageStudiesItalian : return "Textbooks|Language Studies|Italian"
            case .textbooksLanguageStudiesJapanese : return "Textbooks|Language Studies|Japanese"
            case .textbooksLanguageStudiesKorean : return "Textbooks|Language Studies|Korean"
            case .textbooksLanguageStudiesLinguistics : return "Textbooks|Language Studies|Linguistics"
            case .textbooksLanguageStudiesOtherLanguage : return "Textbooks|Language Studies|Other Language"
            case .textbooksLanguageStudiesPortuguese : return "Textbooks|Language Studies|Portuguese"
            case .textbooksLanguageStudiesRussian : return "Textbooks|Language Studies|Russian"
            case .textbooksLanguageStudiesSpanish : return "Textbooks|Language Studies|Spanish"
            case .textbooksLanguageStudiesSpeechPathology : return "Textbooks|Language Studies|Speech Pathology"
            case .textbooksLifestyleandHome : return "Textbooks|Lifestyle & Home"
            case .textbooksLifestyleandHomeAntiquesandCollectibles : return "Textbooks|Lifestyle & Home|Antiques & Collectibles"
            case .textbooksLifestyleandHomeCraftsandHobbies : return "Textbooks|Lifestyle & Home|Crafts & Hobbies"
            case .textbooksLifestyleandHomeGardening : return "Textbooks|Lifestyle & Home|Gardening"
            case .textbooksLifestyleandHomePets : return "Textbooks|Lifestyle & Home|Pets"
            case .textbooksMathematics : return "Textbooks|Mathematics"
            case .textbooksMathematicsAdvancedMathematics : return "Textbooks|Mathematics|Advanced Mathematics"
            case .textbooksMathematicsAlgebra : return "Textbooks|Mathematics|Algebra"
            case .textbooksMathematicsArithmetic : return "Textbooks|Mathematics|Arithmetic"
            case .textbooksMathematicsCalculus : return "Textbooks|Mathematics|Calculus"
            case .textbooksMathematicsGeometry : return "Textbooks|Mathematics|Geometry"
            case .textbooksMathematicsStatistics : return "Textbooks|Mathematics|Statistics"
            case .textbooksMedicine : return "Textbooks|Medicine"
            case .textbooksMedicineAnatomyandPhysiology : return "Textbooks|Medicine|Anatomy & Physiology"
            case .textbooksMedicineDentistry : return "Textbooks|Medicine|Dentistry"
            case .textbooksMedicineEmergencyMedicine : return "Textbooks|Medicine|Emergency Medicine"
            case .textbooksMedicineGenetics : return "Textbooks|Medicine|Genetics"
            case .textbooksMedicineImmunology : return "Textbooks|Medicine|Immunology"
            case .textbooksMedicineNeuroscience : return "Textbooks|Medicine|Neuroscience"
            case .textbooksMedicineNursing : return "Textbooks|Medicine|Nursing"
            case .textbooksMedicinePharmacologyandToxicology : return "Textbooks|Medicine|Pharmacology & Toxicology"
            case .textbooksMedicinePsychiatry : return "Textbooks|Medicine|Psychiatry"
            case .textbooksMedicinePsychology : return "Textbooks|Medicine|Psychology"
            case .textbooksMedicineRadiology : return "Textbooks|Medicine|Radiology"
            case .textbooksMedicineVeterinary : return "Textbooks|Medicine|Veterinary"
            case .textbooksMysteriesandThrillers : return "Textbooks|Mysteries & Thrillers"
            case .textbooksMysteriesandThrillersBritishDetectives : return "Textbooks|Mysteries & Thrillers|British Detectives"
            case .textbooksMysteriesandThrillersHardBoiled : return "Textbooks|Mysteries & Thrillers|Hard-Boiled"
            case .textbooksMysteriesandThrillersHistorical : return "Textbooks|Mysteries & Thrillers|Historical"
            case .textbooksMysteriesandThrillersPoliceProcedural : return "Textbooks|Mysteries & Thrillers|Police Procedural"
            case .textbooksMysteriesandThrillersShortStories : return "Textbooks|Mysteries & Thrillers|Short Stories"
            case .textbooksMysteriesandThrillersWomenSleuths : return "Textbooks|Mysteries & Thrillers|Women Sleuths"
            case .textbooksNonfiction : return "Textbooks|Nonfiction"
            case .textbooksNonfictionFamilyandRelationships : return "Textbooks|Nonfiction|Family & Relationships"
            case .textbooksNonfictionTransportation : return "Textbooks|Nonfiction|Transportation"
            case .textbooksNonfictionTrueCrime : return "Textbooks|Nonfiction|True Crime"
            case .textbooksParenting : return "Textbooks|Parenting"
            case .textbooksPhilosophy : return "Textbooks|Philosophy"
            case .textbooksPhilosophyAesthetics : return "Textbooks|Philosophy|Aesthetics"
            case .textbooksPhilosophyEpistemology : return "Textbooks|Philosophy|Epistemology"
            case .textbooksPhilosophyEthics : return "Textbooks|Philosophy|Ethics"
            case .textbooksPhilosophyPhilosophyofLanguage : return "Textbooks|Philosophy|Philosophy of Language"
            case .textbooksPhilosophyLogic : return "Textbooks|Philosophy|Logic"
            case .textbooksPhilosophyMetaphysics : return "Textbooks|Philosophy|Metaphysics"
            case .textbooksPhilosophyPoliticalPhilosophy : return "Textbooks|Philosophy|Political Philosophy"
            case .textbooksPhilosophyPhilosophyofReligion : return "Textbooks|Philosophy|Philosophy of Religion"
            case .textbooksPoliticsandCurrentEvents : return "Textbooks|Politics & Current Events"
            case .textbooksPoliticsandCurrentEventsCurrentEvents : return "Textbooks|Politics & Current Events|Current Events"
            case .textbooksPoliticsandCurrentEventsForeignPolicyandInternationalRelations : return "Textbooks|Politics & Current Events|Foreign Policy & International Relations"
            case .textbooksPoliticsandCurrentEventsLocalGovernments : return "Textbooks|Politics & Current Events|Local Governments"
            case .textbooksPoliticsandCurrentEventsNationalGovernments : return "Textbooks|Politics & Current Events|National Governments"
            case .textbooksPoliticsandCurrentEventsPoliticalScience : return "Textbooks|Politics & Current Events|Political Science"
            case .textbooksPoliticsandCurrentEventsPublicAdministration : return "Textbooks|Politics & Current Events|Administration"
            case .textbooksPoliticsandCurrentEventsWorldAffairs : return "Textbooks|Politics & Current Events|World Affairs"
            case .textbooksProfessionalandTechnical : return "Textbooks|Professional & Technical"
            case .textbooksProfessionalandTechnicalDesign : return "Textbooks|Professional & Technical|Design"
            case .textbooksProfessionalandTechnicalLanguageArtsandDisciplines : return "Textbooks|Professional & Technical|Language Arts & Disciplines"
            case .textbooksProfessionalandTechnicalEngineering : return "Textbooks|Professional & Technical|Engineering"
            case .textbooksProfessionalandTechnicalLaw : return "Textbooks|Professional & Technical|Law"
            case .textbooksProfessionalandTechnicalMedical : return "Textbooks|Professional & Technical|Medical"
            case .textbooksReference : return "Textbooks|Reference"
            case .textbooksReferenceAlmanacsandYearbooks : return "Textbooks|Reference|Almanacs & Yearbooks"
            case .textbooksReferenceAtlasesandMaps : return "Textbooks|Reference|Atlases & Maps"
            case .textbooksReferenceCatalogsandDirectories : return "Textbooks|Reference|Catalogs & Directories"
            case .textbooksReferenceConsumerGuides : return "Textbooks|Reference|Consumer Guides"
            case .textbooksReferenceDictionariesandThesauruses : return "Textbooks|Reference|Dictionaries & Thesauruses"
            case .textbooksReferenceEncyclopedias : return "Textbooks|Reference|Encyclopedias"
            case .textbooksReferenceEtiquette : return "Textbooks|Reference|Etiquette"
            case .textbooksReferenceQuotations : return "Textbooks|Reference|Quotations"
            case .textbooksReferenceStudyAids : return "Textbooks|Reference|Study Aids"
            case .textbooksReferenceWordsandLanguage : return "Textbooks|Reference|Words & Language"
            case .textbooksReferenceWriting : return "Textbooks|Reference|Writing"
            case .textbooksReligionandSpirituality : return "Textbooks|Religion & Spirituality"
            case .textbooksReligionandSpiritualityBibleStudies : return "Textbooks|Religion & Spirituality|Bible Studies"
            case .textbooksReligionandSpiritualityBibles : return "Textbooks|Religion & Spirituality|Bibles"
            case .textbooksReligionandSpiritualityBuddhism : return "Textbooks|Religion & Spirituality|Buddhism"
            case .textbooksReligionandSpiritualityChristianity : return "Textbooks|Religion & Spirituality|Christianity"
            case .textbooksReligionandSpiritualityComparativeReligion : return "Textbooks|Religion & Spirituality|Comparative Religion"
            case .textbooksReligionandSpiritualityHinduism : return "Textbooks|Religion & Spirituality|Hinduism"
            case .textbooksReligionandSpiritualityIslam : return "Textbooks|Religion & Spirituality|Islam"
            case .textbooksReligionandSpiritualityJudaism : return "Textbooks|Religion & Spirituality|Judaism"
            case .textbooksReligionandSpiritualitySpirituality : return "Textbooks|Religion & Spirituality|Spirituality"
            case .textbooksRomance : return "Textbooks|Romance"
            case .textbooksRomanceContemporary : return "Textbooks|Romance|Contemporary"
            case .textbooksRomanceEroticRomance : return "Textbooks|Romance|Erotic Romance"
            case .textbooksRomanceParanormal : return "Textbooks|Romance|Paranormal"
            case .textbooksRomanceHistorical : return "Textbooks|Romance|Historical"
            case .textbooksRomanceShortStories : return "Textbooks|Romance|Short Stories"
            case .textbooksRomanceSuspense : return "Textbooks|Romance|Suspense"
            case .textbooksRomanceWestern : return "Textbooks|Romance|Western"
            case .textbooksSciFiandFantasy : return "Textbooks|Sci-Fi & Fantasy"
            case .textbooksSciFiandFantasyFantasy : return "Textbooks|Sci-Fi & Fantasy|Fantasy"
            case .textbooksSciFiandFantasyFantasyContemporary : return "Textbooks|Sci-Fi & Fantasy|Fantasy|Contemporary"
            case .textbooksSciFiandFantasyFantasyEpic : return "Textbooks|Sci-Fi & Fantasy|Fantasy|Epic"
            case .textbooksSciFiandFantasyFantasyHistorical : return "Textbooks|Sci-Fi & Fantasy|Fantasy|Historical"
            case .textbooksSciFiandFantasyFantasyParanormal : return "Textbooks|Sci-Fi & Fantasy|Fantasy|Paranormal"
            case .textbooksSciFiandFantasyFantasyShortStories : return "Textbooks|Sci-Fi & Fantasy|Fantasy|Short Stories"
            case .textbooksSciFiandFantasyScienceFiction : return "Textbooks|Sci-Fi & Fantasy|Science Fiction"
            case .textbooksSciFiandFantasyScienceFictionandLiterature : return "Textbooks|Sci-Fi & Fantasy|Science Fiction & Literature"
            case .textbooksSciFiandFantasyScienceFictionandLiteratureAdventure : return "Textbooks|Sci-Fi & Fantasy|Science Fiction & Literature|Adventure"
            case .textbooksSciFiandFantasyScienceFictionandLiteratureHighTech : return "Textbooks|Sci-Fi & Fantasy|Science Fiction & Literature|High Tech"
            case .textbooksSciFiandFantasyScienceFictionandLiteratureShortStories : return "Textbooks|Sci-Fi & Fantasy|Science Fiction & Literature|Short Stories"
            case .textbooksScienceandNature : return "Textbooks|Science & Nature"
            case .textbooksScienceandNatureAgriculture : return "Textbooks|Science & Nature|Agriculture"
            case .textbooksScienceandNatureAstronomy : return "Textbooks|Science & Nature|Astronomy"
            case .textbooksScienceandNatureAtmosphere : return "Textbooks|Science & Nature|Atmosphere"
            case .textbooksScienceandNatureBiology : return "Textbooks|Science & Nature|Biology"
            case .textbooksScienceandNatureChemistry : return "Textbooks|Science & Nature|Chemistry"
            case .textbooksScienceandNatureEarthSciences : return "Textbooks|Science & Nature|Earth Sciences"
            case .textbooksScienceandNatureEcology : return "Textbooks|Science & Nature|Ecology"
            case .textbooksScienceandNatureEnvironment : return "Textbooks|Science & Nature|Environment"
            case .textbooksScienceandNatureEssays : return "Textbooks|Science & Nature|Essays"
            case .textbooksScienceandNatureGeography : return "Textbooks|Science & Nature|Geography"
            case .textbooksScienceandNatureGeology : return "Textbooks|Science & Nature|Geology"
            case .textbooksScienceandNatureHistory : return "Textbooks|Science & Nature|History"
            case .textbooksScienceandNatureLifeSciences : return "Textbooks|Science & Nature|Life Sciences"
            case .textbooksScienceandNatureNature : return "Textbooks|Science & Nature|Nature"
            case .textbooksScienceandNaturePhysics : return "Textbooks|Science & Nature|Physics"
            case .textbooksScienceandNatureReference : return "Textbooks|Science & Nature|Reference"
            case .textbooksSocialScience : return "Textbooks|Social Science"
            case .textbooksSocialScienceAnthropology : return "Textbooks|Social Science|Anthropology"
            case .textbooksSocialScienceArchaeology : return "Textbooks|Social Science|Archaeology"
            case .textbooksSocialScienceCivics : return "Textbooks|Social Science|Civics"
            case .textbooksSocialScienceGovernment : return "Textbooks|Social Science|Government"
            case .textbooksSocialScienceSocialStudies : return "Textbooks|Social Science|Social Studies"
            case .textbooksSocialScienceSocialWelfare : return "Textbooks|Social Science|Social Welfare"
            case .textbooksSocialScienceSociety : return "Textbooks|Social Science|Society"
            case .textbooksSocialScienceSocietyAfricanStudies : return "Textbooks|Social Science|Society|African Studies"
            case .textbooksSocialScienceSocietyAmericanStudies : return "Textbooks|Social Science|Society|American Studies"
            case .textbooksSocialScienceSocietyAsiaPacificStudies : return "Textbooks|Social Science|Society|Asia Pacific Studies"
            case .textbooksSocialScienceSocietyCrossCulturalStudies : return "Textbooks|Social Science|Society|Cross-Cultural Studies"
            case .textbooksSocialScienceSocietyEuropeanStudies : return "Textbooks|Social Science|Society|European Studies"
            case .textbooksSocialScienceSocietyImmigrationandEmigration : return "Textbooks|Social Science|Society|Immigration & Emigration"
            case .textbooksSocialScienceSocietyIndigenousStudies : return "Textbooks|Social Science|Society|Indigenous Studies"
            case .textbooksSocialScienceSocietyLatinandCaribbeanStudies : return "Textbooks|Social Science|Society|Latin & Caribbean Studies"
            case .textbooksSocialScienceSocietyMiddleEasternStudies : return "Textbooks|Social Science|Society|Middle Eastern Studies"
            case .textbooksSocialScienceSocietyRaceandEthnicityStudies : return "Textbooks|Social Science|Society|Race & Ethnicity Studies"
            case .textbooksSocialScienceSocietySexualityStudies : return "Textbooks|Social Science|Society|Sexuality Studies"
            case .textbooksSocialScienceSocietyWomensStudies : return "Textbooks|Social Science|Society|Women's Studies"
            case .textbooksSocialScienceSociology : return "Textbooks|Social Science|Sociology"
            case .textbooksSportsandOutdoors : return "Textbooks|Sports & Outdoors"
            case .textbooksSportsandOutdoorsBaseball : return "Textbooks|Sports & Outdoors|Baseball"
            case .textbooksSportsandOutdoorsBasketball : return "Textbooks|Sports & Outdoors|Basketball"
            case .textbooksSportsandOutdoorsCoaching : return "Textbooks|Sports & Outdoors|Coaching"
            case .textbooksSportsandOutdoorsEquestrian : return "Textbooks|Sports & Outdoors|Equestrian"
            case .textbooksSportsandOutdoorsExtremeSports : return "Textbooks|Sports & Outdoors|Extreme Sports"
            case .textbooksSportsandOutdoorsFootball : return "Textbooks|Sports & Outdoors|Football"
            case .textbooksSportsandOutdoorsGolf : return "Textbooks|Sports & Outdoors|Golf"
            case .textbooksSportsandOutdoorsHockey : return "Textbooks|Sports & Outdoors|Hockey"
            case .textbooksSportsandOutdoorsMotorSports : return "Textbooks|Sports & Outdoors|Motor Sports"
            case .textbooksSportsandOutdoorsMountaineering : return "Textbooks|Sports & Outdoors|Mountaineering"
            case .textbooksSportsandOutdoorsOutdoors : return "Textbooks|Sports & Outdoors|Outdoors"
            case .textbooksSportsandOutdoorsRacketSports : return "Textbooks|Sports & Outdoors|Racket Sports"
            case .textbooksSportsandOutdoorsReference : return "Textbooks|Sports & Outdoors|Reference"
            case .textbooksSportsandOutdoorsSoccer : return "Textbooks|Sports & Outdoors|Soccer"
            case .textbooksSportsandOutdoorsTraining : return "Textbooks|Sports & Outdoors|Training"
            case .textbooksSportsandOutdoorsWaterSports : return "Textbooks|Sports & Outdoors|Water Sports"
            case .textbooksSportsandOutdoorsWinterSports : return "Textbooks|Sports & Outdoors|Winter Sports"
            case .textbooksTeachingandLearning : return "Textbooks|Teaching & Learning"
            case .textbooksTeachingandLearningAdultEducation : return "Textbooks|Teaching & Learning|Adult Education"
            case .textbooksTeachingandLearningCurriculumandTeaching : return "Textbooks|Teaching & Learning|Curriculum & Teaching"
            case .textbooksTeachingandLearningEducationalLeadership : return "Textbooks|Teaching & Learning|Educational Leadership"
            case .textbooksTeachingandLearningEducationalTechnology : return "Textbooks|Teaching & Learning|Educational Technology"
            case .textbooksTeachingandLearningFamilyandChildcare : return "Textbooks|Teaching & Learning|Family & Childcare"
            case .textbooksTeachingandLearningInformationandLibraryScience : return "Textbooks|Teaching & Learning|Information & Library Science"
            case .textbooksTeachingandLearningLearningResources : return "Textbooks|Teaching & Learning|Learning Resources"
            case .textbooksTeachingandLearningPsychologyandResearch : return "Textbooks|Teaching & Learning|Psychology & Research"
            case .textbooksTeachingandLearningSpecialEducation : return "Textbooks|Teaching & Learning|Special Education"
            case .textbooksTravelandAdventure : return "Textbooks|Travel & Adventure"
            case .textbooksTravelandAdventureAfrica : return "Textbooks|Travel & Adventure|Africa"
            case .textbooksTravelandAdventureAmericas : return "Textbooks|Travel & Adventure|Americas"
            case .textbooksTravelandAdventureAmericasCanada : return "Textbooks|Travel & Adventure|Americas|Canada"
            case .textbooksTravelandAdventureAmericasLatinAmerica : return "Textbooks|Travel & Adventure|Americas|Latin America"
            case .textbooksTravelandAdventureAmericasUnitedStates : return "Textbooks|Travel & Adventure|Americas|United States"
            case .textbooksTravelandAdventureAsia : return "Textbooks|Travel & Adventure|Asia"
            case .textbooksTravelandAdventureCaribbean : return "Textbooks|Travel & Adventure|Caribbean"
            case .textbooksTravelandAdventureEssaysandMemoirs : return "Textbooks|Travel & Adventure|Essays & Memoirs"
            case .textbooksTravelandAdventureEurope : return "Textbooks|Travel & Adventure|Europe"
            case .textbooksTravelandAdventureMiddleEast : return "Textbooks|Travel & Adventure|Middle East"
            case .textbooksTravelandAdventureOceania : return "Textbooks|Travel & Adventure|Oceania"
            case .textbooksTravelandAdventureSpecialtyTravel : return "Textbooks|Travel & Adventure|Specialty Travel"
            case .textbooksComicsandGraphicNovelsComics : return "Textbooks|Comics & Graphic Novels|Comics"
            case .textbooksReferenceManuals : return "Textbooks|Reference|Manuals"
            case .appStoreStickersEmojiandExpressions : return "App Store|Stickers|Emoji & Expressions"
            case .appStoreStickersAnimalsandNature : return "App Store|Stickers|Animals & Nature"
            case .appStoreStickersArt : return "App Store|Stickers|Art"
            case .appStoreStickersCelebrations : return "App Store|Stickers|Celebrations"
            case .appStoreStickersCelebrities : return "App Store|Stickers|Celebrities"
            case .appStoreStickersComicsandCartoons : return "App Store|Stickers|Comics & Cartoons"
            case .appStoreStickersEatingandDrinking : return "App Store|Stickers|Eating & Drinking"
            case .appStoreStickersGaming : return "App Store|Stickers|Gaming"
            case .appStoreStickersMoviesandTV : return "App Store|Stickers|Movies & TV"
            case .appStoreStickersMusic : return "App Store|Stickers|Music"
            case .appStoreStickersPeople : return "App Store|Stickers|People"
            case .appStoreStickersPlacesandObjects : return "App Store|Stickers|Places & Objects"
            case .appStoreStickersSportsandActivities : return "App Store|Stickers|Sports & Activities"
            case .appStoreStickersKidsandFamily : return "App Store|Stickers|Kids & Family"
            case .appStoreStickersFashion : return "App Store|Stickers|Fashion"
            case .musicClassicalArtSong : return "Music|Classical|Art Song"
            case .musicClassicalBrassandWoodwinds : return "Music|Classical|Brass & Woodwinds"
            case .musicClassicalSoloInstrumental : return "Music|Classical|Solo Instrumental"
            case .musicClassicalContemporaryEra : return "Music|Classical|Contemporary Era"
            case .musicClassicalOratorio : return "Music|Classical|Oratorio"
            case .musicClassicalCantata : return "Music|Classical|Cantata"
            case .musicClassicalElectronic : return "Music|Classical|Electronic"
            case .musicClassicalSacred : return "Music|Classical|Sacred"
            case .musicClassicalGuitar : return "Music|Classical|Guitar"
            case .musicClassicalPiano : return "Music|Classical|Piano"
            case .musicClassicalViolin : return "Music|Classical|Violin"
            case .musicClassicalCello : return "Music|Classical|Cello"
            case .musicClassicalPercussion : return "Music|Classical|Percussion"
            case .musicElectronicDubstep : return "Music|Electronic|Dubstep"
            case .musicElectronicBass : return "Music|Electronic|Bass"
            case .musicHipHopRapUKHipHop : return "Music|Hip-Hop/Rap|UK Hip-Hop"
            case .musicReggaeLoversRock : return "Music|Reggae|Lovers Rock"
            case .musicAlternativeEMO : return "Music|Alternative|EMO"
            case .musicAlternativePopPunk : return "Music|Alternative|Pop Punk"
            case .musicAlternativeIndiePop : return "Music|Alternative|Indie Pop"
            case .musicNewAgeYoga : return "Music|New Age|Yoga"
            case .musicPopTribute : return "Music|Pop|Tribute"
            case .musicPopShows : return "Music|Pop|Shows"
            case .musicCuban : return "Music|Cuban"
            case .musicCubanMambo : return "Music|Cuban|Mambo"
            case .musicCubanChachacha : return "Music|Cuban|Chachacha"
            case .musicCubanGuajira : return "Music|Cuban|Guajira"
            case .musicCubanSon : return "Music|Cuban|Son"
            case .musicCubanBolero : return "Music|Cuban|Bolero"
            case .musicCubanGuaracha : return "Music|Cuban|Guaracha"
            case .musicCubanTimba : return "Music|Cuban|Timba"
            case .musicSoundtrackVideoGame : return "Music|Soundtrack|Video Game"
            case .musicIndianRegionalIndianPunjabiPunjabiPop : return "Music|Indian|Regional Indian|Punjabi|Punjabi Pop"
            case .musicIndianRegionalIndianBengaliRabindraSangeet : return "Music|Indian|Regional Indian|Bengali|Rabindra Sangeet"
            case .musicIndianRegionalIndianMalayalam : return "Music|Indian|Regional Indian|Malayalam"
            case .musicIndianRegionalIndianKannada : return "Music|Indian|Regional Indian|Kannada"
            case .musicIndianRegionalIndianMarathi : return "Music|Indian|Regional Indian|Marathi"
            case .musicIndianRegionalIndianGujarati : return "Music|Indian|Regional Indian|Gujarati"
            case .musicIndianRegionalIndianAssamese : return "Music|Indian|Regional Indian|Assamese"
            case .musicIndianRegionalIndianBhojpuri : return "Music|Indian|Regional Indian|Bhojpuri"
            case .musicIndianRegionalIndianHaryanvi : return "Music|Indian|Regional Indian|Haryanvi"
            case .musicIndianRegionalIndianOdia : return "Music|Indian|Regional Indian|Odia"
            case .musicIndianRegionalIndianRajasthani : return "Music|Indian|Regional Indian|Rajasthani"
            case .musicIndianRegionalIndianUrdu : return "Music|Indian|Regional Indian|Urdu"
            case .musicIndianRegionalIndianPunjabi : return "Music|Indian|Regional Indian|Punjabi"
            case .musicIndianRegionalIndianBengali : return "Music|Indian|Regional Indian|Bengali"
            case .musicIndianIndianClassicalCarnaticClassical : return "Music|Indian|Indian Classical|Carnatic Classical"
            case .musicIndianIndianClassicalHindustaniClassical : return "Music|Indian|Indian Classical|Hindustani Classical"
            case .musicAfricanAfroHouse : return "Music|African|Afro House"
            case .musicAfricanAfroSoul : return "Music|African|Afro Soul"
            case .musicAfricanAfrobeats : return "Music|African|Afrobeats"
            case .musicAfricanBenga : return "Music|African|Benga"
            case .musicAfricanBongoFlava : return "Music|African|Bongo-Flava"
            case .musicAfricanCoupeDecale : return "Music|African|Coupe-Decale"
            case .musicAfricanGqom : return "Music|African|Gqom"
            case .musicAfricanHighlife : return "Music|African|Highlife"
            case .musicAfricanKuduro : return "Music|African|Kuduro"
            case .musicAfricanKizomba : return "Music|African|Kizomba"
            case .musicAfricanKwaito : return "Music|African|Kwaito"
            case .musicAfricanMbalax : return "Music|African|Mbalax"
            case .musicAfricanNdombolo : return "Music|African|Ndombolo"
            case .musicAfricanShangaanElectro : return "Music|African|Shangaan Electro"
            case .musicAfricanSoukous : return "Music|African|Soukous"
            case .musicAfricanTaarab : return "Music|African|Taarab"
            case .musicAfricanZouglou : return "Music|African|Zouglou"
            case .musicTurkishOzgun : return "Music|Turkish|Ozgun"
            case .musicTurkishFantezi : return "Music|Turkish|Fantezi"
            case .musicTurkishReligious : return "Music|Turkish|Religious"
            case .musicPopTurkishPop : return "Music|Pop|Turkish Pop"
            case .musicRockTurkishRock : return "Music|Rock|Turkish Rock"
            case .musicAlternativeTurkishAlternative : return "Music|Alternative|Turkish Alternative"
            case .musicHipHopRapTurkishHipHopRap : return "Music|Hip-Hop/Rap|Turkish Hip-Hop/Rap"
            case .musicAfricanMaskandi : return "Music|African|Maskandi"
            case .musicRussianRussianRomance : return "Music|Russian|Russian Romance"
            case .musicRussianRussianBard : return "Music|Russian|Russian Bard"
            case .musicRussianRussianPop : return "Music|Russian|Russian Pop"
            case .musicRussianRussianRock : return "Music|Russian|Russian Rock"
            case .musicRussianRussianHipHop : return "Music|Russian|Russian Hip-Hop"
            case .musicArabicLevant : return "Music|Arabic|Levant"
            case .musicArabicLevantDabke : return "Music|Arabic|Levant|Dabke"
            case .musicArabicMaghrebRai : return "Music|Arabic|Maghreb Rai"
            case .musicArabicKhaleejiKhaleejiJalsat : return "Music|Arabic|Khaleeji|Khaleeji Jalsat"
            case .musicArabicKhaleejiKhaleejiShailat : return "Music|Arabic|Khaleeji|Khaleeji Shailat"
            case .musicTarab : return "Music|Tarab"
            case .musicTarabIraqiTarab : return "Music|Tarab|Iraqi Tarab"
            case .musicTarabEgyptianTarab : return "Music|Tarab|Egyptian Tarab"
            case .musicTarabKhaleejiTarab : return "Music|Tarab|Khaleeji Tarab"
            case .musicPopLevantPop : return "Music|Pop|Levant Pop"
            case .musicPopIraqiPop : return "Music|Pop|Iraqi Pop"
            case .musicPopEgyptianPop : return "Music|Pop|Egyptian Pop"
            case .musicPopMaghrebPop : return "Music|Pop|Maghreb Pop"
            case .musicPopKhaleejiPop : return "Music|Pop|Khaleeji Pop"
            case .musicHipHopRapLevantHipHop : return "Music|Hip-Hop/Rap|Levant Hip-Hop"
            case .musicHipHopRapEgyptianHipHop : return "Music|Hip-Hop/Rap|Egyptian Hip-Hop"
            case .musicHipHopRapMaghrebHipHop : return "Music|Hip-Hop/Rap|Maghreb Hip-Hop"
            case .musicHipHopRapKhaleejiHipHop : return "Music|Hip-Hop/Rap|Khaleeji Hip-Hop"
            case .musicAlternativeIndieLevant : return "Music|Alternative|Indie Levant"
            case .musicAlternativeIndieEgyptian : return "Music|Alternative|Indie Egyptian"
            case .musicAlternativeIndieMaghreb : return "Music|Alternative|Indie Maghreb"
            case .musicElectronicLevantElectronic : return "Music|Electronic|Levant Electronic"
            case .musicElectronicElectroChaabi : return "Music|Electronic|Electro-Cha'abi"
            case .musicElectronicMaghrebElectronic : return "Music|Electronic|Maghreb Electronic"
            case .musicFolkIraqiFolk : return "Music|Folk|Iraqi Folk"
            case .musicFolkKhaleejiFolk : return "Music|Folk|Khaleeji Folk"
            case .musicDanceMaghrebDance : return "Music|Dance|Maghreb Dance"
            case .iTunesU : return "iTunes U"
            case .iTunesUBusinessandEconomics : return "iTunes U|Business & Economics"
            case .iTunesUBusinessandEconomicsEconomics : return "iTunes U|Business & Economics|Economics"
            case .iTunesUBusinessandEconomicsFinance : return "iTunes U|Business & Economics|Finance"
            case .iTunesUBusinessandEconomicsHospitality : return "iTunes U|Business & Economics|Hospitality"
            case .iTunesUBusinessandEconomicsManagement : return "iTunes U|Business & Economics|Management"
            case .iTunesUBusinessandEconomicsMarketing : return "iTunes U|Business & Economics|Marketing"
            case .iTunesUBusinessandEconomicsPersonalFinance : return "iTunes U|Business & Economics|Personal Finance"
            case .iTunesUBusinessandEconomicsRealEstate : return "iTunes U|Business & Economics|Real Estate"
            case .iTunesUEngineering : return "iTunes U|Engineering"
            case .iTunesUEngineeringChemicalandPetroleumEngineering : return "iTunes U|Engineering|Chemical & Petroleum Engineering"
            case .iTunesUEngineeringCivilEngineering : return "iTunes U|Engineering|Civil Engineering"
            case .iTunesUEngineeringComputerScience : return "iTunes U|Engineering|Computer Science"
            case .iTunesUEngineeringElectricalEngineering : return "iTunes U|Engineering|Electrical Engineering"
            case .iTunesUEngineeringEnvironmentalEngineering : return "iTunes U|Engineering|Environmental Engineering"
            case .iTunesUEngineeringMechanicalEngineering : return "iTunes U|Engineering|Mechanical Engineering"
            case .iTunesUMusicArtandDesign : return "iTunes U|Music, Art, & Design"
            case .iTunesUMusicArtandDesignArchitecture : return "iTunes U|Music, Art, & Design|Architecture"
            case .iTunesUMusicArtandDesignArtHistory : return "iTunes U|Music, Art, & Design|Art History"
            case .iTunesUMusicArtandDesignDance : return "iTunes U|Music, Art, & Design|Dance"
            case .iTunesUMusicArtandDesignFilm : return "iTunes U|Music, Art, & Design|Film"
            case .iTunesUMusicArtandDesignDesign : return "iTunes U|Music, Art, & Design|Design"
            case .iTunesUMusicArtandDesignInteriorDesign : return "iTunes U|Music, Art, & Design|Interior Design"
            case .iTunesUMusicArtandDesignMusic : return "iTunes U|Music, Art, & Design|Music"
            case .iTunesUMusicArtandDesignTheater : return "iTunes U|Music, Art, & Design|Theater"
            case .iTunesUHealthandMedicine : return "iTunes U|Health & Medicine"
            case .iTunesUHealthandMedicineAnatomyandPhysiology : return "iTunes U|Health & Medicine|Anatomy & Physiology"
            case .iTunesUHealthandMedicineBehavioralScience : return "iTunes U|Health & Medicine|Behavioral Science"
            case .iTunesUHealthandMedicineDentistry : return "iTunes U|Health & Medicine|Dentistry"
            case .iTunesUHealthandMedicineDietandNutrition : return "iTunes U|Health & Medicine|Diet & Nutrition"
            case .iTunesUHealthandMedicineEmergencyMedicine : return "iTunes U|Health & Medicine|Emergency Medicine"
            case .iTunesUHealthandMedicineGenetics : return "iTunes U|Health & Medicine|Genetics"
            case .iTunesUHealthandMedicineGerontology : return "iTunes U|Health & Medicine|Gerontology"
            case .iTunesUHealthandMedicineHealthandExerciseScience : return "iTunes U|Health & Medicine|Health & Exercise Science"
            case .iTunesUHealthandMedicineImmunology : return "iTunes U|Health & Medicine|Immunology"
            case .iTunesUHealthandMedicineNeuroscience : return "iTunes U|Health & Medicine|Neuroscience"
            case .iTunesUHealthandMedicinePharmacologyandToxicology : return "iTunes U|Health & Medicine|Pharmacology & Toxicology"
            case .iTunesUHealthandMedicinePsychiatry : return "iTunes U|Health & Medicine|Psychiatry"
            case .iTunesUHealthandMedicineGlobalHealth : return "iTunes U|Health & Medicine|Global Health"
            case .iTunesUHealthandMedicineRadiology : return "iTunes U|Health & Medicine|Radiology"
            case .iTunesUHistory : return "iTunes U|History"
            case .iTunesUHistoryAncientHistory : return "iTunes U|History|Ancient History"
            case .iTunesUHistoryMedievalHistory : return "iTunes U|History|Medieval History"
            case .iTunesUHistoryMilitaryHistory : return "iTunes U|History|Military History"
            case .iTunesUHistoryModernHistory : return "iTunes U|History|Modern History"
            case .iTunesUHistoryAfricanHistory : return "iTunes U|History|African History"
            case .iTunesUHistoryAsiaPacificHistory : return "iTunes U|History|Asia-Pacific History"
            case .iTunesUHistoryEuropeanHistory : return "iTunes U|History|European History"
            case .iTunesUHistoryMiddleEasternHistory : return "iTunes U|History|Middle Eastern History"
            case .iTunesUHistoryNorthAmericanHistory : return "iTunes U|History|North American History"
            case .iTunesUHistorySouthAmericanHistory : return "iTunes U|History|South American History"
            case .iTunesUCommunicationsandJournalism : return "iTunes U|Communications & Journalism"
            case .iTunesUPhilosophy : return "iTunes U|Philosophy"
            case .iTunesUReligionandSpirituality : return "iTunes U|Religion & Spirituality"
            case .iTunesULanguages : return "iTunes U|Languages"
            case .iTunesULanguagesAfricanLanguages : return "iTunes U|Languages|African Languages"
            case .iTunesULanguagesAncientLanguages : return "iTunes U|Languages|Ancient Languages"
            case .iTunesULanguagesEnglish : return "iTunes U|Languages|English"
            case .iTunesULanguagesFrench : return "iTunes U|Languages|French"
            case .iTunesULanguagesGerman : return "iTunes U|Languages|German"
            case .iTunesULanguagesItalian : return "iTunes U|Languages|Italian"
            case .iTunesULanguagesLinguistics : return "iTunes U|Languages|Linguistics"
            case .iTunesULanguagesSpanish : return "iTunes U|Languages|Spanish"
            case .iTunesULanguagesSpeechPathology : return "iTunes U|Languages|Speech Pathology"
            case .iTunesUWritingandLiterature : return "iTunes U|Writing & Literature"
            case .iTunesUWritingandLiteratureAnthologies : return "iTunes U|Writing & Literature|Anthologies"
            case .iTunesUWritingandLiteratureBiography : return "iTunes U|Writing & Literature|Biography"
            case .iTunesUWritingandLiteratureClassics : return "iTunes U|Writing & Literature|Classics"
            case .iTunesUWritingandLiteratureLiteraryCriticism : return "iTunes U|Writing & Literature|Literary Criticism"
            case .iTunesUWritingandLiteratureFiction : return "iTunes U|Writing & Literature|Fiction"
            case .iTunesUWritingandLiteraturePoetry : return "iTunes U|Writing & Literature|Poetry"
            case .iTunesUMathematics : return "iTunes U|Mathematics"
            case .iTunesUMathematicsAdvancedMathematics : return "iTunes U|Mathematics|Advanced Mathematics"
            case .iTunesUMathematicsAlgebra : return "iTunes U|Mathematics|Algebra"
            case .iTunesUMathematicsArithmetic : return "iTunes U|Mathematics|Arithmetic"
            case .iTunesUMathematicsCalculus : return "iTunes U|Mathematics|Calculus"
            case .iTunesUMathematicsGeometry : return "iTunes U|Mathematics|Geometry"
            case .iTunesUMathematicsStatistics : return "iTunes U|Mathematics|Statistics"
            case .iTunesUScience : return "iTunes U|Science"
            case .iTunesUScienceAgricultural : return "iTunes U|Science|Agricultural"
            case .iTunesUScienceAstronomy : return "iTunes U|Science|Astronomy"
            case .iTunesUScienceAtmosphere : return "iTunes U|Science|Atmosphere"
            case .iTunesUScienceBiology : return "iTunes U|Science|Biology"
            case .iTunesUScienceChemistry : return "iTunes U|Science|Chemistry"
            case .iTunesUScienceEcology : return "iTunes U|Science|Ecology"
            case .iTunesUScienceGeography : return "iTunes U|Science|Geography"
            case .iTunesUScienceGeology : return "iTunes U|Science|Geology"
            case .iTunesUSciencePhysics : return "iTunes U|Science|Physics"
            case .iTunesUSocialScience : return "iTunes U|Social Science"
            case .iTunesULawandPoliticsLaw : return "iTunes U|Law & Politics|Law"
            case .iTunesULawandPoliticsPoliticalScience : return "iTunes U|Law & Politics|Political Science"
            case .iTunesULawandPoliticsPublicAdministration : return "iTunes U|Law & Politics|Administration"
            case .iTunesUSocialSciencePsychology : return "iTunes U|Social Science|Psychology"
            case .iTunesUSocialScienceSocialWelfare : return "iTunes U|Social Science|Social Welfare"
            case .iTunesUSocialScienceSociology : return "iTunes U|Social Science|Sociology"
            case .iTunesUSociety : return "iTunes U|Society"
            case .iTunesUSocietyAsiaPacificStudies : return "iTunes U|Society|Asia Pacific Studies"
            case .iTunesUSocietyEuropeanStudies : return "iTunes U|Society|European Studies"
            case .iTunesUSocietyIndigenousStudies : return "iTunes U|Society|Indigenous Studies"
            case .iTunesUSocietyLatinandCaribbeanStudies : return "iTunes U|Society|Latin & Caribbean Studies"
            case .iTunesUSocietyMiddleEasternStudies : return "iTunes U|Society|Middle Eastern Studies"
            case .iTunesUSocietyWomensStudies : return "iTunes U|Society|Women's Studies"
            case .iTunesUTeachingandLearning : return "iTunes U|Teaching & Learning"
            case .iTunesUTeachingandLearningCurriculumandTeaching : return "iTunes U|Teaching & Learning|Curriculum & Teaching"
            case .iTunesUTeachingandLearningEducationalLeadership : return "iTunes U|Teaching & Learning|Educational Leadership"
            case .iTunesUTeachingandLearningFamilyandChildcare : return "iTunes U|Teaching & Learning|Family & Childcare"
            case .iTunesUTeachingandLearningLearningResources : return "iTunes U|Teaching & Learning|Learning Resources"
            case .iTunesUTeachingandLearningPsychologyandResearch : return "iTunes U|Teaching & Learning|Psychology & Research"
            case .iTunesUTeachingandLearningSpecialEducation : return "iTunes U|Teaching & Learning|Special Education"
            case .iTunesUMusicArtandDesignCulinaryArts : return "iTunes U|Music, Art, & Design|Culinary Arts"
            case .iTunesUMusicArtandDesignFashion : return "iTunes U|Music, Art, & Design|Fashion"
            case .iTunesUMusicArtandDesignMediaArts : return "iTunes U|Music, Art, & Design|Media Arts"
            case .iTunesUMusicArtandDesignPhotography : return "iTunes U|Music, Art, & Design|Photography"
            case .iTunesUMusicArtandDesignVisualArt : return "iTunes U|Music, Art, & Design|Visual Art"
            case .iTunesUBusinessandEconomicsEntrepreneurship : return "iTunes U|Business & Economics|Entrepreneurship"
            case .iTunesUCommunicationsandJournalismBroadcasting : return "iTunes U|Communications & Journalism|Broadcasting"
            case .iTunesUCommunicationsandJournalismDigitalMedia : return "iTunes U|Communications & Journalism|Digital Media"
            case .iTunesUCommunicationsandJournalismJournalism : return "iTunes U|Communications & Journalism|Journalism"
            case .iTunesUCommunicationsandJournalismPhotojournalism : return "iTunes U|Communications & Journalism|Photojournalism"
            case .iTunesUCommunicationsandJournalismPrint : return "iTunes U|Communications & Journalism|Print"
            case .iTunesUCommunicationsandJournalismSpeech : return "iTunes U|Communications & Journalism|Speech"
            case .iTunesUCommunicationsandJournalismWriting : return "iTunes U|Communications & Journalism|Writing"
            case .iTunesUHealthandMedicineNursing : return "iTunes U|Health & Medicine|Nursing"
            case .iTunesULanguagesArabic : return "iTunes U|Languages|Arabic"
            case .iTunesULanguagesChinese : return "iTunes U|Languages|Chinese"
            case .iTunesULanguagesHebrew : return "iTunes U|Languages|Hebrew"
            case .iTunesULanguagesHindi : return "iTunes U|Languages|Hindi"
            case .iTunesULanguagesIndigenousLanguages : return "iTunes U|Languages|Indigenous Languages"
            case .iTunesULanguagesJapanese : return "iTunes U|Languages|Japanese"
            case .iTunesULanguagesKorean : return "iTunes U|Languages|Korean"
            case .iTunesULanguagesOtherLanguages : return "iTunes U|Languages|Other Languages"
            case .iTunesULanguagesPortuguese : return "iTunes U|Languages|Portuguese"
            case .iTunesULanguagesRussian : return "iTunes U|Languages|Russian"
            case .iTunesULawandPolitics : return "iTunes U|Law & Politics"
            case .iTunesULawandPoliticsForeignPolicyandInternationalRelations : return "iTunes U|Law & Politics|Foreign Policy & International Relations"
            case .iTunesULawandPoliticsLocalGovernments : return "iTunes U|Law & Politics|Local Governments"
            case .iTunesULawandPoliticsNationalGovernments : return "iTunes U|Law & Politics|National Governments"
            case .iTunesULawandPoliticsWorldAffairs : return "iTunes U|Law & Politics|World Affairs"
            case .iTunesUWritingandLiteratureComparativeLiterature : return "iTunes U|Writing & Literature|Comparative Literature"
            case .iTunesUPhilosophyAesthetics : return "iTunes U|Philosophy|Aesthetics"
            case .iTunesUPhilosophyEpistemology : return "iTunes U|Philosophy|Epistemology"
            case .iTunesUPhilosophyEthics : return "iTunes U|Philosophy|Ethics"
            case .iTunesUPhilosophyMetaphysics : return "iTunes U|Philosophy|Metaphysics"
            case .iTunesUPhilosophyPoliticalPhilosophy : return "iTunes U|Philosophy|Political Philosophy"
            case .iTunesUPhilosophyLogic : return "iTunes U|Philosophy|Logic"
            case .iTunesUPhilosophyPhilosophyofLanguage : return "iTunes U|Philosophy|Philosophy of Language"
            case .iTunesUPhilosophyPhilosophyofReligion : return "iTunes U|Philosophy|Philosophy of Religion"
            case .iTunesUSocialScienceArchaeology : return "iTunes U|Social Science|Archaeology"
            case .iTunesUSocialScienceAnthropology : return "iTunes U|Social Science|Anthropology"
            case .iTunesUReligionandSpiritualityBuddhism : return "iTunes U|Religion & Spirituality|Buddhism"
            case .iTunesUReligionandSpiritualityChristianity : return "iTunes U|Religion & Spirituality|Christianity"
            case .iTunesUReligionandSpiritualityComparativeReligion : return "iTunes U|Religion & Spirituality|Comparative Religion"
            case .iTunesUReligionandSpiritualityHinduism : return "iTunes U|Religion & Spirituality|Hinduism"
            case .iTunesUReligionandSpiritualityIslam : return "iTunes U|Religion & Spirituality|Islam"
            case .iTunesUReligionandSpiritualityJudaism : return "iTunes U|Religion & Spirituality|Judaism"
            case .iTunesUReligionandSpiritualityOtherReligions : return "iTunes U|Religion & Spirituality|Other Religions"
            case .iTunesUReligionandSpiritualitySpirituality : return "iTunes U|Religion & Spirituality|Spirituality"
            case .iTunesUScienceEnvironment : return "iTunes U|Science|Environment"
            case .iTunesUSocietyAfricanStudies : return "iTunes U|Society|African Studies"
            case .iTunesUSocietyAmericanStudies : return "iTunes U|Society|American Studies"
            case .iTunesUSocietyCrossculturalStudies : return "iTunes U|Society|Cross-cultural Studies"
            case .iTunesUSocietyImmigrationandEmigration : return "iTunes U|Society|Immigration & Emigration"
            case .iTunesUSocietyRaceandEthnicityStudies : return "iTunes U|Society|Race & Ethnicity Studies"
            case .iTunesUSocietySexualityStudies : return "iTunes U|Society|Sexuality Studies"
            case .iTunesUTeachingandLearningEducationalTechnology : return "iTunes U|Teaching & Learning|Educational Technology"
            case .iTunesUTeachingandLearningInformationLibraryScience : return "iTunes U|Teaching & Learning|Information/Library Science"
            case .iTunesULanguagesDutch : return "iTunes U|Languages|Dutch"
            case .iTunesULanguagesLuxembourgish : return "iTunes U|Languages|Luxembourgish"
            case .iTunesULanguagesSwedish : return "iTunes U|Languages|Swedish"
            case .iTunesULanguagesNorwegian : return "iTunes U|Languages|Norwegian"
            case .iTunesULanguagesFinnish : return "iTunes U|Languages|Finnish"
            case .iTunesULanguagesDanish : return "iTunes U|Languages|Danish"
            case .iTunesULanguagesPolish : return "iTunes U|Languages|Polish"
            case .iTunesULanguagesTurkish : return "iTunes U|Languages|Turkish"
            case .iTunesULanguagesFlemish : return "iTunes U|Languages|Flemish"
            case .audiobooks : return "Audiobooks"
            case .audiobooksFiction : return "Audiobooks|Fiction"
            case .audiobooksArtsandEntertainment : return "Audiobooks|Arts & Entertainment"
            case .audiobooksBiographiesandMemoirs : return "Audiobooks|Biographies & Memoirs"
            case .audiobooksBusinessandPersonalFinance : return "Audiobooks|Business & Personal Finance"
            case .audiobooksKidsandYoungAdults : return "Audiobooks|Kids & Young Adults"
            case .audiobooksClassics : return "Audiobooks|Classics"
            case .audiobooksComedy : return "Audiobooks|Comedy"
            case .audiobooksDramaandPoetry : return "Audiobooks|Drama & Poetry"
            case .audiobooksSpeakersandStorytellers : return "Audiobooks|Speakers & Storytellers"
            case .audiobooksHistory : return "Audiobooks|History"
            case .audiobooksLanguages : return "Audiobooks|Languages"
            case .audiobooksMysteriesandThrillers : return "Audiobooks|Mysteries & Thrillers"
            case .audiobooksNonfiction : return "Audiobooks|Nonfiction"
            case .audiobooksReligionandSpirituality : return "Audiobooks|Religion & Spirituality"
            case .audiobooksScienceandNature : return "Audiobooks|Science & Nature"
            case .audiobooksSciFiandFantasy : return "Audiobooks|Sci Fi & Fantasy"
            case .audiobooksSelfDevelopment : return "Audiobooks|Self-Development"
            case .audiobooksSportsandOutdoors : return "Audiobooks|Sports & Outdoors"
            case .audiobooksTechnology : return "Audiobooks|Technology"
            case .audiobooksTravelandAdventure : return "Audiobooks|Travel & Adventure"
            case .musicSpokenWord : return "Music|Spoken Word"
            case .musicDisney : return "Music|Disney"
            case .musicFrenchPop : return "Music|French Pop"
            case .musicGermanPop : return "Music|German Pop"
            case .musicGermanFolk : return "Music|German Folk"
            case .audiobooksRomance : return "Audiobooks|Romance"
            case .audiobooksAudiobooksLatino : return "Audiobooks|Audiobooks Latino"
            case .booksComicsandGraphicNovelsMangaAction : return "Books|Comics & Graphic Novels|Manga|Action"
            case .booksComicsandGraphicNovelsMangaComedy : return "Books|Comics & Graphic Novels|Manga|Comedy"
            case .booksComicsandGraphicNovelsMangaErotica : return "Books|Comics & Graphic Novels|Manga|Erotica"
            case .booksComicsandGraphicNovelsMangaFantasy : return "Books|Comics & Graphic Novels|Manga|Fantasy"
            case .booksComicsandGraphicNovelsMangaFourCellManga : return "Books|Comics & Graphic Novels|Manga|Four Cell Manga"
            case .booksComicsandGraphicNovelsMangaGayandLesbian : return "Books|Comics & Graphic Novels|Manga|Gay & Lesbian"
            case .booksComicsandGraphicNovelsMangaHardBoiled : return "Books|Comics & Graphic Novels|Manga|Hard-Boiled"
            case .booksComicsandGraphicNovelsMangaHeroes : return "Books|Comics & Graphic Novels|Manga|Heroes"
            case .booksComicsandGraphicNovelsMangaHistoricalFiction : return "Books|Comics & Graphic Novels|Manga|Historical Fiction"
            case .booksComicsandGraphicNovelsMangaMecha : return "Books|Comics & Graphic Novels|Manga|Mecha"
            case .booksComicsandGraphicNovelsMangaMystery : return "Books|Comics & Graphic Novels|Manga|Mystery"
            case .booksComicsandGraphicNovelsMangaNonfiction : return "Books|Comics & Graphic Novels|Manga|Nonfiction"
            case .booksComicsandGraphicNovelsMangaReligious : return "Books|Comics & Graphic Novels|Manga|Religious"
            case .booksComicsandGraphicNovelsMangaRomance : return "Books|Comics & Graphic Novels|Manga|Romance"
            case .booksComicsandGraphicNovelsMangaRomanticComedy : return "Books|Comics & Graphic Novels|Manga|Romantic Comedy"
            case .booksComicsandGraphicNovelsMangaScienceFiction : return "Books|Comics & Graphic Novels|Manga|Science Fiction"
            case .booksComicsandGraphicNovelsMangaSports : return "Books|Comics & Graphic Novels|Manga|Sports"
            case .booksFictionandLiteratureLightNovels : return "Books|Fiction & Literature|Light Novels"
            case .booksComicsandGraphicNovelsMangaHorror : return "Books|Comics & Graphic Novels|Manga|Horror"
            case .booksComicsandGraphicNovelsComics : return "Books|Comics & Graphic Novels|Comics"
            case .booksRomanceMulticultural : return "Books|Romance|Multicultural"
            case .audiobooksErotica : return "Audiobooks|Erotica"
            case .audiobooksLightNovels : return "Audiobooks|Light Novels"
            default:
            return nil
        }
    }
    
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
    
    var stik: Stik? {
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
    
    static let nameMapping: [String: Genres] = {
        var mapping: [String: Genres] = [:]
        for genre in Genres.allCases {
            let name = genre.predefinedGenres
            mapping[name ?? ""] = genre
        }
        return mapping
    }()

    init?(genreName: String) {
        self = Genres.nameMapping[genreName] ?? .unknown
    }

}
