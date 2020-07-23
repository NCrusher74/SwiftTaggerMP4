//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 6/24/20.
//

import Foundation

enum LocaleCodes: String {
    /// Afghanistan - AF - AFG - 004
    case Afghanistan = "AF"
    /// Aland Islands - AX - ALA - 248
    case Aland_Islands = "AX"
    /// Albania - AL - ALB - 008
    case Albania = "AL"
    /// Algeria - DZ - DZA - 012
    case Algeria = "DZ"
    /// American Samoa - AS - ASM - 016
    case American_Samoa = "AS"
    /// Andorra - AD - AND - 020
    case Andorra = "AD"
    /// Angola - AO - AGO - 024
    case Angola = "AO"
    /// Anguilla - AI - AIA - 660
    case Anguilla = "AI"
    /// Antarctica - AQ - ATA - 010
    case Antarctica = "AQ"
    /// Antigua and Barbuda - AG - ATG - 028
    case Antigua_and_Barbuda = "AG"
    /// Argentina - AR - ARG - 032
    case Argentina = "AR"
    /// Armenia - AM - ARM - 051
    case Armenia = "AM"
    /// Aruba - AW - ABW - 533
    case Aruba = "AW"
    /// Australia - AU - AUS - 036
    case Australia = "AU"
    /// Austria - AT - AUT - 040
    case Austria = "AT"
    /// Azerbaijan - AZ - AZE - 031
    case Azerbaijan = "AZ"
    /// Bahamas - BS - BHS - 044
    case Bahamas = "BS"
    /// Bahrain - BH - BHR - 048
    case Bahrain = "BH"
    /// Bangladesh - BD - BGD - 050
    case Bangladesh = "BD"
    /// Barbados - BB - BRB - 052
    case Barbados = "BB"
    /// Belarus - BY - BLR - 112
    case Belarus = "BY"
    /// Belgium - BE - BEL - 056
    case Belgium = "BE"
    /// Belize - BZ - BLZ - 084
    case Belize = "BZ"
    /// Benin - BJ - BEN - 204
    case Benin = "BJ"
    /// Bermuda - BM - BMU - 060
    case Bermuda = "BM"
    /// Bhutan - BT - BTN - 064
    case Bhutan = "BT"
    /// Bolivia - BO - BOL - 068
    case Bolivia = "BO"
    /// Bosnia and Herzegovina - BA - BIH - 070
    case Bosnia_and_Herzegovina = "BA"
    /// Botswana - BW - BWA - 072
    case Botswana = "BW"
    /// Bouvet Island - BV - BVT - 074
    case Bouvet_Island = "BV"
    /// Brazil - BR - BRA - 076
    case Brazil = "BR"
    /// British Virgin Islands - VG - VGB - 092
    case British_Virgin_Islands = "VG"
    /// British Indian Ocean Territory - IO - IOT - 086
    case British_Indian_Ocean_Territory = "IO"
    /// Brunei Darussalam - BN - BRN - 096
    case Brunei_Darussalam = "BN"
    /// Bulgaria - BG - BGR - 100
    case Bulgaria = "BG"
    /// Burkina Faso - BF - BFA - 854
    case Burkina_Faso = "BF"
    /// Burundi - BI - BDI - 108
    case Burundi = "BI"
    /// Cambodia - KH - KHM - 116
    case Cambodia = "KH"
    /// Cameroon - CM - CMR - 120
    case Cameroon = "CM"
    /// Canada - CA - CAN - 124
    case Canada = "CA"
    /// Cape Verde - CV - CPV - 132
    case Cape_Verde = "CV"
    /// Carribean Netherlands
    case Carribean_Netherlands = "BQ"
    /// Cayman Islands - KY - CYM - 136
    case Cayman_Islands = "KY"
    /// Central African Republic - CF - CAF - 140
    case Central_African_Republic = "CF"
    /// Chad - TD - TCD - 148
    case Chad = "TD"
    /// Chile - CL - CHL - 152
    case Chile = "CL"
    /// China - CN - CHN - 156
    case China = "CN"
    /// Hong Kong, SAR China - HK - HKG - 344
    case Hong_Kong_SAR_China = "HK"
    /// Macao, SAR China - MO - MAC - 446
    case Macao_SAR_China = "MO"
    /// Christmas Island - CX - CXR - 162
    case Christmas_Island = "CX"
    /// Cocos (Keeling) Islands - CC - CCK - 166
    case Cocos_Keeling_Islands = "CC"
    /// Colombia - CO - COL - 170
    case Colombia = "CO"
    /// Comoros - KM - COM - 174
    case Comoros = "KM"
    /// Congo (Brazzaville) - CG - COG - 178
    case Congo_Brazzaville = "CG"
    /// Congo, Kinshasa) - CD - COD - 180
    case Congo_Kinshasa = "CD"
    /// Cook Islands - CK - COK - 184
    case Cook_Islands = "CK"
    /// Costa Rica - CR - CRI - 188
    case Costa_Rica = "CR"
    /// Côte d'Ivoire - CI - CIV - 384
    case Côte_dIvoire = "CI"
    /// Croatia - HR - HRV - 191
    case Croatia = "HR"
    /// Cuba - CU - CUB - 192
    case Cuba = "CU"
    /// Curaçao
    case Curaçao = "CW"
    /// Cyprus - CY - CYP - 196
    case Cyprus = "CY"
    /// Czech Republic - CZ - CZE - 203
    case Czech_Republic = "CZ"
    /// Denmark - DK - DNK - 208
    case Denmark = "DK"
    /// Djibouti - DJ - DJI - 262
    case Djibouti = "DJ"
    /// Dominica - DM - DMA - 212
    case Dominica = "DM"
    /// Dominican Republic - DO - DOM - 214
    case Dominican_Republic = "DO"
    /// Ecuador - EC - ECU - 218
    case Ecuador = "EC"
    /// Egypt - EG - EGY - 818
    case Egypt = "EG"
    /// El Salvador - SV - SLV - 222
    case El_Salvador = "SV"
    /// Equatorial Guinea - GQ - GNQ - 226
    case Equatorial_Guinea = "GQ"
    /// Eritrea - ER - ERI - 232
    case Eritrea = "ER"
    /// Estonia - EE - EST - 233
    case Estonia = "EE"
    /// Ethiopia - ET - ETH - 231
    case Ethiopia = "ET"
    /// Falkland Islands (Malvinas) - FK - FLK - 238
    case Falkland_Islands_Malvinas = "FK"
    /// Faroe Islands - FO - FRO - 234
    case Faroe_Islands = "FO"
    /// Fiji - FJ - FJI - 242
    case Fiji = "FJ"
    /// Finland - FI - FIN - 246
    case Finland = "FI"
    /// France - FR - FRA - 250
    case France = "FR"
    /// French Guiana - GF - GUF - 254
    case French_Guiana = "GF"
    /// French Polynesia - PF - PYF - 258
    case French_Polynesia = "PF"
    /// French Southern Territories - TF - ATF - 260
    case French_Southern_Territories = "TF"
    /// Gabon - GA - GAB - 266
    case Gabon = "GA"
    /// Gambia - GM - GMB - 270
    case Gambia = "GM"
    /// Georgia - GE - GEO - 268
    case Georgia = "GE"
    /// Germany - DE - DEU - 276
    case Germany = "DE"
    /// Ghana - GH - GHA - 288
    case Ghana = "GH"
    /// Gibraltar - GI - GIB - 292
    case Gibraltar = "GI"
    /// Greece - GR - GRC - 300
    case Greece = "GR"
    /// Greenland - GL - GRL - 304
    case Greenland = "GL"
    /// Grenada - GD - GRD - 308
    case Grenada = "GD"
    /// Guadeloupe - GP - GLP - 312
    case Guadeloupe = "GP"
    /// Guam - GU - GUM - 316
    case Guam = "GU"
    /// Guatemala - GT - GTM - 320
    case Guatemala = "GT"
    /// Guernsey - GG - GGY - 831
    case Guernsey = "GG"
    /// Guinea - GN - GIN - 324
    case Guinea = "GN"
    /// Guinea-Bissau - GW - GNB - 624
    case Guinea_Bissau = "GW"
    /// Guyana - GY - GUY - 328
    case Guyana = "GY"
    /// Haiti - HT - HTI - 332
    case Haiti = "HT"
    /// Heard and Mcdonald Islands - HM - HMD - 334
    case Heard_and_Mcdonald_Islands = "HM"
    /// Holy See (Vatican City State) - VA - VAT - 336
    case Holy_See_Vatican_City_State = "VA"
    /// Honduras - HN - HND - 340
    case Honduras = "HN"
    /// Hungary - HU - HUN - 348
    case Hungary = "HU"
    /// Iceland - IS - ISL - 352
    case Iceland = "IS"
    /// India - IN - IND - 356
    case India = "IN"
    /// Indonesia - ID - IDN - 360
    case Indonesia = "ID"
    /// Iran, Islamic Republic of - IR - IRN - 364
    case Iran_Islamic_Republic_of = "IR"
    /// Iraq - IQ - IRQ - 368
    case Iraq = "IQ"
    /// Ireland - IE - IRL - 372
    case Ireland = "IE"
    /// Isle of Man - IM - IMN - 833
    case Isle_of_Man = "IM"
    /// Israel - IL - ISR - 376
    case Israel = "IL"
    /// Italy - IT - ITA - 380
    case Italy = "IT"
    /// Jamaica - JM - JAM - 388
    case Jamaica = "JM"
    /// Japan - JP - JPN - 392
    case Japan = "JP"
    /// Jersey - JE - JEY - 832
    case Jersey = "JE"
    /// Jordan - JO - JOR - 400
    case Jordan = "JO"
    /// Kazakhstan - KZ - KAZ - 398
    case Kazakhstan = "KZ"
    /// Kenya - KE - KEN - 404
    case Kenya = "KE"
    /// Kiribati - KI - KIR - 296
    case Kiribati = "KI"
    /// Korea (North) - KP - PRK - 408
    case Korea_North = "KP"
    /// Korea (South) - KR - KOR - 410
    case Korea_South = "KR"
    /// Kuwait - KW - KWT - 414
    case Kuwait = "KW"
    /// Kyrgyzstan - KG - KGZ - 417
    case Kyrgyzstan = "KG"
    /// Lao PDR - LA - LAO - 418
    case Lao_PDR = "LA"
    /// Latvia - LV - LVA - 428
    case Latvia = "LV"
    /// Lebanon - LB - LBN - 422
    case Lebanon = "LB"
    /// Lesotho - LS - LSO - 426
    case Lesotho = "LS"
    /// Liberia - LR - LBR - 430
    case Liberia = "LR"
    /// Libya - LY - LBY - 434
    case Libya = "LY"
    /// Liechtenstein - LI - LIE - 438
    case Liechtenstein = "LI"
    /// Lithuania - LT - LTU - 440
    case Lithuania = "LT"
    /// Luxembourg - LU - LUX - 442
    case Luxembourg = "LU"
    /// Macedonia, Republic of - MK - MKD - 807
    case Macedonia_Republic_of = "MK"
    /// Madagascar - MG - MDG - 450
    case Madagascar = "MG"
    /// Malawi - MW - MWI - 454
    case Malawi = "MW"
    /// Malaysia - MY - MYS - 458
    case Malaysia = "MY"
    /// Maldives - MV - MDV - 462
    case Maldives = "MV"
    /// Mali - ML - MLI - 466
    case Mali = "ML"
    /// Malta - MT - MLT - 470
    case Malta = "MT"
    /// Marshall Islands - MH - MHL - 584
    case Marshall_Islands = "MH"
    /// Martinique - MQ - MTQ - 474
    case Martinique = "MQ"
    /// Mauritania - MR - MRT - 478
    case Mauritania = "MR"
    /// Mauritius - MU - MUS - 480
    case Mauritius = "MU"
    /// Mayotte - YT - MYT - 175
    case Mayotte = "YT"
    /// Mexico - MX - MEX - 484
    case Mexico = "MX"
    /// Micronesia, Federated States of - FM - FSM - 583
    case Micronesia_Federated_States_of = "FM"
    /// Moldova - MD - MDA - 498
    case Moldova = "MD"
    /// Monaco - MC - MCO - 492
    case Monaco = "MC"
    /// Mongolia - MN - MNG - 496
    case Mongolia = "MN"
    /// Montenegro - ME - MNE - 499
    case Montenegro = "ME"
    /// Montserrat - MS - MSR - 500
    case Montserrat = "MS"
    /// Morocco - MA - MAR - 504
    case Morocco = "MA"
    /// Mozambique - MZ - MOZ - 508
    case Mozambique = "MZ"
    /// Myanmar - MM - MMR - 104
    case Myanmar = "MM"
    /// Namibia - NA - NAM - 516
    case Namibia = "NA"
    /// Nauru - NR - NRU - 520
    case Nauru = "NR"
    /// Nepal - NP - NPL - 524
    case Nepal = "NP"
    /// Netherlands - NL - NLD - 528
    case Netherlands = "NL"
    /// Netherlands Antilles - AN - ANT - 530
    case Netherlands_Antilles = "AN"
    /// New Caledonia - NC - NCL - 540
    case New_Caledonia = "NC"
    /// New Zealand - NZ - NZL - 554
    case New_Zealand = "NZ"
    /// Nicaragua - NI - NIC - 558
    case Nicaragua = "NI"
    /// Niger - NE - NER - 562
    case Niger = "NE"
    /// Nigeria - NG - NGA - 566
    case Nigeria = "NG"
    /// Niue - NU - NIU - 570
    case Niue = "NU"
    /// Norfolk Island - NF - NFK - 574
    case Norfolk_Island = "NF"
    /// Northern Mariana Islands - MP - MNP - 580
    case Northern_Mariana_Islands = "MP"
    /// Norway - NO - NOR - 578
    case Norway = "NO"
    /// Oman - OM - OMN - 512
    case Oman = "OM"
    /// Pakistan - PK - PAK - 586
    case Pakistan = "PK"
    /// Palau - PW - PLW - 585
    case Palau = "PW"
    /// Palestinian Territory - PS - PSE - 275
    case Palestinian_Territory = "PS"
    /// Panama - PA - PAN - 591
    case Panama = "PA"
    /// Papua New Guinea - PG - PNG - 598
    case Papua_New_Guinea = "PG"
    /// Paraguay - PY - PRY - 600
    case Paraguay = "PY"
    /// Peru - PE - PER - 604
    case Peru = "PE"
    /// Philippines - PH - PHL - 608
    case Philippines = "PH"
    /// Pitcairn - PN - PCN - 612
    case Pitcairn = "PN"
    /// Poland - PL - POL - 616
    case Poland = "PL"
    /// Portugal - PT - PRT - 620
    case Portugal = "PT"
    /// Puerto Rico - PR - PRI - 630
    case Puerto_Rico = "PR"
    /// Qatar - QA - QAT - 634
    case Qatar = "QA"
    /// Réunion - RE - REU - 638
    case Réunion = "RE"
    /// Romania - RO - ROU - 642
    case Romania = "RO"
    /// Russian Federation - RU - RUS - 643
    case Russian_Federation = "RU"
    /// Rwanda - RW - RWA - 646
    case Rwanda = "RW"
    /// Saint-Barthélemy - BL - BLM - 652
    case Saint_Barthélemy = "BL"
    /// Saint Helena - SH - SHN - 654
    case Saint_Helena = "SH"
    /// Saint Kitts and Nevis - KN - KNA - 659
    case Saint_Kitts_and_Nevis = "KN"
    /// Saint Lucia - LC - LCA - 662
    case Saint_Lucia = "LC"
    /// Saint-Martin (French part) - MF - MAF - 663
    case Saint_Martin_French = "MF"
    /// Saint Pierre and Miquelon - PM - SPM - 666
    case Saint_Pierre_and_Miquelon = "PM"
    /// Saint Vincent and Grenadines - VC - VCT - 670
    case Saint_Vincent_and_Grenadines = "VC"
    /// Samoa - WS - WSM - 882
    case Samoa = "WS"
    /// San Marino - SM - SMR - 674
    case San_Marino = "SM"
    /// Sao Tome and Principe - ST - STP - 678
    case Sao_Tome_and_Principe = "ST"
    /// Saudi Arabia - SA - SAU - 682
    case Saudi_Arabia = "SA"
    /// Senegal - SN - SEN - 686
    case Senegal = "SN"
    /// Serbia - RS - SRB - 688
    case Serbia = "RS"
    /// Seychelles - SC - SYC - 690
    case Seychelles = "SC"
    /// Sierra Leone - SL - SLE - 694
    case Sierra_Leone = "SL"
    /// Singapore - SG - SGP - 702
    case Singapore = "SG"
    /// Sint Maarten
    case Sint_Maarten = "SX"
    /// Slovakia - SK - SVK - 703
    case Slovakia = "SK"
    /// Slovenia - SI - SVN - 705
    case Slovenia = "SI"
    /// Solomon Islands - SB - SLB - 090
    case Solomon_Islands = "SB"
    /// Somalia - SO - SOM - 706
    case Somalia = "SO"
    /// South Africa - ZA - ZAF - 710
    case South_Africa = "ZA"
    /// South Georgia and the South Sandwich Islands - GS - SGS - 239
    case South_Georgia_and_the_South_Sandwich_Islands = "GS"
    /// South Sudan - SS - SSD - 728
    case South_Sudan = "SS"
    /// Spain - ES - ESP - 724
    case Spain = "ES"
    /// Sri Lanka - LK - LKA - 144
    case Sri_Lanka = "LK"
    /// Sudan - SD - SDN - 736
    case Sudan = "SD"
    /// Suriname - SR - SUR - 740
    case Suriname = "SR"
    /// Svalbard and Jan Mayen Islands - SJ - SJM - 744
    case Svalbard_and_Jan_Mayen_Islands = "SJ"
    /// Swaziland - SZ - SWZ - 748
    case Swaziland = "SZ"
    /// Sweden - SE - SWE - 752
    case Sweden = "SE"
    /// Switzerland - CH - CHE - 756
    case Switzerland = "CH"
    /// Syrian Arab Republic (Syria) - SY - SYR - 760
    case Syrian_Arab_Republic_Syria = "SY"
    /// Taiwan, Republic of China - TW - TWN - 158
    case Taiwan_Republic_of_China = "TW"
    /// Tajikistan - TJ - TJK - 762
    case Tajikistan = "TJ"
    /// Tanzania, United Republic of - TZ - TZA - 834
    case Tanzania_United_Republic_of = "TZ"
    /// Thailand - TH - THA - 764
    case Thailand = "TH"
    /// Timor-Leste - TL - TLS - 626
    case Timor_Leste = "TL"
    /// Togo - TG - TGO - 768
    case Togo = "TG"
    /// Tokelau - TK - TKL - 772
    case Tokelau = "TK"
    /// Tonga - TO - TON - 776
    case Tonga = "TO"
    /// Trinidad and Tobago - TT - TTO - 780
    case Trinidad_and_Tobago = "TT"
    /// Tunisia - TN - TUN - 788
    case Tunisia = "TN"
    /// Turkey - TR - TUR - 792
    case Turkey = "TR"
    /// Turkmenistan - TM - TKM - 795
    case Turkmenistan = "TM"
    /// Turks and Caicos Islands - TC - TCA - 796
    case Turks_and_Caicos_Islands = "TC"
    /// Tuvalu - TV - TUV - 798
    case Tuvalu = "TV"
    /// Uganda - UG - UGA - 800
    case Uganda = "UG"
    /// Ukraine - UA - UKR - 804
    case Ukraine = "UA"
    /// United Arab Emirates - AE - ARE - 784
    case United_Arab_Emirates = "AE"
    /// United Kingdom - GB - GBR - 826
    case United_Kingdom = "GB"
    /// United States of America - US - USA - 840
    case United_States_of_America = "US"
    /// US Minor Outlying Islands - UM - UMI - 581
    case US_Minor_Outlying_Islands = "UM"
    /// Uruguay - UY - URY - 858
    case Uruguay = "UY"
    /// Uzbekistan - UZ - UZB - 860
    case Uzbekistan = "UZ"
    /// Vanuatu - VU - VUT - 548
    case Vanuatu = "VU"
    /// Venezuela (Bolivarian Republic) - VE - VEN - 862
    case Venezuela_Bolivarian_Republic = "VE"
    /// Viet Nam - VN - VNM - 704
    case Viet_Nam = "VN"
    /// Virgin Islands, US - VI - VIR - 850
    case Virgin_Islands_US = "VI"
    /// Wallis and Futuna Islands - WF - WLF - 876
    case Wallis_and_Futuna_Islands = "WF"
    /// Western Sahara - EH - ESH - 732
    case Western_Sahara = "EH"
    /// Yemen - YE - YEM - 887
    case Yemen = "YE"
    /// Zambia - ZM - ZMB - 894
    case Zambia = "ZM"
    /// Zimbabwe - ZW - ZWE - 716
    case Zimbabwe = "ZW"

    var threeLetterCode: String? {
        switch self {
            /// Afghanistan - AF - AFG - 004
            case .Afghanistan : return "AFG"
            /// Aland Islands - AX - ALA - 248
            case .Aland_Islands : return "ALA"
            /// Albania - AL - ALB - 008
            case .Albania : return "ALB"
            /// Algeria - DZ - DZA - 012
            case .Algeria : return "DZA"
            /// American Samoa - AS - ASM - 016
            case .American_Samoa : return "ASM"
            /// Andorra - AD - AND - 020
            case .Andorra : return "AND"
            /// Angola - AO - AGO - 024
            case .Angola : return "AGO"
            /// Anguilla - AI - AIA - 660
            case .Anguilla : return "AIA"
            /// Antarctica - AQ - ATA - 010
            case .Antarctica : return "ATA"
            /// Antigua and Barbuda - AG - ATG - 028
            case .Antigua_and_Barbuda : return "ATG"
            /// Argentina - AR - ARG - 032
            case .Argentina : return "ARG"
            /// Armenia - AM - ARM - 051
            case .Armenia : return "ARM"
            /// Aruba - AW - ABW - 533
            case .Aruba : return "ABW"
            /// Australia - AU - AUS - 036
            case .Australia : return "AUS"
            /// Austria - AT - AUT - 040
            case .Austria : return "AUT"
            /// Azerbaijan - AZ - AZE - 031
            case .Azerbaijan : return "AZE"
            /// Bahamas - BS - BHS - 044
            case .Bahamas : return "BHS"
            /// Bahrain - BH - BHR - 048
            case .Bahrain : return "BHR"
            /// Bangladesh - BD - BGD - 050
            case .Bangladesh : return "BGD"
            /// Barbados - BB - BRB - 052
            case .Barbados : return "BRB"
            /// Belarus - BY - BLR - 112
            case .Belarus : return "BLR"
            /// Belgium - BE - BEL - 056
            case .Belgium : return "BEL"
            /// Belize - BZ - BLZ - 084
            case .Belize : return "BLZ"
            /// Benin - BJ - BEN - 204
            case .Benin : return "BEN"
            /// Bermuda - BM - BMU - 060
            case .Bermuda : return "BMU"
            /// Bhutan - BT - BTN - 064
            case .Bhutan : return "BTN"
            /// Bolivia - BO - BOL - 068
            case .Bolivia : return "BOL"
            /// Bosnia and Herzegovina - BA - BIH - 070
            case .Bosnia_and_Herzegovina : return "BIH"
            /// Botswana - BW - BWA - 072
            case .Botswana : return "BWA"
            /// Bouvet Island - BV - BVT - 074
            case .Bouvet_Island : return "BVT"
            /// Brazil - BR - BRA - 076
            case .Brazil : return "BRA"
            /// British Virgin Islands - VG - VGB - 092
            case .British_Virgin_Islands : return "VGB"
            /// British Indian Ocean Territory - IO - IOT - 086
            case .British_Indian_Ocean_Territory : return "IOT"
            /// Brunei Darussalam - BN - BRN - 096
            case .Brunei_Darussalam : return "BRN"
            /// Bulgaria - BG - BGR - 100
            case .Bulgaria : return "BGR"
            /// Burkina Faso - BF - BFA - 854
            case .Burkina_Faso : return "BFA"
            /// Burundi - BI - BDI - 108
            case .Burundi : return "BDI"
            /// Cambodia - KH - KHM - 116
            case .Cambodia : return "KHM"
            /// Cameroon - CM - CMR - 120
            case .Cameroon : return "CMR"
            /// Canada - CA - CAN - 124
            case .Canada : return "CAN"
            /// Cape Verde - CV - CPV - 132
            case .Cape_Verde : return "CPV"
            /// Cayman Islands - KY - CYM - 136
            case .Cayman_Islands : return "CYM"
            /// Central African Republic - CF - CAF - 140
            case .Central_African_Republic : return "CAF"
            /// Chad - TD - TCD - 148
            case .Chad : return "TCD"
            /// Chile - CL - CHL - 152
            case .Chile : return "CHL"
            /// China - CN - CHN - 156
            case .China : return "CHN"
            /// Hong Kong, SAR China - HK - HKG - 344
            case .Hong_Kong_SAR_China : return "HKG"
            /// Macao, SAR China - MO - MAC - 446
            case .Macao_SAR_China : return "MAC"
            /// Christmas Island - CX - CXR - 162
            case .Christmas_Island : return "CXR"
            /// Cocos (Keeling) Islands - CC - CCK - 166
            case .Cocos_Keeling_Islands : return "CCK"
            /// Colombia - CO - COL - 170
            case .Colombia : return "COL"
            /// Comoros - KM - COM - 174
            case .Comoros : return "COM"
            /// Congo (Brazzaville) - CG - COG - 178
            case .Congo_Brazzaville : return "COG"
            /// Congo, (Kinshasa) - CD - COD - 180
            case .Congo_Kinshasa : return "COD"
            /// Cook Islands - CK - COK - 184
            case .Cook_Islands : return "COK"
            /// Costa Rica - CR - CRI - 188
            case .Costa_Rica : return "CRI"
            /// Côte d'Ivoire - CI - CIV - 384
            case .Côte_dIvoire : return "CIV"
            /// Croatia - HR - HRV - 191
            case .Croatia : return "HRV"
            /// Cuba - CU - CUB - 192
            case .Cuba : return "CUB"
            /// Curaçao
            case .Curaçao : return nil
            /// Cyprus - CY - CYP - 196
            case .Cyprus : return "CYP"
            /// Czech Republic - CZ - CZE - 203
            case .Czech_Republic : return "CZE"
            /// Denmark - DK - DNK - 208
            case .Denmark : return "DNK"
            /// Djibouti - DJ - DJI - 262
            case .Djibouti : return "DJI"
            /// Dominica - DM - DMA - 212
            case .Dominica : return "DMA"
            /// Dominican Republic - DO - DOM - 214
            case .Dominican_Republic : return "DOM"
            /// Ecuador - EC - ECU - 218
            case .Ecuador : return "ECU"
            /// Egypt - EG - EGY - 818
            case .Egypt : return "EGY"
            /// El Salvador - SV - SLV - 222
            case .El_Salvador : return "SLV"
            /// Equatorial Guinea - GQ - GNQ - 226
            case .Equatorial_Guinea : return "GNQ"
            /// Eritrea - ER - ERI - 232
            case .Eritrea : return "ERI"
            /// Estonia - EE - EST - 233
            case .Estonia : return "EST"
            /// Ethiopia - ET - ETH - 231
            case .Ethiopia : return "ETH"
            /// Falkland Islands (Malvinas) - FK - FLK - 238
            case .Falkland_Islands_Malvinas : return "FLK"
            /// Faroe Islands - FO - FRO - 234
            case .Faroe_Islands : return "FRO"
            /// Fiji - FJ - FJI - 242
            case .Fiji : return "FJI"
            /// Finland - FI - FIN - 246
            case .Finland : return "FIN"
            /// France - FR - FRA - 250
            case .France : return "FRA"
            /// French Guiana - GF - GUF - 254
            case .French_Guiana : return "GUF"
            /// French Polynesia - PF - PYF - 258
            case .French_Polynesia : return "PYF"
            /// French Southern Territories - TF - ATF - 260
            case .French_Southern_Territories : return "ATF"
            /// Gabon - GA - GAB - 266
            case .Gabon : return "GAB"
            /// Gambia - GM - GMB - 270
            case .Gambia : return "GMB"
            /// Georgia - GE - GEO - 268
            case .Georgia : return "GEO"
            /// Germany - DE - DEU - 276
            case .Germany : return "DEU"
            /// Ghana - GH - GHA - 288
            case .Ghana : return "GHA"
            /// Gibraltar - GI - GIB - 292
            case .Gibraltar : return "GIB"
            /// Greece - GR - GRC - 300
            case .Greece : return "GRC"
            /// Greenland - GL - GRL - 304
            case .Greenland : return "GRL"
            /// Grenada - GD - GRD - 308
            case .Grenada : return "GRD"
            /// Guadeloupe - GP - GLP - 312
            case .Guadeloupe : return "GLP"
            /// Guam - GU - GUM - 316
            case .Guam : return "GUM"
            /// Guatemala - GT - GTM - 320
            case .Guatemala : return "GTM"
            /// Guernsey - GG - GGY - 831
            case .Guernsey : return "GGY"
            /// Guinea - GN - GIN - 324
            case .Guinea : return "GIN"
            /// Guinea-Bissau - GW - GNB - 624
            case .Guinea_Bissau : return "GNB"
            /// Guyana - GY - GUY - 328
            case .Guyana : return "GUY"
            /// Haiti - HT - HTI - 332
            case .Haiti : return "HTI"
            /// Heard and Mcdonald Islands - HM - HMD - 334
            case .Heard_and_Mcdonald_Islands : return "HMD"
            /// Holy See (Vatican City State) - VA - VAT - 336
            case .Holy_See_Vatican_City_State : return "VAT"
            /// Honduras - HN - HND - 340
            case .Honduras : return "HND"
            /// Hungary - HU - HUN - 348
            case .Hungary : return "HUN"
            /// Iceland - IS - ISL - 352
            case .Iceland : return "ISL"
            /// India - IN - IND - 356
            case .India : return "IND"
            /// Indonesia - ID - IDN - 360
            case .Indonesia : return "IDN"
            /// Iran, Islamic Republic of - IR - IRN - 364
            case .Iran_Islamic_Republic_of : return "IRN"
            /// Iraq - IQ - IRQ - 368
            case .Iraq : return "IRQ"
            /// Ireland - IE - IRL - 372
            case .Ireland : return "IRL"
            /// Isle of Man - IM - IMN - 833
            case .Isle_of_Man : return "IMN"
            /// Israel - IL - ISR - 376
            case .Israel : return "ISR"
            /// Italy - IT - ITA - 380
            case .Italy : return "ITA"
            /// Jamaica - JM - JAM - 388
            case .Jamaica : return "JAM"
            /// Japan - JP - JPN - 392
            case .Japan : return "JPN"
            /// Jersey - JE - JEY - 832
            case .Jersey : return "JEY"
            /// Jordan - JO - JOR - 400
            case .Jordan : return "JOR"
            /// Kazakhstan - KZ - KAZ - 398
            case .Kazakhstan : return "KAZ"
            /// Kenya - KE - KEN - 404
            case .Kenya : return "KEN"
            /// Kiribati - KI - KIR - 296
            case .Kiribati : return "KIR"
            /// Korea (North) - KP - PRK - 408
            case .Korea_North : return "PRK"
            /// Korea (South) - KR - KOR - 410
            case .Korea_South : return "KOR"
            /// Kuwait - KW - KWT - 414
            case .Kuwait : return "KWT"
            /// Kyrgyzstan - KG - KGZ - 417
            case .Kyrgyzstan : return "KGZ"
            /// Lao PDR - LA - LAO - 418
            case .Lao_PDR : return "LAO"
            /// Latvia - LV - LVA - 428
            case .Latvia : return "LVA"
            /// Lebanon - LB - LBN - 422
            case .Lebanon : return "LBN"
            /// Lesotho - LS - LSO - 426
            case .Lesotho : return "LSO"
            /// Liberia - LR - LBR - 430
            case .Liberia : return "LBR"
            /// Libya - LY - LBY - 434
            case .Libya : return "LBY"
            /// Liechtenstein - LI - LIE - 438
            case .Liechtenstein : return "LIE"
            /// Lithuania - LT - LTU - 440
            case .Lithuania : return "LTU"
            /// Luxembourg - LU - LUX - 442
            case .Luxembourg : return "LUX"
            /// Macedonia, Republic of - MK - MKD - 807
            case .Macedonia_Republic_of : return "MKD"
            /// Madagascar - MG - MDG - 450
            case .Madagascar : return "MDG"
            /// Malawi - MW - MWI - 454
            case .Malawi : return "MWI"
            /// Malaysia - MY - MYS - 458
            case .Malaysia : return "MYS"
            /// Maldives - MV - MDV - 462
            case .Maldives : return "MDV"
            /// Mali - ML - MLI - 466
            case .Mali : return "MLI"
            /// Malta - MT - MLT - 470
            case .Malta : return "MLT"
            /// Marshall Islands - MH - MHL - 584
            case .Marshall_Islands : return "MHL"
            /// Martinique - MQ - MTQ - 474
            case .Martinique : return "MTQ"
            /// Mauritania - MR - MRT - 478
            case .Mauritania : return "MRT"
            /// Mauritius - MU - MUS - 480
            case .Mauritius : return "MUS"
            /// Mayotte - YT - MYT - 175
            case .Mayotte : return "MYT"
            /// Mexico - MX - MEX - 484
            case .Mexico : return "MEX"
            /// Micronesia, Federated States of - FM - FSM - 583
            case .Micronesia_Federated_States_of : return "FSM"
            /// Moldova - MD - MDA - 498
            case .Moldova : return "MDA"
            /// Monaco - MC - MCO - 492
            case .Monaco : return "MCO"
            /// Mongolia - MN - MNG - 496
            case .Mongolia : return "MNG"
            /// Montenegro - ME - MNE - 499
            case .Montenegro : return "MNE"
            /// Montserrat - MS - MSR - 500
            case .Montserrat : return "MSR"
            /// Morocco - MA - MAR - 504
            case .Morocco : return "MAR"
            /// Mozambique - MZ - MOZ - 508
            case .Mozambique : return "MOZ"
            /// Myanmar - MM - MMR - 104
            case .Myanmar : return "MMR"
            /// Namibia - NA - NAM - 516
            case .Namibia : return "NAM"
            /// Nauru - NR - NRU - 520
            case .Nauru : return "NRU"
            /// Nepal - NP - NPL - 524
            case .Nepal : return "NPL"
            /// Netherlands - NL - NLD - 528
            case .Netherlands : return "NLD"
            /// Netherlands Antilles - AN - ANT - 530
            case .Netherlands_Antilles : return "ANT"
            /// New Caledonia - NC - NCL - 540
            case .New_Caledonia : return "NCL"
            /// New Zealand - NZ - NZL - 554
            case .New_Zealand : return "NZL"
            /// Nicaragua - NI - NIC - 558
            case .Nicaragua : return "NIC"
            /// Niger - NE - NER - 562
            case .Niger : return "NER"
            /// Nigeria - NG - NGA - 566
            case .Nigeria : return "NGA"
            /// Niue - NU - NIU - 570
            case .Niue : return "NIU"
            /// Norfolk Island - NF - NFK - 574
            case .Norfolk_Island : return "NFK"
            /// Northern Mariana Islands - MP - MNP - 580
            case .Northern_Mariana_Islands : return "MNP"
            /// Norway - NO - NOR - 578
            case .Norway : return "NOR"
            /// Oman - OM - OMN - 512
            case .Oman : return "OMN"
            /// Pakistan - PK - PAK - 586
            case .Pakistan : return "PAK"
            /// Palau - PW - PLW - 585
            case .Palau : return "PLW"
            /// Palestinian Territory - PS - PSE - 275
            case .Palestinian_Territory : return "PSE"
            /// Panama - PA - PAN - 591
            case .Panama : return "PAN"
            /// Papua New Guinea - PG - PNG - 598
            case .Papua_New_Guinea : return "PNG"
            /// Paraguay - PY - PRY - 600
            case .Paraguay : return "PRY"
            /// Peru - PE - PER - 604
            case .Peru : return "PER"
            /// Philippines - PH - PHL - 608
            case .Philippines : return "PHL"
            /// Pitcairn - PN - PCN - 612
            case .Pitcairn : return "PCN"
            /// Poland - PL - POL - 616
            case .Poland : return "POL"
            /// Portugal - PT - PRT - 620
            case .Portugal : return "PRT"
            /// Puerto Rico - PR - PRI - 630
            case .Puerto_Rico : return "PRI"
            /// Qatar - QA - QAT - 634
            case .Qatar : return "QAT"
            /// Réunion - RE - REU - 638
            case .Réunion : return "REU"
            /// Romania - RO - ROU - 642
            case .Romania : return "ROU"
            /// Russian Federation - RU - RUS - 643
            case .Russian_Federation : return "RUS"
            /// Rwanda - RW - RWA - 646
            case .Rwanda : return "RWA"
            /// Saint-Barthélemy - BL - BLM - 652
            case .Saint_Barthélemy : return "BLM"
            /// Saint Helena - SH - SHN - 654
            case .Saint_Helena : return "SHN"
            /// Saint Kitts and Nevis - KN - KNA - 659
            case .Saint_Kitts_and_Nevis : return "KNA"
            /// Saint Lucia - LC - LCA - 662
            case .Saint_Lucia : return "LCA"
            /// Saint-Martin (French part) - MF - MAF - 663
            case .Saint_Martin_French : return "MAF"
            /// Saint Pierre and Miquelon - PM - SPM - 666
            case .Saint_Pierre_and_Miquelon : return "SPM"
            /// Saint Vincent and Grenadines - VC - VCT - 670
            case .Saint_Vincent_and_Grenadines : return "VCT"
            /// Samoa - WS - WSM - 882
            case .Samoa : return "WSM"
            /// San Marino - SM - SMR - 674
            case .San_Marino : return "SMR"
            /// Sao Tome and Principe - ST - STP - 678
            case .Sao_Tome_and_Principe : return "STP"
            /// Saudi Arabia - SA - SAU - 682
            case .Saudi_Arabia : return "SAU"
            /// Senegal - SN - SEN - 686
            case .Senegal : return "SEN"
            /// Serbia - RS - SRB - 688
            case .Serbia : return "SRB"
            /// Seychelles - SC - SYC - 690
            case .Seychelles : return "SYC"
            /// Sierra Leone - SL - SLE - 694
            case .Sierra_Leone : return "SLE"
            /// Singapore - SG - SGP - 702
            case .Singapore : return "SGP"
            /// Slovakia - SK - SVK - 703
            case .Slovakia : return "SVK"
            /// Slovenia - SI - SVN - 705
            case .Slovenia : return "SVN"
            /// Solomon Islands - SB - SLB - 090
            case .Solomon_Islands : return "SLB"
            /// Somalia - SO - SOM - 706
            case .Somalia : return "SOM"
            /// South Africa - ZA - ZAF - 710
            case .South_Africa : return "ZAF"
            /// South Georgia and the South Sandwich Islands - GS - SGS - 239
            case .South_Georgia_and_the_South_Sandwich_Islands : return "SGS"
            /// South Sudan - SS - SSD - 728
            case .South_Sudan : return "SSD"
            /// Spain - ES - ESP - 724
            case .Spain : return "ESP"
            /// Sri Lanka - LK - LKA - 144
            case .Sri_Lanka : return "LKA"
            /// Sudan - SD - SDN - 736
            case .Sudan : return "SDN"
            /// Suriname - SR - SUR - 740
            case .Suriname : return "SUR"
            /// Svalbard and Jan Mayen Islands - SJ - SJM - 744
            case .Svalbard_and_Jan_Mayen_Islands : return "SJM"
            /// Swaziland - SZ - SWZ - 748
            case .Swaziland : return "SWZ"
            /// Sweden - SE - SWE - 752
            case .Sweden : return "SWE"
            /// Switzerland - CH - CHE - 756
            case .Switzerland : return "CHE"
            /// Syrian Arab Republic (Syria) - SY - SYR - 760
            case .Syrian_Arab_Republic_Syria : return "SYR"
            /// Taiwan, Republic of China - TW - TWN - 158
            case .Taiwan_Republic_of_China : return "TWN"
            /// Tajikistan - TJ - TJK - 762
            case .Tajikistan : return "TJK"
            /// Tanzania, United Republic of - TZ - TZA - 834
            case .Tanzania_United_Republic_of : return "TZA"
            /// Thailand - TH - THA - 764
            case .Thailand : return "THA"
            /// Timor-Leste - TL - TLS - 626
            case .Timor_Leste : return "TLS"
            /// Togo - TG - TGO - 768
            case .Togo : return "TGO"
            /// Tokelau - TK - TKL - 772
            case .Tokelau : return "TKL"
            /// Tonga - TO - TON - 776
            case .Tonga : return "TON"
            /// Trinidad and Tobago - TT - TTO - 780
            case .Trinidad_and_Tobago : return "TTO"
            /// Tunisia - TN - TUN - 788
            case .Tunisia : return "TUN"
            /// Turkey - TR - TUR - 792
            case .Turkey : return "TUR"
            /// Turkmenistan - TM - TKM - 795
            case .Turkmenistan : return "TKM"
            /// Turks and Caicos Islands - TC - TCA - 796
            case .Turks_and_Caicos_Islands : return "TCA"
            /// Tuvalu - TV - TUV - 798
            case .Tuvalu : return "TUV"
            /// Uganda - UG - UGA - 800
            case .Uganda : return "UGA"
            /// Ukraine - UA - UKR - 804
            case .Ukraine : return "UKR"
            /// United Arab Emirates - AE - ARE - 784
            case .United_Arab_Emirates : return "ARE"
            /// United Kingdom - GB - GBR - 826
            case .United_Kingdom : return "GBR"
            /// United States of America - US - USA - 840
            case .United_States_of_America : return "USA"
            /// US Minor Outlying Islands - UM - UMI - 581
            case .US_Minor_Outlying_Islands : return "UMI"
            /// Uruguay - UY - URY - 858
            case .Uruguay : return "URY"
            /// Uzbekistan - UZ - UZB - 860
            case .Uzbekistan : return "UZB"
            /// Vanuatu - VU - VUT - 548
            case .Vanuatu : return "VUT"
            /// Venezuela (Bolivarian Republic) - VE - VEN - 862
            case .Venezuela_Bolivarian_Republic : return "VEN"
            /// Viet Nam - VN - VNM - 704
            case .Viet_Nam : return "VNM"
            /// Virgin Islands, US - VI - VIR - 850
            case .Virgin_Islands_US : return "VIR"
            /// Wallis and Futuna Islands - WF - WLF - 876
            case .Wallis_and_Futuna_Islands : return "WLF"
            /// Western Sahara - EH - ESH - 732
            case .Western_Sahara : return "ESH"
            /// Yemen - YE - YEM - 887
            case .Yemen : return "YEM"
            /// Zambia - ZM - ZMB - 894
            case .Zambia : return "ZMB"
            /// Zimbabwe - ZW - ZWE - 716
            case .Zimbabwe : return "ZWE"
            case .Carribean_Netherlands: return nil
            case .Sint_Maarten: return nil
        }
    }
    
    var unCode: Int? {
        switch self {
            /// Afghanistan - AF - AFG - 004
            case .Afghanistan : return 004
            /// Aland Islands - AX - ALA - 248
            case .Aland_Islands : return 248
            /// Albania - AL - ALB - 008
            case .Albania : return 008
            /// Algeria - DZ - DZA - 012
            case .Algeria : return 012
            /// American Samoa - AS - ASM - 016
            case .American_Samoa : return 016
            /// Andorra - AD - AND - 020
            case .Andorra : return 020
            /// Angola - AO - AGO - 024
            case .Angola : return 024
            /// Anguilla - AI - AIA - 660
            case .Anguilla : return 660
            /// Antarctica - AQ - ATA - 010
            case .Antarctica : return 010
            /// Antigua and Barbuda - AG - ATG - 028
            case .Antigua_and_Barbuda : return 028
            /// Argentina - AR - ARG - 032
            case .Argentina : return 032
            /// Armenia - AM - ARM - 051
            case .Armenia : return 051
            /// Aruba - AW - ABW - 533
            case .Aruba : return 533
            /// Australia - AU - AUS - 036
            case .Australia : return 036
            /// Austria - AT - AUT - 040
            case .Austria : return 040
            /// Azerbaijan - AZ - AZE - 031
            case .Azerbaijan : return 031
            /// Bahamas - BS - BHS - 044
            case .Bahamas : return 044
            /// Bahrain - BH - BHR - 048
            case .Bahrain : return 048
            /// Bangladesh - BD - BGD - 050
            case .Bangladesh : return 050
            /// Barbados - BB - BRB - 052
            case .Barbados : return 052
            /// Belarus - BY - BLR - 112
            case .Belarus : return 112
            /// Belgium - BE - BEL - 056
            case .Belgium : return 056
            /// Belize - BZ - BLZ - 084
            case .Belize : return 084
            /// Benin - BJ - BEN - 204
            case .Benin : return 204
            /// Bermuda - BM - BMU - 060
            case .Bermuda : return 060
            /// Bhutan - BT - BTN - 064
            case .Bhutan : return 064
            /// Bolivia - BO - BOL - 068
            case .Bolivia : return 068
            /// Bosnia and Herzegovina - BA - BIH - 070
            case .Bosnia_and_Herzegovina : return 070
            /// Botswana - BW - BWA - 072
            case .Botswana : return 072
            /// Bouvet Island - BV - BVT - 074
            case .Bouvet_Island : return 074
            /// Brazil - BR - BRA - 076
            case .Brazil : return 076
            /// British Virgin Islands - VG - VGB - 092
            case .British_Virgin_Islands : return 092
            /// British Indian Ocean Territory - IO - IOT - 086
            case .British_Indian_Ocean_Territory : return 086
            /// Brunei Darussalam - BN - BRN - 096
            case .Brunei_Darussalam : return 096
            /// Bulgaria - BG - BGR - 100
            case .Bulgaria : return 100
            /// Burkina Faso - BF - BFA - 854
            case .Burkina_Faso : return 854
            /// Burundi - BI - BDI - 108
            case .Burundi : return 108
            /// Cambodia - KH - KHM - 116
            case .Cambodia : return 116
            /// Cameroon - CM - CMR - 120
            case .Cameroon : return 120
            /// Canada - CA - CAN - 124
            case .Canada : return 124
            /// Cape Verde - CV - CPV - 132
            case .Cape_Verde : return 132
            /// Cayman Islands - KY - CYM - 136
            case .Cayman_Islands : return 136
            /// Central African Republic - CF - CAF - 140
            case .Central_African_Republic : return 140
            /// Chad - TD - TCD - 148
            case .Chad : return 148
            /// Chile - CL - CHL - 152
            case .Chile : return 152
            /// China - CN - CHN - 156
            case .China : return 156
            /// Hong Kong, SAR China - HK - HKG - 344
            case .Hong_Kong_SAR_China : return 344
            /// Macao, SAR China - MO - MAC - 446
            case .Macao_SAR_China : return 446
            /// Christmas Island - CX - CXR - 162
            case .Christmas_Island : return 162
            /// Cocos (Keeling) Islands - CC - CCK - 166
            case .Cocos_Keeling_Islands : return 166
            /// Colombia - CO - COL - 170
            case .Colombia : return 170
            /// Comoros - KM - COM - 174
            case .Comoros : return 174
            /// Congo (Brazzaville) - CG - COG - 178
            case .Congo_Brazzaville : return 178
            /// Congo, (Kinshasa) - CD - COD - 180
            case .Congo_Kinshasa : return 180
            /// Cook Islands - CK - COK - 184
            case .Cook_Islands : return 184
            /// Costa Rica - CR - CRI - 188
            case .Costa_Rica : return 188
            /// Côte d'Ivoire - CI - CIV - 384
            case .Côte_dIvoire : return 384
            /// Croatia - HR - HRV - 191
            case .Croatia : return 191
            /// Cuba - CU - CUB - 192
            case .Cuba : return 192
            /// Curaçao
            case .Curaçao : return nil
            /// Cyprus - CY - CYP - 196
            case .Cyprus : return 196
            /// Czech Republic - CZ - CZE - 203
            case .Czech_Republic : return 203
            /// Denmark - DK - DNK - 208
            case .Denmark : return 208
            /// Djibouti - DJ - DJI - 262
            case .Djibouti : return 262
            /// Dominica - DM - DMA - 212
            case .Dominica : return 212
            /// Dominican Republic - DO - DOM - 214
            case .Dominican_Republic : return 214
            /// Ecuador - EC - ECU - 218
            case .Ecuador : return 218
            /// Egypt - EG - EGY - 818
            case .Egypt : return 818
            /// El Salvador - SV - SLV - 222
            case .El_Salvador : return 222
            /// Equatorial Guinea - GQ - GNQ - 226
            case .Equatorial_Guinea : return 226
            /// Eritrea - ER - ERI - 232
            case .Eritrea : return 232
            /// Estonia - EE - EST - 233
            case .Estonia : return 233
            /// Ethiopia - ET - ETH - 231
            case .Ethiopia : return 231
            /// Falkland Islands (Malvinas) - FK - FLK - 238
            case .Falkland_Islands_Malvinas : return 238
            /// Faroe Islands - FO - FRO - 234
            case .Faroe_Islands : return 234
            /// Fiji - FJ - FJI - 242
            case .Fiji : return 242
            /// Finland - FI - FIN - 246
            case .Finland : return 246
            /// France - FR - FRA - 250
            case .France : return 250
            /// French Guiana - GF - GUF - 254
            case .French_Guiana : return 254
            /// French Polynesia - PF - PYF - 258
            case .French_Polynesia : return 258
            /// French Southern Territories - TF - ATF - 260
            case .French_Southern_Territories : return 260
            /// Gabon - GA - GAB - 266
            case .Gabon : return 266
            /// Gambia - GM - GMB - 270
            case .Gambia : return 270
            /// Georgia - GE - GEO - 268
            case .Georgia : return 268
            /// Germany - DE - DEU - 276
            case .Germany : return 276
            /// Ghana - GH - GHA - 288
            case .Ghana : return 288
            /// Gibraltar - GI - GIB - 292
            case .Gibraltar : return 292
            /// Greece - GR - GRC - 300
            case .Greece : return 300
            /// Greenland - GL - GRL - 304
            case .Greenland : return 304
            /// Grenada - GD - GRD - 308
            case .Grenada : return 308
            /// Guadeloupe - GP - GLP - 312
            case .Guadeloupe : return 312
            /// Guam - GU - GUM - 316
            case .Guam : return 316
            /// Guatemala - GT - GTM - 320
            case .Guatemala : return 320
            /// Guernsey - GG - GGY - 831
            case .Guernsey : return 831
            /// Guinea - GN - GIN - 324
            case .Guinea : return 324
            /// Guinea-Bissau - GW - GNB - 624
            case .Guinea_Bissau : return 624
            /// Guyana - GY - GUY - 328
            case .Guyana : return 328
            /// Haiti - HT - HTI - 332
            case .Haiti : return 332
            /// Heard and Mcdonald Islands - HM - HMD - 334
            case .Heard_and_Mcdonald_Islands : return 334
            /// Holy See (Vatican City State) - VA - VAT - 336
            case .Holy_See_Vatican_City_State : return 336
            /// Honduras - HN - HND - 340
            case .Honduras : return 340
            /// Hungary - HU - HUN - 348
            case .Hungary : return 348
            /// Iceland - IS - ISL - 352
            case .Iceland : return 352
            /// India - IN - IND - 356
            case .India : return 356
            /// Indonesia - ID - IDN - 360
            case .Indonesia : return 360
            /// Iran, Islamic Republic of - IR - IRN - 364
            case .Iran_Islamic_Republic_of : return 364
            /// Iraq - IQ - IRQ - 368
            case .Iraq : return 368
            /// Ireland - IE - IRL - 372
            case .Ireland : return 372
            /// Isle of Man - IM - IMN - 833
            case .Isle_of_Man : return 833
            /// Israel - IL - ISR - 376
            case .Israel : return 376
            /// Italy - IT - ITA - 380
            case .Italy : return 380
            /// Jamaica - JM - JAM - 388
            case .Jamaica : return 388
            /// Japan - JP - JPN - 392
            case .Japan : return 392
            /// Jersey - JE - JEY - 832
            case .Jersey : return 832
            /// Jordan - JO - JOR - 400
            case .Jordan : return 400
            /// Kazakhstan - KZ - KAZ - 398
            case .Kazakhstan : return 398
            /// Kenya - KE - KEN - 404
            case .Kenya : return 404
            /// Kiribati - KI - KIR - 296
            case .Kiribati : return 296
            /// Korea (North) - KP - PRK - 408
            case .Korea_North : return 408
            /// Korea (South) - KR - KOR - 410
            case .Korea_South : return 410
            /// Kuwait - KW - KWT - 414
            case .Kuwait : return 414
            /// Kyrgyzstan - KG - KGZ - 417
            case .Kyrgyzstan : return 417
            /// Lao PDR - LA - LAO - 418
            case .Lao_PDR : return 418
            /// Latvia - LV - LVA - 428
            case .Latvia : return 428
            /// Lebanon - LB - LBN - 422
            case .Lebanon : return 422
            /// Lesotho - LS - LSO - 426
            case .Lesotho : return 426
            /// Liberia - LR - LBR - 430
            case .Liberia : return 430
            /// Libya - LY - LBY - 434
            case .Libya : return 434
            /// Liechtenstein - LI - LIE - 438
            case .Liechtenstein : return 438
            /// Lithuania - LT - LTU - 440
            case .Lithuania : return 440
            /// Luxembourg - LU - LUX - 442
            case .Luxembourg : return 442
            /// Macedonia, Republic of - MK - MKD - 807
            case .Macedonia_Republic_of : return 807
            /// Madagascar - MG - MDG - 450
            case .Madagascar : return 450
            /// Malawi - MW - MWI - 454
            case .Malawi : return 454
            /// Malaysia - MY - MYS - 458
            case .Malaysia : return 458
            /// Maldives - MV - MDV - 462
            case .Maldives : return 462
            /// Mali - ML - MLI - 466
            case .Mali : return 466
            /// Malta - MT - MLT - 470
            case .Malta : return 470
            /// Marshall Islands - MH - MHL - 584
            case .Marshall_Islands : return 584
            /// Martinique - MQ - MTQ - 474
            case .Martinique : return 474
            /// Mauritania - MR - MRT - 478
            case .Mauritania : return 478
            /// Mauritius - MU - MUS - 480
            case .Mauritius : return 480
            /// Mayotte - YT - MYT - 175
            case .Mayotte : return 175
            /// Mexico - MX - MEX - 484
            case .Mexico : return 484
            /// Micronesia, Federated States of - FM - FSM - 583
            case .Micronesia_Federated_States_of : return 583
            /// Moldova - MD - MDA - 498
            case .Moldova : return 498
            /// Monaco - MC - MCO - 492
            case .Monaco : return 492
            /// Mongolia - MN - MNG - 496
            case .Mongolia : return 496
            /// Montenegro - ME - MNE - 499
            case .Montenegro : return 499
            /// Montserrat - MS - MSR - 500
            case .Montserrat : return 500
            /// Morocco - MA - MAR - 504
            case .Morocco : return 504
            /// Mozambique - MZ - MOZ - 508
            case .Mozambique : return 508
            /// Myanmar - MM - MMR - 104
            case .Myanmar : return 104
            /// Namibia - NA - NAM - 516
            case .Namibia : return 516
            /// Nauru - NR - NRU - 520
            case .Nauru : return 520
            /// Nepal - NP - NPL - 524
            case .Nepal : return 524
            /// Netherlands - NL - NLD - 528
            case .Netherlands : return 528
            /// Netherlands Antilles - AN - ANT - 530
            case .Netherlands_Antilles : return 530
            /// New Caledonia - NC - NCL - 540
            case .New_Caledonia : return 540
            /// New Zealand - NZ - NZL - 554
            case .New_Zealand : return 554
            /// Nicaragua - NI - NIC - 558
            case .Nicaragua : return 558
            /// Niger - NE - NER - 562
            case .Niger : return 562
            /// Nigeria - NG - NGA - 566
            case .Nigeria : return 566
            /// Niue - NU - NIU - 570
            case .Niue : return 570
            /// Norfolk Island - NF - NFK - 574
            case .Norfolk_Island : return 574
            /// Northern Mariana Islands - MP - MNP - 580
            case .Northern_Mariana_Islands : return 580
            /// Norway - NO - NOR - 578
            case .Norway : return 578
            /// Oman - OM - OMN - 512
            case .Oman : return 512
            /// Pakistan - PK - PAK - 586
            case .Pakistan : return 586
            /// Palau - PW - PLW - 585
            case .Palau : return 585
            /// Palestinian Territory - PS - PSE - 275
            case .Palestinian_Territory : return 275
            /// Panama - PA - PAN - 591
            case .Panama : return 591
            /// Papua New Guinea - PG - PNG - 598
            case .Papua_New_Guinea : return 598
            /// Paraguay - PY - PRY - 600
            case .Paraguay : return 600
            /// Peru - PE - PER - 604
            case .Peru : return 604
            /// Philippines - PH - PHL - 608
            case .Philippines : return 608
            /// Pitcairn - PN - PCN - 612
            case .Pitcairn : return 612
            /// Poland - PL - POL - 616
            case .Poland : return 616
            /// Portugal - PT - PRT - 620
            case .Portugal : return 620
            /// Puerto Rico - PR - PRI - 630
            case .Puerto_Rico : return 630
            /// Qatar - QA - QAT - 634
            case .Qatar : return 634
            /// Réunion - RE - REU - 638
            case .Réunion : return 638
            /// Romania - RO - ROU - 642
            case .Romania : return 642
            /// Russian Federation - RU - RUS - 643
            case .Russian_Federation : return 643
            /// Rwanda - RW - RWA - 646
            case .Rwanda : return 646
            /// Saint-Barthélemy - BL - BLM - 652
            case .Saint_Barthélemy : return 652
            /// Saint Helena - SH - SHN - 654
            case .Saint_Helena : return 654
            /// Saint Kitts and Nevis - KN - KNA - 659
            case .Saint_Kitts_and_Nevis : return 659
            /// Saint Lucia - LC - LCA - 662
            case .Saint_Lucia : return 662
            /// Saint-Martin (French part) - MF - MAF - 663
            case .Saint_Martin_French : return 663
            /// Saint Pierre and Miquelon - PM - SPM - 666
            case .Saint_Pierre_and_Miquelon : return 666
            /// Saint Vincent and Grenadines - VC - VCT - 670
            case .Saint_Vincent_and_Grenadines : return 670
            /// Samoa - WS - WSM - 882
            case .Samoa : return 882
            /// San Marino - SM - SMR - 674
            case .San_Marino : return 674
            /// Sao Tome and Principe - ST - STP - 678
            case .Sao_Tome_and_Principe : return 678
            /// Saudi Arabia - SA - SAU - 682
            case .Saudi_Arabia : return 682
            /// Senegal - SN - SEN - 686
            case .Senegal : return 686
            /// Serbia - RS - SRB - 688
            case .Serbia : return 688
            /// Seychelles - SC - SYC - 690
            case .Seychelles : return 690
            /// Sierra Leone - SL - SLE - 694
            case .Sierra_Leone : return 694
            /// Singapore - SG - SGP - 702
            case .Singapore : return 702
            /// Slovakia - SK - SVK - 703
            case .Slovakia : return 703
            /// Slovenia - SI - SVN - 705
            case .Slovenia : return 705
            /// Solomon Islands - SB - SLB - 090
            case .Solomon_Islands : return 090
            /// Somalia - SO - SOM - 706
            case .Somalia : return 706
            /// South Africa - ZA - ZAF - 710
            case .South_Africa : return 710
            /// South Georgia and the South Sandwich Islands - GS - SGS - 239
            case .South_Georgia_and_the_South_Sandwich_Islands : return 239
            /// South Sudan - SS - SSD - 728
            case .South_Sudan : return 728
            /// Spain - ES - ESP - 724
            case .Spain : return 724
            /// Sri Lanka - LK - LKA - 144
            case .Sri_Lanka : return 144
            /// Sudan - SD - SDN - 736
            case .Sudan : return 736
            /// Suriname - SR - SUR - 740
            case .Suriname : return 740
            /// Svalbard and Jan Mayen Islands - SJ - SJM - 744
            case .Svalbard_and_Jan_Mayen_Islands : return 744
            /// Swaziland - SZ - SWZ - 748
            case .Swaziland : return 748
            /// Sweden - SE - SWE - 752
            case .Sweden : return 752
            /// Switzerland - CH - CHE - 756
            case .Switzerland : return 756
            /// Syrian Arab Republic (Syria) - SY - SYR - 760
            case .Syrian_Arab_Republic_Syria : return 760
            /// Taiwan, Republic of China - TW - TWN - 158
            case .Taiwan_Republic_of_China : return 158
            /// Tajikistan - TJ - TJK - 762
            case .Tajikistan : return 762
            /// Tanzania, United Republic of - TZ - TZA - 834
            case .Tanzania_United_Republic_of : return 834
            /// Thailand - TH - THA - 764
            case .Thailand : return 764
            /// Timor-Leste - TL - TLS - 626
            case .Timor_Leste : return 626
            /// Togo - TG - TGO - 768
            case .Togo : return 768
            /// Tokelau - TK - TKL - 772
            case .Tokelau : return 772
            /// Tonga - TO - TON - 776
            case .Tonga : return 776
            /// Trinidad and Tobago - TT - TTO - 780
            case .Trinidad_and_Tobago : return 780
            /// Tunisia - TN - TUN - 788
            case .Tunisia : return 788
            /// Turkey - TR - TUR - 792
            case .Turkey : return 792
            /// Turkmenistan - TM - TKM - 795
            case .Turkmenistan : return 795
            /// Turks and Caicos Islands - TC - TCA - 796
            case .Turks_and_Caicos_Islands : return 796
            /// Tuvalu - TV - TUV - 798
            case .Tuvalu : return 798
            /// Uganda - UG - UGA - 800
            case .Uganda : return 800
            /// Ukraine - UA - UKR - 804
            case .Ukraine : return 804
            /// United Arab Emirates - AE - ARE - 784
            case .United_Arab_Emirates : return 784
            /// United Kingdom - GB - GBR - 826
            case .United_Kingdom : return 826
            /// United States of America - US - USA - 840
            case .United_States_of_America : return 840
            /// US Minor Outlying Islands - UM - UMI - 581
            case .US_Minor_Outlying_Islands : return 581
            /// Uruguay - UY - URY - 858
            case .Uruguay : return 858
            /// Uzbekistan - UZ - UZB - 860
            case .Uzbekistan : return 860
            /// Vanuatu - VU - VUT - 548
            case .Vanuatu : return 548
            /// Venezuela (Bolivarian Republic) - VE - VEN - 862
            case .Venezuela_Bolivarian_Republic : return 862
            /// Viet Nam - VN - VNM - 704
            case .Viet_Nam : return 704
            /// Virgin Islands, US - VI - VIR - 850
            case .Virgin_Islands_US : return 850
            /// Wallis and Futuna Islands - WF - WLF - 876
            case .Wallis_and_Futuna_Islands : return 876
            /// Western Sahara - EH - ESH - 732
            case .Western_Sahara : return 732
            /// Yemen - YE - YEM - 887
            case .Yemen : return 887
            /// Zambia - ZM - ZMB - 894
            case .Zambia : return 894
            /// Zimbabwe - ZW - ZWE - 716
            case .Zimbabwe : return 716
            case .Carribean_Netherlands: return nil
            case .Sint_Maarten: return nil
        }
    }
    
    var associatedLanguages: [ISO6392Codes]? {
        switch self {
            case .Afghanistan: return [.fas, .pus, .uzb]
            case .Aland_Islands: return [.swe]
            case .Albania: return [.sqi]
            case .Algeria: return [.ara, .fra, .kab]
            case .American_Samoa: return [.eng]
            case .Andorra: return [.cat]
            case .Angola: return [.lin, .por]
            case .Anguilla: return [.eng]
            case .Antarctica: return nil
            case .Antigua_and_Barbuda: return [.eng]
            case .Argentina: return [.spa]
            case .Armenia: return [.hye]
            case .Aruba: return [.nld]
            case .Australia: return [.eng]
            case .Austria: return [.deu, .eng]
            case .Azerbaijan: return [.aze]
            case .Bahamas: return [.eng]
            case .Bahrain: return [.ara]
            case .Bangladesh: return [.ben, .cpp]
            case .Barbados: return [.eng]
            case .Belarus: return [.bel, .rus]
            case .Belgium: return [.deu, .eng, .fra, .nld]
            case .Belize: return [.eng, .spa]
            case .Benin: return [.fra, .yor]
            case .Bermuda: return [.eng]
            case .Bhutan: return [.dzo]
            case .Bolivia: return [.spa, .que]
            case .Bosnia_and_Herzegovina: return [.bos, .hrv, .srp]
            case .Botswana: return [.eng]
            case .Bouvet_Island: return nil
            case .Brazil: return [.spa, .por]
            case .British_Virgin_Islands: return [.eng]
            case .British_Indian_Ocean_Territory: return [.eng]
            case .Brunei_Darussalam: return [.msa]
            case .Bulgaria: return [.bul]
            case .Burkina_Faso: return [.fra]
            case .Burundi: return [.eng, .fra, .run]
            case .Cambodia: return [.khm]
            case .Cameroon: return [.bas, .dua, .eng, .ewo, .ful, .fra, .jgo, .kkj, .ksf, .mgo, .mua, .nmg, .nnh, .yav]
            case .Canada: return [.eng, .fra]
            case .Cape_Verde: return [.por, .kea]
            case .Cayman_Islands: return [.eng]
            case .Central_African_Republic: return [.fra, .lin, .sag]
            case .Chad: return [.ara, .fra]
            case .Chile: return [.spa]
            case .China: return [.bod, .zho, .iii, .uig, .yue]
            case .Hong_Kong_SAR_China: return [.eng, .yue, .zho]
            case .Macao_SAR_China: return [.eng, .por, .zho]
            case .Christmas_Island: return [.eng]
            case .Cocos_Keeling_Islands: return [.eng]
            case .Colombia: return [.spa]
            case .Comoros: return [.ara, .fra]
            case .Congo_Brazzaville: return [.fra, .lin]
            case .Congo_Kinshasa: return [.fra, .lin, .lub, .swa]
            case .Cook_Islands: return [.eng]
            case .Costa_Rica: return [.spa]
            case .Côte_dIvoire: return [.fra]
            case .Croatia: return [.hrv]
            case .Cuba: return [.spa]
            case .Cyprus: return [.ell, .eng, .tur]
            case .Czech_Republic: return [.ces]
            case .Denmark: return [.dan, .eng, .fao]
            case .Djibouti: return [.ara, .fra, .som]
            case .Dominica: return [.eng]
            case .Dominican_Republic: return [.spa]
            case .Ecuador: return [.spa, .que]
            case .Egypt: return [.ara]
            case .El_Salvador: return [.spa]
            case .Equatorial_Guinea: return [.spa, .fra, .por]
            case .Eritrea: return [.ara, .eng, .tir]
            case .Estonia: return [.est]
            case .Ethiopia: return [.amh, .orm, .som, .tir]
            case .Falkland_Islands_Malvinas: return [.eng]
            case .Faroe_Islands: return [.fao]
            case .Fiji: return [.fij, .eng]
            case .Finland: return [.fin, .eng, .sme, .smn, .swe]
            case .France: return [.bre, .cat, .fra, .gsw]
            case .French_Guiana: return [.fra]
            case .French_Polynesia: return [.fra]
            case .French_Southern_Territories: return [.fra]
            case .Gabon: return [.fra]
            case .Gambia: return [.eng]
            case .Georgia: return [.kat]
            case .Germany: return [.deu, .eng, .dsb, .hsb, .nds, .ksh]
            case .Ghana: return [.aka, .eng, .ewe, .hau]
            case .Gibraltar: return [.eng]
            case .Greece: return [.ell]
            case .Greenland: return [.dan, .kal]
            case .Grenada: return [.eng]
            case .Guadeloupe: return [.fra]
            case .Guam: return [.eng]
            case .Guatemala: return [.spa]
            case .Guernsey: return [.eng]
            case .Guinea: return [.ful, .fra]
            case .Guinea_Bissau: return [.por]
            case .Guyana: return [.eng]
            case .Haiti: return [.fra]
            case .Heard_and_Mcdonald_Islands: return nil
            case .Holy_See_Vatican_City_State: return [.ita]
            case .Honduras: return [.spa]
            case .Hungary: return [.hun]
            case .Iceland: return [.isl]
            case .India: return [.asm, .ben, .bod, .brx, .cpp, .guj, .hin, .kan, .kok, .kas, .mal, .mar, .nep, .tam, .tel, .urd, .ori, .pan]
            case .Indonesia: return [.ind]
            case .Iran_Islamic_Republic_of: return [.kur, .fas, .lrc, .mzn]
            case .Iraq: return [.ara, .kur, .lrc]
            case .Ireland: return [.eng, .gle]
            case .Isle_of_Man: return [.eng, .glv]
            case .Israel: return [.ara, .heb, .eng]
            case .Italy: return [.ita, .cat, .deu, .fur]
            case .Jamaica: return [.eng]
            case .Japan: return [.jpn]
            case .Jersey: return [.eng]
            case .Jordan: return [.ara]
            case .Kazakhstan: return [.kaz, .rus]
            case .Kenya: return [.dav, .ebu, .eng, .guz, .kam, .kik, .kln, .luo, .luy, .mas, .mer, .orm, .saq, .som, .swa, .teo]
            case .Kiribati: return [.eng]
            case .Korea_North: return [.kor]
            case .Korea_South: return [.kor]
            case .Kuwait: return [.ara]
            case .Kyrgyzstan: return [.rus, .kir]
            case .Lao_PDR: return [.lao]
            case .Latvia: return [.lav]
            case .Lebanon: return [.ara]
            case .Lesotho: return [.eng]
            case .Liberia: return [.eng, .vai]
            case .Libya: return [.ara]
            case .Liechtenstein: return [.deu, .gsw]
            case .Lithuania: return [.lit]
            case .Luxembourg: return [.deu, .fra, .ltz, .por]
            case .Macedonia_Republic_of: return [.mkd, .sqi]
            case .Madagascar: return [.eng, .fra, .mlg]
            case .Malawi: return [.eng]
            case .Malaysia: return [.eng, .msa, .tam]
            case .Maldives: return [.div]
            case .Mali: return [.bam, .fra, .khq, .ses]
            case .Malta: return [.eng, .mlt]
            case .Marshall_Islands: return [.eng]
            case .Martinique: return [.fra]
            case .Mauritania: return [.ara, .ful, .fra]
            case .Mauritius: return [.eng, .fra, .mfe]
            case .Mayotte: return [.fra]
            case .Mexico: return [.spa]
            case .Micronesia_Federated_States_of: return [.eng]
            case .Moldova: return [.rus, .ron]
            case .Monaco: return [.fra]
            case .Mongolia: return [.mon]
            case .Montenegro: return [.srp]
            case .Montserrat: return [.eng]
            case .Morocco: return [.ara, .fra, .shi, .tzm, .zgh]
            case .Mozambique: return [.por, .seh, .mgh]
            case .Myanmar: return [.mya]
            case .Namibia: return [.afr, .eng, .naq]
            case .Nauru: return [.eng]
            case .Nepal: return [.nep]
            case .Netherlands: return [.nld, .eng, .nds, .fry]
            case .Netherlands_Antilles: return [.nld, .eng, .pap]
            case .New_Caledonia: return [.fra]
            case .New_Zealand: return [.eng, .mri]
            case .Nicaragua: return [.spa]
            case .Niger: return [.fra, .dje, .hau, .twq]
            case .Nigeria: return [.eng, .hau, .ibo, .yor]
            case .Niue: return [.eng]
            case .Norfolk_Island: return [.eng]
            case .Northern_Mariana_Islands: return [.eng]
            case .Norway: return [.nno, .nob, .sme]
            case .Oman: return [.ara]
            case .Pakistan: return [.urd, .eng, .pan]
            case .Palau: return [.eng]
            case .Palestinian_Territory: return [.ara]
            case .Panama: return [.spa]
            case .Papua_New_Guinea: return [.eng]
            case .Paraguay: return [.spa]
            case .Peru: return [.spa, .que]
            case .Philippines: return [.eng, .spa, .fil]
            case .Pitcairn: return [.eng]
            case .Poland: return [.pol]
            case .Portugal: return [.por]
            case .Puerto_Rico: return [.spa, .eng]
            case .Qatar: return [.ara]
            case .Réunion: return [.fra]
            case .Romania: return [.ron]
            case .Russian_Federation: return [.rus, .che, .oss, .sah, .tat]
            case .Rwanda: return [.eng, .fra, .kin]
            case .Saint_Barthélemy: return [.fra]
            case .Saint_Helena: return [.eng]
            case .Saint_Kitts_and_Nevis: return [.eng]
            case .Saint_Lucia: return [.eng]
            case .Saint_Martin_French: return [.fra]
            case .Saint_Pierre_and_Miquelon: return [.fra]
            case .Saint_Vincent_and_Grenadines: return [.eng]
            case .Samoa: return [.eng]
            case .San_Marino: return [.ita]
            case .Sao_Tome_and_Principe: return [.por]
            case .Saudi_Arabia: return [.ara]
            case .Senegal: return [.dyo, .ful, .fra, .wol]
            case .Serbia: return [.srp]
            case .Seychelles: return [.eng, .fra]
            case .Sierra_Leone: return [.eng]
            case .Singapore: return [.eng, .msa, .tam, .zho]
            case .Slovakia: return [.slk]
            case .Slovenia: return [.eng, .slv]
            case .Solomon_Islands: return [.eng]
            case .Somalia: return [.ara, .som]
            case .South_Africa: return [.afr, .eng, .zul]
            case .South_Georgia_and_the_South_Sandwich_Islands: return [.eng]
            case .South_Sudan: return [.ara, .eng, .nus]
            case .Spain: return [.spa, .ast, .cat, .eus, .glg]
            case .Sri_Lanka: return [.sin, .tam]
            case .Sudan: return [.ara, .eng]
            case .Suriname: return [.nld]
            case .Svalbard_and_Jan_Mayen_Islands: return [.nob]
            case .Swaziland: return [.eng]
            case .Sweden: return [.swe, .eng, .sme]
            case .Switzerland: return [.deu, .eng, .fra, .gsw, .ita, .por, .roh, .wae]
            case .Syrian_Arab_Republic_Syria: return [.ara, .fra]
            case .Taiwan_Republic_of_China: return [.zho]
            case .Tajikistan: return [.tgk]
            case .Tanzania_United_Republic_of: return [.asa, .bez, .eng, .jmc, .kde, .ksb, .lag, .mas, .rof, .rwk, .sbp, .swa, .vun]
            case .Thailand: return [.tha]
            case .Timor_Leste: return [.por]
            case .Togo: return [.ewe, .fra]
            case .Tokelau: return [.eng]
            case .Tonga: return [.eng, .ton]
            case .Trinidad_and_Tobago: return [.eng]
            case .Tunisia: return [.ara, .fra]
            case .Turkey: return [.tur]
            case .Turkmenistan: return [.tuk]
            case .Turks_and_Caicos_Islands: return [.eng]
            case .Tuvalu: return [.eng]
            case .Uganda: return [.cgg, .eng, .lug, .nyn, .swa, .teo, .xog]
            case .Ukraine: return [.rus, .ukr]
            case .United_Arab_Emirates: return [.ara]
            case .United_Kingdom: return [.eng, .cym, .gla, .cor]
            case .United_States_of_America: return [.eng, .chr, .spa, .haw, .lkt]
            case .US_Minor_Outlying_Islands: return [.eng]
            case .Uruguay: return [.spa]
            case .Uzbekistan: return [.uzb]
            case .Vanuatu: return [.eng, .fra]
            case .Venezuela_Bolivarian_Republic: return [.spa]
            case .Viet_Nam: return [.vie]
            case .Virgin_Islands_US: return [.eng]
            case .Wallis_and_Futuna_Islands: return [.fra]
            case .Western_Sahara: return [.ara]
            case .Yemen: return [.ara]
            case .Zambia: return [.bem, .eng]
            case .Zimbabwe: return [.eng, .nde, .sna]
            case .Carribean_Netherlands: return [.nld]
            case .Curaçao: return [.nld]
            case .Sint_Maarten: return [.nld]
        }
    }
}
