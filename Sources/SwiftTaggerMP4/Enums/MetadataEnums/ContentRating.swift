/*
 ContentRating.swift
 
 
 Created by Nolaine Crusher on 8/30/20.
 */

import Foundation
/// A list of internation ratings as recognized by the iTunes store. These may be optionally appended with a string containing notes about the rating.
public enum ContentRating {
    case none(String)
    /// United States - MPAA Movie rating: Not Rated
    case us_Movie_NR(String)
    /// United States - MPAA Movie rating: General audiences
    case us_Movie_G(String)
    /// United States - MPAA Movie rating: Parental Guidance Suggested
    case us_Movie_PG(String)
    /// United States - MPAA Movie rating: Parental Guidance Suggested for ages under 13
    case us_Movie_PG13(String)
    /// United States - MPAA Movie rating: Restricted for ages 17 and up
    case us_Movie_R(String)
    /// United States - MPAA Movie rating: No admittance under age 17
    case us_Movie_NC(String)
    /// United States - MPAA Movie rating: Unrated
    case us_Movie_Unrated(String)
    /// United States - Television rating: Youth
    case us_tv_Y(String)
    /// United States - Television rating: Youth ages 7 and up
    case us_tv_Y7(String)
    /// United States - Television rating: General audiences
    case us_tv_G(String)
    /// United States - Television rating: Parental Guidance
    case us_tv_PG(String)
    /// United States - Television rating: Parental Guidanced ages 14 and up
    case us_tv_14(String)
    /// United States - Television rating: Mature audiences
    case us_tv_M(String)
    /// United States - Television rating: Unrated
    case us_tv_Unrated(String)
    /// Australia - Movie rating G
    case au_Movie_G(String)
    /// Australia - Movie rating PG
    case au_Movie_PG(String)
    /// Australia - Movie rating M
    case au_Movie_M(String)
    /// Australia - Movie rating M-15
    case au_Movie_MA15(String)
    /// Australia - Movie rating R-18
    case au_Movie_R18(String)
    /// Australia - Movie rating Unrated
    case au_Movie_Unrated(String)
    /// Australia - Television rating P
    case au_tv_P(String)
    /// Australia - Television rating C
    case au_tv_C(String)
    /// Australia - Television rating G
    case au_tv_G(String)
    /// Australia - Television rating PG
    case au_tv_PG(String)
    /// Australia - Television rating M
    case au_tv_M(String)
    /// Australia - Television rating MA15
    case au_tv_MA15(String)
    /// Australia - Television rating AV15
    case au_tv_AV15(String)
    /// Australia - Television rating R 18
    case au_tv_R18(String)
    /// Brazil - Movie rating: L
    case br_Movie_L(String)
    /// Brazil - Movie rating: 12
    case br_Movie_12(String)
    /// Brazil - Movie rating: 14
    case br_Movie_14(String)
    /// Brazil - Movie rating: 16
    case br_Movie_16(String)
    /// Brazil - Movie rating: 18
    case br_Movie_18(String)
    /// Canada - Movie rating: G
    case ca_Movie_G(String)
    /// Canada - Movie rating: PG
    case ca_Movie_PG(String)
    /// Canada - Movie rating: 14A
    case ca_Movie_14A(String)
    /// Canada - Movie rating: 18A
    case ca_Movie_18A(String)
    /// Canada - Movie rating: R
    case ca_Movie_R(String)
    /// Canada - Movie rating: A
    case ca_Movie_A(String)
    /// Canada - Movie rating: Unrated
    case ca_Movie_Unrated(String)
    /// Canada - Movie rating: Not Rated
    case ca_Movie_NR(String)
    /// Canada - Television rating E
    case ca_tv_E(String)
    /// Canada - Television rating C
    case ca_tv_C(String)
    /// Canada - Television rating C8
    case ca_tv_C8(String)
    /// Canada - Television rating G
    case ca_tv_G(String)
    /// Canada - Television rating PG
    case ca_tv_PG(String)
    /// Canada - Television rating 14
    case ca_tv_14(String)
    /// Canada - Television rating 18
    case ca_tv_18(String)
    /// Canada - Television rating 21
    case ca_tv_21(String)
    /// Germany - Movie rating: AB 0
    case de_Movie_AB0(String)
    /// Germany - Movie rating: AB 6
    case de_Movie_AB6(String)
    /// Germany - Movie rating: AB 12
    case de_Movie_AB12(String)
    /// Germany - Movie rating: AB 16
    case de_Movie_AB16(String)
    /// Germany - Movie rating: AB 18
    case de_Movie_AB18(String)
    /// Germany - Television rating AB 0
    case de_tv_AB0(String)
    /// Germany - Television rating AB 6
    case de_tv_AB6(String)
    /// Germany - Television rating AB 12
    case de_tv_AB12(String)
    /// Germany - Television rating AB 16
    case de_tv_AB16(String)
    /// Germany - Television rating AB 18
    case de_tv_AB18(String)
    /// France - Movie rating: TP
    case fr_Movie_TP(String)
    /// France - Movie rating: 10
    case fr_Movie_10(String)
    /// France - Movie rating: 12
    case fr_Movie_12(String)
    /// France - Movie rating: 16
    case fr_Movie_16(String)
    /// France - Movie rating: 18
    case fr_Movie_18(String)
    /// France - Movie rating: Unrated
    case fr_Movie_Unrated(String)
    /// Italy - Movie rating: T
    case it_Movie_T(String)
    /// Italy - Movie rating: VPA
    case it_Movie_VPA(String)
    /// Italy - Movie rating: VM10
    case it_Movie_VM10(String)
    /// Italy - Movie rating: VM12
    case it_Movie_VM12(String)
    /// Italy - Movie rating: VM14
    case it_Movie_VM14(String)
    /// Italy - Movie rating: VM18
    case it_Movie_VM18(String)
    /// Ireland - Movie rating: Not Rated
    case ie_Movie_NR(String)
    /// Ireland - Movie rating: G
    case ie_Movie_G(String)
    /// Ireland - Movie rating: PG
    case ie_Movie_PG(String)
    /// Ireland - Movie rating: 12
    case ie_Movie_12(String)
    /// Ireland - Movie rating: 15
    case ie_Movie_15(String)
    /// Ireland - Movie rating: 16
    case ie_Movie_16(String)
    /// Ireland - Movie rating: 18
    case ie_Movie_18(String)
    /// Ireland - Movie rating: Unrated
    case ie_Movie_Unrated(String)
    /// Ireland - Television rating G
    case ie_tv_G(String)
    /// Ireland - Television rating PG
    case ie_tv_PG(String)
    /// Ireland - Television rating 12
    case ie_tv_12(String)
    /// Ireland - Television rating 15
    case ie_tv_15(String)
    /// Ireland - Television rating 18
    case ie_tv_18(String)
    /// Japan - Movie rating: G
    case jp_Movie_G(String)
    /// Japan - Movie rating: PG12
    case jp_Movie_PG12(String)
    /// Japan - Movie rating: R15
    case jp_Movie_R15(String)
    /// Japan - Movie rating: R18
    case jp_Movie_R18(String)
    /// Japan - Movie rating: Unrated
    case jp_Movie_Unrated(String)
    /// Mexico - Movie rating: AA
    case mx_Movie_AA(String)
    /// Mexico - Movie rating: A
    case mx_Movie_A(String)
    /// Mexico - Movie rating: B
    case mx_Movie_B(String)
    /// Mexico - Movie rating: B15
    case mx_Movie_B15(String)
    /// Mexico - Movie rating: C
    case mx_Movie_C(String)
    /// Netherlands - Movie rating: AL
    case nl_Movie_AL(String)
    /// Netherlands - Movie rating: 6
    case nl_Movie_6(String)
    /// Netherlands - Movie rating: 9
    case nl_Movie_9(String)
    /// Netherlands - Movie rating: 12
    case nl_Movie_12(String)
    /// Netherlands - Movie rating: 16
    case nl_Movie_16(String)
    /// Netherlands - Movie rating: 18
    case nl_Movie_18(String)
    /// New Zealand - Movie rating: G
    case nz_Movie_G(String)
    /// New Zealand - Movie rating: PG
    case nz_Movie_PG(String)
    /// New Zealand - Movie rating: M
    case nz_Movie_M(String)
    /// New Zealand - Movie rating: R13
    case nz_Movie_R13(String)
    /// New Zealand - Movie rating: RP13
    case nz_Movie_RP13(String)
    /// New Zealand - Movie rating: R15
    case nz_Movie_R15(String)
    /// New Zealand - Movie rating: R16
    case nz_Movie_R16(String)
    /// New Zealand - Movie rating: RP16
    case nz_Movie_RP16(String)
    /// New Zealand - Movie rating: R18
    case nz_Movie_R18(String)
    /// New Zealand - Movie rating: R
    case nz_Movie_R(String)
    /// New Zealand - Movie rating: U
    case nz_Movie_U(String)
    /// New Zealand - Movie rating: Not Rated
    case nz_Movie_NR(String)
    /// Sweden - Movie rating: A
    case se_Movie_A(String)
    /// Sweden - Movie rating: 7
    case se_Movie_7(String)
    /// Sweden - Movie rating: 11
    case se_Movie_11(String)
    /// Sweden - Movie rating: 15
    case se_Movie_15(String)
    /// Sweden - Movie rating: Unrated
    case se_Movie_Unrated(String)
    /// China - Movie rating: 0
    case ch_Movie_0(String)
    /// China - Movie rating: 6
    case ch_Movie_6(String)
    /// China - Movie rating: 7
    case ch_Movie_7(String)
    /// China - Movie rating: 10
    case ch_Movie_10(String)
    /// China - Movie rating: 12
    case ch_Movie_12(String)
    /// China - Movie rating: 14
    case ch_Movie_14(String)
    /// China - Movie rating: 16
    case ch_Movie_16(String)
    /// China - Movie rating: 18
    case ch_Movie_18(String)
    /// China - Movie rating: Unrated
    case ch_Movie_Unrated(String)
    /// United Kingdom - Movie rating: NotRated
    case uk_Movie_NR(String)
    /// United Kingdom - Movie rating: U
    case uk_Movie_U(String)
    /// United Kingdom - Movie rating: Uc
    case uk_Movie_Uc(String)
    /// United Kingdom - Movie rating: PG
    case uk_Movie_PG(String)
    /// United Kingdom - Movie rating: 12
    case uk_Movie_12(String)
    /// United Kingdom - Movie rating: 12A
    case uk_Movie_12A(String)
    /// United Kingdom - Movie rating: 15
    case uk_Movie_15(String)
    /// United Kingdom - Movie rating: 18
    case uk_Movie_18(String)
    /// United Kingdom - Television rating Caution
    case uk_tv_Caution(String)
    /// United Kingdom - Movie rating: R18
    case uk_Movie_R18(String)
    /// United Kingdom - Movie rating: E
    case uk_Movie_E(String)
    /// United Kingdom - Movie rating: Unrated
    case uk_Movie_Unrated(String)
    /// Russia - Movie rating: 0
    case ru_Movie_0(String)
    /// Russia - Movie rating: 6
    case ru_Movie_6(String)
    /// Russia - Movie rating: 12
    case ru_Movie_12(String)
    /// Russia - Movie rating: 16
    case ru_Movie_16(String)
    /// Russia - Movie rating: 18
    case ru_Movie_18(String)
    /// Russia - Movie rating: Unrated
    case ru_Movie_Unrated(String)
    /// Philippines - Movie rating: G
    case ph_Movie_G(String)
    /// Philippines - Movie rating: PG
    case ph_Movie_PG(String)
    /// Philippines - Movie rating: R13
    case ph_Movie_R13(String)
    /// Philippines - Movie rating: R16
    case ph_Movie_R16(String)
    /// Philippines - Movie rating: R18
    case ph_Movie_R18(String)
    /// Philippines - Movie rating: Unrated
    case ph_Movie_Unrated(String)
    /// Hong Kong - Movie rating: 100
    case hk_Movie_100(String)
    /// Hong Kong - Movie rating: 400
    case hk_Movie_400(String)
    /// Hong Kong - Movie rating: Unrated
    case hk_Movie_Unrated(String)
    /// Czech Republic- Movie rating: U
    case cz_Movie_U(String)
    /// Czech Republic- Movie rating: 12
    case cz_Movie_12(String)
    /// Czech Republic- Movie rating: 15
    case cz_Movie_15(String)
    /// Czech Republic- Movie rating: 18
    case cz_Movie_18(String)
    /// Czech Republic- Movie rating: Unrated
    case cz_Movie_Unrated(String)
    /// India - Movie rating: U
    case in_Movie_U(String)
    /// India - Movie rating: UA
    case in_Movie_UA(String)
    /// India - Movie rating: A
    case in_Movie_A(String)
    /// India - Movie rating: S
    case in_Movie_S(String)
    /// India - Movie rating: Unrated
    case in_Movie_Unrated(String)
    /// India- Television rating U
    case in_tv_U(String)
    /// India- Television rating UA
    case in_tv_UA(String)
    /// India- Television rating A
    case in_tv_A(String)
    /// India- Television rating S
    case in_tv_S(String)
    
    var rawValue: String {
        switch self {
            case .none(let note): return note
            case .us_Movie_NR(let note): return "mpaa|NR|000|" + note
            case .us_Movie_G(let note): return "mpaa|G|100|" + note
            case .us_Movie_PG(let note): return "mpaa|PG|200|" + note
            case .us_Movie_PG13(let note): return "mpaa|PG-13|300|" + note
            case .us_Movie_R(let note): return "mpaa|R|400|" + note
            case .us_Movie_NC(let note): return "mpaa|NC-17|500|" + note
            case .us_Movie_Unrated(let note): return "mpaa|Unrated|???|" + note
            case .us_tv_Y(let note): return "us-tv|TV-Y|100|" + note
            case .us_tv_Y7(let note): return "us-tv|TV-Y7|200|" + note
            case .us_tv_G(let note): return "us-tv|TV-G|300|" + note
            case .us_tv_PG(let note): return "us-tv|TV-PG|400|" + note
            case .us_tv_14(let note): return "us-tv|TV-14|500|" + note
            case .us_tv_M(let note): return "us-tv|M|600|" + note
            case .us_tv_Unrated(let note): return "us-tv|Unrated|???|" + note
            case .au_Movie_G(let note): return "au-movie|G|100|" + note
            case .au_Movie_PG(let note): return "au-movie|PG|200|" + note
            case .au_Movie_M(let note): return "au-movie|M|350|" + note
            case .au_Movie_MA15(let note): return "au-movie|MA15+|375|" + note
            case .au_Movie_R18(let note): return "au-movie|R18+|400|" + note
            case .au_Movie_Unrated(let note): return "au-movie|Not Rated|???|" + note
            case .au_tv_P(let note): return "au-tv|P|100|" + note
            case .au_tv_C(let note): return "au-tv|C|200|" + note
            case .au_tv_G(let note): return "au-tv|G|300|" + note
            case .au_tv_PG(let note): return "au-tv|PG|400|" + note
            case .au_tv_M(let note): return "au-tv|M|500|" + note
            case .au_tv_MA15(let note): return "au-tv|MA15+|550|" + note
            case .au_tv_AV15(let note): return "au-tv|AV15+|575|" + note
            case .au_tv_R18(let note): return "au-tv|R18+|600|" + note
            case .br_Movie_L(let note): return "br-movie|L|000|" + note
            case .br_Movie_12(let note): return "br-movie|12|100|" + note
            case .br_Movie_14(let note): return "br-movie|14|300|" + note
            case .br_Movie_16(let note): return "br-movie|16|350|" + note
            case .br_Movie_18(let note): return "br-movie|18|400|" + note
            case .ca_Movie_G(let note): return "ca-movie|G|100|" + note
            case .ca_Movie_PG(let note): return "ca-movie|PG|200|" + note
            case .ca_Movie_14A(let note): return "ca-movie|14A|300|" + note
            case .ca_Movie_18A(let note): return "ca-movie|18A|350|" + note
            case .ca_Movie_R(let note): return "ca-movie|R|400|" + note
            case .ca_Movie_A(let note): return "ca-movie|A|500|" + note
            case .ca_Movie_Unrated(let note): return "ca-movie|Unrated|???|" + note
            case .ca_Movie_NR(let note): return "ca-movie|Not Rated|???|" + note
            case .ca_tv_E(let note): return "ca-tv|E|000|" + note
            case .ca_tv_C(let note): return "ca-tv|C|050|" + note
            case .ca_tv_C8(let note): return "ca-tv|C8|075|" + note
            case .ca_tv_G(let note): return "ca-tv|G|100|" + note
            case .ca_tv_PG(let note): return "ca-tv|PG|200|" + note
            case .ca_tv_14(let note): return "ca-tv|14+|300|" + note
            case .ca_tv_18(let note): return "ca-tv|18+|350|" + note
            case .ca_tv_21(let note): return "ca-tv|21+|500|" + note
            case .de_Movie_AB0(let note): return "de-movie|Ab 0 Jahren|075|" + note
            case .de_Movie_AB6(let note): return "de-movie|Ab 6 Jahren|100|" + note
            case .de_Movie_AB12(let note): return "de-movie|Ab 12 Jahren|200|" + note
            case .de_Movie_AB16(let note): return "de-movie|Ab 16 Jahren|500|" + note
            case .de_Movie_AB18(let note): return "de-movie|Ab 18 Jahren|600|" + note
            case .de_tv_AB0(let note): return "de-tv|Ab 0 Jahren|075|" + note
            case .de_tv_AB6(let note): return "de-tv|Ab 6 Jahren|100|" + note
            case .de_tv_AB12(let note): return "de-tv|Ab 12 Jahren|200|" + note
            case .de_tv_AB16(let note): return "de-tv|Ab 16 Jahren|500|" + note
            case .de_tv_AB18(let note): return "de-tv|Ab 18 Jahren|600|" + note
            case .fr_Movie_TP(let note): return "fr-movie|Tout public|000|" + note
            case .fr_Movie_10(let note): return "fr-movie|-10|100|" + note
            case .fr_Movie_12(let note): return "fr-movie|-12|300|" + note
            case .fr_Movie_16(let note): return "fr-movie|-16|375|" + note
            case .fr_Movie_18(let note): return "fr-movie|-18|400|" + note
            case .fr_Movie_Unrated(let note): return "fr-movie|Unrated|???|" + note
            case .it_Movie_T(let note): return "it-movie|T|100|" + note
            case .it_Movie_VPA(let note): return "it-movie|VPA|125|" + note
            case .it_Movie_VM10(let note): return "it-movie|VM10|150|" + note
            case .it_Movie_VM12(let note): return "it-movie|VM12|200|" + note
            case .it_Movie_VM14(let note): return "it-movie|VM14|325|" + note
            case .it_Movie_VM18(let note): return "it-movie|VM18|400|" + note
            case .ie_Movie_NR(let note): return "ie-movie|Not Rated|000|" + note
            case .ie_Movie_G(let note): return "ie-movie|G|100|" + note
            case .ie_Movie_PG(let note): return "ie-movie|PG|200|" + note
            case .ie_Movie_12(let note): return "ie-movie|12|300|" + note
            case .ie_Movie_15(let note): return "ie-movie|15|350|" + note
            case .ie_Movie_16(let note): return "ie-movie|16|375|" + note
            case .ie_Movie_18(let note): return "ie-movie|18|400|" + note
            case .ie_Movie_Unrated(let note): return "ie-movie|Unrated|???|" + note
            case .ie_tv_G(let note): return "ie-tv|G|100|" + note
            case .ie_tv_PG(let note): return "ie-tv|PG|350|" + note
            case .ie_tv_12(let note): return "ie-tv|12|400|" + note
            case .ie_tv_15(let note): return "ie-tv|15|500|" + note
            case .ie_tv_18(let note): return "ie-tv|18|600|" + note
            case .jp_Movie_G(let note): return "jp-movie|G|100|" + note
            case .jp_Movie_PG12(let note): return "jp-movie|PG12|200|" + note
            case .jp_Movie_R15(let note): return "jp-movie|R15+|300|" + note
            case .jp_Movie_R18(let note): return "jp-movie|R18+|400|" + note
            case .jp_Movie_Unrated(let note): return "jp-movie|Unrated|???|" + note
            case .mx_Movie_AA(let note): return "mx-movie|AA|000|" + note
            case .mx_Movie_A(let note): return "mx-movie|A|100|" + note
            case .mx_Movie_B(let note): return "mx-movie|B|300|" + note
            case .mx_Movie_B15(let note): return "mx-movie|B-15|500|" + note
            case .mx_Movie_C(let note): return "mx-movie|C|600|" + note
            case .nl_Movie_AL(let note): return "nl-movie|AL/G|000|" + note
            case .nl_Movie_6(let note): return "nl-movie|6|100|" + note
            case .nl_Movie_9(let note): return "nl-movie|9|200|" + note
            case .nl_Movie_12(let note): return "nl-movie|12|300|" + note
            case .nl_Movie_16(let note): return "nl-movie|16|500|" + note
            case .nl_Movie_18(let note): return "nl-movie|18|600|" + note
            case .nz_Movie_G(let note): return "nz-movie|G|100|" + note
            case .nz_Movie_PG(let note): return "nz-movie|PG|200|" + note
            case .nz_Movie_M(let note): return "nz-movie|M|300|" + note
            case .nz_Movie_R13(let note): return "nz-movie|R13|325|" + note
            case .nz_Movie_RP13(let note): return "nz-movie|RP13|325|" + note
            case .nz_Movie_R15(let note): return "nz-movie|R15|350|" + note
            case .nz_Movie_R16(let note): return "nz-movie|R16|375|" + note
            case .nz_Movie_RP16(let note): return "nz-movie|RP16|375|" + note
            case .nz_Movie_R18(let note): return "nz-movie|R18|400|" + note
            case .nz_Movie_R(let note): return "nz-movie|R|500|" + note
            case .nz_Movie_U(let note): return "nz-movie|U|900|" + note
            case .nz_Movie_NR(let note): return "nz-movie|Not Rated|???|" + note
            case .se_Movie_A(let note): return "se-movie|A|000|" + note
            case .se_Movie_7(let note): return "se-movie|7|125|" + note
            case .se_Movie_11(let note): return "se-movie|11|225|" + note
            case .se_Movie_15(let note): return "se-movie|15|400|" + note
            case .se_Movie_Unrated(let note): return "se-movie|Unrated|???|" + note
            case .ch_Movie_0(let note): return "ch-movie|0|050|" + note
            case .ch_Movie_6(let note): return "ch-movie|6|075|" + note
            case .ch_Movie_7(let note): return "ch-movie|7|125|" + note
            case .ch_Movie_10(let note): return "ch-movie|10|150|" + note
            case .ch_Movie_12(let note): return "ch-movie|12|200|" + note
            case .ch_Movie_14(let note): return "ch-movie|14|325|" + note
            case .ch_Movie_16(let note): return "ch-movie|16|375|" + note
            case .ch_Movie_18(let note): return "ch-movie|18|400|" + note
            case .ch_Movie_Unrated(let note): return "ch-movie|Unrated|???|" + note
            case .uk_Movie_NR(let note): return "uk-movie|NR|000|" + note
            case .uk_Movie_U(let note): return "uk-movie|U|100|" + note
            case .uk_Movie_Uc(let note): return "uk-movie|Uc|150|" + note
            case .uk_Movie_PG(let note): return "uk-movie|PG|200|" + note
            case .uk_Movie_12(let note): return "uk-movie|12|300|" + note
            case .uk_Movie_12A(let note): return "uk-movie|12A|325|" + note
            case .uk_Movie_15(let note): return "uk-movie|15|350|" + note
            case .uk_Movie_18(let note): return "uk-movie|18|400|" + note
            case .uk_tv_Caution(let note): return "uk-tv|Caution|500|" + note
            case .uk_Movie_R18(let note): return "uk-movie|R18|600|" + note
            case .uk_Movie_E(let note): return "uk-movie|E|0|" + note
            case .uk_Movie_Unrated(let note): return "uk-movie|Unrated|???|" + note
            case .ru_Movie_0(let note): return "ru-movie|0+|000|" + note
            case .ru_Movie_6(let note): return "ru-movie|6+|150|" + note
            case .ru_Movie_12(let note): return "ru-movie|12+|200|" + note
            case .ru_Movie_16(let note): return "ru-movie|16+|375|" + note
            case .ru_Movie_18(let note): return "ru-movie|18+|400|" + note
            case .ru_Movie_Unrated(let note): return "ru-movie|Unrated|???|" + note
            case .ph_Movie_G(let note): return "ph-movie|G|100|" + note
            case .ph_Movie_PG(let note): return "ph-movie|PG|300|" + note
            case .ph_Movie_R13(let note): return "ph-movie|R-13|325|" + note
            case .ph_Movie_R16(let note): return "ph-movie|R-16|375|" + note
            case .ph_Movie_R18(let note): return "ph-movie|R-18|400|" + note
            case .ph_Movie_Unrated(let note): return "ph-movie|Unrated|???|" + note
            case .hk_Movie_100(let note): return "hk-movie|第i類|100|" + note
            case .hk_Movie_400(let note): return "hk-movie|第ii類|400|" + note
            case .hk_Movie_Unrated(let note): return "hk-movie|未作評級|???|" + note
            case .cz_Movie_U(let note): return "cz-movies|U|100|" + note
            case .cz_Movie_12(let note): return "cz-movies|12+|200|" + note
            case .cz_Movie_15(let note): return "cz-movies|15+|350|" + note
            case .cz_Movie_18(let note): return "cz-movies|18+|400|" + note
            case .cz_Movie_Unrated(let note): return "cz-movies|neklasifikováno|???|" + note
            case .in_Movie_U(let note): return "in-movies|U|000|" + note
            case .in_Movie_UA(let note): return "in-movies|UA|200|" + note
            case .in_Movie_A(let note): return "in-movies|A|500|" + note
            case .in_Movie_S(let note): return "in-movies|S|600|" + note
            case .in_Movie_Unrated(let note): return "in-movies|रेट नहीं की गई|???|" + note
            case .in_tv_U(let note): return "in-tv|U|100|" + note
            case .in_tv_UA(let note): return "in-tv|UA|200|" + note
            case .in_tv_A(let note): return "in-tv|A|600|" + note
            case .in_tv_S(let note): return "in-tv|S|600|" + note
        }
    }
    
    init(rawValue: String) {
        let components = rawValue.components(separatedBy: "|")
        if components.count != 3 || components.count != 4 {
            self = .none(rawValue)
        }
        
        let last: String
        if components.count == 4 {
            last = components.last!
        } else {
            last = ""
        }
        
        switch rawValue {
            case "mpaa|NR|000|" + last: self = .us_Movie_NR(last)
            case "mpaa|G|100|" + last: self = .us_Movie_G(last)
            case "mpaa|PG|200|" + last: self = .us_Movie_PG(last)
            case "mpaa|PG-13|300|" + last: self = .us_Movie_PG13(last)
            case "mpaa|R|400|" + last: self = .us_Movie_R(last)
            case "mpaa|NC-17|500|" + last: self = .us_Movie_NC(last)
            case "mpaa|Unrated|???|" + last: self = .us_Movie_Unrated(last)
            case "us-tv|TV-Y|100|" + last: self = .us_tv_Y(last)
            case "us-tv|TV-Y7|200|" + last: self = .us_tv_Y7(last)
            case "us-tv|TV-G|300|" + last: self = .us_tv_G(last)
            case "us-tv|TV-PG|400|" + last: self = .us_tv_PG(last)
            case "us-tv|TV-14|500|" + last: self = .us_tv_14(last)
            case "us-tv|M|600|" + last: self = .us_tv_M(last)
            case "us-tv|Unrated|???|" + last: self = .us_tv_Unrated(last)
            case "au-movie|G|100|" + last: self = .au_Movie_G(last)
            case "au-movie|PG|200|" + last: self = .au_Movie_PG(last)
            case "au-movie|M|350|" + last: self = .au_Movie_M(last)
            case "au-movie|MA15+|375|" + last: self = .au_Movie_MA15(last)
            case "au-movie|R18+|400|" + last: self = .au_Movie_R18(last)
            case "au-movie|Not Rated|???|" + last: self = .au_Movie_Unrated(last)
            case "au-tv|P|100|" + last: self = .au_tv_P(last)
            case "au-tv|C|200|" + last: self = .au_tv_C(last)
            case "au-tv|G|300|" + last: self = .au_tv_G(last)
            case "au-tv|PG|400|" + last: self = .au_tv_PG(last)
            case "au-tv|M|500|" + last: self = .au_tv_M(last)
            case "au-tv|MA15+|550|" + last: self = .au_tv_MA15(last)
            case "au-tv|AV15+|575|" + last: self = .au_tv_AV15(last)
            case "au-tv|R18+|600|" + last: self = .au_tv_R18(last)
            case "br-movie|L|000|" + last: self = .br_Movie_L(last)
            case "br-movie|12|100|" + last: self = .br_Movie_12(last)
            case "br-movie|14|300|" + last: self = .br_Movie_14(last)
            case "br-movie|16|350|" + last: self = .br_Movie_16(last)
            case "br-movie|18|400|" + last: self = .br_Movie_18(last)
            case "ca-movie|G|100|" + last: self = .ca_Movie_G(last)
            case "ca-movie|PG|200|" + last: self = .ca_Movie_PG(last)
            case "ca-movie|14A|300|" + last: self = .ca_Movie_14A(last)
            case "ca-movie|18A|350|" + last: self = .ca_Movie_18A(last)
            case "ca-movie|R|400|" + last: self = .ca_Movie_R(last)
            case "ca-movie|A|500|" + last: self = .ca_Movie_A(last)
            case "ca-movie|Unrated|???|" + last: self = .ca_Movie_Unrated(last)
            case "ca-movie|Not Rated|???|" + last: self = .ca_Movie_NR(last)
            case "ca-tv|E|000|" + last: self = .ca_tv_E(last)
            case "ca-tv|C|050|" + last: self = .ca_tv_C(last)
            case "ca-tv|C8|075|" + last: self = .ca_tv_C8(last)
            case "ca-tv|G|100|" + last: self = .ca_tv_G(last)
            case "ca-tv|PG|200|" + last: self = .ca_tv_PG(last)
            case "ca-tv|14+|300|" + last: self = .ca_tv_14(last)
            case "ca-tv|18+|350|" + last: self = .ca_tv_18(last)
            case "ca-tv|21+|500|" + last: self = .ca_tv_21(last)
            case "de-movie|Ab 0 Jahren|075|" + last: self = .de_Movie_AB0(last)
            case "de-movie|Ab 6 Jahren|100|" + last: self = .de_Movie_AB6(last)
            case "de-movie|Ab 12 Jahren|200|" + last: self = .de_Movie_AB12(last)
            case "de-movie|Ab 16 Jahren|500|" + last: self = .de_Movie_AB16(last)
            case "de-movie|Ab 18 Jahren|600|" + last: self = .de_Movie_AB18(last)
            case "de-tv|Ab 0 Jahren|075|" + last: self = .de_tv_AB0(last)
            case "de-tv|Ab 6 Jahren|100|" + last: self = .de_tv_AB6(last)
            case "de-tv|Ab 12 Jahren|200|" + last: self = .de_tv_AB12(last)
            case "de-tv|Ab 16 Jahren|500|" + last: self = .de_tv_AB16(last)
            case "de-tv|Ab 18 Jahren|600|" + last: self = .de_tv_AB18(last)
            case "fr-movie|Tout public|000|" + last: self = .fr_Movie_TP(last)
            case "fr-movie|-10|100|" + last: self = .fr_Movie_10(last)
            case "fr-movie|-12|300|" + last: self = .fr_Movie_12(last)
            case "fr-movie|-16|375|" + last: self = .fr_Movie_16(last)
            case "fr-movie|-18|400|" + last: self = .fr_Movie_18(last)
            case "fr-movie|Unrated|???|" + last: self = .fr_Movie_Unrated(last)
            case "it-movie|T|100|" + last: self = .it_Movie_T(last)
            case "it-movie|VPA|125|" + last: self = .it_Movie_VPA(last)
            case "it-movie|VM10|150|" + last: self = .it_Movie_VM10(last)
            case "it-movie|VM12|200|" + last: self = .it_Movie_VM12(last)
            case "it-movie|VM14|325|" + last: self = .it_Movie_VM14(last)
            case "it-movie|VM18|400|" + last: self = .it_Movie_VM18(last)
            case "ie-movie|Not Rated|000|" + last: self = .ie_Movie_NR(last)
            case "ie-movie|G|100|" + last: self = .ie_Movie_G(last)
            case "ie-movie|PG|200|" + last: self = .ie_Movie_PG(last)
            case "ie-movie|12|300|" + last: self = .ie_Movie_12(last)
            case "ie-movie|15|350|" + last: self = .ie_Movie_15(last)
            case "ie-movie|16|375|" + last: self = .ie_Movie_16(last)
            case "ie-movie|18|400|" + last: self = .ie_Movie_18(last)
            case "ie-movie|Unrated|???|" + last: self = .ie_Movie_Unrated(last)
            case "ie-tv|G|100|" + last: self = .ie_tv_G(last)
            case "ie-tv|PG|350|" + last: self = .ie_tv_PG(last)
            case "ie-tv|12|400|" + last: self = .ie_tv_12(last)
            case "ie-tv|15|500|" + last: self = .ie_tv_15(last)
            case "ie-tv|18|600|" + last: self = .ie_tv_18(last)
            case "jp-movie|G|100|" + last: self = .jp_Movie_G(last)
            case "jp-movie|PG12|200|" + last: self = .jp_Movie_PG12(last)
            case "jp-movie|R15+|300|" + last: self = .jp_Movie_R15(last)
            case "jp-movie|R18+|400|" + last: self = .jp_Movie_R18(last)
            case "jp-movie|Unrated|???|" + last: self = .jp_Movie_Unrated(last)
            case "mx-movie|AA|000|" + last: self = .mx_Movie_AA(last)
            case "mx-movie|A|100|" + last: self = .mx_Movie_A(last)
            case "mx-movie|B|300|" + last: self = .mx_Movie_B(last)
            case "mx-movie|B-15|500|" + last: self = .mx_Movie_B15(last)
            case "mx-movie|C|600|" + last: self = .mx_Movie_C(last)
            case "nl-movie|AL/G|000|" + last: self = .nl_Movie_AL(last)
            case "nl-movie|6|100|" + last: self = .nl_Movie_6(last)
            case "nl-movie|9|200|" + last: self = .nl_Movie_9(last)
            case "nl-movie|12|300|" + last: self = .nl_Movie_12(last)
            case "nl-movie|16|500|" + last: self = .nl_Movie_16(last)
            case "nl-movie|18|600|" + last: self = .nl_Movie_18(last)
            case "nz-movie|G|100|" + last: self = .nz_Movie_G(last)
            case "nz-movie|PG|200|" + last: self = .nz_Movie_PG(last)
            case "nz-movie|M|300|" + last: self = .nz_Movie_M(last)
            case "nz-movie|R13|325|" + last: self = .nz_Movie_R13(last)
            case "nz-movie|RP13|325|" + last: self = .nz_Movie_RP13(last)
            case "nz-movie|R15|350|" + last: self = .nz_Movie_R15(last)
            case "nz-movie|R16|375|" + last: self = .nz_Movie_R16(last)
            case "nz-movie|RP16|375|" + last: self = .nz_Movie_RP16(last)
            case "nz-movie|R18|400|" + last: self = .nz_Movie_R18(last)
            case "nz-movie|R|500|" + last: self = .nz_Movie_R(last)
            case "nz-movie|U|900|" + last: self = .nz_Movie_U(last)
            case "nz-movie|Not Rated|???|" + last: self = .nz_Movie_NR(last)
            case "se-movie|A|000|" + last: self = .se_Movie_A(last)
            case "se-movie|7|125|" + last: self = .se_Movie_7(last)
            case "se-movie|11|225|" + last: self = .se_Movie_11(last)
            case "se-movie|15|400|" + last: self = .se_Movie_15(last)
            case "se-movie|Unrated|???|" + last: self = .se_Movie_Unrated(last)
            case "ch-movie|0|050|" + last: self = .ch_Movie_0(last)
            case "ch-movie|6|075|" + last: self = .ch_Movie_6(last)
            case "ch-movie|7|125|" + last: self = .ch_Movie_7(last)
            case "ch-movie|10|150|" + last: self = .ch_Movie_10(last)
            case "ch-movie|12|200|" + last: self = .ch_Movie_12(last)
            case "ch-movie|14|325|" + last: self = .ch_Movie_14(last)
            case "ch-movie|16|375|" + last: self = .ch_Movie_16(last)
            case "ch-movie|18|400|" + last: self = .ch_Movie_18(last)
            case "ch-movie|Unrated|???|" + last: self = .ch_Movie_Unrated(last)
            case "uk-movie|NR|000|" + last: self = .uk_Movie_NR(last)
            case "uk-movie|U|100|" + last: self = .uk_Movie_U(last)
            case "uk-movie|Uc|150|" + last: self = .uk_Movie_Uc(last)
            case "uk-movie|PG|200|" + last: self = .uk_Movie_PG(last)
            case "uk-movie|12|300|" + last: self = .uk_Movie_12(last)
            case "uk-movie|12A|325|" + last: self = .uk_Movie_12A(last)
            case "uk-movie|15|350|" + last: self = .uk_Movie_15(last)
            case "uk-movie|18|400|" + last: self = .uk_Movie_18(last)
            case "uk-tv|Caution|500|" + last: self = .uk_tv_Caution(last)
            case "uk-movie|R18|600|" + last: self = .uk_Movie_R18(last)
            case "uk-movie|E|0|" + last: self = .uk_Movie_E(last)
            case "uk-movie|Unrated|???|" + last: self = .uk_Movie_Unrated(last)
            case "ru-movie|0+|000|" + last: self = .ru_Movie_0(last)
            case "ru-movie|6+|150|" + last: self = .ru_Movie_6(last)
            case "ru-movie|12+|200|" + last: self = .ru_Movie_12(last)
            case "ru-movie|16+|375|" + last: self = .ru_Movie_16(last)
            case "ru-movie|18+|400|" + last: self = .ru_Movie_18(last)
            case "ru-movie|Unrated|???|" + last: self = .ru_Movie_Unrated(last)
            case "ph-movie|G|100|" + last: self = .ph_Movie_G(last)
            case "ph-movie|PG|300|" + last: self = .ph_Movie_PG(last)
            case "ph-movie|R-13|325|" + last: self = .ph_Movie_R13(last)
            case "ph-movie|R-16|375|" + last: self = .ph_Movie_R16(last)
            case "ph-movie|R-18|400|" + last: self = .ph_Movie_R18(last)
            case "ph-movie|Unrated|???|" + last: self = .ph_Movie_Unrated(last)
            case "hk-movie|第i類|100|" + last: self = .hk_Movie_100(last)
            case "hk-movie|第ii類|400|" + last: self = .hk_Movie_400(last)
            case "hk-movie|未作評級|???|" + last: self = .hk_Movie_Unrated(last)
            case "cz-movies|U|100|" + last: self = .cz_Movie_U(last)
            case "cz-movies|12+|200|" + last: self = .cz_Movie_12(last)
            case "cz-movies|15+|350|" + last: self = .cz_Movie_15(last)
            case "cz-movies|18+|400|" + last: self = .cz_Movie_18(last)
            case "cz-movies|neklasifikováno|???|" + last: self = .cz_Movie_Unrated(last)
            case "in-movies|U|000|" + last: self = .in_Movie_U(last)
            case "in-movies|UA|200|" + last: self = .in_Movie_UA(last)
            case "in-movies|A|500|" + last: self = .in_Movie_A(last)
            case "in-movies|S|600|" + last: self = .in_Movie_S(last)
            case "in-movies|रेट नहीं की गई|???|" + last: self = .in_Movie_Unrated(last)
            case "in-tv|U|100|" + last: self = .in_tv_U(last)
            case "in-tv|UA|200|" + last: self = .in_tv_UA(last)
            case "in-tv|A|600|" + last: self = .in_tv_A(last)
            case "in-tv|S|600|" + last: self = .in_tv_S(last)
            default: self = .none(last)
        }
    }
}
