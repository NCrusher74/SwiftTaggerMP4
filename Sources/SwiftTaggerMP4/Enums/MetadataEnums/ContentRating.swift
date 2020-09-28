/*
 ContentRating.swift
 
 
 Created by Nolaine Crusher on 8/30/20.
 */

import Foundation
/// A list of internation ratings as recognized by the iTunes store. These may be optionally appended with a string containing notes about the rating.
enum ContentRating: String {
    case none = ""
    /// United States - MPAA Movie rating: Not Rated
    case us_Movie_NR = "mpaa|NR|000|"
    /// United States - MPAA Movie rating: General audiences
    case us_Movie_G = "mpaa|G|100|"
    /// United States - MPAA Movie rating: Parental Guidance Suggested
    case us_Movie_PG = "mpaa|PG|200|"
    /// United States - MPAA Movie rating: Parental Guidance Suggested for ages under 13
    case us_Movie_PG13 = "mpaa|PG-13|300|"
    /// United States - MPAA Movie rating: Restricted for ages 17 and up
    case us_Movie_R = "mpaa|R|400|"
    /// United States - MPAA Movie rating: No admittance under age 17
    case us_Movie_NC = "mpaa|NC-17|500|"
    /// United States - MPAA Movie rating: Unrated
    case us_Movie_Unrated = "mpaa|Unrated|???|"
    /// United States - Television rating: Youth
    case us_tv_Y = "us-tv|TV-Y|100|"
    /// United States - Television rating: Youth ages 7 and up
    case us_tv_Y7 = "us-tv|TV-Y7|200|"
    /// United States - Television rating: General audiences
    case us_tv_G = "us-tv|TV-G|300|"
    /// United States - Television rating: Parental Guidance
    case us_tv_PG = "us-tv|TV-PG|400|"
    /// United States - Television rating: Parental Guidanced ages 14 and up
    case us_tv_14 = "us-tv|TV-14|500|"
    /// United States - Television rating: Mature audiences
    case us_tv_M = "us-tv|M|600|"
    /// United States - Television rating: Unrated
    case us_tv_Unrated = "us-tv|Unrated|???|"
    /// Australia - Movie rating G
    case au_Movie_G = "au-movie|G|100|"
    /// Australia - Movie rating PG
    case au_Movie_PG = "au-movie|PG|200|"
    /// Australia - Movie rating M
    case au_Movie_M = "au-movie|M|350|"
    /// Australia - Movie rating M-15
    case au_Movie_MA15 = "au-movie|MA15+|375|"
    /// Australia - Movie rating R-18
    case au_Movie_R18 = "au-movie|R18+|400|"
    /// Australia - Movie rating Unrated
    case au_Movie_Unrated = "au-movie|Not Rated|???|"
    /// Australia - Television rating P
    case au_tv_P = "au-tv|P|100|"
    /// Australia - Television rating C
    case au_tv_C = "au-tv|C|200|"
    /// Australia - Television rating G
    case au_tv_G = "au-tv|G|300|"
    /// Australia - Television rating PG
    case au_tv_PG = "au-tv|PG|400|"
    /// Australia - Television rating M
    case au_tv_M = "au-tv|M|500|"
    /// Australia - Television rating MA15
    case au_tv_MA15 = "au-tv|MA15+|550|"
    /// Australia - Television rating AV15
    case au_tv_AV15 = "au-tv|AV15+|575|"
    /// Australia - Television rating R 18
    case au_tv_R18 = "au-tv|R18+|600|"
    /// Brazil - Movie rating: L
    case br_Movie_L = "br-movie|L|000|"
    /// Brazil - Movie rating: 12
    case br_Movie_12 = "br-movie|12|100|"
    /// Brazil - Movie rating: 14
    case br_Movie_14 = "br-movie|14|300|"
    /// Brazil - Movie rating: 16
    case br_Movie_16 = "br-movie|16|350|"
    /// Brazil - Movie rating: 18
    case br_Movie_18 = "br-movie|18|400|"
    /// Canada - Movie rating: G
    case ca_Movie_G = "ca-movie|G|100|"
    /// Canada - Movie rating: PG
    case ca_Movie_PG = "ca-movie|PG|200|"
    /// Canada - Movie rating: 14A
    case ca_Movie_14A = "ca-movie|14A|300|"
    /// Canada - Movie rating: 18A
    case ca_Movie_18A = "ca-movie|18A|350|"
    /// Canada - Movie rating: R
    case ca_Movie_R = "ca-movie|R|400|"
    /// Canada - Movie rating: A
    case ca_Movie_A = "ca-movie|A|500|"
    /// Canada - Movie rating: Unrated
    case ca_Movie_Unrated = "ca-movie|Unrated|???|"
    /// Canada - Movie rating: Not Rated
    case ca_Movie_NR = "ca-movie|Not Rated|???|"
    /// Canada - Television rating E
    case ca_tv_E = "ca-tv|E|000|"
    /// Canada - Television rating C
    case ca_tv_C = "ca-tv|C|050|"
    /// Canada - Television rating C8
    case ca_tv_C8 = "ca-tv|C8|075|"
    /// Canada - Television rating G
    case ca_tv_G = "ca-tv|G|100|"
    /// Canada - Television rating PG
    case ca_tv_PG = "ca-tv|PG|200|"
    /// Canada - Television rating 14
    case ca_tv_14 = "ca-tv|14+|300|"
    /// Canada - Television rating 18
    case ca_tv_18 = "ca-tv|18+|350|"
    /// Canada - Television rating 21
    case ca_tv_21 = "ca-tv|21+|500|"
    /// Germany - Movie rating: AB 0
    case de_Movie_AB0 = "de-movie|Ab 0 Jahren|075|"
    /// Germany - Movie rating: AB 6
    case de_Movie_AB6 = "de-movie|Ab 6 Jahren|100|"
    /// Germany - Movie rating: AB 12
    case de_Movie_AB12 = "de-movie|Ab 12 Jahren|200|"
    /// Germany - Movie rating: AB 16
    case de_Movie_AB16 = "de-movie|Ab 16 Jahren|500|"
    /// Germany - Movie rating: AB 18
    case de_Movie_AB18 = "de-movie|Ab 18 Jahren|600|"
    /// Germany - Television rating AB 0
    case de_tv_AB0 = "de-tv|Ab 0 Jahren|075|"
    /// Germany - Television rating AB 6
    case de_tv_AB6 = "de-tv|Ab 6 Jahren|100|"
    /// Germany - Television rating AB 12
    case de_tv_AB12 = "de-tv|Ab 12 Jahren|200|"
    /// Germany - Television rating AB 16
    case de_tv_AB16 = "de-tv|Ab 16 Jahren|500|"
    /// Germany - Television rating AB 18
    case de_tv_AB18 = "de-tv|Ab 18 Jahren|600|"
    /// France - Movie rating: TP
    case fr_Movie_TP = "fr-movie|Tout public|000|"
    /// France - Movie rating: 10
    case fr_Movie_10 = "fr-movie|-10|100|"
    /// France - Movie rating: 12
    case fr_Movie_12 = "fr-movie|-12|300|"
    /// France - Movie rating: 16
    case fr_Movie_16 = "fr-movie|-16|375|"
    /// France - Movie rating: 18
    case fr_Movie_18 = "fr-movie|-18|400|"
    /// France - Movie rating: Unrated
    case fr_Movie_Unrated = "fr-movie|Unrated|???|"
    /// Italy - Movie rating: T
    case it_Movie_T = "it-movie|T|100|"
    /// Italy - Movie rating: VPA
    case it_Movie_VPA = "it-movie|VPA|125|"
    /// Italy - Movie rating: VM10
    case it_Movie_VM10 = "it-movie|VM10|150|"
    /// Italy - Movie rating: VM12
    case it_Movie_VM12 = "it-movie|VM12|200|"
    /// Italy - Movie rating: VM14
    case it_Movie_VM14 = "it-movie|VM14|325|"
    /// Italy - Movie rating: VM18
    case it_Movie_VM18 = "it-movie|VM18|400|"
    /// Ireland - Movie rating: Not Rated
    case ie_Movie_NR = "ie-movie|Not Rated|000|"
    /// Ireland - Movie rating: G
    case ie_Movie_G = "ie-movie|G|100|"
    /// Ireland - Movie rating: PG
    case ie_Movie_PG = "ie-movie|PG|200|"
    /// Ireland - Movie rating: 12
    case ie_Movie_12 = "ie-movie|12|300|"
    /// Ireland - Movie rating: 15
    case ie_Movie_15 = "ie-movie|15|350|"
    /// Ireland - Movie rating: 16
    case ie_Movie_16 = "ie-movie|16|375|"
    /// Ireland - Movie rating: 18
    case ie_Movie_18 = "ie-movie|18|400|"
    /// Ireland - Movie rating: Unrated
    case ie_Movie_Unrated = "ie-movie|Unrated|???|"
    /// Ireland - Television rating G
    case ie_tv_G = "ie-tv|G|100|"
    /// Ireland - Television rating PG
    case ie_tv_PG = "ie-tv|PG|350|"
    /// Ireland - Television rating 12
    case ie_tv_12 = "ie-tv|12|400|"
    /// Ireland - Television rating 15
    case ie_tv_15 = "ie-tv|15|500|"
    /// Ireland - Television rating 18
    case ie_tv_18 = "ie-tv|18|600|"
    /// Japan - Movie rating: G
    case jp_Movie_G = "jp-movie|G|100|"
    /// Japan - Movie rating: PG12
    case jp_Movie_PG12 = "jp-movie|PG12|200|"
    /// Japan - Movie rating: R15
    case jp_Movie_R15 = "jp-movie|R15+|300|"
    /// Japan - Movie rating: R18
    case jp_Movie_R18 = "jp-movie|R18+|400|"
    /// Japan - Movie rating: Unrated
    case jp_Movie_Unrated = "jp-movie|Unrated|???|"
    /// Mexico - Movie rating: AA
    case mx_Movie_AA = "mx-movie|AA|000|"
    /// Mexico - Movie rating: A
    case mx_Movie_A = "mx-movie|A|100|"
    /// Mexico - Movie rating: B
    case mx_Movie_B = "mx-movie|B|300|"
    /// Mexico - Movie rating: B15
    case mx_Movie_B15 = "mx-movie|B-15|500|"
    /// Mexico - Movie rating: C
    case mx_Movie_C = "mx-movie|C|600|"
    /// Netherlands - Movie rating: AL
    case nl_Movie_AL = "nl-movie|AL/G|000|"
    /// Netherlands - Movie rating: 6
    case nl_Movie_6 = "nl-movie|6|100|"
    /// Netherlands - Movie rating: 9
    case nl_Movie_9 = "nl-movie|9|200|"
    /// Netherlands - Movie rating: 12
    case nl_Movie_12 = "nl-movie|12|300|"
    /// Netherlands - Movie rating: 16
    case nl_Movie_16 = "nl-movie|16|500|"
    /// Netherlands - Movie rating: 18
    case nl_Movie_18 = "nl-movie|18|600|"
    /// New Zealand - Movie rating: G
    case nz_Movie_G = "nz-movie|G|100|"
    /// New Zealand - Movie rating: PG
    case nz_Movie_PG = "nz-movie|PG|200|"
    /// New Zealand - Movie rating: M
    case nz_Movie_M = "nz-movie|M|300|"
    /// New Zealand - Movie rating: R13
    case nz_Movie_R13 = "nz-movie|R13|325|"
    /// New Zealand - Movie rating: RP13
    case nz_Movie_RP13 = "nz-movie|RP13|325|"
    /// New Zealand - Movie rating: R15
    case nz_Movie_R15 = "nz-movie|R15|350|"
    /// New Zealand - Movie rating: R16
    case nz_Movie_R16 = "nz-movie|R16|375|"
    /// New Zealand - Movie rating: RP16
    case nz_Movie_RP16 = "nz-movie|RP16|375|"
    /// New Zealand - Movie rating: R18
    case nz_Movie_R18 = "nz-movie|R18|400|"
    /// New Zealand - Movie rating: R
    case nz_Movie_R = "nz-movie|R|500|"
    /// New Zealand - Movie rating: U
    case nz_Movie_U = "nz-movie|U|900|"
    /// New Zealand - Movie rating: Not Rated
    case nz_Movie_NR = "nz-movie|Not Rated|???|"
    /// Sweden - Movie rating: A
    case se_Movie_A = " se-movie|A|000|"
    /// Sweden - Movie rating: 7
    case se_Movie_7 = " se-movie|7|125|"
    /// Sweden - Movie rating: 11
    case se_Movie_11 = " se-movie|11|225|"
    /// Sweden - Movie rating: 15
    case se_Movie_15 = " se-movie|15|400|"
    /// Sweden - Movie rating: Unrated
    case se_Movie_Unrated = " se-movie|Unrated|???|"
    /// China - Movie rating: 0
    case ch_Movie_0 = "ch-movie|0|050|"
    /// China - Movie rating: 6
    case ch_Movie_6 = "ch-movie|6|075|"
    /// China - Movie rating: 7
    case ch_Movie_7 = "ch-movie|7|125|"
    /// China - Movie rating: 10
    case ch_Movie_10 = "ch-movie|10|150|"
    /// China - Movie rating: 12
    case ch_Movie_12 = "ch-movie|12|200|"
    /// China - Movie rating: 14
    case ch_Movie_14 = "ch-movie|14|325|"
    /// China - Movie rating: 16
    case ch_Movie_16 = "ch-movie|16|375|"
    /// China - Movie rating: 18
    case ch_Movie_18 = "ch-movie|18|400|"
    /// China - Movie rating: Unrated
    case ch_Movie_Unrated = "ch-movie|Unrated|???|"
    /// United Kingdom - Movie rating: NotRated
    case uk_Movie_NR = "uk-movie|NR|000|"
    /// United Kingdom - Movie rating: U
    case uk_Movie_U = "uk-movie|U|100|"
    /// United Kingdom - Movie rating: Uc
    case uk_Movie_Uc = "uk-movie|Uc|150|"
    /// United Kingdom - Movie rating: PG
    case uk_Movie_PG = "uk-movie|PG|200|"
    /// United Kingdom - Movie rating: 12
    case uk_Movie_12 = "uk-movie|12|300|"
    /// United Kingdom - Movie rating: 12A
    case uk_Movie_12A = "uk-movie|12A|325|"
    /// United Kingdom - Movie rating: 15
    case uk_Movie_15 = "uk-movie|15|350|"
    /// United Kingdom - Movie rating: 18
    case uk_Movie_18 = "uk-movie|18|400|"
    /// United Kingdom - Television rating Caution
    case uk_tv_Caution = "uk-tv|Caution|500|"
    /// United Kingdom - Movie rating: R18
    case uk_Movie_R18 = "uk-movie|R18|600|"
    /// United Kingdom - Movie rating: E
    case uk_Movie_E = "uk-movie|E|0|"
    /// United Kingdom - Movie rating: Unrated
    case uk_Movie_Unrated = "uk-movie|Unrated|???|"
    /// Russia - Movie rating: 0
    case ru_Movie_0 = "ru-movie|0+|000|"
    /// Russia - Movie rating: 6
    case ru_Movie_6 = "ru-movie|6+|150|"
    /// Russia - Movie rating: 12
    case ru_Movie_12 = "ru-movie|12+|200|"
    /// Russia - Movie rating: 16
    case ru_Movie_16 = "ru-movie|16+|375|"
    /// Russia - Movie rating: 18
    case ru_Movie_18 = "ru-movie|18+|400|"
    /// Russia - Movie rating: Unrated
    case ru_Movie_Unrated = "ru-movie|Unrated|???|"
    /// Philippines - Movie rating: G
    case ph_Movie_G = "ph-movie|G|100|"
    /// Philippines - Movie rating: PG
    case ph_Movie_PG = "ph-movie|PG|300|"
    /// Philippines - Movie rating: R13
    case ph_Movie_R13 = "ph-movie|R-13|325|"
    /// Philippines - Movie rating: R16
    case ph_Movie_R16 = "ph-movie|R-16|375|"
    /// Philippines - Movie rating: R18
    case ph_Movie_R18 = "ph-movie|R-18|400|"
    /// Philippines - Movie rating: Unrated
    case ph_Movie_Unrated = "ph-movie|Unrated|???|"
    /// Hong Kong - Movie rating: 100
    case hk_Movie_100 = "hk-movie|第i類|100|"
    /// Hong Kong - Movie rating: 400
    case hk_Movie_400 = "hk-movie|第ii類|400|"
    /// Hong Kong - Movie rating: Unrated
    case hk_Movie_Unrated = "hk-movie|未作評級|???|"
    /// Czech Republic- Movie rating: U
    case cz_Movie_U = "cz-movies|U|100|"
    /// Czech Republic- Movie rating: 12
    case cz_Movie_12 = "cz-movies|12+|200|"
    /// Czech Republic- Movie rating: 15
    case cz_Movie_15 = "cz-movies|15+|350|"
    /// Czech Republic- Movie rating: 18
    case cz_Movie_18 = "cz-movies|18+|400|"
    /// Czech Republic- Movie rating: Unrated
    case cz_Movie_Unrated = "cz-movies|neklasifikováno|???|"
    /// India - Movie rating: U
    case in_Movie_U = "in-movies|U|000|"
    /// India - Movie rating: UA
    case in_Movie_UA = "in-movies|UA|200|"
    /// India - Movie rating: A
    case in_Movie_A = "in-movies|A|500|"
    /// India - Movie rating: S
    case in_Movie_S = "in-movies|S|600|"
    /// India - Movie rating: Unrated
    case in_Movie_Unrated = "in-movies|रेट नहीं की गई|???|"
    /// India- Television rating U
    case in_tv_U = "in-tv|U|100|"
    /// India- Television rating UA
    case in_tv_UA = "in-tv|UA|200|"
    /// India- Television rating A
    case in_tv_A = "in-tv|A|600|"
    /// India- Television rating S
    case in_tv_S = "in-tv|S|600|"
}

