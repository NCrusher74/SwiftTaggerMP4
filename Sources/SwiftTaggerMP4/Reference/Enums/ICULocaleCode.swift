////
////  File.swift
////
////
////  Created by Nolaine Crusher on 6/25/20.
////
//
//import Foundation
//
//public enum ICULocaleCode: String, CaseIterable {
//    
//    private static let nativeNameToCodeMapping: [String: ICULocaleCode]? = {
//        var mapping: [String: ICULocaleCode] = [:]
//        for code in ICULocaleCode.allCases {
//            if let nativeName = code.nativeName {
//            mapping[nativeName] = code
//            } else {
//                return nil
//            }
//        }
//        return mapping
//    }()
//    
//    init?(nativeName: String) {
//        if let code = ICULocaleCode.nativeNameToCodeMapping?[nativeName] {
//            self = code
//        } else {
//            return nil
//        }
//    }    
//    
//    /// Afrikaans - Afrikaans
//    case Afrikaans = "af"
//    /// Afrikaans (Namibia) - Afrikaans (Namibië)
//    case Afrikaans_Namibia = "af_NA"
//    /// Afrikaans (South Africa) - Afrikaans (Suid-Afrika)
//    case Afrikaans_South_Africa = "af_ZA"
//    /// Aghem - Aghem
//    case Aghem = "agq"
//    /// Aghem (Cameroon) - Aghem (Kàmàlûŋ)
//    case Aghem_Cameroon = "agq_CM"
//    /// Akan - Akan
//    case Akan = "ak"
//    /// Akan (Ghana) - Akan (Gaana)
//    case Akan_Ghana = "ak_GH"
//    /// Amharic - አማርኛ
//    case Amharic = "am"
//    /// Amharic (Ethiopia) - አማርኛ (ኢትዮጵያ)
//    case Amharic_Ethiopia = "am_ET"
//    /// Arabic - العربية
//    case Arabic = "ar"
//    /// Arabic (World) - العربية (العالم) - Modern Standard Arabic
//    case Arabic_World = "ar_001"
//    /// Arabic (United Arab Emirates) - العربية (الإمارات العربية المتحدة)
//    case Arabic_United_Arab_Emirates = "ar_AE"
//    /// Arabic (Bahrain) - العربية (البحرين)
//    case Arabic_Bahrain = "ar_BH"
//    /// Arabic (Djibouti) - العربية (جيبوتي)
//    case Arabic_Djibouti = "ar_DJ"
//    /// Arabic (Algeria) - العربية (الجزائر)
//    case Arabic_Algeria = "ar_DZ"
//    /// Arabic (Egypt) - العربية (مصر)
//    case Arabic_Egypt = "ar_EG"
//    /// Arabic (Western Sahara) - العربية (الصحراء الغربية)
//    case Arabic_Western_Sahara = "ar_EH"
//    /// Arabic (Eritrea) - العربية (إريتريا)
//    case Arabic_Eritrea = "ar_ER"
//    /// Arabic (Israel) - العربية (إسرائيل)
//    case Arabic_Israel = "ar_IL"
//    /// Arabic (Iraq) - العربية (العراق)
//    case Arabic_Iraq = "ar_IQ"
//    /// Arabic (Jordan) - العربية (الأردن)
//    case Arabic_Jordan = "ar_JO"
//    /// Arabic (Comoros) - العربية (جزر القمر)
//    case Arabic_Comoros = "ar_KM"
//    /// Arabic (Kuwait) - العربية (الكويت)
//    case Arabic_Kuwait = "ar_KW"
//    /// Arabic (Lebanon) - العربية (لبنان)
//    case Arabic_Lebanon = "ar_LB"
//    /// Arabic (Libya) - العربية (ليبيا)
//    case Arabic_Libya = "ar_LY"
//    /// Arabic (Morocco) - العربية (المغرب)
//    case Arabic_Morocco = "ar_MA"
//    /// Arabic (Mauritania) - العربية (موريتانيا)
//    case Arabic_Mauritania = "ar_MR"
//    /// Arabic (Oman) - العربية (عُمان)
//    case Arabic_Oman = "ar_OM"
//    /// Arabic (Palestinian Territories) - العربية (الأراضي الفلسطينية)
//    case Arabic_Palestinian_Territories = "ar_PS"
//    /// Arabic (Qatar) - العربية (قطر)
//    case Arabic_Qatar = "ar_QA"
//    /// Arabic (Saudi Arabia) - العربية (المملكة العربية السعودية)
//    case Arabic_Saudi_Arabia = "ar_SA"
//    /// Arabic (Sudan) - العربية (السودان)
//    case Arabic_Sudan = "ar_SD"
//    /// Arabic (Somalia) - العربية (الصومال)
//    case Arabic_Somalia = "ar_SO"
//    /// Arabic (South Sudan) - العربية (جنوب السودان)
//    case Arabic_South_Sudan = "ar_SS"
//    /// Arabic (Syria) - العربية (سوريا)
//    case Arabic_Syria = "ar_SY"
//    /// Arabic (Chad) - العربية (تشاد)
//    case Arabic_Chad = "ar_TD"
//    /// Arabic (Tunisia) - العربية (تونس)
//    case Arabic_Tunisia = "ar_TN"
//    /// Arabic (Yemen) - العربية (اليمن)
//    case Arabic_Yemen = "ar_YE"
//    /// Assamese - অসমীয়া
//    case Assamese = "as"
//    /// Assamese (India) - অসমীয়া (ভারত)
//    case Assamese_India = "as_IN"
//    /// Asu - Kipare
//    case Asu = "asa"
//    /// Asu (Tanzania) - Kipare (Tadhania)
//    case Asu_Tanzania = "asa_TZ"
//    /// Asturian - asturianu
//    case Asturian = "ast"
//    /// Asturian (Spain) - asturianu (España)
//    case Asturian_Spain = "ast_ES"
//    /// Azerbaijani - azərbaycan
//    case Azerbaijani = "az"
//    /// Azerbaijani (Cyrillic) - азәрбајҹан (Кирил)
//    case Azerbaijani_Cyrillic = "az_Cyrl"
//    /// Azerbaijani (Cyrillic, Azerbaijan) - азәрбајҹан (Кирил, Азәрбајҹан)
//    case Azerbaijani_Cyrillic_Azerbaijan = "az_Cyrl_AZ"
//    /// Azerbaijani (Latin) - azərbaycan (latın)
//    case Azerbaijani_Latin = "az_Latn"
//    /// Azerbaijani (Latin, Azerbaijan) - azərbaycan (latın, Azərbaycan)
//    case Azerbaijani_Latin_Azerbaijan = "az_Latn_AZ"
//    /// Basaa - Ɓàsàa
//    case Basaa = "bas"
//    /// Basaa (Cameroon) - Ɓàsàa (Kàmɛ̀rûn)
//    case Basaa_Cameroon = "bas_CM"
//    /// Belarusian - беларуская
//    case Belarusian = "be"
//    /// Belarusian (Belarus) - беларуская (Беларусь)
//    case Belarusian_Belarus = "be_BY"
//    /// Bemba - Ichibemba
//    case Bemba = "bem"
//    /// Bemba (Zambia) - Ichibemba (Zambia)
//    case Bemba_Zambia = "bem_ZM"
//    /// Bena - Hibena
//    case Bena = "bez"
//    /// Bena (Tanzania) - Hibena (Hutanzania)
//    case Bena_Tanzania = "bez_TZ"
//    /// Bulgarian - български
//    case Bulgarian = "bg"
//    /// Bulgarian (Bulgaria) - български (България)
//    case Bulgarian_Bulgaria = "bg_BG"
//    /// Bambara - bamanakan
//    case Bambara = "bm"
//    /// Bambara (Mali) - bamanakan (Mali)
//    case Bambara_Mali = "bm_ML"
//    /// Bangla - বাংলা
//    case Bangla = "bn"
//    /// Bangla (Bangladesh) - বাংলা (বাংলাদেশ)
//    case Bangla_Bangladesh = "bn_BD"
//    /// Bangla (India) - বাংলা (ভারত)
//    case Bangla_India = "bn_IN"
//    /// Tibetan - བོད་སྐད་
//    case Tibetan = "bo"
//    /// Tibetan (China) - བོད་སྐད་ (རྒྱ་ནག)
//    case Tibetan_China = "bo_CN"
//    /// Tibetan (India) - བོད་སྐད་ (རྒྱ་གར་)
//    case Tibetan_India = "bo_IN"
//    /// Breton - brezhoneg
//    case Breton = "br"
//    /// Breton (France) - brezhoneg (Frañs)
//    case Breton_France = "br_FR"
//    /// Bodo - बड़ो
//    case Bodo = "brx"
//    /// Bodo (India) - बड़ो (भारत)
//    case Bodo_India = "brx_IN"
//    /// Bosnian - bosanski
//    case Bosnian = "bs"
//    /// Bosnian (Cyrillic) - босански (ћирилица)
//    case Bosnian_Cyrillic = "bs_Cyrl"
//    /// Bosnian (Cyrillic, Bosnia & Herzegovina) - босански (ћирилица, Босна и Херцеговина)
//    case Bosnian_Cyrillic_Bosnia_And_Herzegovina = "bs_Cyrl_BA"
//    /// Bosnian (Latin) - bosanski (latinica)
//    case Bosnian_Latin = "bs_Latn"
//    /// Bosnian (Latin, Bosnia & Herzegovina) - bosanski (latinica, Bosna i Hercegovina)
//    case Bosnian_Latin_Bosnia_And_Herzegovina = "bs_Latn_BA"
//    /// Catalan - català
//    case Catalan = "ca"
//    /// Catalan (Andorra) - català (Andorra)
//    case Catalan_Andorra = "ca_AD"
//    /// Catalan (Spain) - català (Espanya)
//    case Catalan_Spain = "ca_ES"
//    /// Catalan (France) - català (França)
//    case Catalan_France = "ca_FR"
//    /// Catalan (Italy) - català (Itàlia)
//    case Catalan_Italy = "ca_IT"
//    /// Chakma - 𑄌𑄋𑄴𑄟𑄳𑄦
//    case Chakma = "ccp"
//    /// Chakma (Bangladesh) - 𑄌𑄋𑄴𑄟𑄳𑄦 (𑄝𑄁𑄣𑄘𑄬𑄌𑄴)
//    case Chakma_Bangladesh = "ccp_BD"
//    /// Chakma (India) - 𑄌𑄋𑄴𑄟𑄳𑄦 (𑄞𑄢𑄧𑄖𑄴)
//    case Chakma_India = "ccp_IN"
//    /// Chechen - нохчийн
//    case Chechen = "ce"
//    /// Chechen (Russia) - нохчийн (Росси)
//    case Chechen_Russia = "ce_RU"
//    /// Chiga - Rukiga
//    case Chiga = "cgg"
//    /// Chiga (Uganda) - Rukiga (Uganda)
//    case Chiga_Uganda = "cgg_UG"
//    /// Cherokee - ᏣᎳᎩ
//    case Cherokee = "chr"
//    /// Cherokee (United States) - ᏣᎳᎩ (ᏌᏊ ᎢᏳᎾᎵᏍᏔᏅ ᏍᎦᏚᎩ)
//    case Cherokee_United_States = "chr_US"
//    /// Central Kurdish - کوردیی ناوەندی
//    case Central_Kurdish = "ckb"
//    /// Central Kurdish (Iraq) - کوردیی ناوەندی (عێراق)
//    case Central_Kurdish_Iraq = "ckb_IQ"
//    /// Central Kurdish (Iran) - کوردیی ناوەندی (ئێران)
//    case Central_Kurdish_Iran = "ckb_IR"
//    /// Czech - čeština
//    case Czech = "cs"
//    /// Czech (Czechia) - čeština (Česko)
//    case Czech_Czechia = "cs_CZ"
//    /// Welsh - Cymraeg
//    case Welsh = "cy"
//    /// Welsh (United Kingdom) - Cymraeg (Y Deyrnas Unedig)
//    case Welsh_United_Kingdom = "cy_GB"
//    /// Danish - dansk
//    case Danish = "da"
//    /// Danish (Denmark) - dansk (Danmark)
//    case Danish_Denmark = "da_DK"
//    /// Danish (Greenland) - dansk (Grønland)
//    case Danish_Greenland = "da_GL"
//    /// Taita - Kitaita
//    case Taita = "dav"
//    /// Taita (Kenya) - Kitaita (Kenya)
//    case Taita_Kenya = "dav_KE"
//    /// German - Deutsch
//    case German = "de"
//    /// German (Austria) - Deutsch (Österreich) - Austrian German
//    case German_Austria = "de_AT"
//    /// German (Belgium) - Deutsch (Belgien)
//    case German_Belgium = "de_BE"
//    /// German (Switzerland) - Deutsch (Schweiz) - Swiss High German
//    case German_Switzerland = "de_CH"
//    /// German (Germany) - Deutsch (Deutschland)
//    case German_Germany = "de_DE"
//    /// German (Italy) - Deutsch (Italien)
//    case German_Italy = "de_IT"
//    /// German (Liechtenstein) - Deutsch (Liechtenstein)
//    case German_Liechtenstein = "de_LI"
//    /// German (Luxembourg) - Deutsch (Luxemburg)
//    case German_Luxembourg = "de_LU"
//    /// Zarma - Zarmaciine
//    case Zarma = "dje"
//    /// Zarma (Niger) - Zarmaciine (Nižer)
//    case Zarma_Niger = "dje_NE"
//    /// Lower Sorbian - dolnoserbšćina
//    case Lower_Sorbian = "dsb"
//    /// Lower Sorbian (Germany) - dolnoserbšćina (Nimska)
//    case Lower_Sorbian_Germany = "dsb_DE"
//    /// Duala - duálá
//    case Duala = "dua"
//    /// Duala (Cameroon) - duálá (Cameroun)
//    case Duala_Cameroon = "dua_CM"
//    /// Jola-Fonyi - joola
//    case Jola_Fonyi = "dyo"
//    /// Jola-Fonyi (Senegal) - joola (Senegal)
//    case Jola_Fonyi_Senegal = "dyo_SN"
//    /// Dzongkha - རྫོང་ཁ
//    case Dzongkha = "dz"
//    /// Dzongkha (Bhutan) - རྫོང་ཁ། (འབྲུག།)
//    case Dzongkha_Bhutan = "dz_BT"
//    /// Embu - Kĩembu
//    case Embu = "ebu"
//    /// Embu (Kenya) - Kĩembu (Kenya)
//    case Embu_Kenya = "ebu_KE"
//    /// Ewe - Eʋegbe
//    case Ewe = "ee"
//    /// Ewe (Ghana) - Eʋegbe (Ghana nutome)
//    case Ewe_Ghana = "ee_GH"
//    /// Ewe (Togo) - Eʋegbe (Togo nutome)
//    case Ewe_Togo = "ee_TG"
//    /// Greek - Ελληνικά
//    case Greek = "el"
//    /// Greek (Cyprus) - Ελληνικά (Κύπρος)
//    case Greek_Cyprus = "el_CY"
//    /// Greek (Greece) - Ελληνικά (Ελλάδα)
//    case Greek_Greece = "el_GR"
//    /// English - English
//    case English = "en"
//    /// English (World) - English (World)
//    case English_World = "en_001"
//    /// English (Europe) - English (Europe)
//    case English_Europe = "en_150"
//    /// English (Antigua & Barbuda) - English (Antigua & Barbuda)
//    case English_Antigua_And_Barbuda = "en_AG"
//    /// English (Anguilla) - English (Anguilla)
//    case English_Anguilla = "en_AI"
//    /// English (American Samoa) - English (American Samoa)
//    case English_American_Samoa = "en_AS"
//    /// English (Austria) - English (Austria)
//    case English_Austria = "en_AT"
//    /// English (Australia) - English (Australia) - Australian English
//    case English_Australia = "en_AU"
//    /// English (Barbados) - English (Barbados)
//    case English_Barbados = "en_BB"
//    /// English (Belgium) - English (Belgium)
//    case English_Belgium = "en_BE"
//    /// English (Burundi) - English (Burundi)
//    case English_Burundi = "en_BI"
//    /// English (Bermuda) - English (Bermuda)
//    case English_Bermuda = "en_BM"
//    /// English (Bahamas) - English (Bahamas)
//    case English_Bahamas = "en_BS"
//    /// English (Botswana) - English (Botswana)
//    case English_Botswana = "en_BW"
//    /// English (Belize) - English (Belize)
//    case English_Belize = "en_BZ"
//    /// English (Canada) - English (Canada) - Canadian English
//    case English_Canada = "en_CA"
//    /// English (Cocos [Keeling] Islands) - English (Cocos [Keeling] Islands)
//    case English_Cocos_Keeling_Islands = "en_CC"
//    /// English (Switzerland) - English (Switzerland)
//    case English_Switzerland = "en_CH"
//    /// English (Cook Islands) - English (Cook Islands)
//    case English_Cook_Islands = "en_CK"
//    /// English (Cameroon) - English (Cameroon)
//    case English_Cameroon = "en_CM"
//    /// English (Christmas Island) - English (Christmas Island)
//    case English_Christmas_Island = "en_CX"
//    /// English (Cyprus) - English (Cyprus)
//    case English_Cyprus = "en_CY"
//    /// English (Germany) - English (Germany)
//    case English_Germany = "en_DE"
//    /// English (Diego Garcia) - English (Diego Garcia)
//    case English_Diego_Garcia = "en_DG"
//    /// English (Denmark) - English (Denmark)
//    case English_Denmark = "en_DK"
//    /// English (Dominica) - English (Dominica)
//    case English_Dominica = "en_DM"
//    /// English (Eritrea) - English (Eritrea)
//    case English_Eritrea = "en_ER"
//    /// English (Finland) - English (Finland)
//    case English_Finland = "en_FI"
//    /// English (Fiji) - English (Fiji)
//    case English_Fiji = "en_FJ"
//    /// English (Falkland Islands) - English (Falkland Islands)
//    case English_Falkland_Islands = "en_FK"
//    /// English (Micronesia) - English (Micronesia)
//    case English_Micronesia = "en_FM"
//    /// English (United Kingdom) - English (United Kingdom) - British English
//    case English_United_Kingdom = "en_GB"
//    /// English (Grenada) - English (Grenada)
//    case English_Grenada = "en_GD"
//    /// English (Guernsey) - English (Guernsey)
//    case English_Guernsey = "en_GG"
//    /// English (Ghana) - English (Ghana)
//    case English_Ghana = "en_GH"
//    /// English (Gibraltar) - English (Gibraltar)
//    case English_Gibraltar = "en_GI"
//    /// English (Gambia) - English (Gambia)
//    case English_Gambia = "en_GM"
//    /// English (Guam) - English (Guam)
//    case English_Guam = "en_GU"
//    /// English (Guyana) - English (Guyana)
//    case English_Guyana = "en_GY"
//    /// English (Hong Kong SAR China) - English (Hong Kong SAR China)
//    case English_Hong_Kong_SAR_China = "en_HK"
//    /// English (Ireland) - English (Ireland)
//    case English_Ireland = "en_IE"
//    /// English (Israel) - English (Israel)
//    case English_Israel = "en_IL"
//    /// English (Isle of Man) - English (Isle of Man)
//    case English_Isle_of_Man = "en_IM"
//    /// English (India) - English (India)
//    case English_India = "en_IN"
//    /// English (British Indian Ocean Territory) - English (British Indian Ocean Territory)
//    case English_British_Indian_Ocean_Territory = "en_IO"
//    /// English (Jersey) - English (Jersey)
//    case English_Jersey = "en_JE"
//    /// English (Jamaica) - English (Jamaica)
//    case English_Jamaica = "en_JM"
//    /// English (Kenya) - English (Kenya)
//    case English_Kenya = "en_KE"
//    /// English (Kiribati) - English (Kiribati)
//    case English_Kiribati = "en_KI"
//    /// English (St. Kitts & Nevis) - English (St. Kitts & Nevis)
//    case English_St_Kitts_And_Nevis = "en_KN"
//    /// English (Cayman Islands) - English (Cayman Islands)
//    case English_Cayman_Islands = "en_KY"
//    /// English (St. Lucia) - English (St. Lucia)
//    case English_St_Lucia = "en_LC"
//    /// English (Liberia) - English (Liberia)
//    case English_Liberia = "en_LR"
//    /// English (Lesotho) - English (Lesotho)
//    case English_Lesotho = "en_LS"
//    /// English (Madagascar) - English (Madagascar)
//    case English_Madagascar = "en_MG"
//    /// English (Marshall Islands) - English (Marshall Islands)
//    case English_Marshall_Islands = "en_MH"
//    /// English (Macau SAR China) - English (Macau SAR China)
//    case English_Macau_SAR_China = "en_MO"
//    /// English (Northern Mariana Islands) - English (Northern Mariana Islands)
//    case English_Northern_Mariana_Islands = "en_MP"
//    /// English (Montserrat) - English (Montserrat)
//    case English_Montserrat = "en_MS"
//    /// English (Malta) - English (Malta)
//    case English_Malta = "en_MT"
//    /// English (Mauritius) - English (Mauritius)
//    case English_Mauritius = "en_MU"
//    /// English (Malawi) - English (Malawi)
//    case English_Malawi = "en_MW"
//    /// English (Malaysia) - English (Malaysia)
//    case English_Malaysia = "en_MY"
//    /// English (Namibia) - English (Namibia)
//    case English_Namibia = "en_NA"
//    /// English (Norfolk Island) - English (Norfolk Island)
//    case English_Norfolk_Island = "en_NF"
//    /// English (Nigeria) - English (Nigeria)
//    case English_Nigeria = "en_NG"
//    /// English (Netherlands) - English (Netherlands)
//    case English_Netherlands = "en_NL"
//    /// English (Nauru) - English (Nauru)
//    case English_Nauru = "en_NR"
//    /// English (Niue) - English (Niue)
//    case English_Niue = "en_NU"
//    /// English (New Zealand) - English (New Zealand)
//    case English_New_Zealand = "en_NZ"
//    /// English (Papua New Guinea) - English (Papua New Guinea)
//    case English_Papua_New_Guinea = "en_PG"
//    /// English (Philippines) - English (Philippines)
//    case English_Philippines = "en_PH"
//    /// English (Pakistan) - English (Pakistan)
//    case English_Pakistan = "en_PK"
//    /// English (Pitcairn Islands) - English (Pitcairn Islands)
//    case English_Pitcairn_Islands = "en_PN"
//    /// English (Puerto Rico) - English (Puerto Rico)
//    case English_Puerto_Rico = "en_PR"
//    /// English (Palau) - English (Palau)
//    case English_Palau = "en_PW"
//    /// English (Rwanda) - English (Rwanda)
//    case English_Rwanda = "en_RW"
//    /// English (Solomon Islands) - English (Solomon Islands)
//    case English_Solomon_Islands = "en_SB"
//    /// English (Seychelles) - English (Seychelles)
//    case English_Seychelles = "en_SC"
//    /// English (Sudan) - English (Sudan)
//    case English_Sudan = "en_SD"
//    /// English (Sweden) - English (Sweden)
//    case English_Sweden = "en_SE"
//    /// English (Singapore) - English (Singapore)
//    case English_Singapore = "en_SG"
//    /// English (St. Helena) - English (St. Helena)
//    case English_St_Helena = "en_SH"
//    /// English (Slovenia) - English (Slovenia)
//    case English_Slovenia = "en_SI"
//    /// English (Sierra Leone) - English (Sierra Leone)
//    case English_Sierra_Leone = "en_SL"
//    /// English (South Sudan) - English (South Sudan)
//    case English_South_Sudan = "en_SS"
//    /// English (Sint Maarten) - English (Sint Maarten)
//    case English_Sint_Maarten = "en_SX"
//    /// English (Swaziland) - English (Swaziland)
//    case English_Swaziland = "en_SZ"
//    /// English (Turks & Caicos Islands) - English (Turks & Caicos Islands)
//    case English_Turks_And_Caicos_Islands = "en_TC"
//    /// English (Tokelau) - English (Tokelau)
//    case English_Tokelau = "en_TK"
//    /// English (Tonga) - English (Tonga)
//    case English_Tonga = "en_TO"
//    /// English (Trinidad & Tobago) - English (Trinidad & Tobago)
//    case English_Trinidad_And_Tobago = "en_TT"
//    /// English (Tuvalu) - English (Tuvalu)
//    case English_Tuvalu = "en_TV"
//    /// English (Tanzania) - English (Tanzania)
//    case English_Tanzania = "en_TZ"
//    /// English (Uganda) - English (Uganda)
//    case English_Uganda = "en_UG"
//    /// English (U.S. Outlying Islands) - English (U.S. Outlying Islands)
//    case English_US_Outlying_Islands = "en_UM"
//    /// English (United States) - English (United States) - American English
//    case English_United_States = "en_US"
//    /// English (United States, Computer) - English (United States, Computer) - American English (Computer)
//    case English_United_States_Computer = "en_US_POSIX"
//    /// English (St. Vincent & Grenadines) - English (St. Vincent & Grenadines)
//    case English_St_Vincent_And_Grenadines = "en_VC"
//    /// English (British Virgin Islands) - English (British Virgin Islands)
//    case English_British_Virgin_Islands = "en_VG"
//    /// English (U.S. Virgin Islands) - English (U.S. Virgin Islands)
//    case English_US_Virgin_Islands = "en_VI"
//    /// English (Vanuatu) - English (Vanuatu)
//    case English_Vanuatu = "en_VU"
//    /// English (Samoa) - English (Samoa)
//    case English_Samoa = "en_WS"
//    /// English (South Africa) - English (South Africa)
//    case English_South_Africa = "en_ZA"
//    /// English (Zambia) - English (Zambia)
//    case English_Zambia = "en_ZM"
//    /// English (Zimbabwe) - English (Zimbabwe)
//    case English_Zimbabwe = "en_ZW"
//    /// Esperanto - esperanto
//    case Esperanto = "eo"
//    /// Spanish - español
//    case Spanish = "es"
//    /// Spanish (Latin America) - español (Latinoamérica) - Latin American Spanish
//    case Spanish_Latin_America = "es_419"
//    /// Spanish (Argentina) - español (Argentina)
//    case Spanish_Argentina = "es_AR"
//    /// Spanish (Bolivia) - español (Bolivia)
//    case Spanish_Bolivia = "es_BO"
//    /// Spanish (Brazil) - español (Brasil)
//    case Spanish_Brazil = "es_BR"
//    /// Spanish (Belize) - español (Belice)
//    case Spanish_Belize = "es_BZ"
//    /// Spanish (Chile) - español (Chile)
//    case Spanish_Chile = "es_CL"
//    /// Spanish (Colombia) - español (Colombia)
//    case Spanish_Colombia = "es_CO"
//    /// Spanish (Costa Rica) - español (Costa Rica)
//    case Spanish_Costa_Rica = "es_CR"
//    /// Spanish (Cuba) - español (Cuba)
//    case Spanish_Cuba = "es_CU"
//    /// Spanish (Dominican Republic) - español (República Dominicana)
//    case Spanish_Dominican_Republic = "es_DO"
//    /// Spanish (Ceuta & Melilla) - español (Ceuta y Melilla)
//    case Spanish_Ceuta_And_Melilla = "es_EA"
//    /// Spanish (Ecuador) - español (Ecuador)
//    case Spanish_Ecuador = "es_EC"
//    /// Spanish (Spain) - español (España) - European Spanish
//    case Spanish_Spain = "es_ES"
//    /// Spanish (Equatorial Guinea) - español (Guinea Ecuatorial)
//    case Spanish_Equatorial_Guinea = "es_GQ"
//    /// Spanish (Guatemala) - español (Guatemala)
//    case Spanish_Guatemala = "es_GT"
//    /// Spanish (Honduras) - español (Honduras)
//    case Spanish_Honduras = "es_HN"
//    /// Spanish (Canary Islands) - español (Canarias)
//    case Spanish_Canary_Islands = "es_IC"
//    /// Spanish (Mexico) - español (México) - Mexican Spanish
//    case Spanish_Mexico = "es_MX"
//    /// Spanish (Nicaragua) - español (Nicaragua)
//    case Spanish_Nicaragua = "es_NI"
//    /// Spanish (Panama) - español (Panamá)
//    case Spanish_Panama = "es_PA"
//    /// Spanish (Peru) - español (Perú)
//    case Spanish_Peru = "es_PE"
//    /// Spanish (Philippines) - español (Filipinas)
//    case Spanish_Philippines = "es_PH"
//    /// Spanish (Puerto Rico) - español (Puerto Rico)
//    case Spanish_Puerto_Rico = "es_PR"
//    /// Spanish (Paraguay) - español (Paraguay)
//    case Spanish_Paraguay = "es_PY"
//    /// Spanish (El Salvador) - español (El Salvador)
//    case Spanish_El_Salvador = "es_SV"
//    /// Spanish (United States) - español (Estados Unidos)
//    case Spanish_United_States = "es_US"
//    /// Spanish (Uruguay) - español (Uruguay)
//    case Spanish_Uruguay = "es_UY"
//    /// Spanish (Venezuela) - español (Venezuela)
//    case Spanish_Venezuela = "es_VE"
//    /// Estonian - eesti
//    case Estonian = "et"
//    /// Estonian (Estonia) - eesti (Eesti)
//    case Estonian_Estonia = "et_EE"
//    /// Basque - euskara
//    case Basque = "eu"
//    /// Basque (Spain) - euskara (Espainia)
//    case Basque_Spain = "eu_ES"
//    /// Ewondo - ewondo
//    case Ewondo = "ewo"
//    /// Ewondo (Cameroon) - ewondo (Kamərún)
//    case Ewondo_Cameroon = "ewo_CM"
//    /// Persian - فارسی
//    case Persian = "fa"
//    /// Persian (Afghanistan) - فارسی (افغانستان) - Dari
//    case Persian_Afghanistan = "fa_AF"
//    /// Persian (Iran) - فارسی (ایران)
//    case Persian_Iran = "fa_IR"
//    /// Fulah - Pulaar
//    case Fulah = "ff"
//    /// Fulah (Cameroon) - Pulaar (Kameruun)
//    case Fulah_Cameroon = "ff_CM"
//    /// Fulah (Guinea) - Pulaar (Gine)
//    case Fulah_Guinea = "ff_GN"
//    /// Fulah (Mauritania) - Pulaar (Muritani)
//    case Fulah_Mauritania = "ff_MR"
//    /// Fulah (Senegal) - Pulaar (Senegaal)
//    case Fulah_Senegal = "ff_SN"
//    /// Finnish - suomi
//    case Finnish = "fi"
//    /// Finnish (Finland) - suomi (Suomi)
//    case Finnish_Finland = "fi_FI"
//    /// Filipino - Filipino
//    case Filipino = "fil"
//    /// Filipino (Philippines) - Filipino (Pilipinas)
//    case Filipino_Philippines = "fil_PH"
//    /// Faroese - føroyskt
//    case Faroese = "fo"
//    /// Faroese (Denmark) - føroyskt (Danmark)
//    case Faroese_Denmark = "fo_DK"
//    /// Faroese (Faroe Islands) - føroyskt (Føroyar)
//    case Faroese_Faroe_Islands = "fo_FO"
//    /// French - français
//    case French = "fr"
//    /// French (Belgium) - français (Belgique)
//    case French_Belgium = "fr_BE"
//    /// French (Burkina Faso) - français (Burkina Faso)
//    case French_Burkina_Faso = "fr_BF"
//    /// French (Burundi) - français (Burundi)
//    case French_Burundi = "fr_BI"
//    /// French (Benin) - français (Bénin)
//    case French_Benin = "fr_BJ"
//    /// French (St. Barthélemy) - français (Saint-Barthélemy)
//    case French_St_Barthélemy = "fr_BL"
//    /// French (Canada) - français (Canada) - Canadian French
//    case French_Canada = "fr_CA"
//    /// French (Congo - Kinshasa) - français (Congo-Kinshasa)
//    case French_Congo_Kinshasa = "fr_CD"
//    /// French (Central African Republic) - français (République centrafricaine)
//    case French_Central_African_Republic = "fr_CF"
//    /// French (Congo - Brazzaville) - français (Congo-Brazzaville)
//    case French_Congo_Brazzaville = "fr_CG"
//    /// French (Switzerland) - français (Suisse) - Swiss French
//    case French_Switzerland = "fr_CH"
//    /// French (Côte d’Ivoire) - français (Côte d’Ivoire)
//    case French_Côte_dIvoire = "fr_CI"
//    /// French (Cameroon) - français (Cameroun)
//    case French_Cameroon = "fr_CM"
//    /// French (Djibouti) - français (Djibouti)
//    case French_Djibouti = "fr_DJ"
//    /// French (Algeria) - français (Algérie)
//    case French_Algeria = "fr_DZ"
//    /// French (France) - français (France)
//    case French_France = "fr_FR"
//    /// French (Gabon) - français (Gabon)
//    case French_Gabon = "fr_GA"
//    /// French (French Guiana) - français (Guyane française)
//    case French_French_Guiana = "fr_GF"
//    /// French (Guinea) - français (Guinée)
//    case French_Guinea = "fr_GN"
//    /// French (Guadeloupe) - français (Guadeloupe)
//    case French_Guadeloupe = "fr_GP"
//    /// French (Equatorial Guinea) - français (Guinée équatoriale)
//    case French_Equatorial_Guinea = "fr_GQ"
//    /// French (Haiti) - français (Haïti)
//    case French_Haiti = "fr_HT"
//    /// French (Comoros) - français (Comores)
//    case French_Comoros = "fr_KM"
//    /// French (Luxembourg) - français (Luxembourg)
//    case French_Luxembourg = "fr_LU"
//    /// French (Morocco) - français (Maroc)
//    case French_Morocco = "fr_MA"
//    /// French (Monaco) - français (Monaco)
//    case French_Monaco = "fr_MC"
//    /// French (St. Martin) - français (Saint-Martin)
//    case French_St_Martin = "fr_MF"
//    /// French (Madagascar) - français (Madagascar)
//    case French_Madagascar = "fr_MG"
//    /// French (Mali) - français (Mali)
//    case French_Mali = "fr_ML"
//    /// French (Martinique) - français (Martinique)
//    case French_Martinique = "fr_MQ"
//    /// French (Mauritania) - français (Mauritanie)
//    case French_Mauritania = "fr_MR"
//    /// French (Mauritius) - français (Maurice)
//    case French_Mauritius = "fr_MU"
//    /// French (New Caledonia) - français (Nouvelle-Calédonie)
//    case French_New_Caledonia = "fr_NC"
//    /// French (Niger) - français (Niger)
//    case French_Niger = "fr_NE"
//    /// French (French Polynesia) - français (Polynésie française)
//    case French_French_Polynesia = "fr_PF"
//    /// French (St. Pierre & Miquelon) - français (Saint-Pierre-et-Miquelon)
//    case French_St_Pierre_And_Miquelon = "fr_PM"
//    /// French (Réunion) - français (La Réunion)
//    case French_Réunion = "fr_RE"
//    /// French (Rwanda) - français (Rwanda)
//    case French_Rwanda = "fr_RW"
//    /// French (Seychelles) - français (Seychelles)
//    case French_Seychelles = "fr_SC"
//    /// French (Senegal) - français (Sénégal)
//    case French_Senegal = "fr_SN"
//    /// French (Syria) - français (Syrie)
//    case French_Syria = "fr_SY"
//    /// French (Chad) - français (Tchad)
//    case French_Chad = "fr_TD"
//    /// French (Togo) - français (Togo)
//    case French_Togo = "fr_TG"
//    /// French (Tunisia) - français (Tunisie)
//    case French_Tunisia = "fr_TN"
//    /// French (Vanuatu) - français (Vanuatu)
//    case French_Vanuatu = "fr_VU"
//    /// French (Wallis & Futuna) - français (Wallis-et-Futuna)
//    case French_Wallis_And_Futuna = "fr_WF"
//    /// French (Mayotte) - français (Mayotte)
//    case French_Mayotte = "fr_YT"
//    /// Friulian - furlan
//    case Friulian = "fur"
//    /// Friulian (Italy) - furlan (Italie)
//    case Friulian_Italy = "fur_IT"
//    /// Western Frisian - Frysk
//    case Western_Frisian = "fy"
//    /// Western Frisian (Netherlands) - Frysk (Nederlân)
//    case Western_Frisian_Netherlands = "fy_NL"
//    /// Irish - Gaeilge
//    case Irish = "ga"
//    /// Irish (Ireland) - Gaeilge (Éire)
//    case Irish_Ireland = "ga_IE"
//    /// Scottish Gaelic - Gàidhlig
//    case Scottish_Gaelic = "gd"
//    /// Scottish Gaelic (United Kingdom) - Gàidhlig (An Rìoghachd Aonaichte)
//    case Scottish_Gaelic_United_Kingdom = "gd_GB"
//    /// Galician - galego
//    case Galician = "gl"
//    /// Galician (Spain) - galego (España)
//    case Galician_Spain = "gl_ES"
//    /// Swiss German - Schwiizertüütsch
//    case Swiss_German = "gsw"
//    /// Swiss German (Switzerland) - Schwiizertüütsch (Schwiiz)
//    case Swiss_German_Switzerland = "gsw_CH"
//    /// Swiss German (France) - Schwiizertüütsch (Frankriich)
//    case Swiss_German_France = "gsw_FR"
//    /// Swiss German (Liechtenstein) - Schwiizertüütsch (Liächteschtäi)
//    case Swiss_German_Liechtenstein = "gsw_LI"
//    /// Gujarati - ગુજરાતી
//    case Gujarati = "gu"
//    /// Gujarati (India) - ગુજરાતી (ભારત)
//    case Gujarati_India = "gu_IN"
//    /// Gusii - Ekegusii
//    case Gusii = "guz"
//    /// Gusii (Kenya) - Ekegusii (Kenya)
//    case Gusii_Kenya = "guz_KE"
//    /// Manx - Gaelg
//    case Manx = "gv"
//    /// Manx (Isle of Man) - Gaelg (Ellan Vannin)
//    case Manx_Isle_of_Man = "gv_IM"
//    /// Hausa - Hausa
//    case Hausa = "ha"
//    /// Hausa (Ghana) - Hausa (Gana)
//    case Hausa_Ghana = "ha_GH"
//    /// Hausa (Niger) - Hausa (Nijar)
//    case Hausa_Niger = "ha_NE"
//    /// Hausa (Nigeria) - Hausa (Najeriya)
//    case Hausa_Nigeria = "ha_NG"
//    /// Hawaiian - ʻŌlelo Hawaiʻi
//    case Hawaiian = "haw"
//    /// Hawaiian (United States) - ʻŌlelo Hawaiʻi (ʻAmelika Hui Pū ʻIa)
//    case Hawaiian_United_States = "haw_US"
//    /// Hebrew - עברית
//    case Hebrew = "he"
//    /// Hebrew (Israel) - עברית (ישראל)
//    case Hebrew_Israel = "he_IL"
//    /// Hindi - हिन्दी
//    case Hindi = "hi"
//    /// Hindi (India) - हिन्दी (भारत)
//    case Hindi_India = "hi_IN"
//    /// Croatian - hrvatski
//    case Croatian = "hr"
//    /// Croatian (Bosnia & Herzegovina) - hrvatski (Bosna i Hercegovina)
//    case Croatian_Bosnia_And_Herzegovina = "hr_BA"
//    /// Croatian (Croatia) - hrvatski (Hrvatska)
//    case Croatian_Croatia = "hr_HR"
//    /// Upper Sorbian - hornjoserbšćina
//    case Upper_Sorbian = "hsb"
//    /// Upper Sorbian (Germany) - hornjoserbšćina (Němska)
//    case Upper_Sorbian_Germany = "hsb_DE"
//    /// Hungarian - magyar
//    case Hungarian = "hu"
//    /// Hungarian (Hungary) - magyar (Magyarország)
//    case Hungarian_Hungary = "hu_HU"
//    /// Armenian - հայերեն
//    case Armenian = "hy"
//    /// Armenian (Armenia) - հայերեն (Հայաստան)
//    case Armenian_Armenia = "hy_AM"
//    /// Indonesian - Indonesia
//    case Indonesian = "id"
//    /// Indonesian (Indonesia) - Indonesia (Indonesia)
//    case Indonesian_Indonesia = "id_ID"
//    /// Igbo - Igbo
//    case Igbo = "ig"
//    /// Igbo (Nigeria) - Igbo (Naịjịrịa)
//    case Igbo_Nigeria = "ig_NG"
//    /// Sichuan Yi - ꆈꌠꉙ
//    case Sichuan_Yi = "ii"
//    /// Sichuan Yi (China) - ꆈꌠꉙ (ꍏꇩ)
//    case Sichuan_Yi_China = "ii_CN"
//    /// Icelandic - íslenska
//    case Icelandic = "is"
//    /// Icelandic (Iceland) - íslenska (Ísland)
//    case Icelandic_Iceland = "is_IS"
//    /// Italian - italiano
//    case Italian = "it"
//    /// Italian (Switzerland) - italiano (Svizzera)
//    case Italian_Switzerland = "it_CH"
//    /// Italian (Italy) - italiano (Italia)
//    case Italian_Italy = "it_IT"
//    /// Italian (San Marino) - italiano (San Marino)
//    case Italian_San_Marino = "it_SM"
//    /// Italian (Vatican City) - italiano (Città del Vaticano)
//    case Italian_Vatican_City = "it_VA"
//    /// Japanese - 日本語
//    case Japanese = "ja"
//    /// Japanese (Japan) - 日本語 (日本)
//    case Japanese_Japan = "ja_JP"
//    /// Ngomba - Ndaꞌa
//    case Ngomba = "jgo"
//    /// Ngomba (Cameroon) - Ndaꞌa (Kamɛlûn)
//    case Ngomba_Cameroon = "jgo_CM"
//    /// Machame - Kimachame
//    case Machame = "jmc"
//    /// Machame (Tanzania) - Kimachame (Tanzania)
//    case Machame_Tanzania = "jmc_TZ"
//    /// Georgian - ქართული
//    case Georgian = "ka"
//    /// Georgian (Georgia) - ქართული (საქართველო)
//    case Georgian_Georgia = "ka_GE"
//    /// Kabyle - Taqbaylit
//    case Kabyle = "kab"
//    /// Kabyle (Algeria) - Taqbaylit (Lezzayer)
//    case Kabyle_Algeria = "kab_DZ"
//    /// Kamba - Kikamba
//    case Kamba = "kam"
//    /// Kamba (Kenya) - Kikamba (Kenya)
//    case Kamba_Kenya = "kam_KE"
//    /// Makonde - Chimakonde
//    case Makonde = "kde"
//    /// Makonde (Tanzania) - Chimakonde (Tanzania)
//    case Makonde_Tanzania = "kde_TZ"
//    /// Kabuverdianu - kabuverdianu
//    case Kabuverdianu = "kea"
//    /// Kabuverdianu (Cape Verde) - kabuverdianu (Kabu Verdi)
//    case Kabuverdianu_Cape_Verde = "kea_CV"
//    /// Koyra Chiini - Koyra ciini
//    case Koyra_Chiini = "khq"
//    /// Koyra Chiini (Mali) - Koyra ciini (Maali)
//    case Koyra_Chiini_Mali = "khq_ML"
//    /// Kikuyu - Gikuyu
//    case Kikuyu = "ki"
//    /// Kikuyu (Kenya) - Gikuyu (Kenya)
//    case Kikuyu_Kenya = "ki_KE"
//    /// Kazakh - қазақ тілі
//    case Kazakh = "kk"
//    /// Kazakh (Kazakhstan) - қазақ тілі (Қазақстан)
//    case Kazakh_Kazakhstan = "kk_KZ"
//    /// Kako - kakɔ
//    case Kako = "kkj"
//    /// Kako (Cameroon) - kakɔ (Kamɛrun)
//    case Kako_Cameroon = "kkj_CM"
//    /// Kalaallisut - kalaallisut
//    case Kalaallisut = "kl"
//    /// Kalaallisut (Greenland) - kalaallisut (Kalaallit Nunaat)
//    case Kalaallisut_Greenland = "kl_GL"
//    /// Kalenjin - Kalenjin
//    case Kalenjin = "kln"
//    /// Kalenjin (Kenya) - Kalenjin (Emetab Kenya)
//    case Kalenjin_Kenya = "kln_KE"
//    /// Khmer - ខ្មែរ
//    case Khmer = "km"
//    /// Khmer (Cambodia) - ខ្មែរ (កម្ពុជា)
//    case Khmer_Cambodia = "km_KH"
//    /// Kannada - ಕನ್ನಡ
//    case Kannada = "kn"
//    /// Kannada (India) - ಕನ್ನಡ (ಭಾರತ)
//    case Kannada_India = "kn_IN"
//    /// Korean - 한국어
//    case Korean = "ko"
//    /// Korean (North Korea) - 한국어(조선민주주의인민공화국)
//    case Korean_North_Korea = "ko_KP"
//    /// Korean (South Korea) - 한국어(대한민국)
//    case Korean_South_Korea = "ko_KR"
//    /// Konkani - कोंकणी
//    case Konkani = "kok"
//    /// Konkani (India) - कोंकणी (भारत)
//    case Konkani_India = "kok_IN"
//    /// Kashmiri - کٲشُر
//    case Kashmiri = "ks"
//    /// Kashmiri (India) - کٲشُر (ہِنٛدوستان)
//    case Kashmiri_India = "ks_IN"
//    /// Shambala - Kishambaa
//    case Shambala = "ksb"
//    /// Shambala (Tanzania) - Kishambaa (Tanzania)
//    case Shambala_Tanzania = "ksb_TZ"
//    /// Bafia - rikpa
//    case Bafia = "ksf"
//    /// Bafia (Cameroon) - rikpa (kamɛrún)
//    case Bafia_Cameroon = "ksf_CM"
//    /// Colognian - Kölsch
//    case Colognian = "ksh"
//    /// Colognian (Germany) - Kölsch en Doütschland
//    case Colognian_Germany = "ksh_DE"
//    /// Cornish - kernewek
//    case Cornish = "kw"
//    /// Cornish (United Kingdom) - kernewek (Rywvaneth Unys)
//    case Cornish_United_Kingdom = "kw_GB"
//    /// Kyrgyz - кыргызча
//    case Kyrgyz = "ky"
//    /// Kyrgyz (Kyrgyzstan) - кыргызча (Кыргызстан)
//    case Kyrgyz_Kyrgyzstan = "ky_KG"
//    /// Langi - Kɨlaangi
//    case Langi = "lag"
//    /// Langi (Tanzania) - Kɨlaangi (Taansanía)
//    case Langi_Tanzania = "lag_TZ"
//    /// Luxembourgish - Lëtzebuergesch
//    case Luxembourgish = "lb"
//    /// Luxembourgish (Luxembourg) - Lëtzebuergesch (Lëtzebuerg)
//    case Luxembourgish_Luxembourg = "lb_LU"
//    /// Ganda - Luganda
//    case Ganda = "lg"
//    /// Ganda (Uganda) - Luganda (Yuganda)
//    case Ganda_Uganda = "lg_UG"
//    /// Lakota - Lakȟólʼiyapi
//    case Lakota = "lkt"
//    /// Lakota (United States) - Lakȟólʼiyapi (Mílahaŋska Tȟamákȟočhe)
//    case Lakota_United_States = "lkt_US"
//    /// Lingala - lingála
//    case Lingala = "ln"
//    /// Lingala (Angola) - lingála (Angóla)
//    case Lingala_Angola = "ln_AO"
//    /// Lingala (Congo - Kinshasa) - lingála (Republíki ya Kongó Demokratíki)
//    case Lingala_Congo_Kinshasa = "ln_CD"
//    /// Lingala (Central African Republic) - lingála (Repibiki ya Afríka ya Káti)
//    case Lingala_Central_African_Republic = "ln_CF"
//    /// Lingala (Congo - Brazzaville) - lingála (Kongo)
//    case Lingala_Congo_Brazzaville = "ln_CG"
//    /// Lao - ລາວ
//    case Lao = "lo"
//    /// Lao (Laos) - ລາວ (ລາວ)
//    case Lao_Laos = "lo_LA"
//    /// Northern Luri - لۊری شومالی
//    case Northern_Luri = "lrc"
//    /// Northern Luri (Iraq) - لۊری شومالی (IQ)
//    case Northern_Luri_Iraq = "lrc_IQ"
//    /// Northern Luri (Iran) - لۊری شومالی (IR)
//    case Northern_Luri_Iran = "lrc_IR"
//    /// Lithuanian - lietuvių
//    case Lithuanian = "lt"
//    /// Lithuanian (Lithuania) - lietuvių (Lietuva)
//    case Lithuanian_Lithuania = "lt_LT"
//    /// Luba-Katanga - Tshiluba
//    case Luba_Katanga = "lu"
//    /// Luba-Katanga (Congo - Kinshasa) - Tshiluba (Ditunga wa Kongu)
//    case Luba_Katanga_Congo_Kinshasa = "lu_CD"
//    /// Luo - Dholuo
//    case Luo = "luo"
//    /// Luo (Kenya) - Dholuo (Kenya)
//    case Luo_Kenya = "luo_KE"
//    /// Luyia - Luluhia
//    case Luyia = "luy"
//    /// Luyia (Kenya) - Luluhia (Kenya)
//    case Luyia_Kenya = "luy_KE"
//    /// Latvian - latviešu
//    case Latvian = "lv"
//    /// Latvian (Latvia) - latviešu (Latvija)
//    case Latvian_Latvia = "lv_LV"
//    /// Masai - Maa
//    case Masai = "mas"
//    /// Masai (Kenya) - Maa (Kenya)
//    case Masai_Kenya = "mas_KE"
//    /// Masai (Tanzania) - Maa (Tansania)
//    case Masai_Tanzania = "mas_TZ"
//    /// Meru - Kĩmĩrũ
//    case Meru = "mer"
//    /// Meru (Kenya) - Kĩmĩrũ (Kenya)
//    case Meru_Kenya = "mer_KE"
//    /// Morisyen - kreol morisien
//    case Morisyen = "mfe"
//    /// Morisyen (Mauritius) - kreol morisien (Moris)
//    case Morisyen_Mauritius = "mfe_MU"
//    /// Malagasy - Malagasy
//    case Malagasy = "mg"
//    /// Malagasy (Madagascar) - Malagasy (Madagasikara)
//    case Malagasy_Madagascar = "mg_MG"
//    /// Makhuwa-Meetto - Makua
//    case Makhuwa_Meetto = "mgh"
//    /// Makhuwa-Meetto (Mozambique) - Makua (Umozambiki)
//    case Makhuwa_Meetto_Mozambique = "mgh_MZ"
//    /// Metaʼ - metaʼ
//    case Metaʼ = "mgo"
//    /// Metaʼ (Cameroon) - metaʼ (Kamalun)
//    case Metaʼ_Cameroon = "mgo_CM"
//    /// Macedonian - македонски
//    case Macedonian = "mk"
//    /// Macedonian (Macedonia) - македонски (Македонија)
//    case Macedonian_Macedonia = "mk_MK"
//    /// Malayalam - മലയാളം
//    case Malayalam = "ml"
//    /// Malayalam (India) - മലയാളം (ഇന്ത്യ)
//    case Malayalam_India = "ml_IN"
//    /// Mongolian - монгол
//    case Mongolian = "mn"
//    /// Mongolian (Mongolia) - монгол (Монгол)
//    case Mongolian_Mongolia = "mn_MN"
//    /// Marathi - मराठी
//    case Marathi = "mr"
//    /// Marathi (India) - मराठी (भारत)
//    case Marathi_India = "mr_IN"
//    /// Malay - Melayu
//    case Malay = "ms"
//    /// Malay (Brunei) - Melayu (Brunei)
//    case Malay_Brunei = "ms_BN"
//    /// Malay (Malaysia) - Melayu (Malaysia)
//    case Malay_Malaysia = "ms_MY"
//    /// Malay (Singapore) - Melayu (Singapura)
//    case Malay_Singapore = "ms_SG"
//    /// Maltese - Malti
//    case Maltese = "mt"
//    /// Maltese (Malta) - Malti (Malta)
//    case Maltese_Malta = "mt_MT"
//    /// Mundang - MUNDAŊ
//    case Mundang = "mua"
//    /// Mundang (Cameroon) - MUNDAŊ (kameruŋ)
//    case Mundang_Cameroon = "mua_CM"
//    /// Burmese - မြန်မာ
//    case Burmese = "my"
//    /// Burmese (Myanmar [Burma]) - မြန်မာ (မြန်မာ)
//    case Burmese_Myanmar_Burma = "my_MM"
//    /// Mazanderani - مازرونی
//    case Mazanderani = "mzn"
//    /// Mazanderani (Iran) - مازرونی (ایران)
//    case Mazanderani_Iran = "mzn_IR"
//    /// Nama - Khoekhoegowab
//    case Nama = "naq"
//    /// Nama (Namibia) - Khoekhoegowab (Namibiab)
//    case Nama_Namibia = "naq_NA"
//    /// Norwegian Bokmål - norsk bokmål
//    case Norwegian_Bokmål = "nb"
//    /// Norwegian Bokmål (Norway) - norsk bokmål (Norge)
//    case Norwegian_Bokmål_Norway = "nb_NO"
//    /// Norwegian Bokmål (Svalbard & Jan Mayen) - norsk bokmål (Svalbard og Jan Mayen)
//    case Norwegian_Bokmål_Svalbard_And_Jan_Mayen = "nb_SJ"
//    /// North Ndebele - isiNdebele
//    case North_Ndebele = "nd"
//    /// North Ndebele (Zimbabwe) - isiNdebele (Zimbabwe)
//    case North_Ndebele_Zimbabwe = "nd_ZW"
//    /// Low German - nds
//    case Low_German = "nds"
//    /// Low German (Germany) - nds (DE)
//    case Low_German_Germany = "nds_DE"
//    /// Low German (Netherlands) - nds (NL) - Low Saxon
//    case Low_German_Netherlands = "nds_NL"
//    /// Nepali - नेपाली
//    case Nepali = "ne"
//    /// Nepali (India) - नेपाली (भारत)
//    case Nepali_India = "ne_IN"
//    /// Nepali (Nepal) - नेपाली (नेपाल)
//    case Nepali_Nepal = "ne_NP"
//    /// Dutch - Nederlands
//    case Dutch = "nl"
//    /// Dutch (Aruba) - Nederlands (Aruba)
//    case Dutch_Aruba = "nl_AW"
//    /// Dutch (Belgium) - Nederlands (België) - Flemish
//    case Dutch_Belgium = "nl_BE"
//    /// Dutch (Caribbean Netherlands) - Nederlands (Caribisch Nederland)
//    case Dutch_Caribbean_Netherlands = "nl_BQ"
//    /// Dutch (Curaçao) - Nederlands (Curaçao)
//    case Dutch_Curaçao = "nl_CW"
//    /// Dutch (Netherlands) - Nederlands (Nederland)
//    case Dutch_Netherlands = "nl_NL"
//    /// Dutch (Suriname) - Nederlands (Suriname)
//    case Dutch_Suriname = "nl_SR"
//    /// Dutch (Sint Maarten) - Nederlands (Sint-Maarten)
//    case Dutch_Sint_Maarten = "nl_SX"
//    /// Kwasio - nmg
//    case Kwasio = "nmg"
//    /// Kwasio (Cameroon) - nmg (Kamerun)
//    case Kwasio_Cameroon = "nmg_CM"
//    /// Norwegian Nynorsk - nynorsk
//    case Norwegian_Nynorsk = "nn"
//    /// Norwegian Nynorsk (Norway) - nynorsk (Noreg)
//    case Norwegian_Nynorsk_Norway = "nn_NO"
//    /// Ngiemboon - Shwóŋò ngiembɔɔn
//    case Ngiemboon = "nnh"
//    /// Ngiemboon (Cameroon) - Shwóŋò ngiembɔɔn (Kàmalûm)
//    case Ngiemboon_Cameroon = "nnh_CM"
//    /// Nuer - Thok Nath
//    case Nuer = "nus"
//    /// Nuer (South Sudan) - Thok Nath (SS)
//    case Nuer_South_Sudan = "nus_SS"
//    /// Nyankole - Runyankore
//    case Nyankole = "nyn"
//    /// Nyankole (Uganda) - Runyankore (Uganda)
//    case Nyankole_Uganda = "nyn_UG"
//    /// Oromo - Oromoo
//    case Oromo = "om"
//    /// Oromo (Ethiopia) - Oromoo (Itoophiyaa)
//    case Oromo_Ethiopia = "om_ET"
//    /// Oromo (Kenya) - Oromoo (Keeniyaa)
//    case Oromo_Kenya = "om_KE"
//    /// Odia - ଓଡ଼ିଆ
//    case Odia = "or"
//    /// Odia (India) - ଓଡ଼ିଆ (ଭାରତ)
//    case Odia_India = "or_IN"
//    /// Ossetic - ирон
//    case Ossetic = "os"
//    /// Ossetic (Georgia) - ирон (Гуырдзыстон)
//    case Ossetic_Georgia = "os_GE"
//    /// Ossetic (Russia) - ирон (Уӕрӕсе)
//    case Ossetic_Russia = "os_RU"
//    /// Punjabi - ਪੰਜਾਬੀ
//    case Punjabi = "pa"
//    /// Punjabi (Arabic) - پنجابی (عربی)
//    case Punjabi_Arabic = "pa_Arab"
//    /// Punjabi (Arabic, Pakistan) - پنجابی (عربی, پاکستان)
//    case Punjabi_Arabic_Pakistan = "pa_Arab_PK"
//    /// Punjabi (Gurmukhi) - ਪੰਜਾਬੀ (ਗੁਰਮੁਖੀ)
//    case Punjabi_Gurmukhi = "pa_Guru"
//    /// Punjabi (Gurmukhi, India) - ਪੰਜਾਬੀ (ਗੁਰਮੁਖੀ, ਭਾਰਤ)
//    case Punjabi_Gurmukhi_India = "pa_Guru_IN"
//    /// Polish - polski
//    case Polish = "pl"
//    /// Polish (Poland) - polski (Polska)
//    case Polish_Poland = "pl_PL"
//    /// Pashto - پښتو
//    case Pashto = "ps"
//    /// Pashto (Afghanistan) - پښتو (افغانستان)
//    case Pashto_Afghanistan = "ps_AF"
//    /// Portuguese - português
//    case Portuguese = "pt"
//    /// Portuguese (Angola) - português (Angola)
//    case Portuguese_Angola = "pt_AO"
//    /// Portuguese (Brazil) - português (Brasil) - Brazilian Portuguese
//    case Portuguese_Brazil = "pt_BR"
//    /// Portuguese (Switzerland) - português (Suíça)
//    case Portuguese_Switzerland = "pt_CH"
//    /// Portuguese (Cape Verde) - português (Cabo Verde)
//    case Portuguese_Cape_Verde = "pt_CV"
//    /// Portuguese (Equatorial Guinea) - português (Guiné Equatorial)
//    case Portuguese_Equatorial_Guinea = "pt_GQ"
//    /// Portuguese (Guinea-Bissau) - português (Guiné-Bissau)
//    case Portuguese_Guinea_Bissau = "pt_GW"
//    /// Portuguese (Luxembourg) - português (Luxemburgo)
//    case Portuguese_Luxembourg = "pt_LU"
//    /// Portuguese (Macau SAR China) - português (Macau, RAE da China)
//    case Portuguese_Macau_SAR_China = "pt_MO"
//    /// Portuguese (Mozambique) - português (Moçambique)
//    case Portuguese_Mozambique = "pt_MZ"
//    /// Portuguese (Portugal) - português (Portugal) - European Portuguese
//    case Portuguese_Portugal = "pt_PT"
//    /// Portuguese (São Tomé & Príncipe) - português (São Tomé e Príncipe)
//    case Portuguese_São_Tomé_And_Príncipe = "pt_ST"
//    /// Portuguese (Timor-Leste) - português (Timor-Leste)
//    case Portuguese_Timor_Leste = "pt_TL"
//    /// Quechua - Runasimi
//    case Quechua = "qu"
//    /// Quechua (Bolivia) - Runasimi (Bolivia)
//    case Quechua_Bolivia = "qu_BO"
//    /// Quechua (Ecuador) - Runasimi (Ecuador)
//    case Quechua_Ecuador = "qu_EC"
//    /// Quechua (Peru) - Runasimi (Perú)
//    case Quechua_Peru = "qu_PE"
//    /// Romansh - rumantsch
//    case Romansh = "rm"
//    /// Romansh (Switzerland) - rumantsch (Svizra)
//    case Romansh_Switzerland = "rm_CH"
//    /// Rundi - Ikirundi
//    case Rundi = "rn"
//    /// Rundi (Burundi) - Ikirundi (Uburundi)
//    case Rundi_Burundi = "rn_BI"
//    /// Romanian - română
//    case Romanian = "ro"
//    /// Romanian (Moldova) - română (Republica Moldova) - Moldavian
//    case Romanian_Moldova = "ro_MD"
//    /// Romanian (Romania) - română (România)
//    case Romanian_Romania = "ro_RO"
//    /// Rombo - Kihorombo
//    case Rombo = "rof"
//    /// Rombo (Tanzania) - Kihorombo (Tanzania)
//    case Rombo_Tanzania = "rof_TZ"
//    /// Russian - русский
//    case Russian = "ru"
//    /// Russian (Belarus) - русский (Беларусь)
//    case Russian_Belarus = "ru_BY"
//    /// Russian (Kyrgyzstan) - русский (Киргизия)
//    case Russian_Kyrgyzstan = "ru_KG"
//    /// Russian (Kazakhstan) - русский (Казахстан)
//    case Russian_Kazakhstan = "ru_KZ"
//    /// Russian (Moldova) - русский (Молдова)
//    case Russian_Moldova = "ru_MD"
//    /// Russian (Russia) - русский (Россия)
//    case Russian_Russia = "ru_RU"
//    /// Russian (Ukraine) - русский (Украина)
//    case Russian_Ukraine = "ru_UA"
//    /// Kinyarwanda - Kinyarwanda
//    case Kinyarwanda = "rw"
//    /// Kinyarwanda (Rwanda) - Kinyarwanda (U Rwanda)
//    case Kinyarwanda_Rwanda = "rw_RW"
//    /// Rwa - Kiruwa
//    case Rwa = "rwk"
//    /// Rwa (Tanzania) - Kiruwa (Tanzania)
//    case Rwa_Tanzania = "rwk_TZ"
//    /// Sakha - саха тыла
//    case Sakha = "sah"
//    /// Sakha (Russia) - саха тыла (Арассыыйа)
//    case Sakha_Russia = "sah_RU"
//    /// Samburu - Kisampur
//    case Samburu = "saq"
//    /// Samburu (Kenya) - Kisampur (Kenya)
//    case Samburu_Kenya = "saq_KE"
//    /// Sangu - Ishisangu
//    case Sangu = "sbp"
//    /// Sangu (Tanzania) - Ishisangu (Tansaniya)
//    case Sangu_Tanzania = "sbp_TZ"
//    /// Northern Sami - davvisámegiella
//    case Northern_Sami = "se"
//    /// Northern Sami (Finland) - davvisámegiella (Suopma)
//    case Northern_Sami_Finland = "se_FI"
//    /// Northern Sami (Norway) - davvisámegiella (Norga)
//    case Northern_Sami_Norway = "se_NO"
//    /// Northern Sami (Sweden) - davvisámegiella (Ruoŧŧa)
//    case Northern_Sami_Sweden = "se_SE"
//    /// Sena - sena
//    case Sena = "seh"
//    /// Sena (Mozambique) - sena (Moçambique)
//    case Sena_Mozambique = "seh_MZ"
//    /// Koyraboro Senni - Koyraboro senni
//    case Koyraboro_Senni = "ses"
//    /// Koyraboro Senni (Mali) - Koyraboro senni (Maali)
//    case Koyraboro_Senni_Mali = "ses_ML"
//    /// Sango - Sängö
//    case Sango = "sg"
//    /// Sango (Central African Republic) - Sängö (Ködörösêse tî Bêafrîka)
//    case Sango_Central_African_Republic = "sg_CF"
//    /// Tachelhit - ⵜⴰⵛⵍⵃⵉⵜ
//    case Tachelhit = "shi"
//    /// Tachelhit (Latin) - Tashelḥiyt (Latn)
//    case Tachelhit_Latin = "shi_Latn"
//    /// Tachelhit (Latin, Morocco) - Tashelḥiyt (Latn, lmɣrib)
//    case Tachelhit_Latin_Morocco = "shi_Latn_MA"
//    /// Tachelhit (Tifinagh) - ⵜⴰⵛⵍⵃⵉⵜ (Tfng)
//    case Tachelhit_Tifinagh = "shi_Tfng"
//    /// Tachelhit (Tifinagh, Morocco) - ⵜⴰⵛⵍⵃⵉⵜ (Tfng, ⵍⵎⵖⵔⵉⴱ)
//    case Tachelhit_Tifinagh_Morocco = "shi_Tfng_MA"
//    /// Sinhala - සිංහල
//    case Sinhala = "si"
//    /// Sinhala (Sri Lanka) - සිංහල (ශ්‍රී ලංකාව)
//    case Sinhala_Sri_Lanka = "si_LK"
//    /// Slovak - slovenčina
//    case Slovak = "sk"
//    /// Slovak (Slovakia) - slovenčina (Slovensko)
//    case Slovak_Slovakia = "sk_SK"
//    /// Slovenian - slovenščina
//    case Slovenian = "sl"
//    /// Slovenian (Slovenia) - slovenščina (Slovenija)
//    case Slovenian_Slovenia = "sl_SI"
//    /// Inari Sami - anarâškielâ
//    case Inari_Sami = "smn"
//    /// Inari Sami (Finland) - anarâškielâ (Suomâ)
//    case Inari_Sami_Finland = "smn_FI"
//    /// Shona - chiShona
//    case Shona = "sn"
//    /// Shona (Zimbabwe) - chiShona (Zimbabwe)
//    case Shona_Zimbabwe = "sn_ZW"
//    /// Somali - Soomaali
//    case Somali = "so"
//    /// Somali (Djibouti) - Soomaali (Jabuuti)
//    case Somali_Djibouti = "so_DJ"
//    /// Somali (Ethiopia) - Soomaali (Itoobiya)
//    case Somali_Ethiopia = "so_ET"
//    /// Somali (Kenya) - Soomaali (Kiiniya)
//    case Somali_Kenya = "so_KE"
//    /// Somali (Somalia) - Soomaali (Soomaaliya)
//    case Somali_Somalia = "so_SO"
//    /// Albanian - shqip
//    case Albanian = "sq"
//    /// Albanian (Albania) - shqip (Shqipëri)
//    case Albanian_Albania = "sq_AL"
//    /// Albanian (Macedonia) - shqip (Maqedoni)
//    case Albanian_Macedonia = "sq_MK"
//    /// Albanian (Kosovo) - shqip (Kosovë)
//    case Albanian_Kosovo = "sq_XK"
//    /// Serbian - српски
//    case Serbian = "sr"
//    /// Serbian (Cyrillic) - српски (ћирилица)
//    case Serbian_Cyrillic = "sr_Cyrl"
//    /// Serbian (Cyrillic, Bosnia & Herzegovina) - српски (ћирилица, Босна и Херцеговина)
//    case Serbian_Cyrillic_Bosnia_And_Herzegovina = "sr_Cyrl_BA"
//    /// Serbian (Cyrillic, Montenegro) - српски (ћирилица, Црна Гора)
//    case Serbian_Cyrillic_Montenegro = "sr_Cyrl_ME"
//    /// Serbian (Cyrillic, Serbia) - српски (ћирилица, Србија)
//    case Serbian_Cyrillic_Serbia = "sr_Cyrl_RS"
//    /// Serbian (Cyrillic, Kosovo) - српски (ћирилица, Косово)
//    case Serbian_Cyrillic_Kosovo = "sr_Cyrl_XK"
//    /// Serbian (Latin) - srpski (latinica)
//    case Serbian_Latin = "sr_Latn"
//    /// Serbian (Latin, Bosnia & Herzegovina) - srpski (latinica, Bosna i Hercegovina)
//    case Serbian_Latin_Bosnia_And_Herzegovina = "sr_Latn_BA"
//    /// Serbian (Latin, Montenegro) - srpski (latinica, Crna Gora)
//    case Serbian_Latin_Montenegro = "sr_Latn_ME"
//    /// Serbian (Latin, Serbia) - srpski (latinica, Srbija)
//    case Serbian_Latin_Serbia = "sr_Latn_RS"
//    /// Serbian (Latin, Kosovo) - srpski (latinica, Kosovo)
//    case Serbian_Latin_Kosovo = "sr_Latn_XK"
//    /// Swedish - svenska
//    case Swedish = "sv"
//    /// Swedish (Åland Islands) - svenska (Åland)
//    case Swedish_Åland_Islands = "sv_AX"
//    /// Swedish (Finland) - svenska (Finland)
//    case Swedish_Finland = "sv_FI"
//    /// Swedish (Sweden) - svenska (Sverige)
//    case Swedish_Sweden = "sv_SE"
//    /// Swahili - Kiswahili
//    case Swahili = "sw"
//    /// Swahili (Congo - Kinshasa) - Kiswahili (Jamhuri ya Kidemokrasia ya Kongo) - Congo Swahili
//    case Swahili_Congo_Kinshasa = "sw_CD"
//    /// Swahili (Kenya) - Kiswahili (Kenya)
//    case Swahili_Kenya = "sw_KE"
//    /// Swahili (Tanzania) - Kiswahili (Tanzania)
//    case Swahili_Tanzania = "sw_TZ"
//    /// Swahili (Uganda) - Kiswahili (Uganda)
//    case Swahili_Uganda = "sw_UG"
//    /// Tamil - தமிழ்
//    case Tamil = "ta"
//    /// Tamil (India) - தமிழ் (இந்தியா)
//    case Tamil_India = "ta_IN"
//    /// Tamil (Sri Lanka) - தமிழ் (இலங்கை)
//    case Tamil_Sri_Lanka = "ta_LK"
//    /// Tamil (Malaysia) - தமிழ் (மலேசியா)
//    case Tamil_Malaysia = "ta_MY"
//    /// Tamil (Singapore) - தமிழ் (சிங்கப்பூர்)
//    case Tamil_Singapore = "ta_SG"
//    /// Telugu - తెలుగు
//    case Telugu = "te"
//    /// Telugu (India) - తెలుగు (భారతదేశం)
//    case Telugu_India = "te_IN"
//    /// Teso - Kiteso
//    case Teso = "teo"
//    /// Teso (Kenya) - Kiteso (Kenia)
//    case Teso_Kenya = "teo_KE"
//    /// Teso (Uganda) - Kiteso (Uganda)
//    case Teso_Uganda = "teo_UG"
//    /// Tajik - тоҷикӣ
//    case Tajik = "tg"
//    /// Tajik (Tajikistan) - тоҷикӣ (Тоҷикистон)
//    case Tajik_Tajikistan = "tg_TJ"
//    /// Thai - ไทย
//    case Thai = "th"
//    /// Thai (Thailand) - ไทย (ไทย)
//    case Thai_Thailand = "th_TH"
//    /// Tigrinya - ትግርኛ
//    case Tigrinya = "ti"
//    /// Tigrinya (Eritrea) - ትግርኛ (ኤርትራ)
//    case Tigrinya_Eritrea = "ti_ER"
//    /// Tigrinya (Ethiopia) - ትግርኛ (ኢትዮጵያ)
//    case Tigrinya_Ethiopia = "ti_ET"
//    /// Tongan - lea fakatonga
//    case Tongan = "to"
//    /// Tongan (Tonga) - lea fakatonga (Tonga)
//    case Tongan_Tonga = "to_TO"
//    /// Turkish - Türkçe
//    case Turkish = "tr"
//    /// Turkish (Cyprus) - Türkçe (Kıbrıs)
//    case Turkish_Cyprus = "tr_CY"
//    /// Turkish (Turkey) - Türkçe (Türkiye)
//    case Turkish_Turkey = "tr_TR"
//    /// Tatar - татар
//    case Tatar = "tt"
//    /// Tatar (Russia) - татар (Россия)
//    case Tatar_Russia = "tt_RU"
//    /// Tasawaq - Tasawaq senni
//    case Tasawaq = "twq"
//    /// Tasawaq (Niger) - Tasawaq senni (Nižer)
//    case Tasawaq_Niger = "twq_NE"
//    /// Central Atlas Tamazight - Tamaziɣt n laṭlaṣ
//    case Central_Atlas_Tamazight = "tzm"
//    /// Central Atlas Tamazight (Morocco) - Tamaziɣt n laṭlaṣ (Meṛṛuk)
//    case Central_Atlas_Tamazight_Morocco = "tzm_MA"
//    /// Uyghur - ئۇيغۇرچە
//    case Uyghur = "ug"
//    /// Uyghur (China) - ئۇيغۇرچە (جۇڭگو)
//    case Uyghur_China = "ug_CN"
//    /// Ukrainian - українська
//    case Ukrainian = "uk"
//    /// Ukrainian (Ukraine) - українська (Україна)
//    case Ukrainian_Ukraine = "uk_UA"
//    /// Urdu - اردو
//    case Urdu = "ur"
//    /// Urdu (India) - اردو (بھارت)
//    case Urdu_India = "ur_IN"
//    /// Urdu (Pakistan) - اردو (پاکستان)
//    case Urdu_Pakistan = "ur_PK"
//    /// Uzbek - o‘zbek
//    case Uzbek = "uz"
//    /// Uzbek (Arabic) - اوزبیک (عربی)
//    case Uzbek_Arabic = "uz_Arab"
//    /// Uzbek (Arabic, Afghanistan) - اوزبیک (عربی, افغانستان)
//    case Uzbek_Arabic_Afghanistan = "uz_Arab_AF"
//    /// Uzbek (Cyrillic) - ўзбекча (Кирил)
//    case Uzbek_Cyrillic = "uz_Cyrl"
//    /// Uzbek (Cyrillic, Uzbekistan) - ўзбекча (Кирил, Ўзбекистон)
//    case Uzbek_Cyrillic_Uzbekistan = "uz_Cyrl_UZ"
//    /// Uzbek (Latin) - o‘zbek (lotin)
//    case Uzbek_Latin = "uz_Latn"
//    /// Uzbek (Latin, Uzbekistan) - o‘zbek (lotin, Oʻzbekiston)
//    case Uzbek_Latin_Uzbekistan = "uz_Latn_UZ"
//    /// Vai - ꕙꔤ
//    case Vai = "vai"
//    /// Vai (Latin) - Vai (Latn)
//    case Vai_Latin = "vai_Latn"
//    /// Vai (Latin, Liberia) - Vai (Latn, Laibhiya)
//    case Vai_Latin_Liberia = "vai_Latn_LR"
//    /// Vai (Vai) - ꕙꔤ (Vaii)
//    case Vai_Vai = "vai_Vaii"
//    /// Vai (Vai, Liberia) - ꕙꔤ (Vaii, ꕞꔤꔫꕩ)
//    case Vai_Vai_Liberia = "vai_Vaii_LR"
//    /// Vietnamese - Tiếng Việt
//    case Vietnamese = "vi"
//    /// Vietnamese (Vietnam) - Tiếng Việt (Việt Nam)
//    case Vietnamese_Vietnam = "vi_VN"
//    /// Vunjo - Kyivunjo
//    case Vunjo = "vun"
//    /// Vunjo (Tanzania) - Kyivunjo (Tanzania)
//    case Vunjo_Tanzania = "vun_TZ"
//    /// Walser - Walser
//    case Walser = "wae"
//    /// Walser (Switzerland) - Walser (Schwiz)
//    case Walser_Switzerland = "wae_CH"
//    /// Wolof - Wolof
//    case Wolof = "wo"
//    /// Wolof (Senegal) - Wolof (Senegaal)
//    case Wolof_Senegal = "wo_SN"
//    /// Soga - Olusoga
//    case Soga = "xog"
//    /// Soga (Uganda) - Olusoga (Yuganda)
//    case Soga_Uganda = "xog_UG"
//    /// Yangben - nuasue
//    case Yangben = "yav"
//    /// Yangben (Cameroon) - nuasue (Kemelún)
//    case Yangben_Cameroon = "yav_CM"
//    /// Yiddish - ייִדיש
//    case Yiddish = "yi"
//    /// Yiddish (World) - ייִדיש (וועלט)
//    case Yiddish_World = "yi_001"
//    /// Yoruba - Èdè Yorùbá
//    case Yoruba = "yo"
//    /// Yoruba (Benin) - Èdè Yorùbá (Orílɛ́ède Bɛ̀nɛ̀)
//    case Yoruba_Benin = "yo_BJ"
//    /// Yoruba (Nigeria) - Èdè Yorùbá (Orílẹ́ède Nàìjíríà)
//    case Yoruba_Nigeria = "yo_NG"
//    /// Cantonese - 粵語
//    case Cantonese = "yue"
//    /// Cantonese (Simplified) - 粤语 (简体)
//    case Cantonese_Simplified = "yue_Hans"
//    /// Cantonese (Simplified, China) - 粤语 (简体，中华人民共和国)
//    case Cantonese_Simplified_China = "yue_Hans_CN"
//    /// Cantonese (Traditional) - 粵語 (繁體)
//    case Cantonese_Traditional = "yue_Hant"
//    /// Cantonese (Traditional, Hong Kong SAR China) - 粵語 (繁體，中華人民共和國香港特別行政區)
//    case Cantonese_Traditional_Hong_Kong_SAR_China = "yue_Hant_HK"
//    /// Standard Moroccan Tamazight - ⵜⴰⵎⴰⵣⵉⵖⵜ
//    case Standard_Moroccan_Tamazight = "zgh"
//    /// Standard Moroccan Tamazight (Morocco) - ⵜⴰⵎⴰⵣⵉⵖⵜ (ⵍⵎⵖⵔⵉⴱ)
//    case Standard_Moroccan_Tamazight_Morocco = "zgh_MA"
//    /// Chinese - 中文
//    case Chinese = "zh"
//    /// Chinese (Simplified) - 中文（简体） - Simplified Chinese
//    case Chinese_Simplified = "zh_Hans"
//    /// Chinese (Simplified, China) - 中文（简体，中国） - Simplified Chinese (China)
//    case Chinese_Simplified_China = "zh_Hans_CN"
//    /// Chinese (Simplified, Hong Kong SAR China) - 中文（简体，中国香港特别行政区） - Simplified Chinese (Hong Kong SAR China)
//    case Chinese_Simplified_Hong_Kong_SAR_China = "zh_Hans_HK"
//    /// Chinese (Simplified, Macau SAR China) - 中文（简体，中国澳门特别行政区） - Simplified Chinese (Macau SAR China)
//    case Chinese_Simplified_Macau_SAR_China = "zh_Hans_MO"
//    /// Chinese (Simplified, Singapore) - 中文（简体，新加坡） - Simplified Chinese (Singapore)
//    case Chinese_Simplified_Singapore = "zh_Hans_SG"
//    /// Chinese (Traditional) - 中文（繁體） - Traditional Chinese
//    case Chinese_Traditional = "zh_Hant"
//    /// Chinese (Traditional, Hong Kong SAR China) - 中文（繁體字，中國香港特別行政區） - Traditional Chinese (Hong Kong SAR China)
//    case Chinese_Traditional_Hong_Kong_SAR_China = "zh_Hant_HK"
//    /// Chinese (Traditional, Macau SAR China) - 中文（繁體字，中國澳門特別行政區） - Traditional Chinese (Macau SAR China)
//    case Chinese_Traditional_Macau_SAR_China = "zh_Hant_MO"
//    /// Chinese (Traditional, Taiwan) - 中文（繁體，台灣） - Traditional Chinese (Taiwan)
//    case Chinese_Traditional_Taiwan = "zh_Hant_TW"
//    /// Zulu - isiZulu
//    case Zulu = "zu"
//    /// Zulu (South Africa) - isiZulu (iNingizimu Afrika)
//    case Zulu_South_Africa = "zu_ZA"
//    
//    var nativeName: String? {
//        switch self {
//            /// Afrikaans - Afrikaans
//            case .Afrikaans: return "Afrikaans"
//            /// Afrikaans (Namibia) - Afrikaans (Namibië)
//            case .Afrikaans_Namibia: return "Afrikaans (Namibië)"
//            /// Afrikaans (South Africa) - Afrikaans (Suid-Afrika)
//            case .Afrikaans_South_Africa: return "Afrikaans (Suid"
//            /// Aghem - Aghem
//            case .Aghem: return "Aghem"
//            /// Aghem (Cameroon) - Aghem (Kàmàlûŋ)
//            case .Aghem_Cameroon: return "Aghem (Kàmàlûŋ)"
//            /// Akan - Akan
//            case .Akan: return "Akan"
//            /// Akan (Ghana) - Akan (Gaana)
//            case .Akan_Ghana: return "Akan (Gaana)"
//            /// Amharic - አማርኛ
//            case .Amharic: return "አማርኛ"
//            /// Amharic (Ethiopia) - አማርኛ (ኢትዮጵያ)
//            case .Amharic_Ethiopia: return "አማርኛ (ኢትዮጵያ)"
//            /// Arabic - العربية
//            case .Arabic: return "العربية"
//            /// Arabic (World) - العربية (العالم) - Modern Standard Arabic
//            case .Arabic_World: return "العربية (العالم)"
//            /// Arabic (United Arab Emirates) - العربية (الإمارات العربية المتحدة)
//            case .Arabic_United_Arab_Emirates: return "العربية (الإمارات العربية المتحدة)"
//            /// Arabic (Bahrain) - العربية (البحرين)
//            case .Arabic_Bahrain: return "العربية (البحرين)"
//            /// Arabic (Djibouti) - العربية (جيبوتي)
//            case .Arabic_Djibouti: return "العربية (جيبوتي)"
//            /// Arabic (Algeria) - العربية (الجزائر)
//            case .Arabic_Algeria: return "العربية (الجزائر)"
//            /// Arabic (Egypt) - العربية (مصر)
//            case .Arabic_Egypt: return "العربية (مصر)"
//            /// Arabic (Western Sahara) - العربية (الصحراء الغربية)
//            case .Arabic_Western_Sahara: return "العربية (الصحراء الغربية)"
//            /// Arabic (Eritrea) - العربية (إريتريا)
//            case .Arabic_Eritrea: return "العربية (إريتريا)"
//            /// Arabic (Israel) - العربية (إسرائيل)
//            case .Arabic_Israel: return "العربية (إسرائيل)"
//            /// Arabic (Iraq) - العربية (العراق)
//            case .Arabic_Iraq: return "العربية (العراق)"
//            /// Arabic (Jordan) - العربية (الأردن)
//            case .Arabic_Jordan: return "العربية (الأردن)"
//            /// Arabic (Comoros) - العربية (جزر القمر)
//            case .Arabic_Comoros: return "العربية (جزر القمر)"
//            /// Arabic (Kuwait) - العربية (الكويت)
//            case .Arabic_Kuwait: return "العربية (الكويت)"
//            /// Arabic (Lebanon) - العربية (لبنان)
//            case .Arabic_Lebanon: return "العربية (لبنان)"
//            /// Arabic (Libya) - العربية (ليبيا)
//            case .Arabic_Libya: return "العربية (ليبيا)"
//            /// Arabic (Morocco) - العربية (المغرب)
//            case .Arabic_Morocco: return "العربية (المغرب)"
//            /// Arabic (Mauritania) - العربية (موريتانيا)
//            case .Arabic_Mauritania: return "العربية (موريتانيا)"
//            /// Arabic (Oman) - العربية (عُمان)
//            case .Arabic_Oman: return "العربية (عُمان)"
//            /// Arabic (Palestinian Territories) - العربية (الأراضي الفلسطينية)
//            case .Arabic_Palestinian_Territories: return "العربية (الأراضي الفلسطينية)"
//            /// Arabic (Qatar) - العربية (قطر)
//            case .Arabic_Qatar: return "العربية (قطر)"
//            /// Arabic (Saudi Arabia) - العربية (المملكة العربية السعودية)
//            case .Arabic_Saudi_Arabia: return "العربية (المملكة العربية السعودية)"
//            /// Arabic (Sudan) - العربية (السودان)
//            case .Arabic_Sudan: return "العربية (السودان)"
//            /// Arabic (Somalia) - العربية (الصومال)
//            case .Arabic_Somalia: return "العربية (الصومال)"
//            /// Arabic (South Sudan) - العربية (جنوب السودان)
//            case .Arabic_South_Sudan: return "العربية (جنوب السودان)"
//            /// Arabic (Syria) - العربية (سوريا)
//            case .Arabic_Syria: return "العربية (سوريا)"
//            /// Arabic (Chad) - العربية (تشاد)
//            case .Arabic_Chad: return "العربية (تشاد)"
//            /// Arabic (Tunisia) - العربية (تونس)
//            case .Arabic_Tunisia: return "العربية (تونس)"
//            /// Arabic (Yemen) - العربية (اليمن)
//            case .Arabic_Yemen: return "العربية (اليمن)"
//            /// Assamese - অসমীয়া
//            case .Assamese: return "অসমীয়া"
//            /// Assamese (India) - অসমীয়া (ভারত)
//            case .Assamese_India: return "অসমীয়া (ভারত)"
//            /// Asu - Kipare
//            case .Asu: return "Kipare"
//            /// Asu (Tanzania) - Kipare (Tadhania)
//            case .Asu_Tanzania: return "Kipare (Tadhania)"
//            /// Asturian - asturianu
//            case .Asturian: return "asturianu"
//            /// Asturian (Spain) - asturianu (España)
//            case .Asturian_Spain: return "asturianu (España)"
//            /// Azerbaijani - azərbaycan
//            case .Azerbaijani: return "azərbaycan"
//            /// Azerbaijani (Cyrillic) - азәрбајҹан (Кирил)
//            case .Azerbaijani_Cyrillic: return "азәрбајҹан (Кирил)"
//            /// Azerbaijani (Cyrillic, Azerbaijan) - азәрбајҹан (Кирил, Азәрбајҹан)
//            case .Azerbaijani_Cyrillic_Azerbaijan: return "азәрбајҹан (Кирил, Азәрбајҹан)"
//            /// Azerbaijani (Latin) - azərbaycan (latın)
//            case .Azerbaijani_Latin: return "azərbaycan (latın)"
//            /// Azerbaijani (Latin, Azerbaijan) - azərbaycan (latın, Azərbaycan)
//            case .Azerbaijani_Latin_Azerbaijan: return "azərbaycan (latın, Azərbaycan)"
//            /// Basaa - Ɓàsàa
//            case .Basaa: return "Ɓàsàa"
//            /// Basaa (Cameroon) - Ɓàsàa (Kàmɛ̀rûn)
//            case .Basaa_Cameroon: return "Ɓàsàa (Kàmɛ̀rûn)"
//            /// Belarusian - беларуская
//            case .Belarusian: return "беларуская"
//            /// Belarusian (Belarus) - беларуская (Беларусь)
//            case .Belarusian_Belarus: return "беларуская (Беларусь)"
//            /// Bemba - Ichibemba
//            case .Bemba: return "Ichibemba"
//            /// Bemba (Zambia) - Ichibemba (Zambia)
//            case .Bemba_Zambia: return "Ichibemba (Zambia)"
//            /// Bena - Hibena
//            case .Bena: return "Hibena"
//            /// Bena (Tanzania) - Hibena (Hutanzania)
//            case .Bena_Tanzania: return "Hibena (Hutanzania)"
//            /// Bulgarian - български
//            case .Bulgarian: return "български"
//            /// Bulgarian (Bulgaria) - български (България)
//            case .Bulgarian_Bulgaria: return "български (България)"
//            /// Bambara - bamanakan
//            case .Bambara: return "bamanakan"
//            /// Bambara (Mali) - bamanakan (Mali)
//            case .Bambara_Mali: return "bamanakan (Mali)"
//            /// Bangla - বাংলা
//            case .Bangla: return "বাংলা"
//            /// Bangla (Bangladesh) - বাংলা (বাংলাদেশ)
//            case .Bangla_Bangladesh: return "বাংলা (বাংলাদেশ)"
//            /// Bangla (India) - বাংলা (ভারত)
//            case .Bangla_India: return "বাংলা (ভারত)"
//            /// Tibetan - བོད་སྐད་
//            case .Tibetan: return "བོད་སྐད་"
//            /// Tibetan (China) - བོད་སྐད་ (རྒྱ་ནག)
//            case .Tibetan_China: return "བོད་སྐད་ (རྒྱ་ནག)"
//            /// Tibetan (India) - བོད་སྐད་ (རྒྱ་གར་)
//            case .Tibetan_India: return "བོད་སྐད་ (རྒྱ་གར་)"
//            /// Breton - brezhoneg
//            case .Breton: return "brezhoneg"
//            /// Breton (France) - brezhoneg (Frañs)
//            case .Breton_France: return "brezhoneg (Frañs)"
//            /// Bodo - बड़ो
//            case .Bodo: return "बड़ो"
//            /// Bodo (India) - बड़ो (भारत)
//            case .Bodo_India: return "बड़ो (भारत)"
//            /// Bosnian - bosanski
//            case .Bosnian: return "bosanski"
//            /// Bosnian (Cyrillic) - босански (ћирилица)
//            case .Bosnian_Cyrillic: return "босански (ћирилица)"
//            /// Bosnian (Cyrillic, Bosnia & Herzegovina) - босански (ћирилица, Босна и Херцеговина)
//            case .Bosnian_Cyrillic_Bosnia_And_Herzegovina: return "босански (ћирилица, Босна и Херцеговина)"
//            /// Bosnian (Latin) - bosanski (latinica)
//            case .Bosnian_Latin: return "bosanski (latinica)"
//            /// Bosnian (Latin, Bosnia & Herzegovina) - bosanski (latinica, Bosna i Hercegovina)
//            case .Bosnian_Latin_Bosnia_And_Herzegovina: return "bosanski (latinica, Bosna i Hercegovina)"
//            /// Catalan - català
//            case .Catalan: return "català"
//            /// Catalan (Andorra) - català (Andorra)
//            case .Catalan_Andorra: return "català (Andorra)"
//            /// Catalan (Spain) - català (Espanya)
//            case .Catalan_Spain: return "català (Espanya)"
//            /// Catalan (France) - català (França)
//            case .Catalan_France: return "català (França)"
//            /// Catalan (Italy) - català (Itàlia)
//            case .Catalan_Italy: return "català (Itàlia)"
//            /// Chakma - 𑄌𑄋𑄴𑄟𑄳𑄦
//            case .Chakma: return "𑄌𑄋𑄴𑄟𑄳𑄦"
//            /// Chakma (Bangladesh) - 𑄌𑄋𑄴𑄟𑄳𑄦 (𑄝𑄁𑄣𑄘𑄬𑄌𑄴)
//            case .Chakma_Bangladesh: return "𑄌𑄋𑄴𑄟𑄳𑄦 (𑄝𑄁𑄣𑄘𑄬𑄌𑄴)"
//            /// Chakma (India) - 𑄌𑄋𑄴𑄟𑄳𑄦 (𑄞𑄢𑄧𑄖𑄴)
//            case .Chakma_India: return "𑄌𑄋𑄴𑄟𑄳𑄦 (𑄞𑄢𑄧𑄖𑄴)"
//            /// Chechen - нохчийн
//            case .Chechen: return "нохчийн"
//            /// Chechen (Russia) - нохчийн (Росси)
//            case .Chechen_Russia: return "нохчийн (Росси)"
//            /// Chiga - Rukiga
//            case .Chiga: return "Rukiga"
//            /// Chiga (Uganda) - Rukiga (Uganda)
//            case .Chiga_Uganda: return "Rukiga (Uganda)"
//            /// Cherokee - ᏣᎳᎩ
//            case .Cherokee: return "ᏣᎳᎩ"
//            /// Cherokee (United States) - ᏣᎳᎩ (ᏌᏊ ᎢᏳᎾᎵᏍᏔᏅ ᏍᎦᏚᎩ)
//            case .Cherokee_United_States: return "ᏣᎳᎩ (ᏌᏊ ᎢᏳᎾᎵᏍᏔᏅ ᏍᎦᏚᎩ)"
//            /// Central Kurdish - کوردیی ناوەندی
//            case .Central_Kurdish: return "کوردیی ناوەندی"
//            /// Central Kurdish (Iraq) - کوردیی ناوەندی (عێراق)
//            case .Central_Kurdish_Iraq: return "کوردیی ناوەندی (عێراق)"
//            /// Central Kurdish (Iran) - کوردیی ناوەندی (ئێران)
//            case .Central_Kurdish_Iran: return "کوردیی ناوەندی (ئێران)"
//            /// Czech - čeština
//            case .Czech: return "čeština"
//            /// Czech (Czechia) - čeština (Česko)
//            case .Czech_Czechia: return "čeština (Česko)"
//            /// Welsh - Cymraeg
//            case .Welsh: return "Cymraeg"
//            /// Welsh (United Kingdom) - Cymraeg (Y Deyrnas Unedig)
//            case .Welsh_United_Kingdom: return "Cymraeg (Y Deyrnas Unedig)"
//            /// Danish - dansk
//            case .Danish: return "dansk"
//            /// Danish (Denmark) - dansk (Danmark)
//            case .Danish_Denmark: return "dansk (Danmark)"
//            /// Danish (Greenland) - dansk (Grønland)
//            case .Danish_Greenland: return "dansk (Grønland)"
//            /// Taita - Kitaita
//            case .Taita: return "Kitaita"
//            /// Taita (Kenya) - Kitaita (Kenya)
//            case .Taita_Kenya: return "Kitaita (Kenya)"
//            /// German - Deutsch
//            case .German: return "Deutsch"
//            /// German (Austria) - Deutsch (Österreich) - Austrian German
//            case .German_Austria: return "Deutsch (Österreich)"
//            /// German (Belgium) - Deutsch (Belgien)
//            case .German_Belgium: return "Deutsch (Belgien)"
//            /// German (Switzerland) - Deutsch (Schweiz) - Swiss High German
//            case .German_Switzerland: return "Deutsch (Schweiz)"
//            /// German (Germany) - Deutsch (Deutschland)
//            case .German_Germany: return "Deutsch (Deutschland)"
//            /// German (Italy) - Deutsch (Italien)
//            case .German_Italy: return "Deutsch (Italien)"
//            /// German (Liechtenstein) - Deutsch (Liechtenstein)
//            case .German_Liechtenstein: return "Deutsch (Liechtenstein)"
//            /// German (Luxembourg) - Deutsch (Luxemburg)
//            case .German_Luxembourg: return "Deutsch (Luxemburg)"
//            /// Zarma - Zarmaciine
//            case .Zarma: return "Zarmaciine"
//            /// Zarma (Niger) - Zarmaciine (Nižer)
//            case .Zarma_Niger: return "Zarmaciine (Nižer)"
//            /// Lower Sorbian - dolnoserbšćina
//            case .Lower_Sorbian: return "dolnoserbšćina"
//            /// Lower Sorbian (Germany) - dolnoserbšćina (Nimska)
//            case .Lower_Sorbian_Germany: return "dolnoserbšćina (Nimska)"
//            /// Duala - duálá
//            case .Duala: return "duálá"
//            /// Duala (Cameroon) - duálá (Cameroun)
//            case .Duala_Cameroon: return "duálá (Cameroun)"
//            /// Jola-Fonyi - joola
//            case .Jola_Fonyi: return "joola"
//            /// Jola-Fonyi (Senegal) - joola (Senegal)
//            case .Jola_Fonyi_Senegal: return "joola (Senegal)"
//            /// Dzongkha - རྫོང་ཁ
//            case .Dzongkha: return "རྫོང་ཁ"
//            /// Dzongkha (Bhutan) - རྫོང་ཁ། (འབྲུག།)
//            case .Dzongkha_Bhutan: return "རྫོང་ཁ། (འབྲུག།)"
//            /// Embu - Kĩembu
//            case .Embu: return "Kĩembu"
//            /// Embu (Kenya) - Kĩembu (Kenya)
//            case .Embu_Kenya: return "Kĩembu (Kenya)"
//            /// Ewe - Eʋegbe
//            case .Ewe: return "Eʋegbe"
//            /// Ewe (Ghana) - Eʋegbe (Ghana nutome)
//            case .Ewe_Ghana: return "Eʋegbe (Ghana nutome)"
//            /// Ewe (Togo) - Eʋegbe (Togo nutome)
//            case .Ewe_Togo: return "Eʋegbe (Togo nutome)"
//            /// Greek - Ελληνικά
//            case .Greek: return "Ελληνικά"
//            /// Greek (Cyprus) - Ελληνικά (Κύπρος)
//            case .Greek_Cyprus: return "Ελληνικά (Κύπρος)"
//            /// Greek (Greece) - Ελληνικά (Ελλάδα)
//            case .Greek_Greece: return "Ελληνικά (Ελλάδα)"
//            /// English - English
//            case .English: return "English"
//            /// English (World) - English (World)
//            case .English_World: return "English (World)"
//            /// English (Europe) - English (Europe)
//            case .English_Europe: return "English (Europe)"
//            /// English (Antigua & Barbuda) - English (Antigua & Barbuda)
//            case .English_Antigua_And_Barbuda: return "English (Antigua & Barbuda)"
//            /// English (Anguilla) - English (Anguilla)
//            case .English_Anguilla: return "English (Anguilla)"
//            /// English (American Samoa) - English (American Samoa)
//            case .English_American_Samoa: return "English (American Samoa)"
//            /// English (Austria) - English (Austria)
//            case .English_Austria: return "English (Austria)"
//            /// English (Australia) - English (Australia) - Australian English
//            case .English_Australia: return "English (Australia)"
//            /// English (Barbados) - English (Barbados)
//            case .English_Barbados: return "English (Barbados)"
//            /// English (Belgium) - English (Belgium)
//            case .English_Belgium: return "English (Belgium)"
//            /// English (Burundi) - English (Burundi)
//            case .English_Burundi: return "English (Burundi)"
//            /// English (Bermuda) - English (Bermuda)
//            case .English_Bermuda: return "English (Bermuda)"
//            /// English (Bahamas) - English (Bahamas)
//            case .English_Bahamas: return "English (Bahamas)"
//            /// English (Botswana) - English (Botswana)
//            case .English_Botswana: return "English (Botswana)"
//            /// English (Belize) - English (Belize)
//            case .English_Belize: return "English (Belize)"
//            /// English (Canada) - English (Canada) - Canadian English
//            case .English_Canada: return "English (Canada)"
//            /// English (Cocos [Keeling] Islands) - English (Cocos [Keeling] Islands)
//            case .English_Cocos_Keeling_Islands: return "English (Cocos [Keeling] Islands)"
//            /// English (Switzerland) - English (Switzerland)
//            case .English_Switzerland: return "English (Switzerland)"
//            /// English (Cook Islands) - English (Cook Islands)
//            case .English_Cook_Islands: return "English (Cook Islands)"
//            /// English (Cameroon) - English (Cameroon)
//            case .English_Cameroon: return "English (Cameroon)"
//            /// English (Christmas Island) - English (Christmas Island)
//            case .English_Christmas_Island: return "English (Christmas Island)"
//            /// English (Cyprus) - English (Cyprus)
//            case .English_Cyprus: return "English (Cyprus)"
//            /// English (Germany) - English (Germany)
//            case .English_Germany: return "English (Germany)"
//            /// English (Diego Garcia) - English (Diego Garcia)
//            case .English_Diego_Garcia: return "English (Diego Garcia)"
//            /// English (Denmark) - English (Denmark)
//            case .English_Denmark: return "English (Denmark)"
//            /// English (Dominica) - English (Dominica)
//            case .English_Dominica: return "English (Dominica)"
//            /// English (Eritrea) - English (Eritrea)
//            case .English_Eritrea: return "English (Eritrea)"
//            /// English (Finland) - English (Finland)
//            case .English_Finland: return "English (Finland)"
//            /// English (Fiji) - English (Fiji)
//            case .English_Fiji: return "English (Fiji)"
//            /// English (Falkland Islands) - English (Falkland Islands)
//            case .English_Falkland_Islands: return "English (Falkland Islands)"
//            /// English (Micronesia) - English (Micronesia)
//            case .English_Micronesia: return "English (Micronesia)"
//            /// English (United Kingdom) - English (United Kingdom) - British English
//            case .English_United_Kingdom: return "English (United Kingdom)"
//            /// English (Grenada) - English (Grenada)
//            case .English_Grenada: return "English (Grenada)"
//            /// English (Guernsey) - English (Guernsey)
//            case .English_Guernsey: return "English (Guernsey)"
//            /// English (Ghana) - English (Ghana)
//            case .English_Ghana: return "English (Ghana)"
//            /// English (Gibraltar) - English (Gibraltar)
//            case .English_Gibraltar: return "English (Gibraltar)"
//            /// English (Gambia) - English (Gambia)
//            case .English_Gambia: return "English (Gambia)"
//            /// English (Guam) - English (Guam)
//            case .English_Guam: return "English (Guam)"
//            /// English (Guyana) - English (Guyana)
//            case .English_Guyana: return "English (Guyana)"
//            /// English (Hong Kong SAR China) - English (Hong Kong SAR China)
//            case .English_Hong_Kong_SAR_China: return "English (Hong Kong SAR China)"
//            /// English (Ireland) - English (Ireland)
//            case .English_Ireland: return "English (Ireland)"
//            /// English (Israel) - English (Israel)
//            case .English_Israel: return "English (Israel)"
//            /// English (Isle of Man) - English (Isle of Man)
//            case .English_Isle_of_Man: return "English (Isle of Man)"
//            /// English (India) - English (India)
//            case .English_India: return "English (India)"
//            /// English (British Indian Ocean Territory) - English (British Indian Ocean Territory)
//            case .English_British_Indian_Ocean_Territory: return "English (British Indian Ocean Territory)"
//            /// English (Jersey) - English (Jersey)
//            case .English_Jersey: return "English (Jersey)"
//            /// English (Jamaica) - English (Jamaica)
//            case .English_Jamaica: return "English (Jamaica)"
//            /// English (Kenya) - English (Kenya)
//            case .English_Kenya: return "English (Kenya)"
//            /// English (Kiribati) - English (Kiribati)
//            case .English_Kiribati: return "English (Kiribati)"
//            /// English (St. Kitts & Nevis) - English (St. Kitts & Nevis)
//            case .English_St_Kitts_And_Nevis: return "English (St. Kitts & Nevis)"
//            /// English (Cayman Islands) - English (Cayman Islands)
//            case .English_Cayman_Islands: return "English (Cayman Islands)"
//            /// English (St. Lucia) - English (St. Lucia)
//            case .English_St_Lucia: return "English (St. Lucia)"
//            /// English (Liberia) - English (Liberia)
//            case .English_Liberia: return "English (Liberia)"
//            /// English (Lesotho) - English (Lesotho)
//            case .English_Lesotho: return "English (Lesotho)"
//            /// English (Madagascar) - English (Madagascar)
//            case .English_Madagascar: return "English (Madagascar)"
//            /// English (Marshall Islands) - English (Marshall Islands)
//            case .English_Marshall_Islands: return "English (Marshall Islands)"
//            /// English (Macau SAR China) - English (Macau SAR China)
//            case .English_Macau_SAR_China: return "English (Macau SAR China)"
//            /// English (Northern Mariana Islands) - English (Northern Mariana Islands)
//            case .English_Northern_Mariana_Islands: return "English (Northern Mariana Islands)"
//            /// English (Montserrat) - English (Montserrat)
//            case .English_Montserrat: return "English (Montserrat)"
//            /// English (Malta) - English (Malta)
//            case .English_Malta: return "English (Malta)"
//            /// English (Mauritius) - English (Mauritius)
//            case .English_Mauritius: return "English (Mauritius)"
//            /// English (Malawi) - English (Malawi)
//            case .English_Malawi: return "English (Malawi)"
//            /// English (Malaysia) - English (Malaysia)
//            case .English_Malaysia: return "English (Malaysia)"
//            /// English (Namibia) - English (Namibia)
//            case .English_Namibia: return "English (Namibia)"
//            /// English (Norfolk Island) - English (Norfolk Island)
//            case .English_Norfolk_Island: return "English (Norfolk Island)"
//            /// English (Nigeria) - English (Nigeria)
//            case .English_Nigeria: return "English (Nigeria)"
//            /// English (Netherlands) - English (Netherlands)
//            case .English_Netherlands: return "English (Netherlands)"
//            /// English (Nauru) - English (Nauru)
//            case .English_Nauru: return "English (Nauru)"
//            /// English (Niue) - English (Niue)
//            case .English_Niue: return "English (Niue)"
//            /// English (New Zealand) - English (New Zealand)
//            case .English_New_Zealand: return "English (New Zealand)"
//            /// English (Papua New Guinea) - English (Papua New Guinea)
//            case .English_Papua_New_Guinea: return "English (Papua New Guinea)"
//            /// English (Philippines) - English (Philippines)
//            case .English_Philippines: return "English (Philippines)"
//            /// English (Pakistan) - English (Pakistan)
//            case .English_Pakistan: return "English (Pakistan)"
//            /// English (Pitcairn Islands) - English (Pitcairn Islands)
//            case .English_Pitcairn_Islands: return "English (Pitcairn Islands)"
//            /// English (Puerto Rico) - English (Puerto Rico)
//            case .English_Puerto_Rico: return "English (Puerto Rico)"
//            /// English (Palau) - English (Palau)
//            case .English_Palau: return "English (Palau)"
//            /// English (Rwanda) - English (Rwanda)
//            case .English_Rwanda: return "English (Rwanda)"
//            /// English (Solomon Islands) - English (Solomon Islands)
//            case .English_Solomon_Islands: return "English (Solomon Islands)"
//            /// English (Seychelles) - English (Seychelles)
//            case .English_Seychelles: return "English (Seychelles)"
//            /// English (Sudan) - English (Sudan)
//            case .English_Sudan: return "English (Sudan)"
//            /// English (Sweden) - English (Sweden)
//            case .English_Sweden: return "English (Sweden)"
//            /// English (Singapore) - English (Singapore)
//            case .English_Singapore: return "English (Singapore)"
//            /// English (St. Helena) - English (St. Helena)
//            case .English_St_Helena: return "English (St. Helena)"
//            /// English (Slovenia) - English (Slovenia)
//            case .English_Slovenia: return "English (Slovenia)"
//            /// English (Sierra Leone) - English (Sierra Leone)
//            case .English_Sierra_Leone: return "English (Sierra Leone)"
//            /// English (South Sudan) - English (South Sudan)
//            case .English_South_Sudan: return "English (South Sudan)"
//            /// English (Sint Maarten) - English (Sint Maarten)
//            case .English_Sint_Maarten: return "English (Sint Maarten)"
//            /// English (Swaziland) - English (Swaziland)
//            case .English_Swaziland: return "English (Swaziland)"
//            /// English (Turks & Caicos Islands) - English (Turks & Caicos Islands)
//            case .English_Turks_And_Caicos_Islands: return "English (Turks & Caicos Islands)"
//            /// English (Tokelau) - English (Tokelau)
//            case .English_Tokelau: return "English (Tokelau)"
//            /// English (Tonga) - English (Tonga)
//            case .English_Tonga: return "English (Tonga)"
//            /// English (Trinidad & Tobago) - English (Trinidad & Tobago)
//            case .English_Trinidad_And_Tobago: return "English (Trinidad & Tobago)"
//            /// English (Tuvalu) - English (Tuvalu)
//            case .English_Tuvalu: return "English (Tuvalu)"
//            /// English (Tanzania) - English (Tanzania)
//            case .English_Tanzania: return "English (Tanzania)"
//            /// English (Uganda) - English (Uganda)
//            case .English_Uganda: return "English (Uganda)"
//            /// English (U.S. Outlying Islands) - English (U.S. Outlying Islands)
//            case .English_US_Outlying_Islands: return "English (U.S. Outlying Islands)"
//            /// English (United States) - English (United States) - American English
//            case .English_United_States: return "English (United States)"
//            /// English (United States, Computer) - English (United States, Computer) - American English (Computer)
//            case .English_United_States_Computer: return "English (United States, Computer)"
//            /// English (St. Vincent & Grenadines) - English (St. Vincent & Grenadines)
//            case .English_St_Vincent_And_Grenadines: return "English (St. Vincent & Grenadines)"
//            /// English (British Virgin Islands) - English (British Virgin Islands)
//            case .English_British_Virgin_Islands: return "English (British Virgin Islands)"
//            /// English (U.S. Virgin Islands) - English (U.S. Virgin Islands)
//            case .English_US_Virgin_Islands: return "English (U.S. Virgin Islands)"
//            /// English (Vanuatu) - English (Vanuatu)
//            case .English_Vanuatu: return "English (Vanuatu)"
//            /// English (Samoa) - English (Samoa)
//            case .English_Samoa: return "English (Samoa)"
//            /// English (South Africa) - English (South Africa)
//            case .English_South_Africa: return "English (South Africa)"
//            /// English (Zambia) - English (Zambia)
//            case .English_Zambia: return "English (Zambia)"
//            /// English (Zimbabwe) - English (Zimbabwe)
//            case .English_Zimbabwe: return "English (Zimbabwe)"
//            /// Esperanto - esperanto
//            case .Esperanto: return "esperanto"
//            /// Spanish - español
//            case .Spanish: return "español"
//            /// Spanish (Latin America) - español (Latinoamérica) - Latin American Spanish
//            case .Spanish_Latin_America: return "español (Latinoamérica)"
//            /// Spanish (Argentina) - español (Argentina)
//            case .Spanish_Argentina: return "español (Argentina)"
//            /// Spanish (Bolivia) - español (Bolivia)
//            case .Spanish_Bolivia: return "español (Bolivia)"
//            /// Spanish (Brazil) - español (Brasil)
//            case .Spanish_Brazil: return "español (Brasil)"
//            /// Spanish (Belize) - español (Belice)
//            case .Spanish_Belize: return "español (Belice)"
//            /// Spanish (Chile) - español (Chile)
//            case .Spanish_Chile: return "español (Chile)"
//            /// Spanish (Colombia) - español (Colombia)
//            case .Spanish_Colombia: return "español (Colombia)"
//            /// Spanish (Costa Rica) - español (Costa Rica)
//            case .Spanish_Costa_Rica: return "español (Costa Rica)"
//            /// Spanish (Cuba) - español (Cuba)
//            case .Spanish_Cuba: return "español (Cuba)"
//            /// Spanish (Dominican Republic) - español (República Dominicana)
//            case .Spanish_Dominican_Republic: return "español (República Dominicana)"
//            /// Spanish (Ceuta & Melilla) - español (Ceuta y Melilla)
//            case .Spanish_Ceuta_And_Melilla: return "español (Ceuta y Melilla)"
//            /// Spanish (Ecuador) - español (Ecuador)
//            case .Spanish_Ecuador: return "español (Ecuador)"
//            /// Spanish (Spain) - español (España) - European Spanish
//            case .Spanish_Spain: return "español (España)"
//            /// Spanish (Equatorial Guinea) - español (Guinea Ecuatorial)
//            case .Spanish_Equatorial_Guinea: return "español (Guinea Ecuatorial)"
//            /// Spanish (Guatemala) - español (Guatemala)
//            case .Spanish_Guatemala: return "español (Guatemala)"
//            /// Spanish (Honduras) - español (Honduras)
//            case .Spanish_Honduras: return "español (Honduras)"
//            /// Spanish (Canary Islands) - español (Canarias)
//            case .Spanish_Canary_Islands: return "español (Canarias)"
//            /// Spanish (Mexico) - español (México) - Mexican Spanish
//            case .Spanish_Mexico: return "español (México)"
//            /// Spanish (Nicaragua) - español (Nicaragua)
//            case .Spanish_Nicaragua: return "español (Nicaragua)"
//            /// Spanish (Panama) - español (Panamá)
//            case .Spanish_Panama: return "español (Panamá)"
//            /// Spanish (Peru) - español (Perú)
//            case .Spanish_Peru: return "español (Perú)"
//            /// Spanish (Philippines) - español (Filipinas)
//            case .Spanish_Philippines: return "español (Filipinas)"
//            /// Spanish (Puerto Rico) - español (Puerto Rico)
//            case .Spanish_Puerto_Rico: return "español (Puerto Rico)"
//            /// Spanish (Paraguay) - español (Paraguay)
//            case .Spanish_Paraguay: return "español (Paraguay)"
//            /// Spanish (El Salvador) - español (El Salvador)
//            case .Spanish_El_Salvador: return "español (El Salvador)"
//            /// Spanish (United States) - español (Estados Unidos)
//            case .Spanish_United_States: return "español (Estados Unidos)"
//            /// Spanish (Uruguay) - español (Uruguay)
//            case .Spanish_Uruguay: return "español (Uruguay)"
//            /// Spanish (Venezuela) - español (Venezuela)
//            case .Spanish_Venezuela: return "español (Venezuela)"
//            /// Estonian - eesti
//            case .Estonian: return "eesti"
//            /// Estonian (Estonia) - eesti (Eesti)
//            case .Estonian_Estonia: return "eesti (Eesti)"
//            /// Basque - euskara
//            case .Basque: return "euskara"
//            /// Basque (Spain) - euskara (Espainia)
//            case .Basque_Spain: return "euskara (Espainia)"
//            /// Ewondo - ewondo
//            case .Ewondo: return "ewondo"
//            /// Ewondo (Cameroon) - ewondo (Kamərún)
//            case .Ewondo_Cameroon: return "ewondo (Kamərún)"
//            /// Persian - فارسی
//            case .Persian: return "فارسی"
//            /// Persian (Afghanistan) - فارسی (افغانستان) - Dari
//            case .Persian_Afghanistan: return "فارسی (افغانستان)"
//            /// Persian (Iran) - فارسی (ایران)
//            case .Persian_Iran: return "فارسی (ایران)"
//            /// Fulah - Pulaar
//            case .Fulah: return "Pulaar"
//            /// Fulah (Cameroon) - Pulaar (Kameruun)
//            case .Fulah_Cameroon: return "Pulaar (Kameruun)"
//            /// Fulah (Guinea) - Pulaar (Gine)
//            case .Fulah_Guinea: return "Pulaar (Gine)"
//            /// Fulah (Mauritania) - Pulaar (Muritani)
//            case .Fulah_Mauritania: return "Pulaar (Muritani)"
//            /// Fulah (Senegal) - Pulaar (Senegaal)
//            case .Fulah_Senegal: return "Pulaar (Senegaal)"
//            /// Finnish - suomi
//            case .Finnish: return "suomi"
//            /// Finnish (Finland) - suomi (Suomi)
//            case .Finnish_Finland: return "suomi (Suomi)"
//            /// Filipino - Filipino
//            case .Filipino: return "Filipino"
//            /// Filipino (Philippines) - Filipino (Pilipinas)
//            case .Filipino_Philippines: return "Filipino (Pilipinas)"
//            /// Faroese - føroyskt
//            case .Faroese: return "føroyskt"
//            /// Faroese (Denmark) - føroyskt (Danmark)
//            case .Faroese_Denmark: return "føroyskt (Danmark)"
//            /// Faroese (Faroe Islands) - føroyskt (Føroyar)
//            case .Faroese_Faroe_Islands: return "føroyskt (Føroyar)"
//            /// French - français
//            case .French: return "français"
//            /// French (Belgium) - français (Belgique)
//            case .French_Belgium: return "français (Belgique)"
//            /// French (Burkina Faso) - français (Burkina Faso)
//            case .French_Burkina_Faso: return "français (Burkina Faso)"
//            /// French (Burundi) - français (Burundi)
//            case .French_Burundi: return "français (Burundi)"
//            /// French (Benin) - français (Bénin)
//            case .French_Benin: return "français (Bénin)"
//            /// French (St. Barthélemy) - français (Saint-Barthélemy)
//            case .French_St_Barthélemy: return "français (Saint"
//            /// French (Canada) - français (Canada) - Canadian French
//            case .French_Canada: return "français (Canada)"
//            /// French (Congo - Kinshasa) - français (Congo-Kinshasa)
//            case .French_Congo_Kinshasa: return "Kinshasa)"
//            /// French (Central African Republic) - français (République centrafricaine)
//            case .French_Central_African_Republic: return "français (République centrafricaine)"
//            /// French (Congo - Brazzaville) - français (Congo-Brazzaville)
//            case .French_Congo_Brazzaville: return "Brazzaville)"
//            /// French (Switzerland) - français (Suisse) - Swiss French
//            case .French_Switzerland: return "français (Suisse)"
//            /// French (Côte d’Ivoire) - français (Côte d’Ivoire)
//            case .French_Côte_dIvoire: return "français (Côte d’Ivoire)"
//            /// French (Cameroon) - français (Cameroun)
//            case .French_Cameroon: return "français (Cameroun)"
//            /// French (Djibouti) - français (Djibouti)
//            case .French_Djibouti: return "français (Djibouti)"
//            /// French (Algeria) - français (Algérie)
//            case .French_Algeria: return "français (Algérie)"
//            /// French (France) - français (France)
//            case .French_France: return "français (France)"
//            /// French (Gabon) - français (Gabon)
//            case .French_Gabon: return "français (Gabon)"
//            /// French (French Guiana) - français (Guyane française)
//            case .French_French_Guiana: return "français (Guyane française)"
//            /// French (Guinea) - français (Guinée)
//            case .French_Guinea: return "français (Guinée)"
//            /// French (Guadeloupe) - français (Guadeloupe)
//            case .French_Guadeloupe: return "français (Guadeloupe)"
//            /// French (Equatorial Guinea) - français (Guinée équatoriale)
//            case .French_Equatorial_Guinea: return "français (Guinée équatoriale)"
//            /// French (Haiti) - français (Haïti)
//            case .French_Haiti: return "français (Haïti)"
//            /// French (Comoros) - français (Comores)
//            case .French_Comoros: return "français (Comores)"
//            /// French (Luxembourg) - français (Luxembourg)
//            case .French_Luxembourg: return "français (Luxembourg)"
//            /// French (Morocco) - français (Maroc)
//            case .French_Morocco: return "français (Maroc)"
//            /// French (Monaco) - français (Monaco)
//            case .French_Monaco: return "français (Monaco)"
//            /// French (St. Martin) - français (Saint-Martin)
//            case .French_St_Martin: return "français (Saint"
//            /// French (Madagascar) - français (Madagascar)
//            case .French_Madagascar: return "français (Madagascar)"
//            /// French (Mali) - français (Mali)
//            case .French_Mali: return "français (Mali)"
//            /// French (Martinique) - français (Martinique)
//            case .French_Martinique: return "français (Martinique)"
//            /// French (Mauritania) - français (Mauritanie)
//            case .French_Mauritania: return "français (Mauritanie)"
//            /// French (Mauritius) - français (Maurice)
//            case .French_Mauritius: return "français (Maurice)"
//            /// French (New Caledonia) - français (Nouvelle-Calédonie)
//            case .French_New_Caledonia: return "français (Nouvelle"
//            /// French (Niger) - français (Niger)
//            case .French_Niger: return "français (Niger)"
//            /// French (French Polynesia) - français (Polynésie française)
//            case .French_French_Polynesia: return "français (Polynésie française)"
//            /// French (St. Pierre & Miquelon) - français (Saint-Pierre-et-Miquelon)
//            case .French_St_Pierre_And_Miquelon: return "français (Saint"
//            /// French (Réunion) - français (La Réunion)
//            case .French_Réunion: return "français (La Réunion)"
//            /// French (Rwanda) - français (Rwanda)
//            case .French_Rwanda: return "français (Rwanda)"
//            /// French (Seychelles) - français (Seychelles)
//            case .French_Seychelles: return "français (Seychelles)"
//            /// French (Senegal) - français (Sénégal)
//            case .French_Senegal: return "français (Sénégal)"
//            /// French (Syria) - français (Syrie)
//            case .French_Syria: return "français (Syrie)"
//            /// French (Chad) - français (Tchad)
//            case .French_Chad: return "français (Tchad)"
//            /// French (Togo) - français (Togo)
//            case .French_Togo: return "français (Togo)"
//            /// French (Tunisia) - français (Tunisie)
//            case .French_Tunisia: return "français (Tunisie)"
//            /// French (Vanuatu) - français (Vanuatu)
//            case .French_Vanuatu: return "français (Vanuatu)"
//            /// French (Wallis & Futuna) - français (Wallis-et-Futuna)
//            case .French_Wallis_And_Futuna: return "français (Wallis"
//            /// French (Mayotte) - français (Mayotte)
//            case .French_Mayotte: return "français (Mayotte)"
//            /// Friulian - furlan
//            case .Friulian: return "furlan"
//            /// Friulian (Italy) - furlan (Italie)
//            case .Friulian_Italy: return "furlan (Italie)"
//            /// Western Frisian - Frysk
//            case .Western_Frisian: return "Frysk"
//            /// Western Frisian (Netherlands) - Frysk (Nederlân)
//            case .Western_Frisian_Netherlands: return "Frysk (Nederlân)"
//            /// Irish - Gaeilge
//            case .Irish: return "Gaeilge"
//            /// Irish (Ireland) - Gaeilge (Éire)
//            case .Irish_Ireland: return "Gaeilge (Éire)"
//            /// Scottish Gaelic - Gàidhlig
//            case .Scottish_Gaelic: return "Gàidhlig"
//            /// Scottish Gaelic (United Kingdom) - Gàidhlig (An Rìoghachd Aonaichte)
//            case .Scottish_Gaelic_United_Kingdom: return "Gàidhlig (An Rìoghachd Aonaichte)"
//            /// Galician - galego
//            case .Galician: return "galego"
//            /// Galician (Spain) - galego (España)
//            case .Galician_Spain: return "galego (España)"
//            /// Swiss German - Schwiizertüütsch
//            case .Swiss_German: return "Schwiizertüütsch"
//            /// Swiss German (Switzerland) - Schwiizertüütsch (Schwiiz)
//            case .Swiss_German_Switzerland: return "Schwiizertüütsch (Schwiiz)"
//            /// Swiss German (France) - Schwiizertüütsch (Frankriich)
//            case .Swiss_German_France: return "Schwiizertüütsch (Frankriich)"
//            /// Swiss German (Liechtenstein) - Schwiizertüütsch (Liächteschtäi)
//            case .Swiss_German_Liechtenstein: return "Schwiizertüütsch (Liächteschtäi)"
//            /// Gujarati - ગુજરાતી
//            case .Gujarati: return "ગુજરાતી"
//            /// Gujarati (India) - ગુજરાતી (ભારત)
//            case .Gujarati_India: return "ગુજરાતી (ભારત)"
//            /// Gusii - Ekegusii
//            case .Gusii: return "Ekegusii"
//            /// Gusii (Kenya) - Ekegusii (Kenya)
//            case .Gusii_Kenya: return "Ekegusii (Kenya)"
//            /// Manx - Gaelg
//            case .Manx: return "Gaelg"
//            /// Manx (Isle of Man) - Gaelg (Ellan Vannin)
//            case .Manx_Isle_of_Man: return "Gaelg (Ellan Vannin)"
//            /// Hausa - Hausa
//            case .Hausa: return "Hausa"
//            /// Hausa (Ghana) - Hausa (Gana)
//            case .Hausa_Ghana: return "Hausa (Gana)"
//            /// Hausa (Niger) - Hausa (Nijar)
//            case .Hausa_Niger: return "Hausa (Nijar)"
//            /// Hausa (Nigeria) - Hausa (Najeriya)
//            case .Hausa_Nigeria: return "Hausa (Najeriya)"
//            /// Hawaiian - ʻŌlelo Hawaiʻi
//            case .Hawaiian: return "ʻŌlelo Hawaiʻi"
//            /// Hawaiian (United States) - ʻŌlelo Hawaiʻi (ʻAmelika Hui Pū ʻIa)
//            case .Hawaiian_United_States: return "ʻŌlelo Hawaiʻi (ʻAmelika Hui Pū ʻIa)"
//            /// Hebrew - עברית
//            case .Hebrew: return "עברית"
//            /// Hebrew (Israel) - עברית (ישראל)
//            case .Hebrew_Israel: return "עברית (ישראל)"
//            /// Hindi - हिन्दी
//            case .Hindi: return "हिन्दी"
//            /// Hindi (India) - हिन्दी (भारत)
//            case .Hindi_India: return "हिन्दी (भारत)"
//            /// Croatian - hrvatski
//            case .Croatian: return "hrvatski"
//            /// Croatian (Bosnia & Herzegovina) - hrvatski (Bosna i Hercegovina)
//            case .Croatian_Bosnia_And_Herzegovina: return "hrvatski (Bosna i Hercegovina)"
//            /// Croatian (Croatia) - hrvatski (Hrvatska)
//            case .Croatian_Croatia: return "hrvatski (Hrvatska)"
//            /// Upper Sorbian - hornjoserbšćina
//            case .Upper_Sorbian: return "hornjoserbšćina"
//            /// Upper Sorbian (Germany) - hornjoserbšćina (Němska)
//            case .Upper_Sorbian_Germany: return "hornjoserbšćina (Němska)"
//            /// Hungarian - magyar
//            case .Hungarian: return "magyar"
//            /// Hungarian (Hungary) - magyar (Magyarország)
//            case .Hungarian_Hungary: return "magyar (Magyarország)"
//            /// Armenian - հայերեն
//            case .Armenian: return "հայերեն"
//            /// Armenian (Armenia) - հայերեն (Հայաստան)
//            case .Armenian_Armenia: return "հայերեն (Հայաստան)"
//            /// Indonesian - Indonesia
//            case .Indonesian: return "Indonesia"
//            /// Indonesian (Indonesia) - Indonesia (Indonesia)
//            case .Indonesian_Indonesia: return "Indonesia (Indonesia)"
//            /// Igbo - Igbo
//            case .Igbo: return "Igbo"
//            /// Igbo (Nigeria) - Igbo (Naịjịrịa)
//            case .Igbo_Nigeria: return "Igbo (Naịjịrịa)"
//            /// Sichuan Yi - ꆈꌠꉙ
//            case .Sichuan_Yi: return "ꆈꌠꉙ"
//            /// Sichuan Yi (China) - ꆈꌠꉙ (ꍏꇩ)
//            case .Sichuan_Yi_China: return "ꆈꌠꉙ (ꍏꇩ)"
//            /// Icelandic - íslenska
//            case .Icelandic: return "íslenska"
//            /// Icelandic (Iceland) - íslenska (Ísland)
//            case .Icelandic_Iceland: return "íslenska (Ísland)"
//            /// Italian - italiano
//            case .Italian: return "italiano"
//            /// Italian (Switzerland) - italiano (Svizzera)
//            case .Italian_Switzerland: return "italiano (Svizzera)"
//            /// Italian (Italy) - italiano (Italia)
//            case .Italian_Italy: return "italiano (Italia)"
//            /// Italian (San Marino) - italiano (San Marino)
//            case .Italian_San_Marino: return "italiano (San Marino)"
//            /// Italian (Vatican City) - italiano (Città del Vaticano)
//            case .Italian_Vatican_City: return "italiano (Città del Vaticano)"
//            /// Japanese - 日本語
//            case .Japanese: return "日本語"
//            /// Japanese (Japan) - 日本語 (日本)
//            case .Japanese_Japan: return "日本語 (日本)"
//            /// Ngomba - Ndaꞌa
//            case .Ngomba: return "Ndaꞌa"
//            /// Ngomba (Cameroon) - Ndaꞌa (Kamɛlûn)
//            case .Ngomba_Cameroon: return "Ndaꞌa (Kamɛlûn)"
//            /// Machame - Kimachame
//            case .Machame: return "Kimachame"
//            /// Machame (Tanzania) - Kimachame (Tanzania)
//            case .Machame_Tanzania: return "Kimachame (Tanzania)"
//            /// Georgian - ქართული
//            case .Georgian: return "ქართული"
//            /// Georgian (Georgia) - ქართული (საქართველო)
//            case .Georgian_Georgia: return "ქართული (საქართველო)"
//            /// Kabyle - Taqbaylit
//            case .Kabyle: return "Taqbaylit"
//            /// Kabyle (Algeria) - Taqbaylit (Lezzayer)
//            case .Kabyle_Algeria: return "Taqbaylit (Lezzayer)"
//            /// Kamba - Kikamba
//            case .Kamba: return "Kikamba"
//            /// Kamba (Kenya) - Kikamba (Kenya)
//            case .Kamba_Kenya: return "Kikamba (Kenya)"
//            /// Makonde - Chimakonde
//            case .Makonde: return "Chimakonde"
//            /// Makonde (Tanzania) - Chimakonde (Tanzania)
//            case .Makonde_Tanzania: return "Chimakonde (Tanzania)"
//            /// Kabuverdianu - kabuverdianu
//            case .Kabuverdianu: return "kabuverdianu"
//            /// Kabuverdianu (Cape Verde) - kabuverdianu (Kabu Verdi)
//            case .Kabuverdianu_Cape_Verde: return "kabuverdianu (Kabu Verdi)"
//            /// Koyra Chiini - Koyra ciini
//            case .Koyra_Chiini: return "Koyra ciini"
//            /// Koyra Chiini (Mali) - Koyra ciini (Maali)
//            case .Koyra_Chiini_Mali: return "Koyra ciini (Maali)"
//            /// Kikuyu - Gikuyu
//            case .Kikuyu: return "Gikuyu"
//            /// Kikuyu (Kenya) - Gikuyu (Kenya)
//            case .Kikuyu_Kenya: return "Gikuyu (Kenya)"
//            /// Kazakh - қазақ тілі
//            case .Kazakh: return "қазақ тілі"
//            /// Kazakh (Kazakhstan) - қазақ тілі (Қазақстан)
//            case .Kazakh_Kazakhstan: return "қазақ тілі (Қазақстан)"
//            /// Kako - kakɔ
//            case .Kako: return "kakɔ"
//            /// Kako (Cameroon) - kakɔ (Kamɛrun)
//            case .Kako_Cameroon: return "kakɔ (Kamɛrun)"
//            /// Kalaallisut - kalaallisut
//            case .Kalaallisut: return "kalaallisut"
//            /// Kalaallisut (Greenland) - kalaallisut (Kalaallit Nunaat)
//            case .Kalaallisut_Greenland: return "kalaallisut (Kalaallit Nunaat)"
//            /// Kalenjin - Kalenjin
//            case .Kalenjin: return "Kalenjin"
//            /// Kalenjin (Kenya) - Kalenjin (Emetab Kenya)
//            case .Kalenjin_Kenya: return "Kalenjin (Emetab Kenya)"
//            /// Khmer - ខ្មែរ
//            case .Khmer: return "ខ្មែរ"
//            /// Khmer (Cambodia) - ខ្មែរ (កម្ពុជា)
//            case .Khmer_Cambodia: return "ខ្មែរ (កម្ពុជា)"
//            /// Kannada - ಕನ್ನಡ
//            case .Kannada: return "ಕನ್ನಡ"
//            /// Kannada (India) - ಕನ್ನಡ (ಭಾರತ)
//            case .Kannada_India: return "ಕನ್ನಡ (ಭಾರತ)"
//            /// Korean - 한국어
//            case .Korean: return "한국어"
//            /// Korean (North Korea) - 한국어(조선민주주의인민공화국)
//            case .Korean_North_Korea: return "한국어(조선민주주의인민공화국)"
//            /// Korean (South Korea) - 한국어(대한민국)
//            case .Korean_South_Korea: return "한국어(대한민국)"
//            /// Konkani - कोंकणी
//            case .Konkani: return "कोंकणी"
//            /// Konkani (India) - कोंकणी (भारत)
//            case .Konkani_India: return "कोंकणी (भारत)"
//            /// Kashmiri - کٲشُر
//            case .Kashmiri: return "کٲشُر"
//            /// Kashmiri (India) - کٲشُر (ہِنٛدوستان)
//            case .Kashmiri_India: return "کٲشُر (ہِنٛدوستان)"
//            /// Shambala - Kishambaa
//            case .Shambala: return "Kishambaa"
//            /// Shambala (Tanzania) - Kishambaa (Tanzania)
//            case .Shambala_Tanzania: return "Kishambaa (Tanzania)"
//            /// Bafia - rikpa
//            case .Bafia: return "rikpa"
//            /// Bafia (Cameroon) - rikpa (kamɛrún)
//            case .Bafia_Cameroon: return "rikpa (kamɛrún)"
//            /// Colognian - Kölsch
//            case .Colognian: return "Kölsch"
//            /// Colognian (Germany) - Kölsch en Doütschland
//            case .Colognian_Germany: return "Kölsch en Doütschland"
//            /// Cornish - kernewek
//            case .Cornish: return "kernewek"
//            /// Cornish (United Kingdom) - kernewek (Rywvaneth Unys)
//            case .Cornish_United_Kingdom: return "kernewek (Rywvaneth Unys)"
//            /// Kyrgyz - кыргызча
//            case .Kyrgyz: return "кыргызча"
//            /// Kyrgyz (Kyrgyzstan) - кыргызча (Кыргызстан)
//            case .Kyrgyz_Kyrgyzstan: return "кыргызча (Кыргызстан)"
//            /// Langi - Kɨlaangi
//            case .Langi: return "Kɨlaangi"
//            /// Langi (Tanzania) - Kɨlaangi (Taansanía)
//            case .Langi_Tanzania: return "Kɨlaangi (Taansanía)"
//            /// Luxembourgish - Lëtzebuergesch
//            case .Luxembourgish: return "Lëtzebuergesch"
//            /// Luxembourgish (Luxembourg) - Lëtzebuergesch (Lëtzebuerg)
//            case .Luxembourgish_Luxembourg: return "Lëtzebuergesch (Lëtzebuerg)"
//            /// Ganda - Luganda
//            case .Ganda: return "Luganda"
//            /// Ganda (Uganda) - Luganda (Yuganda)
//            case .Ganda_Uganda: return "Luganda (Yuganda)"
//            /// Lakota - Lakȟólʼiyapi
//            case .Lakota: return "Lakȟólʼiyapi"
//            /// Lakota (United States) - Lakȟólʼiyapi (Mílahaŋska Tȟamákȟočhe)
//            case .Lakota_United_States: return "Lakȟólʼiyapi (Mílahaŋska Tȟamákȟočhe)"
//            /// Lingala - lingála
//            case .Lingala: return "lingála"
//            /// Lingala (Angola) - lingála (Angóla)
//            case .Lingala_Angola: return "lingála (Angóla)"
//            /// Lingala (Congo - Kinshasa) - lingála (Republíki ya Kongó Demokratíki)
//            case .Lingala_Congo_Kinshasa: return "Kinshasa)"
//            /// Lingala (Central African Republic) - lingála (Repibiki ya Afríka ya Káti)
//            case .Lingala_Central_African_Republic: return "lingála (Repibiki ya Afríka ya Káti)"
//            /// Lingala (Congo - Brazzaville) - lingála (Kongo)
//            case .Lingala_Congo_Brazzaville: return "Brazzaville)"
//            /// Lao - ລາວ
//            case .Lao: return "ລາວ"
//            /// Lao (Laos) - ລາວ (ລາວ)
//            case .Lao_Laos: return "ລາວ (ລາວ)"
//            /// Northern Luri - لۊری شومالی
//            case .Northern_Luri: return "لۊری شومالی"
//            /// Northern Luri (Iraq) - لۊری شومالی (IQ)
//            case .Northern_Luri_Iraq: return "لۊری شومالی (IQ)"
//            /// Northern Luri (Iran) - لۊری شومالی (IR)
//            case .Northern_Luri_Iran: return "لۊری شومالی (IR)"
//            /// Lithuanian - lietuvių
//            case .Lithuanian: return "lietuvių"
//            /// Lithuanian (Lithuania) - lietuvių (Lietuva)
//            case .Lithuanian_Lithuania: return "lietuvių (Lietuva)"
//            /// Luba-Katanga - Tshiluba
//            case .Luba_Katanga: return "Tshiluba"
//            /// Luba-Katanga (Congo - Kinshasa) - Tshiluba (Ditunga wa Kongu)
//            case .Luba_Katanga_Congo_Kinshasa: return "Kinshasa)"
//            /// Luo - Dholuo
//            case .Luo: return "Dholuo"
//            /// Luo (Kenya) - Dholuo (Kenya)
//            case .Luo_Kenya: return "Dholuo (Kenya)"
//            /// Luyia - Luluhia
//            case .Luyia: return "Luluhia"
//            /// Luyia (Kenya) - Luluhia (Kenya)
//            case .Luyia_Kenya: return "Luluhia (Kenya)"
//            /// Latvian - latviešu
//            case .Latvian: return "latviešu"
//            /// Latvian (Latvia) - latviešu (Latvija)
//            case .Latvian_Latvia: return "latviešu (Latvija)"
//            /// Masai - Maa
//            case .Masai: return "Maa"
//            /// Masai (Kenya) - Maa (Kenya)
//            case .Masai_Kenya: return "Maa (Kenya)"
//            /// Masai (Tanzania) - Maa (Tansania)
//            case .Masai_Tanzania: return "Maa (Tansania)"
//            /// Meru - Kĩmĩrũ
//            case .Meru: return "Kĩmĩrũ"
//            /// Meru (Kenya) - Kĩmĩrũ (Kenya)
//            case .Meru_Kenya: return "Kĩmĩrũ (Kenya)"
//            /// Morisyen - kreol morisien
//            case .Morisyen: return "kreol morisien"
//            /// Morisyen (Mauritius) - kreol morisien (Moris)
//            case .Morisyen_Mauritius: return "kreol morisien (Moris)"
//            /// Malagasy - Malagasy
//            case .Malagasy: return "Malagasy"
//            /// Malagasy (Madagascar) - Malagasy (Madagasikara)
//            case .Malagasy_Madagascar: return "Malagasy (Madagasikara)"
//            /// Makhuwa-Meetto - Makua
//            case .Makhuwa_Meetto: return "Makua"
//            /// Makhuwa-Meetto (Mozambique) - Makua (Umozambiki)
//            case .Makhuwa_Meetto_Mozambique: return "Makua (Umozambiki)"
//            /// Metaʼ - metaʼ
//            case .Metaʼ: return "metaʼ"
//            /// Metaʼ (Cameroon) - metaʼ (Kamalun)
//            case .Metaʼ_Cameroon: return "metaʼ (Kamalun)"
//            /// Macedonian - македонски
//            case .Macedonian: return "македонски"
//            /// Macedonian (Macedonia) - македонски (Македонија)
//            case .Macedonian_Macedonia: return "македонски (Македонија)"
//            /// Malayalam - മലയാളം
//            case .Malayalam: return "മലയാളം"
//            /// Malayalam (India) - മലയാളം (ഇന്ത്യ)
//            case .Malayalam_India: return "മലയാളം (ഇന്ത്യ)"
//            /// Mongolian - монгол
//            case .Mongolian: return "монгол"
//            /// Mongolian (Mongolia) - монгол (Монгол)
//            case .Mongolian_Mongolia: return "монгол (Монгол)"
//            /// Marathi - मराठी
//            case .Marathi: return "मराठी"
//            /// Marathi (India) - मराठी (भारत)
//            case .Marathi_India: return "मराठी (भारत)"
//            /// Malay - Melayu
//            case .Malay: return "Melayu"
//            /// Malay (Brunei) - Melayu (Brunei)
//            case .Malay_Brunei: return "Melayu (Brunei)"
//            /// Malay (Malaysia) - Melayu (Malaysia)
//            case .Malay_Malaysia: return "Melayu (Malaysia)"
//            /// Malay (Singapore) - Melayu (Singapura)
//            case .Malay_Singapore: return "Melayu (Singapura)"
//            /// Maltese - Malti
//            case .Maltese: return "Malti"
//            /// Maltese (Malta) - Malti (Malta)
//            case .Maltese_Malta: return "Malti (Malta)"
//            /// Mundang - MUNDAŊ
//            case .Mundang: return "MUNDAŊ"
//            /// Mundang (Cameroon) - MUNDAŊ (kameruŋ)
//            case .Mundang_Cameroon: return "MUNDAŊ (kameruŋ)"
//            /// Burmese - မြန်မာ
//            case .Burmese: return "မြန်မာ"
//            /// Burmese (Myanmar [Burma]) - မြန်မာ (မြန်မာ)
//            case .Burmese_Myanmar_Burma: return "မြန်မာ (မြန်မာ)"
//            /// Mazanderani - مازرونی
//            case .Mazanderani: return "مازرونی"
//            /// Mazanderani (Iran) - مازرونی (ایران)
//            case .Mazanderani_Iran: return "مازرونی (ایران)"
//            /// Nama - Khoekhoegowab
//            case .Nama: return "Khoekhoegowab"
//            /// Nama (Namibia) - Khoekhoegowab (Namibiab)
//            case .Nama_Namibia: return "Khoekhoegowab (Namibiab)"
//            /// Norwegian Bokmål - norsk bokmål
//            case .Norwegian_Bokmål: return "norsk bokmål"
//            /// Norwegian Bokmål (Norway) - norsk bokmål (Norge)
//            case .Norwegian_Bokmål_Norway: return "norsk bokmål (Norge)"
//            /// Norwegian Bokmål (Svalbard & Jan Mayen) - norsk bokmål (Svalbard og Jan Mayen)
//            case .Norwegian_Bokmål_Svalbard_And_Jan_Mayen: return "norsk bokmål (Svalbard og Jan Mayen)"
//            /// North Ndebele - isiNdebele
//            case .North_Ndebele: return "isiNdebele"
//            /// North Ndebele (Zimbabwe) - isiNdebele (Zimbabwe)
//            case .North_Ndebele_Zimbabwe: return "isiNdebele (Zimbabwe)"
//            /// Low German - nds
//            case .Low_German: return "nds"
//            /// Low German (Germany) - nds (DE)
//            case .Low_German_Germany: return "nds (DE)"
//            /// Low German (Netherlands) - nds (NL) - Low Saxon
//            case .Low_German_Netherlands: return "nds (NL)"
//            /// Nepali - नेपाली
//            case .Nepali: return "नेपाली"
//            /// Nepali (India) - नेपाली (भारत)
//            case .Nepali_India: return "नेपाली (भारत)"
//            /// Nepali (Nepal) - नेपाली (नेपाल)
//            case .Nepali_Nepal: return "नेपाली (नेपाल)"
//            /// Dutch - Nederlands
//            case .Dutch: return "Nederlands"
//            /// Dutch (Aruba) - Nederlands (Aruba)
//            case .Dutch_Aruba: return "Nederlands (Aruba)"
//            /// Dutch (Belgium) - Nederlands (België) - Flemish
//            case .Dutch_Belgium: return "Nederlands (België)"
//            /// Dutch (Caribbean Netherlands) - Nederlands (Caribisch Nederland)
//            case .Dutch_Caribbean_Netherlands: return "Nederlands (Caribisch Nederland)"
//            /// Dutch (Curaçao) - Nederlands (Curaçao)
//            case .Dutch_Curaçao: return "Nederlands (Curaçao)"
//            /// Dutch (Netherlands) - Nederlands (Nederland)
//            case .Dutch_Netherlands: return "Nederlands (Nederland)"
//            /// Dutch (Suriname) - Nederlands (Suriname)
//            case .Dutch_Suriname: return "Nederlands (Suriname)"
//            /// Dutch (Sint Maarten) - Nederlands (Sint-Maarten)
//            case .Dutch_Sint_Maarten: return "Nederlands (Sint"
//            /// Kwasio - nmg
//            case .Kwasio: return "nmg"
//            /// Kwasio (Cameroon) - nmg (Kamerun)
//            case .Kwasio_Cameroon: return "nmg (Kamerun)"
//            /// Norwegian Nynorsk - nynorsk
//            case .Norwegian_Nynorsk: return "nynorsk"
//            /// Norwegian Nynorsk (Norway) - nynorsk (Noreg)
//            case .Norwegian_Nynorsk_Norway: return "nynorsk (Noreg)"
//            /// Ngiemboon - Shwóŋò ngiembɔɔn
//            case .Ngiemboon: return "Shwóŋò ngiembɔɔn"
//            /// Ngiemboon (Cameroon) - Shwóŋò ngiembɔɔn (Kàmalûm)
//            case .Ngiemboon_Cameroon: return "Shwóŋò ngiembɔɔn (Kàmalûm)"
//            /// Nuer - Thok Nath
//            case .Nuer: return "Thok Nath"
//            /// Nuer (South Sudan) - Thok Nath (SS)
//            case .Nuer_South_Sudan: return "Thok Nath (SS)"
//            /// Nyankole - Runyankore
//            case .Nyankole: return "Runyankore"
//            /// Nyankole (Uganda) - Runyankore (Uganda)
//            case .Nyankole_Uganda: return "Runyankore (Uganda)"
//            /// Oromo - Oromoo
//            case .Oromo: return "Oromoo"
//            /// Oromo (Ethiopia) - Oromoo (Itoophiyaa)
//            case .Oromo_Ethiopia: return "Oromoo (Itoophiyaa)"
//            /// Oromo (Kenya) - Oromoo (Keeniyaa)
//            case .Oromo_Kenya: return "Oromoo (Keeniyaa)"
//            /// Odia - ଓଡ଼ିଆ
//            case .Odia: return "ଓଡ଼ିଆ"
//            /// Odia (India) - ଓଡ଼ିଆ (ଭାରତ)
//            case .Odia_India: return "ଓଡ଼ିଆ (ଭାରତ)"
//            /// Ossetic - ирон
//            case .Ossetic: return "ирон"
//            /// Ossetic (Georgia) - ирон (Гуырдзыстон)
//            case .Ossetic_Georgia: return "ирон (Гуырдзыстон)"
//            /// Ossetic (Russia) - ирон (Уӕрӕсе)
//            case .Ossetic_Russia: return "ирон (Уӕрӕсе)"
//            /// Punjabi - ਪੰਜਾਬੀ
//            case .Punjabi: return "ਪੰਜਾਬੀ"
//            /// Punjabi (Arabic) - پنجابی (عربی)
//            case .Punjabi_Arabic: return "پنجابی (عربی)"
//            /// Punjabi (Arabic, Pakistan) - پنجابی (عربی, پاکستان)
//            case .Punjabi_Arabic_Pakistan: return "پنجابی (عربی, پاکستان)"
//            /// Punjabi (Gurmukhi) - ਪੰਜਾਬੀ (ਗੁਰਮੁਖੀ)
//            case .Punjabi_Gurmukhi: return "ਪੰਜਾਬੀ (ਗੁਰਮੁਖੀ)"
//            /// Punjabi (Gurmukhi, India) - ਪੰਜਾਬੀ (ਗੁਰਮੁਖੀ, ਭਾਰਤ)
//            case .Punjabi_Gurmukhi_India: return "ਪੰਜਾਬੀ (ਗੁਰਮੁਖੀ, ਭਾਰਤ)"
//            /// Polish - polski
//            case .Polish: return "polski"
//            /// Polish (Poland) - polski (Polska)
//            case .Polish_Poland: return "polski (Polska)"
//            /// Pashto - پښتو
//            case .Pashto: return "پښتو"
//            /// Pashto (Afghanistan) - پښتو (افغانستان)
//            case .Pashto_Afghanistan: return "پښتو (افغانستان)"
//            /// Portuguese - português
//            case .Portuguese: return "português"
//            /// Portuguese (Angola) - português (Angola)
//            case .Portuguese_Angola: return "português (Angola)"
//            /// Portuguese (Brazil) - português (Brasil) - Brazilian Portuguese
//            case .Portuguese_Brazil: return "português (Brasil)"
//            /// Portuguese (Switzerland) - português (Suíça)
//            case .Portuguese_Switzerland: return "português (Suíça)"
//            /// Portuguese (Cape Verde) - português (Cabo Verde)
//            case .Portuguese_Cape_Verde: return "português (Cabo Verde)"
//            /// Portuguese (Equatorial Guinea) - português (Guiné Equatorial)
//            case .Portuguese_Equatorial_Guinea: return "português (Guiné Equatorial)"
//            /// Portuguese (Guinea-Bissau) - português (Guiné-Bissau)
//            case .Portuguese_Guinea_Bissau: return "português (Guiné"
//            /// Portuguese (Luxembourg) - português (Luxemburgo)
//            case .Portuguese_Luxembourg: return "português (Luxemburgo)"
//            /// Portuguese (Macau SAR China) - português (Macau, RAE da China)
//            case .Portuguese_Macau_SAR_China: return "português (Macau, RAE da China)"
//            /// Portuguese (Mozambique) - português (Moçambique)
//            case .Portuguese_Mozambique: return "português (Moçambique)"
//            /// Portuguese (Portugal) - português (Portugal) - European Portuguese
//            case .Portuguese_Portugal: return "português (Portugal)"
//            /// Portuguese (São Tomé & Príncipe) - português (São Tomé e Príncipe)
//            case .Portuguese_São_Tomé_And_Príncipe: return "português (São Tomé e Príncipe)"
//            /// Portuguese (Timor-Leste) - português (Timor-Leste)
//            case .Portuguese_Timor_Leste: return "português (Timor"
//            /// Quechua - Runasimi
//            case .Quechua: return "Runasimi"
//            /// Quechua (Bolivia) - Runasimi (Bolivia)
//            case .Quechua_Bolivia: return "Runasimi (Bolivia)"
//            /// Quechua (Ecuador) - Runasimi (Ecuador)
//            case .Quechua_Ecuador: return "Runasimi (Ecuador)"
//            /// Quechua (Peru) - Runasimi (Perú)
//            case .Quechua_Peru: return "Runasimi (Perú)"
//            /// Romansh - rumantsch
//            case .Romansh: return "rumantsch"
//            /// Romansh (Switzerland) - rumantsch (Svizra)
//            case .Romansh_Switzerland: return "rumantsch (Svizra)"
//            /// Rundi - Ikirundi
//            case .Rundi: return "Ikirundi"
//            /// Rundi (Burundi) - Ikirundi (Uburundi)
//            case .Rundi_Burundi: return "Ikirundi (Uburundi)"
//            /// Romanian - română
//            case .Romanian: return "română"
//            /// Romanian (Moldova) - română (Republica Moldova) - Moldavian
//            case .Romanian_Moldova: return "română (Republica Moldova)"
//            /// Romanian (Romania) - română (România)
//            case .Romanian_Romania: return "română (România)"
//            /// Rombo - Kihorombo
//            case .Rombo: return "Kihorombo"
//            /// Rombo (Tanzania) - Kihorombo (Tanzania)
//            case .Rombo_Tanzania: return "Kihorombo (Tanzania)"
//            /// Russian - русский
//            case .Russian: return "русский"
//            /// Russian (Belarus) - русский (Беларусь)
//            case .Russian_Belarus: return "русский (Беларусь)"
//            /// Russian (Kyrgyzstan) - русский (Киргизия)
//            case .Russian_Kyrgyzstan: return "русский (Киргизия)"
//            /// Russian (Kazakhstan) - русский (Казахстан)
//            case .Russian_Kazakhstan: return "русский (Казахстан)"
//            /// Russian (Moldova) - русский (Молдова)
//            case .Russian_Moldova: return "русский (Молдова)"
//            /// Russian (Russia) - русский (Россия)
//            case .Russian_Russia: return "русский (Россия)"
//            /// Russian (Ukraine) - русский (Украина)
//            case .Russian_Ukraine: return "русский (Украина)"
//            /// Kinyarwanda - Kinyarwanda
//            case .Kinyarwanda: return "Kinyarwanda"
//            /// Kinyarwanda (Rwanda) - Kinyarwanda (U Rwanda)
//            case .Kinyarwanda_Rwanda: return "Kinyarwanda (U Rwanda)"
//            /// Rwa - Kiruwa
//            case .Rwa: return "Kiruwa"
//            /// Rwa (Tanzania) - Kiruwa (Tanzania)
//            case .Rwa_Tanzania: return "Kiruwa (Tanzania)"
//            /// Sakha - саха тыла
//            case .Sakha: return "саха тыла"
//            /// Sakha (Russia) - саха тыла (Арассыыйа)
//            case .Sakha_Russia: return "саха тыла (Арассыыйа)"
//            /// Samburu - Kisampur
//            case .Samburu: return "Kisampur"
//            /// Samburu (Kenya) - Kisampur (Kenya)
//            case .Samburu_Kenya: return "Kisampur (Kenya)"
//            /// Sangu - Ishisangu
//            case .Sangu: return "Ishisangu"
//            /// Sangu (Tanzania) - Ishisangu (Tansaniya)
//            case .Sangu_Tanzania: return "Ishisangu (Tansaniya)"
//            /// Northern Sami - davvisámegiella
//            case .Northern_Sami: return "davvisámegiella"
//            /// Northern Sami (Finland) - davvisámegiella (Suopma)
//            case .Northern_Sami_Finland: return "davvisámegiella (Suopma)"
//            /// Northern Sami (Norway) - davvisámegiella (Norga)
//            case .Northern_Sami_Norway: return "davvisámegiella (Norga)"
//            /// Northern Sami (Sweden) - davvisámegiella (Ruoŧŧa)
//            case .Northern_Sami_Sweden: return "davvisámegiella (Ruoŧŧa)"
//            /// Sena - sena
//            case .Sena: return "sena"
//            /// Sena (Mozambique) - sena (Moçambique)
//            case .Sena_Mozambique: return "sena (Moçambique)"
//            /// Koyraboro Senni - Koyraboro senni
//            case .Koyraboro_Senni: return "Koyraboro senni"
//            /// Koyraboro Senni (Mali) - Koyraboro senni (Maali)
//            case .Koyraboro_Senni_Mali: return "Koyraboro senni (Maali)"
//            /// Sango - Sängö
//            case .Sango: return "Sängö"
//            /// Sango (Central African Republic) - Sängö (Ködörösêse tî Bêafrîka)
//            case .Sango_Central_African_Republic: return "Sängö (Ködörösêse tî Bêafrîka)"
//            /// Tachelhit - ⵜⴰⵛⵍⵃⵉⵜ
//            case .Tachelhit: return "ⵜⴰⵛⵍⵃⵉⵜ"
//            /// Tachelhit (Latin) - Tashelḥiyt (Latn)
//            case .Tachelhit_Latin: return "Tashelḥiyt (Latn)"
//            /// Tachelhit (Latin, Morocco) - Tashelḥiyt (Latn, lmɣrib)
//            case .Tachelhit_Latin_Morocco: return "Tashelḥiyt (Latn, lmɣrib)"
//            /// Tachelhit (Tifinagh) - ⵜⴰⵛⵍⵃⵉⵜ (Tfng)
//            case .Tachelhit_Tifinagh: return "ⵜⴰⵛⵍⵃⵉⵜ (Tfng)"
//            /// Tachelhit (Tifinagh, Morocco) - ⵜⴰⵛⵍⵃⵉⵜ (Tfng, ⵍⵎⵖⵔⵉⴱ)
//            case .Tachelhit_Tifinagh_Morocco: return "ⵜⴰⵛⵍⵃⵉⵜ (Tfng, ⵍⵎⵖⵔⵉⴱ)"
//            /// Sinhala - සිංහල
//            case .Sinhala: return "සිංහල"
//            /// Sinhala (Sri Lanka) - සිංහල (ශ්‍රී ලංකාව)
//            case .Sinhala_Sri_Lanka: return "සිංහල (ශ්‍රී ලංකාව)"
//            /// Slovak - slovenčina
//            case .Slovak: return "slovenčina"
//            /// Slovak (Slovakia) - slovenčina (Slovensko)
//            case .Slovak_Slovakia: return "slovenčina (Slovensko)"
//            /// Slovenian - slovenščina
//            case .Slovenian: return "slovenščina"
//            /// Slovenian (Slovenia) - slovenščina (Slovenija)
//            case .Slovenian_Slovenia: return "slovenščina (Slovenija)"
//            /// Inari Sami - anarâškielâ
//            case .Inari_Sami: return "anarâškielâ"
//            /// Inari Sami (Finland) - anarâškielâ (Suomâ)
//            case .Inari_Sami_Finland: return "anarâškielâ (Suomâ)"
//            /// Shona - chiShona
//            case .Shona: return "chiShona"
//            /// Shona (Zimbabwe) - chiShona (Zimbabwe)
//            case .Shona_Zimbabwe: return "chiShona (Zimbabwe)"
//            /// Somali - Soomaali
//            case .Somali: return "Soomaali"
//            /// Somali (Djibouti) - Soomaali (Jabuuti)
//            case .Somali_Djibouti: return "Soomaali (Jabuuti)"
//            /// Somali (Ethiopia) - Soomaali (Itoobiya)
//            case .Somali_Ethiopia: return "Soomaali (Itoobiya)"
//            /// Somali (Kenya) - Soomaali (Kiiniya)
//            case .Somali_Kenya: return "Soomaali (Kiiniya)"
//            /// Somali (Somalia) - Soomaali (Soomaaliya)
//            case .Somali_Somalia: return "Soomaali (Soomaaliya)"
//            /// Albanian - shqip
//            case .Albanian: return "shqip"
//            /// Albanian (Albania) - shqip (Shqipëri)
//            case .Albanian_Albania: return "shqip (Shqipëri)"
//            /// Albanian (Macedonia) - shqip (Maqedoni)
//            case .Albanian_Macedonia: return "shqip (Maqedoni)"
//            /// Albanian (Kosovo) - shqip (Kosovë)
//            case .Albanian_Kosovo: return "shqip (Kosovë)"
//            /// Serbian - српски
//            case .Serbian: return "српски"
//            /// Serbian (Cyrillic) - српски (ћирилица)
//            case .Serbian_Cyrillic: return "српски (ћирилица)"
//            /// Serbian (Cyrillic, Bosnia & Herzegovina) - српски (ћирилица, Босна и Херцеговина)
//            case .Serbian_Cyrillic_Bosnia_And_Herzegovina: return "српски (ћирилица, Босна и Херцеговина)"
//            /// Serbian (Cyrillic, Montenegro) - српски (ћирилица, Црна Гора)
//            case .Serbian_Cyrillic_Montenegro: return "српски (ћирилица, Црна Гора)"
//            /// Serbian (Cyrillic, Serbia) - српски (ћирилица, Србија)
//            case .Serbian_Cyrillic_Serbia: return "српски (ћирилица, Србија)"
//            /// Serbian (Cyrillic, Kosovo) - српски (ћирилица, Косово)
//            case .Serbian_Cyrillic_Kosovo: return "српски (ћирилица, Косово)"
//            /// Serbian (Latin) - srpski (latinica)
//            case .Serbian_Latin: return "srpski (latinica)"
//            /// Serbian (Latin, Bosnia & Herzegovina) - srpski (latinica, Bosna i Hercegovina)
//            case .Serbian_Latin_Bosnia_And_Herzegovina: return "srpski (latinica, Bosna i Hercegovina)"
//            /// Serbian (Latin, Montenegro) - srpski (latinica, Crna Gora)
//            case .Serbian_Latin_Montenegro: return "srpski (latinica, Crna Gora)"
//            /// Serbian (Latin, Serbia) - srpski (latinica, Srbija)
//            case .Serbian_Latin_Serbia: return "srpski (latinica, Srbija)"
//            /// Serbian (Latin, Kosovo) - srpski (latinica, Kosovo)
//            case .Serbian_Latin_Kosovo: return "srpski (latinica, Kosovo)"
//            /// Swedish - svenska
//            case .Swedish: return "svenska"
//            /// Swedish (Åland Islands) - svenska (Åland)
//            case .Swedish_Åland_Islands: return "svenska (Åland)"
//            /// Swedish (Finland) - svenska (Finland)
//            case .Swedish_Finland: return "svenska (Finland)"
//            /// Swedish (Sweden) - svenska (Sverige)
//            case .Swedish_Sweden: return "svenska (Sverige)"
//            /// Swahili - Kiswahili
//            case .Swahili: return "Kiswahili"
//            /// Swahili (Congo - Kinshasa) - Kiswahili (Jamhuri ya Kidemokrasia ya Kongo) - Congo Swahili
//            case .Swahili_Congo_Kinshasa: return "Kinshasa)"
//            /// Swahili (Kenya) - Kiswahili (Kenya)
//            case .Swahili_Kenya: return "Kiswahili (Kenya)"
//            /// Swahili (Tanzania) - Kiswahili (Tanzania)
//            case .Swahili_Tanzania: return "Kiswahili (Tanzania)"
//            /// Swahili (Uganda) - Kiswahili (Uganda)
//            case .Swahili_Uganda: return "Kiswahili (Uganda)"
//            /// Tamil - தமிழ்
//            case .Tamil: return "தமிழ்"
//            /// Tamil (India) - தமிழ் (இந்தியா)
//            case .Tamil_India: return "தமிழ் (இந்தியா)"
//            /// Tamil (Sri Lanka) - தமிழ் (இலங்கை)
//            case .Tamil_Sri_Lanka: return "தமிழ் (இலங்கை)"
//            /// Tamil (Malaysia) - தமிழ் (மலேசியா)
//            case .Tamil_Malaysia: return "தமிழ் (மலேசியா)"
//            /// Tamil (Singapore) - தமிழ் (சிங்கப்பூர்)
//            case .Tamil_Singapore: return "தமிழ் (சிங்கப்பூர்)"
//            /// Telugu - తెలుగు
//            case .Telugu: return "తెలుగు"
//            /// Telugu (India) - తెలుగు (భారతదేశం)
//            case .Telugu_India: return "తెలుగు (భారతదేశం)"
//            /// Teso - Kiteso
//            case .Teso: return "Kiteso"
//            /// Teso (Kenya) - Kiteso (Kenia)
//            case .Teso_Kenya: return "Kiteso (Kenia)"
//            /// Teso (Uganda) - Kiteso (Uganda)
//            case .Teso_Uganda: return "Kiteso (Uganda)"
//            /// Tajik - тоҷикӣ
//            case .Tajik: return "тоҷикӣ"
//            /// Tajik (Tajikistan) - тоҷикӣ (Тоҷикистон)
//            case .Tajik_Tajikistan: return "тоҷикӣ (Тоҷикистон)"
//            /// Thai - ไทย
//            case .Thai: return "ไทย"
//            /// Thai (Thailand) - ไทย (ไทย)
//            case .Thai_Thailand: return "ไทย (ไทย)"
//            /// Tigrinya - ትግርኛ
//            case .Tigrinya: return "ትግርኛ"
//            /// Tigrinya (Eritrea) - ትግርኛ (ኤርትራ)
//            case .Tigrinya_Eritrea: return "ትግርኛ (ኤርትራ)"
//            /// Tigrinya (Ethiopia) - ትግርኛ (ኢትዮጵያ)
//            case .Tigrinya_Ethiopia: return "ትግርኛ (ኢትዮጵያ)"
//            /// Tongan - lea fakatonga
//            case .Tongan: return "lea fakatonga"
//            /// Tongan (Tonga) - lea fakatonga (Tonga)
//            case .Tongan_Tonga: return "lea fakatonga (Tonga)"
//            /// Turkish - Türkçe
//            case .Turkish: return "Türkçe"
//            /// Turkish (Cyprus) - Türkçe (Kıbrıs)
//            case .Turkish_Cyprus: return "Türkçe (Kıbrıs)"
//            /// Turkish (Turkey) - Türkçe (Türkiye)
//            case .Turkish_Turkey: return "Türkçe (Türkiye)"
//            /// Tatar - татар
//            case .Tatar: return "татар"
//            /// Tatar (Russia) - татар (Россия)
//            case .Tatar_Russia: return "татар (Россия)"
//            /// Tasawaq - Tasawaq senni
//            case .Tasawaq: return "Tasawaq senni"
//            /// Tasawaq (Niger) - Tasawaq senni (Nižer)
//            case .Tasawaq_Niger: return "Tasawaq senni (Nižer)"
//            /// Central Atlas Tamazight - Tamaziɣt n laṭlaṣ
//            case .Central_Atlas_Tamazight: return "Tamaziɣt n laṭlaṣ"
//            /// Central Atlas Tamazight (Morocco) - Tamaziɣt n laṭlaṣ (Meṛṛuk)
//            case .Central_Atlas_Tamazight_Morocco: return "Tamaziɣt n laṭlaṣ (Meṛṛuk)"
//            /// Uyghur - ئۇيغۇرچە
//            case .Uyghur: return "ئۇيغۇرچە"
//            /// Uyghur (China) - ئۇيغۇرچە (جۇڭگو)
//            case .Uyghur_China: return "ئۇيغۇرچە (جۇڭگو)"
//            /// Ukrainian - українська
//            case .Ukrainian: return "українська"
//            /// Ukrainian (Ukraine) - українська (Україна)
//            case .Ukrainian_Ukraine: return "українська (Україна)"
//            /// Urdu - اردو
//            case .Urdu: return "اردو"
//            /// Urdu (India) - اردو (بھارت)
//            case .Urdu_India: return "اردو (بھارت)"
//            /// Urdu (Pakistan) - اردو (پاکستان)
//            case .Urdu_Pakistan: return "اردو (پاکستان)"
//            /// Uzbek - o‘zbek
//            case .Uzbek: return "o‘zbek"
//            /// Uzbek (Arabic) - اوزبیک (عربی)
//            case .Uzbek_Arabic: return "اوزبیک (عربی)"
//            /// Uzbek (Arabic, Afghanistan) - اوزبیک (عربی, افغانستان)
//            case .Uzbek_Arabic_Afghanistan: return "اوزبیک (عربی, افغانستان)"
//            /// Uzbek (Cyrillic) - ўзбекча (Кирил)
//            case .Uzbek_Cyrillic: return "ўзбекча (Кирил)"
//            /// Uzbek (Cyrillic, Uzbekistan) - ўзбекча (Кирил, Ўзбекистон)
//            case .Uzbek_Cyrillic_Uzbekistan: return "ўзбекча (Кирил, Ўзбекистон)"
//            /// Uzbek (Latin) - o‘zbek (lotin)
//            case .Uzbek_Latin: return "o‘zbek (lotin)"
//            /// Uzbek (Latin, Uzbekistan) - o‘zbek (lotin, Oʻzbekiston)
//            case .Uzbek_Latin_Uzbekistan: return "o‘zbek (lotin, Oʻzbekiston)"
//            /// Vai - ꕙꔤ
//            case .Vai: return "ꕙꔤ"
//            /// Vai (Latin) - Vai (Latn)
//            case .Vai_Latin: return "Vai (Latn)"
//            /// Vai (Latin, Liberia) - Vai (Latn, Laibhiya)
//            case .Vai_Latin_Liberia: return "Vai (Latn, Laibhiya)"
//            /// Vai (Vai) - ꕙꔤ (Vaii)
//            case .Vai_Vai: return "ꕙꔤ (Vaii)"
//            /// Vai (Vai, Liberia) - ꕙꔤ (Vaii, ꕞꔤꔫꕩ)
//            case .Vai_Vai_Liberia: return "ꕙꔤ (Vaii, ꕞꔤꔫꕩ)"
//            /// Vietnamese - Tiếng Việt
//            case .Vietnamese: return "Tiếng Việt"
//            /// Vietnamese (Vietnam) - Tiếng Việt (Việt Nam)
//            case .Vietnamese_Vietnam: return "Tiếng Việt (Việt Nam)"
//            /// Vunjo - Kyivunjo
//            case .Vunjo: return "Kyivunjo"
//            /// Vunjo (Tanzania) - Kyivunjo (Tanzania)
//            case .Vunjo_Tanzania: return "Kyivunjo (Tanzania)"
//            /// Walser - Walser
//            case .Walser: return "Walser"
//            /// Walser (Switzerland) - Walser (Schwiz)
//            case .Walser_Switzerland: return "Walser (Schwiz)"
//            /// Wolof - Wolof
//            case .Wolof: return "Wolof"
//            /// Wolof (Senegal) - Wolof (Senegaal)
//            case .Wolof_Senegal: return "Wolof (Senegaal)"
//            /// Soga - Olusoga
//            case .Soga: return "Olusoga"
//            /// Soga (Uganda) - Olusoga (Yuganda)
//            case .Soga_Uganda: return "Olusoga (Yuganda)"
//            /// Yangben - nuasue
//            case .Yangben: return "nuasue"
//            /// Yangben (Cameroon) - nuasue (Kemelún)
//            case .Yangben_Cameroon: return "nuasue (Kemelún)"
//            /// Yiddish - ייִדיש
//            case .Yiddish: return "ייִדיש"
//            /// Yiddish (World) - ייִדיש (וועלט)
//            case .Yiddish_World: return "ייִדיש (וועלט)"
//            /// Yoruba - Èdè Yorùbá
//            case .Yoruba: return "Èdè Yorùbá"
//            /// Yoruba (Benin) - Èdè Yorùbá (Orílɛ́ède Bɛ̀nɛ̀)
//            case .Yoruba_Benin: return "Èdè Yorùbá (Orílɛ́ède Bɛ̀nɛ̀)"
//            /// Yoruba (Nigeria) - Èdè Yorùbá (Orílẹ́ède Nàìjíríà)
//            case .Yoruba_Nigeria: return "Èdè Yorùbá (Orílẹ́ède Nàìjíríà)"
//            /// Cantonese - 粵語
//            case .Cantonese: return "粵語"
//            /// Cantonese (Simplified) - 粤语 (简体)
//            case .Cantonese_Simplified: return "粤语 (简体)"
//            /// Cantonese (Simplified, China) - 粤语 (简体，中华人民共和国)
//            case .Cantonese_Simplified_China: return "粤语 (简体，中华人民共和国)"
//            /// Cantonese (Traditional) - 粵語 (繁體)
//            case .Cantonese_Traditional: return "粵語 (繁體)"
//            /// Cantonese (Traditional, Hong Kong SAR China) - 粵語 (繁體，中華人民共和國香港特別行政區)
//            case .Cantonese_Traditional_Hong_Kong_SAR_China: return "粵語 (繁體，中華人民共和國香港特別行政區)"
//            /// Standard Moroccan Tamazight - ⵜⴰⵎⴰⵣⵉⵖⵜ
//            case .Standard_Moroccan_Tamazight: return "ⵜⴰⵎⴰⵣⵉⵖⵜ"
//            /// Standard Moroccan Tamazight (Morocco) - ⵜⴰⵎⴰⵣⵉⵖⵜ (ⵍⵎⵖⵔⵉⴱ)
//            case .Standard_Moroccan_Tamazight_Morocco: return "ⵜⴰⵎⴰⵣⵉⵖⵜ (ⵍⵎⵖⵔⵉⴱ)"
//            /// Chinese - 中文
//            case .Chinese: return "中文"
//            /// Chinese (Simplified) - 中文（简体） - Simplified Chinese
//            case .Chinese_Simplified: return "中文（简体）"
//            /// Chinese (Simplified, China) - 中文（简体，中国） - Simplified Chinese (China)
//            case .Chinese_Simplified_China: return "中文（简体，中国）"
//            /// Chinese (Simplified, Hong Kong SAR China) - 中文（简体，中国香港特别行政区） - Simplified Chinese (Hong Kong SAR China)
//            case .Chinese_Simplified_Hong_Kong_SAR_China: return "中文（简体，中国香港特别行政区）"
//            /// Chinese (Simplified, Macau SAR China) - 中文（简体，中国澳门特别行政区） - Simplified Chinese (Macau SAR China)
//            case .Chinese_Simplified_Macau_SAR_China: return "中文（简体，中国澳门特别行政区）"
//            /// Chinese (Simplified, Singapore) - 中文（简体，新加坡） - Simplified Chinese (Singapore)
//            case .Chinese_Simplified_Singapore: return "中文（简体，新加坡）"
//            /// Chinese (Traditional) - 中文（繁體） - Traditional Chinese
//            case .Chinese_Traditional: return "中文（繁體）"
//            /// Chinese (Traditional, Hong Kong SAR China) - 中文（繁體字，中國香港特別行政區） - Traditional Chinese (Hong Kong SAR China)
//            case .Chinese_Traditional_Hong_Kong_SAR_China: return "中文（繁體字，中國香港特別行政區）"
//            /// Chinese (Traditional, Macau SAR China) - 中文（繁體字，中國澳門特別行政區） - Traditional Chinese (Macau SAR China)
//            case .Chinese_Traditional_Macau_SAR_China: return "中文（繁體字，中國澳門特別行政區）"
//            /// Chinese (Traditional, Taiwan) - 中文（繁體，台灣） - Traditional Chinese (Taiwan)
//            case .Chinese_Traditional_Taiwan: return "中文（繁體，台灣）"
//            /// Zulu - isiZulu
//            case .Zulu: return "isiZulu"
//            /// Zulu (South Africa) - isiZulu (iNingizimu Afrika)
//            case .Zulu_South_Africa: return "isiZulu (iNingizimu Afrika)"
//            default: break
//        }
//    }
//}
