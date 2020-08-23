/*

 MusicianPerformerCredits.swift
 SwiftTaggerMP4

 Copyright ©2020 Nolaine Crusher. All rights reserved.

 */

import Foundation

public enum MusicianAndPerformerCredits: String, CaseIterable {

    static func performanceFromAtomID(_ id: String) -> MusicianAndPerformerCredits? {
        switch id {
            case "\u{00A9}ART": return .featuredArtist
            case "\u{00A9}nrt": return .narrator
            case "\u{00A9}prf": return .performer
            case "\u{00A9}sol": return .soloist
            default: return nil
        }
    }

    case none = ""
    /// Abiti
    case abiti = "Abiti"
    /// Abomey
    case abomey = "Abomey"
    /// Accompanied By
    case accompaniedBy = "Accompanied By"
    /// Accompaniment
    case accompaniment = "Accompaniment"
    /// Rhythm Accompaniment
    case accompanimentRhythm = "Rhythm Accompaniment"
    /// Chromatic Accordeon
    case accordeonChromatic = "Chromatic Accordeon"
    /// Cajun Accordian
    case accordianCajun = "Cajun Accordian"
    /// French Accordian
    case accordianFrench = "French Accordian"
    /// MIDI Accordian
    case accordianMIDI = "MIDI Accordian"
    /// Synthesizer Accordian
    case accordianSynthesizer = "Synthesizer Accordian"
    /// Toy Accordian
    case accordianToy = "Toy Accordian"
    /// Accordina
    case accordina = "Accordina"
    /// Accordion
    case accordion = "Accordion"
    /// Bass Accordion
    case accordionBass = "Bass Accordion"
    /// Button Accordion
    case accordionButton = "Button Accordion"
    /// Accordion (Chromatic)
    case accordionChromatic = "Accordion (Chromatic)"
    /// Chromatic Button Accordion
    case accordionChromaticButton = "Chromatic Button Accordion"
    /// Accordion (Diatonic)
    case accordionDiatonic = "Accordion (Diatonic)"
    /// Diatonic Accordion / Melodeon
    case accordionDiatonicMelodeon = "Diatonic Accordion / Melodeon"
    /// Egyptian Accordion
    case accordionEgyptian = "Egyptian Accordion"
    /// Electronic Accordion
    case accordionElectronic = "Electronic Accordion"
    /// Quarter Tone Accordion
    case accordionQuarterTone = "Quarter Tone Accordion"
    /// Triple Row Accordion
    case accordionTripleRow = "Triple Row Accordion"
    /// Acoustic Fretless Guitar
    case acousticFretlessGuitar = "Acoustic Fretless Guitar"
    /// Actor
    case actor = "Actor"
    /// Actress
    case actress = "Actress"
    /// Additional
    case additional = "Additional"
    /// Additional Music
    case additionalMusic = "Additional Music"
    /// Adunqu
    case adunqu = "Adunqu"
    /// Afoxé
    case afoxe = "Afoxé"
    /// Afuche
    case afuche = "Afuche"
    /// Afuche / Cabasa
    case afucheCabasa = "Afuche / Cabasa"
    /// Agogô
    case agogo = "Agogô"
    /// Agogo Bell
    case agogoBell = "Agogo Bell"
    /// Agong-Gon
    case agongGon = "Agong-Gon"
    /// Airdrums
    case airdrums = "Airdrums"
    /// Ajaeng
    case ajaeng = "Ajaeng"
    /// Akadinda
    case akadinda = "Akadinda"
    /// Akete
    case akete = "Akete"
    /// AKS
    case aks = "AKS"
    /// Alaap
    case alaap = "Alaap"
    /// Alarm Clock
    case alarmClock = "Alarm Clock"
    /// Alaude
    case alaude = "Alaude"
    /// Alfaia
    case alfaia = "Alfaia"
    /// Algaita
    case algaita = "Algaita"
    /// Algarabia
    case algarabia = "Algarabia"
    /// Alghoza
    case alghoza = "Alghoza"
    /// Algoza
    case algoza = "Algoza"
    /// Algozey
    case algozey = "Algozey"
    /// Allemande
    case allemande = "Allemande"
    /// Almglocken
    case almglocken = "Almglocken"
    /// Alphorn
    case alphorn = "Alphorn"
    /// Synthesizer Alteratio
    case alteratioSynthesizer = "Synthesizer Alteratio"
    /// Alti
    case alti = "Alti"
    /// Alto
    case alto = "Alto"
    /// Alto Chalumeau
    case altoChalumeau = "Alto Chalumeau"
    /// Aluminafon
    case aluminafon = "Aluminafon"
    /// Amadinda
    case amadinda = "Amadinda"
    /// Aman Khuur
    case amanKhuur = "Aman Khuur"
    /// Ambience
    case ambience = "Ambience"
    /// Ambio
    case ambio = "Ambio"
    /// Amhranai
    case amhranai = "Amhranai"
    /// Ampeg Baby Bass
    case ampegBabyBass = "Ampeg Baby Bass"
    /// Amponga
    case amponga = "Amponga"
    /// Amyrga
    case amyrga = "Amyrga"
    /// Analog Synthesizer
    case analogSynthesizer = "Analog Synthesizer"
    /// Angklung
    case angklung = "Angklung"
    /// Bamboo Angklung
    case angklungBamboo = "Bamboo Angklung"
    /// Anglais
    case anglais = "Anglais"
    /// Animal Sounds
    case animalSounds = "Animal Sounds"
    /// Ankle Rattlers
    case ankleRattlers = "Ankle Rattlers"
    /// Antara
    case antara = "Antara"
    /// Antique Cymbal
    case antiqueCymbal = "Antique Cymbal"
    /// Anvil
    case anvil = "Anvil"
    /// Apentema
    case apentema = "Apentema"
    /// Apito
    case apito = "Apito"
    /// Aponga
    case aponga = "Aponga"
    /// Applause
    case applause = "Applause"
    /// Arabic
    case arabic = "Arabic"
    /// Archaic And Other Bowed String-Instruments
    case archaicAndOtherBowedStringInstruments = "Archaic And Other Bowed String-Instruments"
    /// Ardine
    case ardine = "Ardine"
    /// Arghoul
    case arghoul = "Arghoul"
    /// Arghul
    case arghul = "Arghul"
    /// Argol
    case argol = "Argol"
    /// Arp 2600
    case arp2600 = "Arp 2600"
    /// Arpa
    case arpa = "Arpa"
    /// Arpa Doppia
    case arpaDoppia = "Arpa Doppia"
    /// Arpa India
    case arpaIndia = "Arpa India"
    /// Arp Echoplex
    case arpEchoplex = "Arp Echoplex"
    /// Arpeggione
    case arpeggione = "Arpeggione"
    /// Arpegina
    case arpegina = "Arpegina"
    /// Arp Explorer I
    case arpExplorerI = "Arp Explorer I"
    /// Arp Odyssey
    case arpOdyssey = "Arp Odyssey"
    /// Arp Omni
    case arpOmni = "Arp Omni"
    /// Arp Pro Soloist
    case arpProSoloist = "Arp Pro Soloist"
    /// Arp String Ensemble
    case arpStringEnsemble = "Arp String Ensemble"
    /// Arp Strings
    case arpStrings = "Arp Strings"
    /// ARP Synthesizer
    case arpSynthesizer = "ARP Synthesizer"
    /// Arra
    case arra = "Arra"
    /// Arranjo
    case arranjo = "Arranjo"
    /// Arreglos
    case arreglos = "Arreglos"
    /// Artist
    case artist = "Artist"
    /// Asheiko
    case asheiko = "Asheiko"
    /// Ashiko
    case ashiko = "Ashiko"
    /// Associate Musician
    case associateMusician = "Associate Musician"
    /// Atabal
    case atabal = "Atabal"
    /// Atabaque
    case atabaque = "Atabaque"
    /// Atarigane
    case atarigane = "Atarigane"
    /// Atmosphere
    case atmosphere = "Atmosphere"
    /// Atsimevu
    case atsimevu = "Atsimevu"
    /// Atumpan
    case atumpan = "Atumpan"
    /// Aud
    case aud = "Aud"
    /// Aulos
    case aulos = "Aulos"
    /// Auricle Programming
    case auricleProgramming = "Auricle Programming"
    /// Auto-bass
    case autobass = "Auto-bass"
    /// Autoharp
    case autoharp = "Autoharp"
    /// Electric Autoharp
    case autoharpElectric = "Electric Autoharp"
    /// Autoharp (Hammered)
    case autoharpHammered = "Autoharp (Hammered)"
    /// Awazia
    case awazia = "Awazia"
    /// Axatse
    case axatse = "Axatse"
    /// Baandu
    case baandu = "Baandu"
    /// Background Music
    case backgroundMusic = "Background Music"
    /// Background Vocals
    case backgroundVocals = "Background Vocals"
    /// Background Vocals Samples
    case backgroundVocalsSamples = "Background Vocals Samples"
    /// Tenor Background Vocals
    case backgroundVocalsTenor = "Tenor Background Vocals"
    /// Backing Band
    case backingBand = "Backing Band"
    /// Backing Vocals
    case backingVocals = "Backing Vocals"
    /// Backwards Vocals
    case backwardsVocals = "Backwards Vocals"
    /// Bacurinhas
    case bacurinhas = "Bacurinhas"
    /// Badjoude
    case badjoude = "Badjoude"
    /// Baglama
    case baglama = "Baglama"
    /// Turkish Baglama
    case baglamaTurkish = "Turkish Baglama"
    /// Bagpipes
    case bagpipes = "Bagpipes"
    /// Bellow-Blown Bagpipes
    case bagpipesBellowBlown = "Bellow-Blown Bagpipes"
    /// Electric Bagpipes
    case bagpipesElectric = "Electric Bagpipes"
    /// Swedish Bagpipes
    case bagpipesSwedish = "Swedish Bagpipes"
    /// Baiano
    case baiano = "Baiano"
    /// Bailaora
    case bailaora = "Bailaora"
    /// Bailarina
    case bailarina = "Bailarina"
    /// Baixo
    case baixo = "Baixo"
    /// Baja
    case baja = "Baja"
    /// Bajan
    case bajan = "Bajan"
    /// Bajista
    case bajista = "Bajista"
    /// Bajo Licencia
    case bajoLicencia = "Bajo Licencia"
    /// Bajon
    case bajon = "Bajon"
    /// Bajo Quinto
    case bajoQuinto = "Bajo Quinto"
    /// Bajos
    case bajos = "Bajos"
    /// Bajo Sexto
    case bajoSexto = "Bajo Sexto"
    /// Bakdav
    case bakdav = "Bakdav"
    /// Balaban
    case balaban = "Balaban"
    /// Balafon
    case balafon = "Balafon"
    /// Balai
    case balai = "Balai"
    /// Balalaika
    case balalaika = "Balalaika"
    /// Bass Balalaika
    case balalaikaBass = "Bass Balalaika"
    /// Contrabass Balalaika
    case balalaikaContrabass = "Contrabass Balalaika"
    /// Slide Balalaika
    case balalaikaSlide = "Slide Balalaika"
    /// Balama
    case balama = "Balama"
    /// Balan
    case balan = "Balan"
    /// African Balaphone
    case balaphoneAfrican = "African Balaphone"
    /// Balloon
    case balloon = "Balloon"
    /// Baltic Psalteries
    case balticPsalteries = "Baltic Psalteries"
    /// Bambou
    case bambou = "Bambou"
    /// Bambu
    case bambu = "Bambu"
    /// Bambuzal
    case bambuzal = "Bambuzal"
    /// Band
    case band = "Band"
    /// Brass Band
    case bandBrass = "Brass Band"
    /// Bandero
    case bandero = "Bandero"
    /// Ban Dhor
    case banDhor = "Ban Dhor"
    /// Bandir
    case bandir = "Bandir"
    /// Bandola
    case bandola = "Bandola"
    /// Bandolim
    case bandolim = "Bandolim"
    /// Bandoneón
    case bandoneon = "Bandoneón"
    /// Bandora
    case bandora = "Bandora"
    /// Renaissance Band
    case bandRenaissance = "Renaissance Band"
    /// Bandura
    case bandura = "Bandura"
    /// Bandurria
    case bandurria = "Bandurria"
    /// Bangana
    case bangana = "Bangana"
    /// Bangu
    case bangu = "Bangu"
    /// Banhu
    case banhu = "Banhu"
    /// Banjar
    case banjar = "Banjar"
    /// Banjitar
    case banjitar = "Banjitar"
    /// Banjo
    case banjo = "Banjo"
    /// Four-String Banjo
    case banjo4String = "Four-String Banjo"
    /// 4-String Banjo
    case banjo5String = "4-String Banjo"
    /// Six String Banjo
    case banjo6String = "Six String Banjo"
    /// 7-String Banjo
    case banjo7String = "7-String Banjo"
    /// Bowed Banjo
    case banjoBowed = "Bowed Banjo"
    /// Claw Hammer Banjo
    case banjoClawHammer = "Claw Hammer Banjo"
    /// Electric Banjo
    case banjoElectric = "Electric Banjo"
    /// Fretless Banjo
    case banjoFretless = "Fretless Banjo"
    /// Gut String Banjo
    case banjoGutString = "Gut String Banjo"
    /// Indian Banjo
    case banjoIndian = "Indian Banjo"
    /// Banjolin
    case banjolin = "Banjolin"
    /// Mandolin Banjo
    case banjoMandoline = "Mandolin Banjo"
    /// Muted Banjo
    case banjoMuted = "Muted Banjo"
    /// Pedal Steel Banjo
    case banjoPedalSteel = "Pedal Steel Banjo"
    /// Slide Banjo
    case banjoSlide = "Slide Banjo"
    /// Synthesizer Banjo
    case banjoSynthesizer = "Synthesizer Banjo"
    /// Tahitian Banjo
    case banjoTahitian = "Tahitian Banjo"
    /// Tenor Banjo
    case banjoTenor = "Tenor Banjo"
    /// Banjo-Ukelele
    case banjoUkelele = "Banjo-Ukelele"
    /// Banjouki
    case banjouki = "Banjouki"
    /// Banjo-Ukulele
    case banjoUkulele = "Banjo-Ukulele"
    /// Banshee
    case banshee = "Banshee"
    /// Bansuri
    case bansuri = "Bansuri"
    /// Bantar
    case bantar = "Bantar"
    /// Bara
    case bara = "Bara"
    /// Baraban
    case baraban = "Baraban"
    /// Baraka
    case baraka = "Baraka"
    /// Bar Band
    case barBand = "Bar Band"
    /// Barbat
    case barbat = "Barbat"
    /// Barillas
    case barillas = "Barillas"
    /// Baritone
    case baritone = "Baritone"
    /// Baritonos
    case baritonos = "Baritonos"
    /// Barking
    case barking = "Barking"
    /// Baroque Alto Trombone
    case baroqueAltoTrombone = "Baroque Alto Trombone"
    /// Barras
    case barras = "Barras"
    /// Barril
    case barril = "Barril"
    /// Bars
    case bars = "Bars"
    /// Baryton
    case baryton = "Baryton"
    /// Basblockflöjt
    case basblockflöjt = "Basblockflöjt"
    /// Bas Dessus
    case basDessus = "Bas Dessus"
    /// Baseline
    case baseline = "Baseline"
    /// Basel Trommel
    case baselTrommel = "Basel Trommel"
    /// Bases Ritmicas
    case basesRitmicas = "Bases Ritmicas"
    /// Steel Base
    case baseSteel = "Steel Base"
    /// Bass
    case bass = "Bass"
    /// 10-String Bass
    case bass10String = "10-String Bass"
    /// One-String Bass
    case bass1String = "One-String Bass"
    /// 2-String Bass
    case bass2String = "2-String Bass"
    /// 3-String Bass
    case bass5String = "3-String Bass"
    /// 6-String Bass
    case bass6String = "6-String Bass"
    /// 7-String Bass
    case bass7String = "7-String Bass"
    /// 8-String Bass
    case bass8String = "8-String Bass"
    /// Free Bass Accordion
    case bassAccordionFree = "Free Bass Accordion"
    /// Acoustic Bass
    case bassAcoustic = "Acoustic Bass"
    /// Arco Bass
    case bassArco = "Arco Bass"
    /// Arp Bass
    case bassArp = "Arp Bass"
    /// Bass Baritone
    case bassBaritone = "Bass Baritone"
    /// Bass-Baritone Vocals
    case bassBaritoneVocals = "Bass-Baritone Vocals"
    /// Baroque Bass
    case bassBaroque = "Baroque Bass"
    /// Bowed Bass
    case bassBowed = "Bowed Bass"
    /// Bowed Double Bass
    case bassBowedDouble = "Bowed Double Bass"
    /// Brass Bass
    case bassBrass = "Brass Bass"
    /// Clevenger Bass
    case bassClevenger = "Clevenger Bass"
    /// Bass Concertina
    case bassConcertina = "Bass Concertina"
    /// Double Bass
    case bassDouble = "Double Bass"
    /// Electric Double Bass
    case bassDoubleElectric = "Electric Double Bass"
    /// Basse
    case basse = "Basse"
    /// Basse de Gambe
    case bassedeGambe = "Basse de Gambe"
    /// Basse de Viole
    case bassedeViole = "Basse de Viole"
    /// E Flat Bass
    case bassEFlat = "E Flat Bass"
    /// Electric Bass
    case bassElectric = "Electric Bass"
    /// 6-String Electric Bass
    case bassElectric6String = "6-String Electric Bass"
    /// Electric Upright Bass
    case bassElectricUpright = "Electric Upright Bass"
    /// Electro-Acoustic Bass
    case bassElectroAcoustic = "Electro-Acoustic Bass"
    /// EMU Bass
    case bassEMU = "EMU Bass"
    /// Flange Bass
    case bassFlange = "Flange Bass"
    /// Footpedal Bass
    case bassFootPedal = "Footpedal Bass"
    /// Fretless Bass
    case bassFretless = "Fretless Bass"
    /// Gourd Bass
    case bassGourd = "Gourd Bass"
    /// 12-String Bass Guitar
    case bassGuitar12String = "12-String Bass Guitar"
    /// Electric Bass Guitar
    case bassGuitarElectric = "Electric Bass Guitar"
    /// Harmonic Bass
    case bassHarmonic = "Harmonic Bass"
    /// Bassi
    case bassi = "Bassi"
    /// Bassi Cantabili
    case bassiCantabili = "Bassi Cantabili"
    /// bassila
    case bassila = "bassila"
    /// Bassitar
    case bassitar = "Bassitar"
    /// 17-String Bass Koto
    case bassKoto17String = "17-String Bass Koto"
    /// Human Bassline
    case basslineHuman = "Human Bassline"
    /// Bass Lute
    case bassLute = "Bass Lute"
    /// Bass Marimba
    case bassMarimba = "Bass Marimba"
    /// MIDI Bass
    case bassMIDI = "MIDI Bass"
    /// Moog Bass
    case bassMoog = "Moog Bass"
    /// Mouth Bass
    case bassMouth = "Mouth Bass"
    /// Basso Buffo
    case bassoBuffo = "Basso Buffo"
    /// Basso Continuo
    case bassoContinuo = "Basso Continuo"
    /// Octave Bass
    case bassOctave = "Octave Bass"
    /// Bass Octaver
    case bassOctaver = "Bass Octaver"
    /// Bassoon
    case bassoon = "Bassoon"
    /// Double Bassoon
    case bassoonDouble = "Double Bassoon"
    /// Electric Bassoon
    case bassoonElectric = "Electric Bassoon"
    /// Basso Profundo
    case bassoProfundo = "Basso Profundo"
    /// Basso Synt
    case bassoSynt = "Basso Synt"
    /// Bass Pan Pipes
    case bassPanPipes = "Bass Pan Pipes"
    /// Pedal Bass
    case bassPedal = "Pedal Bass"
    /// Piccolo Bass
    case bassPiccolo = "Piccolo Bass"
    /// Pizzicato Bass
    case bassPizzicato = "Pizzicato Bass"
    /// Plucked Bass
    case bassPlucked = "Plucked Bass"
    /// Prepared Bass
    case bassPrepared = "Prepared Bass"
    /// Bass Programming
    case bassProgramming = "Bass Programming"
    /// Pump Bass
    case bassPump = "Pump Bass"
    /// Bass Recorder
    case bassRecorder = "Bass Recorder"
    /// Bass Recorder / F-Bass Recorder
    case bassRecorderFBassRecorder = "Bass Recorder / F-Bass Recorder"
    /// Rhythm Bass
    case bassRhythm = "Rhythm Bass"
    /// Bass Ruan
    case bassRuan = "Bass Ruan"
    /// Bass Sackbut
    case bassSackbut = "Bass Sackbut"
    /// Sampled Bass
    case bassSampled = "Sampled Bass"
    /// Bass Samples
    case bassSamples = "Bass Samples"
    /// Bass Saxophone
    case bassSaxophone = "Bass Saxophone"
    /// Bass Sequencing
    case bassSequencing = "Bass Sequencing"
    /// Sintir Bass
    case bassSintir = "Sintir Bass"
    /// Slap Bass
    case bassSlap = "Slap Bass"
    /// Bass Slide
    case bassSlide = "Bass Slide"
    /// Bass Station
    case bassStation = "Bass Station"
    /// String Bass
    case bassString = "String Bass"
    /// Bass Synthesizer
    case bassSynthesizer = "Bass Synthesizer"
    /// Bass Synthesizer Samples
    case bassSynthesizerSamples = "Bass Synthesizer Samples"
    /// Tea-Chest Bass
    case bassTeaChest = "Tea-Chest Bass"
    /// Bass Tenor
    case bassTenor = "Bass Tenor"
    /// Tremolo Bass
    case bassTremolo = "Tremolo Bass"
    /// Triple Bass
    case bassTriple = "Triple Bass"
    /// Bass Trombone
    case bassTrombone = "Bass Trombone"
    /// Bass Trumpet
    case bassTrumpet = "Bass Trumpet"
    /// Bass Tuba
    case bassTuba = "Bass Tuba"
    /// Vertical Bass
    case bassVertical = "Vertical Bass"
    /// Bass Viol
    case bassViol = "Bass Viol"
    /// Bass Viola da gamba
    case bassVioladaGamba = "Bass Viola da gamba"
    /// Bass Violin
    case bassViolin = "Bass Violin"
    /// Wah Wah Bass
    case bassWahWah = "Wah Wah Bass"
    /// Washtub Bass
    case bassWashtub = "Washtub Bass"
    /// Wood Bass
    case bassWood = "Wood Bass"
    /// Basto
    case basto = "Basto"
    /// Basuri Bamboo Flute
    case basuriBambooFlute = "Basuri Bamboo Flute"
    /// Basy
    case basy = "Basy"
    /// Bata
    case bata = "Bata"
    /// Batakonkon
    case batakonkon = "Batakonkon"
    /// Batanon
    case batanon = "Batanon"
    /// Bateria
    case bateria = "Bateria"
    /// Batida
    case batida = "Batida"
    /// Bato
    case bato = "Bato"
    /// Baton
    case baton = "Baton"
    /// Baton De Pluie
    case batonDePluie = "Baton De Pluie"
    /// Battente
    case battente = "Battente"
    /// Batucada
    case batucada = "Batucada"
    /// Ba Wu
    case baWu = "Ba Wu"
    /// Bayan
    case bayan = "Bayan"
    /// Bazooka
    case bazooka = "Bazooka"
    /// Bazouki
    case bazouki = "Bazouki"
    /// Beat Box
    case beatBox = "Beat Box"
    /// Human Beatbox
    case beatboxHuman = "Human Beatbox"
    /// Beat Programming
    case beatProgramming = "Beat Programming"
    /// Beats
    case beats = "Beats"
    /// Bebny
    case bebny = "Bebny"
    /// Becken
    case becken = "Becken"
    /// Beejtar
    case beejtar = "Beejtar"
    /// Belching
    case belching = "Belching"
    /// Bell
    case bell = "Bell"
    /// Bicycle Bell
    case bellBicycle = "Bicycle Bell"
    /// Bell Guitars
    case bellGuitars = "Bell Guitars"
    /// Handbell
    case bellHand = "Handbell"
    /// Bellowphone
    case bellowphone = "Bellowphone"
    /// Bell Plate
    case bellPlate = "Bell Plate"
    /// Bellringer
    case bellringer = "Bellringer"
    /// Bells
    case bells = "Bells"
    /// African Bells
    case bellsAfrican = "African Bells"
    /// Chinese Bells
    case bellsChinese = "Chinese Bells"
    /// Chinese Double Bells
    case bellsChineseDouble = "Chinese Double Bells"
    /// Finger Bells
    case bellsFinger = "Finger Bells"
    /// Handbells
    case bellsHand = "Handbells"
    /// Indian Bells
    case bellsIndian = "Indian Bells"
    /// Orchestra Bells
    case bellsOrchestra = "Orchestra Bells"
    /// Synthesizer Bells
    case bellsSynthesizer = "Synthesizer Bells"
    /// Tibetan Bells
    case bellsTibetan = "Tibetan Bells"
    /// Toy Bells
    case bellsToy = "Toy Bells"
    /// Triple Bells
    case bellsTriple = "Triple Bells"
    /// Tubular Bells
    case bellsTubular = "Tubular Bells"
    /// Bell Tree
    case bellTree = "Bell Tree"
    /// Bellzouki
    case bellzouki = "Bellzouki"
    /// Bende
    case bende = "Bende"
    /// Bendir
    case bendir = "Bendir"
    /// Bendire
    case bendire = "Bendire"
    /// Benjo
    case benjo = "Benjo"
    /// Benju
    case benju = "Benju"
    /// Berda
    case berda = "Berda"
    /// Berde
    case berde = "Berde"
    /// Beresta
    case beresta = "Beresta"
    /// Berimbau
    case berimbau = "Berimbau"
    /// Beso
    case beso = "Beso"
    /// Bhapang
    case bhapang = "Bhapang"
    /// Bicie
    case bicie = "Bicie"
    /// Big Band
    case bigBand = "Big Band"
    /// Biguela
    case biguela = "Biguela"
    /// Bilas
    case bilas = "Bilas"
    /// Billatron
    case billatron = "Billatron"
    /// Bilma
    case bilma = "Bilma"
    /// Binghi Drum
    case binghiDrum = "Binghi Drum"
    /// Biniaouerien
    case biniaouerien = "Biniaouerien"
    /// Biniou
    case biniou = "Biniou"
    /// Bin-Sasara
    case binSasara = "Bin-Sasara"
    /// Birbynė
    case birbynė = "Birbynė"
    /// Birch Lur
    case birchLur = "Birch Lur"
    /// Bird Calls
    case birdCalls = "Bird Calls"
    /// Bird Whistle
    case birdWhistle = "Bird Whistle"
    /// Bisernica
    case bisernica = "Bisernica"
    /// Biwa
    case biwa = "Biwa"
    /// Biwang
    case biwang = "Biwang"
    /// Blarge
    case blarge = "Blarge"
    /// Blaster Beam
    case blasterBeam = "Blaster Beam"
    /// Blekete
    case blekete = "Blekete"
    /// Block Flute
    case blockFlute = "Block Flute"
    /// Blocks
    case blocks = "Blocks"
    /// Blues Harp
    case bluesHarp = "Blues Harp"
    /// Boatswain's Pipe
    case boatswainsPipe = "Boatswain's Pipe"
    /// Boca
    case boca = "Boca"
    /// Bodhrán
    case bodhran = "Bodhrán"
    /// Bogo
    case bogo = "Bogo"
    /// Bolon
    case bolon = "Bolon"
    /// Bombard
    case bombard = "Bombard"
    /// Bombarde
    case bombarde = "Bombarde"
    /// Soprano Bombardon
    case bombardonSoprano = "Soprano Bombardon"
    /// Bombo
    case bombo = "Bombo"
    /// Bonang
    case bonang = "Bonang"
    /// Bonaphone
    case bonaphone = "Bonaphone"
    /// Bones
    case bones = "Bones"
    /// Bongos
    case bongos = "Bongos"
    /// Electric Bongos
    case bongosElectric = "Electric Bongos"
    /// Mini Bongos
    case bongosMini = "Mini Bongos"
    /// Morrocan Bongos
    case bongosMorrocan = "Morrocan Bongos"
    /// Bonko
    case bonko = "Bonko"
    /// Bonsuri
    case bonsuri = "Bonsuri"
    /// Bontempi
    case bontempi = "Bontempi"
    /// Boobam
    case boobam = "Boobam"
    /// Boobams
    case boobams = "Boobams"
    /// Boo Marimba
    case booMarimba = "Boo Marimba"
    /// Boomwhacker
    case boomwhacker = "Boomwhacker"
    /// Border Pipes
    case borderPipes = "Border Pipes"
    /// Botija
    case botija = "Botija"
    /// Bottle
    case bottle = "Bottle"
    /// Boula
    case boula = "Boula"
    /// Bouz
    case bouz = "Bouz"
    /// Bouzar / Gouzouki
    case bouzarGouzouki = "Bouzar / Gouzouki"
    /// Bouzouki
    case bouzouki = "Bouzouki"
    /// Electric Bouzouki
    case bouzoukiElectric = "Electric Bouzouki"
    /// Irish Bouzouki
    case bouzoukiIrish = "Irish Bouzouki"
    /// Swedish Bouzouki
    case bouzoukiSwedish = "Swedish Bouzouki"
    /// Bowls
    case bowls = "Bowls"
    /// Cloud Chamber Bowls
    case bowlsCloudChamber = "Cloud Chamber Bowls"
    /// Metal Bowls
    case bowlsMetal = "Metal Bowls"
    /// Steel Bowls
    case bowlsSteel = "Steel Bowls"
    /// Tibetan Bowls
    case bowlsTibetan = "Tibetan Bowls"
    /// Mouth Bow
    case bowMouth = "Mouth Bow"
    /// Box
    case box = "Box"
    /// Boy Alto
    case boyAlto = "Boy Alto"
    /// Boy Group
    case boyGroup = "Boy Group"
    /// Boy's Choir
    case boysChoir = "Boy's Choir"
    /// Boy Soprano
    case boySoprano = "Boy Soprano"
    /// Brač
    case brac = "Brač"
    /// Bracsa
    case bracsa = "Bracsa"
    /// Braguesa
    case braguesa = "Braguesa"
    /// Brake Drums
    case brakeDrums = "Brake Drums"
    /// Brass
    case brass = "Brass"
    /// Bratsch
    case bratsch = "Bratsch"
    /// Breakdown
    case breakdown = "Breakdown"
    /// Breathing
    case breathing = "Breathing"
    /// Brekete
    case brekete = "Brekete"
    /// Bronze Lur
    case bronzeLur = "Bronze Lur"
    /// Bruits de Bouche
    case bruitsdeBouche = "Bruits de Bouche"
    /// Brushes
    case brushes = "Brushes"
    /// Brushes Samples
    case brushesSamples = "Brushes Samples"
    /// Bubanj
    case bubanj = "Bubanj"
    /// Buchel
    case buchel = "Buchel"
    /// Bucium
    case bucium = "Bucium"
    /// Buffo
    case buffo = "Buffo"
    /// Bugarabu
    case bugarabu = "Bugarabu"
    /// Bugarija
    case bugarija = "Bugarija"
    /// Bugle
    case bugle = "Bugle"
    /// Buhay
    case buhay = "Buhay"
    /// Buisine
    case buisine = "Buisine"
    /// Buk
    case buk = "Buk"
    /// Bula
    case bula = "Bula"
    /// Bul-bul
    case bulbul = "Bul-bul"
    /// Bulbul Tarang
    case bulbulTarang = "Bulbul Tarang"
    /// Bullhorn
    case bullhorn = "Bullhorn"
    /// Bullroarer
    case bullroarer = "Bullroarer"
    /// Bumbo
    case bumbo = "Bumbo"
    /// Bundt Pan
    case bundtPan = "Bundt Pan"
    /// Bunkula
    case bunkula = "Bunkula"
    /// Buzukie
    case buzukie = "Buzukie"
    /// Buzuq
    case buzuq = "Buzuq"
    /// Byzaanchi
    case byzaanchi = "Byzaanchi"
    /// Cabasa
    case cabasa = "Cabasa"
    /// Cabassa
    case cabassa = "Cabassa"
    /// Cabelo
    case cabelo = "Cabelo"
    /// Cabrette
    case cabrette = "Cabrette"
    /// Cachichi
    case cachichi = "Cachichi"
    /// Cactus
    case cactus = "Cactus"
    /// Cadence
    case cadence = "Cadence"
    /// Cadenza
    case cadenza = "Cadenza"
    /// Cahones
    case cahones = "Cahones"
    /// Caisse Claire
    case caisseClaire = "Caisse Claire"
    /// Caixa
    case caixa = "Caixa"
    /// Caja
    case caja = "Caja"
    /// Cajón
    case cajon = "Cajón"
    /// Calabash
    case calabash = "Calabash"
    /// Calebasse
    case calebasse = "Calebasse"
    /// Calimba
    case calimba = "Calimba"
    /// Caller
    case caller = "Caller"
    /// Calliope
    case calliope = "Calliope"
    /// Calto
    case calto = "Calto"
    /// Calung
    case calung = "Calung"
    /// Camapana
    case camapana = "Camapana"
    /// Campana
    case campana = "Campana"
    /// Campanelle
    case campanelle = "Campanelle"
    /// Campanillas
    case campanillas = "Campanillas"
    /// Campanula
    case campanula = "Campanula"
    /// Cana
    case cana = "Cana"
    /// Candido
    case candido = "Candido"
    /// Caneco
    case caneco = "Caneco"
    /// Canonaki
    case canonaki = "Canonaki"
    /// Harmonic Canon
    case canonHarmonic = "Harmonic Canon"
    /// Cantatrice
    case cantatrice = "Cantatrice"
    /// Cante
    case cante = "Cante"
    /// Cantilena
    case cantilena = "Cantilena"
    /// Cantor
    case cantor = "Cantor"
    /// Canun
    case canun = "Canun"
    /// Capa
    case capa = "Capa"
    /// Caracaxa
    case caracaxa = "Caracaxa"
    /// Caracoles
    case caracoles = "Caracoles"
    /// Cardboard
    case cardboard = "Cardboard"
    /// Cardboard Box
    case cardboardBox = "Cardboard Box"
    /// Carillon
    case carillon = "Carillon"
    /// Carnyx
    case carnyx = "Carnyx"
    /// Carrilhao
    case carrilhao = "Carrilhao"
    /// Cartage
    case cartage = "Cartage"
    /// Casaba
    case casaba = "Casaba"
    /// Cascabeles
    case cascabeles = "Cascabeles"
    /// Cascara
    case cascara = "Cascara"
    /// Casinette
    case casinette = "Casinette"
    /// Casio
    case casio = "Casio"
    /// Casio MT-30
    case casioMT30 = "Casio MT-30"
    /// Cast
    case cast = "Cast"
    /// Castanets
    case castanets = "Castanets"
    /// Castrato
    case castrato = "Castrato"
    /// Cata
    case cata = "Cata"
    /// Cavaco
    case cavaco = "Cavaco"
    /// Cavaquinho
    case cavaquinho = "Cavaquinho"
    /// Caxambu
    case caxambu = "Caxambu"
    /// Caxixi
    case caxixi = "Caxixi"
    /// Cbass Sarrusophone
    case cbassSarrusophone = "Cbass Sarrusophone"
    /// Celesta
    case celesta = "Celesta"
    /// Celeste
    case celeste = "Celeste"
    /// Celletto
    case celletto = "Celletto"
    /// Celli
    case celli = "Celli"
    /// Cello
    case cello = "Cello"
    /// Baroque Cello
    case celloBaroque = "Baroque Cello"
    /// Bass Cello
    case celloBass = "Bass Cello"
    /// Electric Cello
    case celloElectric = "Electric Cello"
    /// Electric Mando Cello
    case celloElectricMando = "Electric Mando Cello"
    /// Lap Cello
    case celloLap = "Lap Cello"
    /// Cello Maker
    case celloMaker = "Cello Maker"
    /// Cello Obligato
    case celloObligato = "Cello Obligato"
    /// Cello Piccolo
    case celloPiccolo = "Cello Piccolo"
    /// Sampled Cello
    case celloSampled = "Sampled Cello"
    /// Cello Samples
    case celloSamples = "Cello Samples"
    /// Steel Cello
    case celloSteel = "Steel Cello"
    /// Synthesizer Cello
    case celloSynthesizer = "Synthesizer Cello"
    /// Cello Tambura
    case celloTambura = "Cello Tambura"
    /// Čelo
    case Čelo = "Čelo"
    /// Cembalet
    case cembalet = "Cembalet"
    /// Cembalo
    case cembalo = "Cembalo"
    /// Cencerro
    case cencerro = "Cencerro"
    /// Ceng-ceng
    case cengceng = "Ceng-ceng"
    /// Cetra
    case cetra = "Cetra"
    /// Çevgen
    case Çevgen = "Çevgen"
    /// Chab
    case chab = "Chab"
    /// Cha-Cha
    case chaCha = "Cha-Cha"
    /// Chacha
    case chacha = "Chacha"
    /// Chainsaw
    case chainsaw = "Chainsaw"
    /// Chak'chas
    case chakchas = "Chak'chas"
    /// Chakeire
    case chakeire = "Chakeire"
    /// Chakhe
    case chakhe = "Chakhe"
    /// Chalemie
    case chalemie = "Chalemie"
    /// Chalil
    case chalil = "Chalil"
    /// Chalmers
    case chalmers = "Chalmers"
    /// Chalumeau
    case chalumeau = "Chalumeau"
    /// Soprano Chalumeau
    case chalumeauSoprano = "Soprano Chalumeau"
    /// Tenor Chalumeau
    case chalumeauTenor = "Tenor Chalumeau"
    /// Chamber Ensemble
    case chamberEnsemble = "Chamber Ensemble"
    /// Chamberlin
    case chamberlin = "Chamberlin"
    /// Chande
    case chande = "Chande"
    /// Chang
    case chang = "Chang"
    /// Chang Chang
    case changChang = "Chang Chang"
    /// Chang Chiki
    case changChiki = "Chang Chiki"
    /// Changgo
    case changgo = "Changgo"
    /// Chant
    case chant = "Chant"
    /// Chanter
    case chanter = "Chanter"
    /// Chanteuse
    case chanteuse = "Chanteuse"
    /// Harmonic Chant
    case chantHarmonic = "Harmonic Chant"
    /// Indian Chants
    case chantsIndian = "Indian Chants"
    /// Chanzy
    case chanzy = "Chanzy"
    /// Chap
    case chap = "Chap"
    /// Chapman Stick
    case chapmanStick = "Chapman Stick"
    /// Chapuis
    case chapuis = "Chapuis"
    /// Charango
    case charango = "Charango"
    /// Charrasca
    case charrasca = "Charrasca"
    /// Chaskas
    case chaskas = "Chaskas"
    /// Chatan
    case chatan = "Chatan"
    /// Chau Gong
    case chauGong = "Chau Gong"
    /// Chazoid
    case chazoid = "Chazoid"
    /// Chekere
    case chekere = "Chekere"
    /// Chelo
    case chelo = "Chelo"
    /// Chenda
    case chenda = "Chenda"
    /// Cheng
    case cheng = "Cheng"
    /// Chequere
    case chequere = "Chequere"
    /// Cherimia
    case cherimia = "Cherimia"
    /// Chicote
    case chicote = "Chicote"
    /// Chifonie
    case chifonie = "Chifonie"
    /// Chikuzen Biwa
    case chikuzenBiwa = "Chikuzen Biwa"
    /// Children's Chorus
    case childrensChorus = "Children's Chorus"
    /// Children's Voices
    case childrensVoices = "Children's Voices"
    /// Chimba
    case chimba = "Chimba"
    /// Chime Bar
    case chimeBar = "Chime Bar"
    /// Bow Chime
    case chimeBow = "Bow Chime"
    /// Chimes
    case chimes = "Chimes"
    /// Hand Chimes
    case chimesHand = "Hand Chimes"
    /// Orchestral Chimes
    case chimesOrchestra = "Orchestral Chimes"
    /// Water Chimes
    case chimesWater = "Water Chimes"
    /// Wind Chimes
    case chimesWind = "Wind Chimes"
    /// Wind Chime
    case chimeWind = "Wind Chime"
    /// Chimta
    case chimta = "Chimta"
    /// Ch'in
    case chin = "Ch'in"
    /// Ching
    case ching = "Ching"
    /// Chirimía
    case chirimia = "Chirimía"
    /// Chirimía And Drum
    case chirimíaAndDrum = "Chirimía And Drum"
    /// Chirimias
    case chirimias = "Chirimias"
    /// Chitarra Battente
    case chitarraBattente = "Chitarra Battente"
    /// Electric Chitarre
    case chitarreElectric = "Electric Chitarre"
    /// Chitarrone
    case chitarrone = "Chitarrone"
    /// Chitra Veena
    case chitraVeena = "Chitra Veena"
    /// Chitra Vina
    case chitraVina = "Chitra Vina"
    /// Chocalhos
    case chocalhos = "Chocalhos"
    /// Chocola
    case chocola = "Chocola"
    /// Choeurs
    case choeurs = "Choeurs"
    /// Choir
    case choir = "Choir"
    /// Choir Boy
    case choirBoy = "Choir Boy"
    /// Choir/Chorus
    case choirChorus = "Choir/Chorus"
    /// Choir Vocals Samples
    case choirVocalsSamples = "Choir Vocals Samples"
    /// Chonguri
    case chonguri = "Chonguri"
    /// Chordal Drum
    case chordalDrum = "Chordal Drum"
    /// Chord Organ
    case chordOrgan = "Chord Organ"
    /// Chords
    case chords = "Chords"
    /// Choreinstudierung
    case choreinstudierung = "Choreinstudierung"
    /// Chorgesang
    case chorgesang = "Chorgesang"
    /// Choriana
    case choriana = "Choriana"
    /// Chorki
    case chorki = "Chorki"
    /// Chorsatz
    case chorsatz = "Chorsatz"
    /// Chorus
    case chorus = "Chorus"
    /// Chorus Master
    case chorusMaster = "Chorus Master"
    /// Tenor Chorus
    case chorusTenor = "Tenor Chorus"
    /// Chroma
    case chroma = "Chroma"
    /// Chromelodeon
    case chromelodeon = "Chromelodeon"
    /// Chucalho
    case chucalho = "Chucalho"
    /// Chumbus
    case chumbus = "Chumbus"
    /// Churango
    case churango = "Churango"
    /// Chuurqin
    case chuurqin = "Chuurqin"
    /// Ciaramello
    case ciaramello = "Ciaramello"
    /// Cimbalom
    case cimbalom = "Cimbalom"
    /// Cimbasso
    case cimbasso = "Cimbasso"
    /// Circle Machine
    case circleMachine = "Circle Machine"
    /// Cister
    case cister = "Cister"
    /// Cistro
    case cistro = "Cistro"
    /// Citera
    case citera = "Citera"
    /// Cithara
    case cithara = "Cithara"
    /// Cithare
    case cithare = "Cithare"
    /// Cithare Teutonica
    case cithareTeutonica = "Cithare Teutonica"
    /// Citole
    case citole = "Citole"
    /// Cittern
    case cittern = "Cittern"
    /// Arch Cittern
    case citternArch = "Arch Cittern"
    /// Cizhonghu
    case cizhonghu = "Cizhonghu"
    /// Clacker
    case clacker = "Clacker"
    /// Clap Drums
    case clapDrums = "Clap Drums"
    /// Clapper
    case clapper = "Clapper"
    /// Clappers
    case clappers = "Clappers"
    /// Clapping
    case clapping = "Clapping"
    /// Clapping Sticks
    case clappingSticks = "Clapping Sticks"
    /// Claquettes
    case claquettes = "Claquettes"
    /// Clarinet
    case clarinet = "Clarinet"
    /// Alto Clarinet
    case clarinetAlto = "Alto Clarinet"
    /// Baritone Clarinet
    case clarinetBaritone = "Baritone Clarinet"
    /// Bass Clarinet
    case clarinetBass = "Bass Clarinet"
    /// Basset Clarinet
    case clarinetBasset = "Basset Clarinet"
    /// B-Flat Clarinet
    case clarinetBFlat = "B-Flat Clarinet"
    /// Contra-Alto Clarinet
    case clarinetContraAlto = "Contra-Alto Clarinet"
    /// Clarinet (Contrabass)
    case clarinetContrabass = "Clarinet (Contrabass)"
    /// Contralto Clarinet
    case clarinetContralto = "Contralto Clarinet"
    /// Doubling Clarinet
    case clarinetDoubling = "Doubling Clarinet"
    /// E Flat Clarinet
    case clarinetEFlat = "E Flat Clarinet"
    /// Electric Clarinet
    case clarinetElectric = "Electric Clarinet"
    /// G Clarinet
    case clarinetG = "G Clarinet"
    /// Gourd Clarinet
    case clarinetGourd = "Gourd Clarinet"
    /// Clarinet Obbligato
    case clarinetObbligato = "Clarinet Obbligato"
    /// Clarinet Piccolo
    case clarinetPiccolo = "Clarinet Piccolo"
    /// Slide Clarinet
    case clarinetSlit = "Slide Clarinet"
    /// Sopranino Clarinet
    case clarinetSopranino = "Sopranino Clarinet"
    /// Clarinet (Soprano)
    case clarinetSoprano = "Clarinet (Soprano)"
    /// Clarinet (Tenor)
    case clarinetTenor = "Clarinet (Tenor)"
    /// Turkish Clarinet
    case clarinetTurkish = "Turkish Clarinet"
    /// Valve Clarinet
    case clarinetValva = "Valve Clarinet"
    /// Clarino
    case clarino = "Clarino"
    /// Clarion
    case clarion = "Clarion"
    /// Clarionett
    case clarionett = "Clarionett"
    /// Clarions
    case clarions = "Clarions"
    /// Clarone
    case clarone = "Clarone"
    /// Clarsach
    case clarsach = "Clarsach"
    /// Clavecin
    case clavecin = "Clavecin"
    /// Claves
    case claves = "Claves"
    /// Clavicembalo
    case clavicembalo = "Clavicembalo"
    /// Clavichord
    case clavichord = "Clavichord"
    /// Pedal Clavichord
    case clavichordPedal = "Pedal Clavichord"
    /// Clavicytherium
    case clavicytherium = "Clavicytherium"
    /// Clavier
    case clavier = "Clavier"
    /// Clavietta
    case clavietta = "Clavietta"
    /// Clavinet
    case clavinet = "Clavinet"
    /// Wah Wah Clavinet
    case clavinetWahWah = "Wah Wah Clavinet"
    /// Clavinova
    case clavinova = "Clavinova"
    /// Claviola
    case claviola = "Claviola"
    /// Clavioline
    case clavioline = "Clavioline"
    /// Claviorgan
    case claviorgan = "Claviorgan"
    /// Claviorganum
    case claviorganum = "Claviorganum"
    /// Clavitar
    case clavitar = "Clavitar"
    /// Clavivox
    case clavivox = "Clavivox"
    /// Clavoline
    case clavoline = "Clavoline"
    /// Clay Pot
    case clayPot = "Clay Pot"
    /// Clefs
    case clefs = "Clefs"
    /// Click Master
    case clickMaster = "Click Master"
    /// Cloche
    case cloche = "Cloche"
    /// Clochettes
    case clochettes = "Clochettes"
    /// Clogs
    case clogs = "Clogs"
    /// Cobsa
    case cobsa = "Cobsa"
    /// Cobza
    case cobza = "Cobza"
    /// Bamboo Coche
    case cocheBamboo = "Bamboo Coche"
    /// Coeurs
    case coeurs = "Coeurs"
    /// Cò Ke
    case còKe = "Cò Ke"
    /// Colascione
    case colascione = "Colascione"
    /// Collaboration
    case collaboration = "Collaboration"
    /// Collidophone
    case collidophone = "Collidophone"
    /// Coloratura
    case coloratura = "Coloratura"
    /// Compana
    case compana = "Compana"
    /// Compere
    case compere = "Compere"
    /// Compuesto
    case compuesto = "Compuesto"
    /// Computer
    case computer = "Computer"
    /// Concert Band
    case concertBand = "Concert Band"
    /// Concertina
    case concertina = "Concertina"
    /// Anglo Concertina
    case concertinaAnglo = "Anglo Concertina"
    /// Baritone Concertina
    case concertinaBaritone = "Baritone Concertina"
    /// English Concertina
    case concertinaEnglish = "English Concertina"
    /// German Concertina
    case concertinaGerman = "German Concertina"
    /// Bass Concerto
    case concertoBass = "Bass Concerto"
    /// Conch
    case conch = "Conch"
    /// Conch Shell
    case conchShell = "Conch Shell"
    /// Congas
    case congas = "Congas"
    /// Congoma
    case congoma = "Congoma"
    /// Conh
    case conh = "Conh"
    /// Connophone
    case connophone = "Connophone"
    /// Continuo
    case continuo = "Continuo"
    /// Continuum
    case continuum = "Continuum"
    /// Contra-Alto
    case contraAlto = "Contra-Alto"
    /// Contrabaja
    case contrabaja = "Contrabaja"
    /// Contrabanjo
    case contrabanjo = "Contrabanjo"
    /// Contrabass
    case contrabass = "Contrabass"
    /// Contrabassoon
    case contrabassoon = "Contrabassoon"
    /// Triple Contra-bass
    case contrabassTriple = "Triple Contra-bass"
    /// Contracoty
    case contracoty = "Contracoty"
    /// Contraportada
    case contraportada = "Contraportada"
    /// Contra-regas
    case contraregas = "Contra-regas"
    /// Contratenor
    case contratenor = "Contratenor"
    /// Contratista
    case contratista = "Contratista"
    /// Contributor of Interest
    case contributorofInterest = "Contributor of Interest"
    /// Copista
    case copista = "Copista"
    /// Coplas
    case coplas = "Coplas"
    /// Cor
    case cor = "Cor"
    /// Cora
    case cora = "Cora"
    /// Cor Anglais
    case corAnglais = "Cor Anglais"
    /// Cordas
    case cordas = "Cordas"
    /// Cordovox
    case cordovox = "Cordovox"
    /// Corillo
    case corillo = "Corillo"
    /// Corista
    case corista = "Corista"
    /// Cormorne
    case cormorne = "Cormorne"
    /// Cornamuse
    case cornamuse = "Cornamuse"
    /// Cornemuse
    case cornemuse = "Cornemuse"
    /// Cornet
    case cornet = "Cornet"
    /// Chinese Cornet
    case cornetChinese = "Chinese Cornet"
    /// E Flat Cornet
    case cornetEFlat = "E Flat Cornet"
    /// Muted Cornet
    case cornetMuted = "Muted Cornet"
    /// Cornet (Pocket)
    case cornetPocket = "Cornet (Pocket)"
    /// Soprano Cornet
    case cornetSoprano = "Soprano Cornet"
    /// Cornett
    case cornett = "Cornett"
    /// Tenor Cornet
    case cornetTenor = "Tenor Cornet"
    /// Cornetto
    case cornetto = "Cornetto"
    /// Corno D
    case cornoD = "Corno D"
    /// Corno Muto
    case cornoMuto = "Corno Muto"
    /// Cornopean
    case cornopean = "Cornopean"
    /// Cornos
    case cornos = "Cornos"
    /// Cornu
    case cornu = "Cornu"
    /// Coro
    case coro = "Coro"
    /// Coros
    case coros = "Coros"
    /// Corpo
    case corpo = "Corpo"
    /// Cotonou
    case cotonou = "Cotonou"
    /// Cowbell
    case cowbell = "Cowbell"
    /// Cow Horn
    case cowHorn = "Cow Horn"
    /// Craviola
    case craviola = "Craviola"
    /// Cravo
    case cravo = "Cravo"
    /// Criolla
    case criolla = "Criolla"
    /// Cristal Bachet
    case cristalBachet = "Cristal Bachet"
    /// Cristal Baschet
    case cristalBaschet = "Cristal Baschet"
    /// Cromaticos
    case cromaticos = "Cromaticos"
    /// Cromorne
    case cromorne = "Cromorne"
    /// Crotale
    case crotale = "Crotale"
    /// Crotales
    case crotales = "Crotales"
    /// Crowd Noise
    case crowdNoise = "Crowd Noise"
    /// Crumar
    case crumar = "Crumar"
    /// Crumar Orchestrator
    case crumarOrchestrator = "Crumar Orchestrator"
    /// Crumhorn
    case crumhorn = "Crumhorn"
    /// Bass Crumhorn
    case crumhornBass = "Bass Crumhorn"
    /// Soprano Crumhorn
    case crumhornSoprano = "Soprano Crumhorn"
    /// Tenor Crumhorn
    case crumhornTenor = "Tenor Crumhorn"
    /// Crwth
    case crwth = "Crwth"
    /// Crystal Bowl
    case crystalBowl = "Crystal Bowl"
    /// CS-80
    case cs80 = "CS-80"
    /// Csakany
    case csakany = "Csakany"
    /// Cuatro
    case cuatro = "Cuatro"
    /// Venezuelan Cuatro
    case cuatroVenezuelan = "Venezuelan Cuatro"
    /// Cubano
    case cubano = "Cubano"
    /// Cucia
    case cucia = "Cucia"
    /// Cuerda
    case cuerda = "Cuerda"
    /// Cuerno
    case cuerno = "Cuerno"
    /// Cuica
    case cuica = "Cuica"
    /// Cuíca
    case cuíca = "Cuíca"
    /// Cuilleres
    case cuilleres = "Cuilleres"
    /// Cuira
    case cuira = "Cuira"
    /// Cuivres
    case cuivres = "Cuivres"
    /// Culca
    case culca = "Culca"
    /// Culi
    case culi = "Culi"
    /// Culo
    case culo = "Culo"
    /// Cumaco
    case cumaco = "Cumaco"
    /// Cümbüş
    case cumbus = "Cümbüş"
    /// Cununo
    case cununo = "Cununo"
    /// Cura
    case cura = "Cura"
    /// Curtal
    case curtal = "Curtal"
    /// Tenor Curtal
    case curtalTenor = "Tenor Curtal"
    /// Cym
    case cym = "Cym"
    /// Cymbal
    case cymbal = "Cymbal"
    /// Cymbalom
    case cymbalom = "Cymbalom"
    /// Cymbals
    case cymbals = "Cymbals"
    /// Bowed Cymbals
    case cymbalsBowed = "Bowed Cymbals"
    /// Chinese Cymbals
    case cymbalsChinese = "Chinese Cymbals"
    /// Finger Cymbals
    case cymbalsFinger = "Finger Cymbals"
    /// Hand Cymbals
    case cymbalsHand = "Hand Cymbals"
    /// Tibetan Finger Cymbals
    case cymbalsTibetanFinger = "Tibetan Finger Cymbals"
    /// Turkish Finger Cymbals
    case cymbalsTurkishFinger = "Turkish Finger Cymbals"
    /// Cymbalum
    case cymbalum = "Cymbalum"
    /// Cymbolom
    case cymbolom = "Cymbolom"
    /// Cyremin
    case cyremin = "Cyremin"
    /// CZ-101
    case cz101 = "CZ-101"
    /// Czakan
    case czakan = "Czakan"
    /// D-50
    case d50 = "D-50"
    /// D550
    case d55 = "D550"
    /// Daegeum
    case daegeum = "Daegeum"
    /// Daegum
    case daegum = "Daegum"
    /// Daf
    case daf = "Daf"
    /// Daff
    case daff = "Daff"
    /// Daira
    case daira = "Daira"
    /// Daire
    case daire = "Daire"
    /// Daireh
    case daireh = "Daireh"
    /// Dajerah
    case dajerah = "Dajerah"
    /// Daluo
    case daluo = "Daluo"
    /// Dambura
    case dambura = "Dambura"
    /// Đàn Bầu
    case ĐànBầu = "Đàn Bầu"
    /// Dancer
    case dancer = "Dancer"
    /// Dance (Tap)
    case danceTap = "Dance (Tap)"
    /// Đàn Nguyệt
    case ĐànNguyệt = "Đàn Nguyệt"
    /// Đàn Nhị
    case ĐànNhị = "Đàn Nhị"
    /// Danso
    case danso = "Danso"
    /// Đàn Tam
    case ĐànTam = "Đàn Tam"
    /// Đàn Tam Thập Lục
    case ĐànTamThậpLục = "Đàn Tam Thập Lục"
    /// Đàn Tranh
    case ĐànTranh = "Đàn Tranh"
    /// Đàn Tứ
    case ĐànTứ = "Đàn Tứ"
    /// Đàn Tứ Dây
    case ĐànTứDây = "Đàn Tứ Dây"
    /// Đàn Tỳ Bà
    case ĐànTỳBà = "Đàn Tỳ Bà"
    /// Daoul
    case daoul = "Daoul"
    /// Dap
    case dap = "Dap"
    /// Darabeka
    case darabeka = "Darabeka"
    /// Darabukka
    case darabukka = "Darabukka"
    /// Darbouka
    case darbouka = "Darbouka"
    /// Darbuka
    case darbuka = "Darbuka"
    /// Dariyeh
    case dariyeh = "Dariyeh"
    /// Da Ruan
    case daRuan = "Da Ruan"
    /// Daruan
    case daruan = "Daruan"
    /// Data Glove
    case dataGlove = "Data Glove"
    /// Davolisint
    case davolisint = "Davolisint"
    /// Davul
    case davul = "Davul"
    /// Dawuro
    case dawuro = "Dawuro"
    /// Daxophone
    case daxophone = "Daxophone"
    /// Decors
    case decors = "Decors"
    /// Def
    case def = "Def"
    /// Dehol
    case dehol = "Dehol"
    /// Delay
    case delay = "Delay"
    /// Delruba
    case delruba = "Delruba"
    /// Demung
    case demung = "Demung"
    /// Denis D'or
    case denisDor = "Denis D'or"
    /// Dep
    case dep = "Dep"
    /// Derbekke
    case derbekke = "Derbekke"
    /// Derboukha
    case derboukha = "Derboukha"
    /// Desaccordee
    case desaccordee = "Desaccordee"
    /// Descant
    case descant = "Descant"
    /// Dessus
    case dessus = "Dessus"
    /// Electronic Devices
    case devicesElectronic = "Electronic Devices"
    /// Dhol
    case dhol = "Dhol"
    /// Dholak
    case dholak = "Dholak"
    /// Dholki
    case dholki = "Dholki"
    /// Dhrupad bol-tana-s
    case dhrupadboltanas = "Dhrupad bol-tana-s"
    /// Di
    case di = "Di"
    /// Dibujos
    case dibujos = "Dibujos"
    /// Dictaphone
    case dictaphone = "Dictaphone"
    /// Dida
    case dida = "Dida"
    /// Diddley Bow
    case diddleyBow = "Diddley Bow"
    /// Didgeridoo
    case didgeridoo = "Didgeridoo"
    /// Didjeridu
    case didjeridu = "Didjeridu"
    /// Didong
    case didong = "Didong"
    /// Dijaredo
    case dijaredo = "Dijaredo"
    /// Dikanza
    case dikanza = "Dikanza"
    /// Dili Tuiduk
    case diliTuiduk = "Dili Tuiduk"
    /// Dilruba
    case dilruba = "Dilruba"
    /// Đing Buốt
    case ĐingBuốt = "Đing Buốt"
    /// Đing Năm
    case ĐingNăm = "Đing Năm"
    /// Ding Tac Ta
    case dingTacTa = "Ding Tac Ta"
    /// Dinh Pa
    case dinhPa = "Dinh Pa"
    /// Diora
    case diora = "Diora"
    /// Diple
    case diple = "Diple"
    /// Dirigida
    case dirigida = "Dirigida"
    /// Discographical Coordinator
    case discographicalCoordinator = "Discographical Coordinator"
    /// Disk Drive
    case diskDrive = "Disk Drive"
    /// Disklavier
    case disklavier = "Disklavier"
    /// Distortion
    case distortion = "Distortion"
    /// Chinese Dit Zu
    case ditZuChinese = "Chinese Dit Zu"
    /// Divan
    case divan = "Divan"
    /// Divan Baglama
    case divanBaglama = "Divan Baglama"
    /// Divan Saz
    case divanSaz = "Divan Saz"
    /// Bowed Diwan Saz
    case diwanSazBowed = "Bowed Diwan Saz"
    /// Diyingehu
    case diyingehu = "Diyingehu"
    /// Dizi
    case dizi = "Dizi"
    /// DJ
    case dj = "DJ"
    /// Djembe
    case djembe = "Djembe"
    /// Djeme
    case djeme = "Djeme"
    /// Djouak
    case djouak = "Djouak"
    /// Djoza
    case djoza = "Djoza"
    /// Djoze
    case djoze = "Djoze"
    /// Djun-Djun
    case djunDjun = "Djun-Djun"
    /// Dmx
    case dmx = "Dmx"
    /// Dmx Programming
    case dmxProgramming = "Dmx Programming"
    /// Dnounouba
    case dnounouba = "Dnounouba"
    /// Doblajes
    case doblajes = "Doblajes"
    /// Doble
    case doble = "Doble"
    /// Dobola
    case dobola = "Dobola"
    /// Dobro
    case dobro = "Dobro"
    /// Electric Dobro
    case dobroElectric = "Electric Dobro"
    /// National Steel Body Dobro
    case dobroNationalSteelBody = "National Steel Body Dobro"
    /// Pedal Dobro
    case dobroPedal = "Pedal Dobro"
    /// Slide Dobro
    case dobroSlit = "Slide Dobro"
    /// Spanish Dobro
    case dobroSpanish = "Spanish Dobro"
    /// Steel Dobro
    case dobroSteel = "Steel Dobro"
    /// Tenor Dobro
    case dobroTenor = "Tenor Dobro"
    /// Doedelzak
    case doedelzak = "Doedelzak"
    /// Dohol
    case dohol = "Dohol"
    /// Doholla
    case doholla = "Doholla"
    /// Doira
    case doira = "Doira"
    /// Dojo
    case dojo = "Dojo"
    /// Dolak
    case dolak = "Dolak"
    /// Dolce Melos
    case dolceMelos = "Dolce Melos"
    /// Dolceola
    case dolceola = "Dolceola"
    /// Dombek
    case dombek = "Dombek"
    /// Dombra
    case dombra = "Dombra"
    /// Dombura
    case dombura = "Dombura"
    /// Domra
    case domra = "Domra"
    /// Donno
    case donno = "Donno"
    /// Dono
    case dono = "Dono"
    /// Donzo N'Goni
    case donsoNgɔni = "Donzo N'Goni"
    /// Doodook
    case doodook = "Doodook"
    /// Dorbon Utas-Tai Huur
    case dorbonUtasTaiHuur = "Dorbon Utas-Tai Huur"
    /// Dorophone
    case dorophone = "Dorophone"
    /// Doshpulur
    case doshpulur = "Doshpulur"
    /// Doshpuluur
    case doshpuluur = "Doshpuluur"
    /// Dotar
    case dotar = "Dotar"
    /// Doubdoumba
    case doubdoumba = "Doubdoumba"
    /// Doubek
    case doubek = "Doubek"
    /// Double Bass / Contrabass / Acoustic Upright Bass
    case doubleBassContraBassAcousticUprightBass = "Double Bass / Contrabass / Acoustic Upright Bass"
    /// Double Bell Euphonium
    case doubleBellEuphonium = "Double Bell Euphonium"
    /// Double Alto
    case doubltAlto = "Double Alto"
    /// Douçain
    case douçain = "Douçain"
    /// Doudouk
    case doudouk = "Doudouk"
    /// Doudoum'ba
    case doudoumba = "Doudoum'ba"
    /// Doumbek
    case doumbek = "Doumbek"
    /// Doum-doum
    case doumdoum = "Doum-doum"
    /// Doundoumba
    case doundoumba = "Doundoumba"
    /// Dourbakee
    case dourbakee = "Dourbakee"
    /// Doussn'gouni
    case doussngouni = "Doussn'gouni"
    /// Doyra
    case doyra = "Doyra"
    /// Dramaturgist
    case dramaturgist = "Dramaturgist"
    /// Dramyin
    case dramyin = "Dramyin"
    /// Dranyem
    case dranyem = "Dranyem"
    /// Drehleier
    case drehleier = "Drehleier"
    /// Droma
    case droma = "Droma"
    /// Drone
    case drone = "Drone"
    /// Bass Drone
    case droneBass = "Bass Drone"
    /// Drones
    case drones = "Drones"
    /// Reed Drones
    case dronesReed = "Reed Drones"
    /// Drum
    case drum = "Drum"
    /// Arabian Drum
    case drumArabian = "Arabian Drum"
    /// Ashiko Drum
    case drumAshiko = "Ashiko Drum"
    /// Aztec Drum
    case drumAztec = "Aztec Drum"
    /// Barrel Drum
    case drumBarrel = "Barrel Drum"
    /// Basque String Drum
    case drumBasqueString = "Basque String Drum"
    /// Bass Drum
    case drumBass = "Bass Drum"
    /// Batá Drum
    case drumBatá = "Batá Drum"
    /// Drum (Bông)
    case drumBông = "Drum (Bông)"
    /// Brass Drum
    case drumBrass = "Brass Drum"
    /// Drum Breaks
    case drumBreaks = "Drum Breaks"
    /// Candombe Drum
    case drumCandombe = "Candombe Drum"
    /// Celtic Drum
    case drumCeltic = "Celtic Drum"
    /// Conga Drum
    case drumConga = "Conga Drum"
    /// Contrabass Drum
    case drumContrabass = "Contrabass Drum"
    /// Cylindrical Drum
    case drumCylindrical = "Cylindrical Drum"
    /// Daiko Drum
    case drumDaiko = "Daiko Drum"
    /// Drum Effects
    case drumEffects = "Drum Effects"
    /// Egyptian Drum
    case drumEgyptian = "Egyptian Drum"
    /// Drum Fills
    case drumFills = "Drum Fills"
    /// Finger Drum
    case drumFinger = "Finger Drum"
    /// Frame Drum
    case drumFrame = "Frame Drum"
    /// Friction Drum
    case drumFriction = "Friction Drum"
    /// Garifuna Drum
    case drumGarifuna = "Garifuna Drum"
    /// Goblet Drum
    case drumGoblet = "Goblet Drum"
    /// Gong Bass Drum
    case drumGongBass = "Gong Bass Drum"
    /// Irish Drum
    case drumIrish = "Irish Drum"
    /// Drumitar
    case drumitar = "Drumitar"
    /// Japanese Drum
    case drumJapanese = "Japanese Drum"
    /// Drum Loop
    case drumLoop = "Drum Loop"
    /// Drum Machine
    case drumMachine = "Drum Machine"
    /// Moog Drum
    case drumMoog = "Moog Drum"
    /// Moroccan Drum
    case drumMorrocan = "Moroccan Drum"
    /// Drum Overdubs
    case drumOverdubs = "Drum Overdubs"
    /// Pakhawaj Drum
    case drumPakhawaj = "Pakhawaj Drum"
    /// Peruvian Box Drum
    case drumPeruvianBox = "Peruvian Box Drum"
    /// Drum Programming
    case drumProgramming = "Drum Programming"
    /// Drums
    case drums = "Drums"
    /// African Drums
    case drumsAfrican = "African Drums"
    /// Drum Samples
    case drumSamples = "Drum Samples"
    /// Ayotte Drums
    case drumsAyotte = "Ayotte Drums"
    /// Bougarabou Drums
    case drumsBougarabou = "Bougarabou Drums"
    /// Cajon Drums
    case drumsCajon = "Cajon Drums"
    /// Ceramic Drums
    case drumsCeramic = "Ceramic Drums"
    /// Chinese Drums
    case drumsChinese = "Chinese Drums"
    /// Clay Drums
    case drumsClay = "Clay Drums"
    /// Damaru Human Skull Drums
    case drumsDamaruHumanSkull = "Damaru Human Skull Drums"
    /// Digital Drums
    case drumsDigital = "Digital Drums"
    /// Drums (Drum Set)
    case drumsDrumSet = "Drums (Drum Set)"
    /// Drums (Electric)
    case drumsElectric = "Drums (Electric)"
    /// Drum Sequencing
    case drumSequencing = "Drum Sequencing"
    /// Drum Set
    case drumSet = "Drum Set"
    /// Bamboo Drum Set
    case drumSetBamboo = "Bamboo Drum Set"
    /// Electronic Drum Set
    case drumSetElectronic = "Electronic Drum Set"
    /// Shaman Drum
    case drumShaman = "Shaman Drum"
    /// Hand Drums
    case drumsHand = "Hand Drums"
    /// Slit Drum
    case drumSlit = "Slit Drum"
    /// MIDI Drums
    case drumsMIDI = "MIDI Drums"
    /// Mouth Drums
    case drumsMouth = "Mouth Drums"
    /// Snare Drum
    case drumSnare = "Snare Drum"
    /// Native American Drums
    case drumsNativeAmerican = "Native American Drums"
    /// Nyabinghi Drums
    case drumsNyabinghi = "Nyabinghi Drums"
    /// Other Drums
    case drumsOther = "Other Drums"
    /// Drum Sounds
    case drumSounds = "Drum Sounds"
    /// Drums Samples
    case drumsSamples = "Drums Samples"
    /// Scottish Drums
    case drumsScottish = "Scottish Drums"
    /// Simmons Drums
    case drumsSimmons = "Simmons Drums"
    /// Drums (Snare)
    case drumsSnare = "Drums (Snare)"
    /// South Indian Drums
    case drumsSouthIndian = "South Indian Drums"
    /// Drums (Steel)
    case drumsSteel = "Drums (Steel)"
    /// Synclavier Drums
    case drumsSynclavier = "Synclavier Drums"
    /// Synthesizer Drums
    case drumsSynthesizer = "Synthesizer Drums"
    /// Tahitian Drums
    case drumsTahitian = "Tahitian Drums"
    /// Taiko Drums
    case drumsTaiko = "Taiko Drums"
    /// Drum Sticks
    case drumSticks = "Drum Sticks"
    /// Toy Drums
    case drumsToy = "Toy Drums"
    /// Water Drums
    case drumsWater = "Water Drums"
    /// Tabor Drum
    case drumTabo = "Tabor Drum"
    /// Tar (drum)
    case drumTar = "Tar (drum)"
    /// Tarahumara Drum
    case drumTarahumara = "Tarahumara Drum"
    /// Tibetan Drum
    case drumTibetan = "Tibetan Drum"
    /// Tibetan Water Drum
    case drumTibetanWater = "Tibetan Water Drum"
    /// Tongue Drum
    case drumTongue = "Tongue Drum"
    /// Drum Triggers
    case drumTriggers = "Drum Triggers"
    /// Turkish Drum
    case drumTurkish = "Turkish Drum"
    /// Udo Drum
    case drumUdo = "Udo Drum"
    /// Ugandan Drum
    case drumUgandan = "Ugandan Drum"
    /// Voodoo Drum
    case drumVoodoo = "Voodoo Drum"
    /// Dubki
    case dubki = "Dubki"
    /// Dubmek
    case dubmek = "Dubmek"
    /// Dubreq Stylophone
    case dubreqStylophone = "Dubreq Stylophone"
    /// Duck Call
    case duckCall = "Duck Call"
    /// Duduk
    case duduk = "Duduk"
    /// Duggi
    case duggi = "Duggi"
    /// Duggis
    case duggis = "Duggis"
    /// Duggi Tarang
    case duggiTarang = "Duggi Tarang"
    /// Duhula
    case duhula = "Duhula"
    /// Dulce Melos
    case dulceMelos = "Dulce Melos"
    /// Dulcian
    case dulcian = "Dulcian"
    /// Bass Dulcian
    case dulcianBass = "Bass Dulcian"
    /// Soprano Dulcian
    case dulcianSoprano = "Soprano Dulcian"
    /// Dulcimer
    case dulcimer = "Dulcimer"
    /// Appalachian Dulcimer
    case dulcimerAppalachian = "Appalachian Dulcimer"
    /// Bowed Dulcimer
    case dulcimerBowed = "Bowed Dulcimer"
    /// Bowed Bass Dulcimer
    case dulcimerBowedBass = "Bowed Bass Dulcimer"
    /// Chinese Dulcimer
    case dulcimerChinese = "Chinese Dulcimer"
    /// Electric Dulcimer
    case dulcimerElectric = "Electric Dulcimer"
    /// Hammered Dulcimer
    case dulcimerHammered = "Hammered Dulcimer"
    /// Mountain Dulcimer
    case dulcimerMountain = "Mountain Dulcimer"
    /// Tenor Dulcimer
    case dulcimerTenor = "Tenor Dulcimer"
    /// Dulcitone
    case dulcitone = "Dulcitone"
    /// Dulzaina
    case dulzaina = "Dulzaina"
    /// Dumbek
    case dumbek = "Dumbek"
    /// Dundo
    case dundo = "Dundo"
    /// Dundumba
    case dundumba = "Dundumba"
    /// Dun-dun
    case dundun = "Dun-dun"
    /// Dundungo
    case dundungo = "Dundungo"
    /// Dung Chen
    case dungChen = "Dung Chen"
    /// Dunun
    case dunun = "Dunun"
    /// National Duolian
    case duolianNational = "National Duolian"
    /// Duplex Mausphon
    case duplexMausphon = "Duplex Mausphon"
    /// Duplication
    case duplication = "Duplication"
    /// Durbeki
    case durbeki = "Durbeki"
    /// Dusungoni
    case dusungoni = "Dusungoni"
    /// Dutar
    case dutar = "Dutar"
    /// Duxianqin
    case duxianqin = "Duxianqin"
    /// Duzenlemeler
    case duzenlemeler = "Duzenlemeler"
    /// DX-5
    case dx5 = "DX-5"
    /// DX-7
    case dx7 = "DX-7"
    /// Eagle-Bone Whistle
    case eagleBoneWhistle = "Eagle-Bone Whistle"
    /// Ebo
    case ebo = "Ebo"
    /// E-Bow
    case eBow = "E-Bow"
    /// Ebow
    case ebow = "Ebow"
    /// Echeia
    case echeia = "Echeia"
    /// Echo
    case echo = "Echo"
    /// Echolette
    case echolette = "Echolette"
    /// Echoplex
    case echoplex = "Echoplex"
    /// Edakka
    case edakka = "Edakka"
    /// Bass Effect Treatment
    case effectTreatmentBass = "Bass Effect Treatment"
    /// Egg Shaker
    case eggShaker = "Egg Shaker"
    /// Ehru
    case ehru = "Ehru"
    /// Ektara
    case ektara = "Ektara"
    /// Ektare
    case ektare = "Ektare"
    /// Electronics
    case electronics = "Electronics"
    /// Electronium
    case electronium = "Electronium"
    /// Elka
    case elka = "Elka"
    /// Ell
    case ell = "Ell"
    /// Emax
    case emax = "Emax"
    /// EMU
    case emu = "EMU"
    /// End Chorus
    case endChorus = "End Chorus"
    /// Endingidi
    case endingidi = "Endingidi"
    /// Endongo
    case endongo = "Endongo"
    /// Enek
    case enek = "Enek"
    /// Energy Bow
    case energyBow = "Energy Bow"
    /// Electro-Acoustic Engineer
    case engineerElectroAcoustic = "Electro-Acoustic Engineer"
    /// Ensemble
    case ensemble = "Ensemble"
    /// Brass Ensemble
    case ensembleBrass = "Brass Ensemble"
    /// Electronic Ensemble
    case ensembleElectronic = "Electronic Ensemble"
    /// Ensoniq ASR 10
    case ensoniqASR10 = "Ensoniq ASR 10"
    /// Entstaubt
    case entstaubt = "Entstaubt"
    /// Environmental Recording
    case environmentalRecording = "Environmental Recording"
    /// Epinette
    case epinette = "Epinette"
    /// Epiphone
    case epiphone = "Epiphone"
    /// Epiphone Casino
    case epiphoneCasino = "Epiphone Casino"
    /// Erhu
    case erhu = "Erhu"
    /// Erkencho
    case erkencho = "Erkencho"
    /// Escaleta
    case escaleta = "Escaleta"
    /// Esraj
    case esraj = "Esraj"
    /// Estilista
    case estilista = "Estilista"
    /// Euphonium
    case euphonium = "Euphonium"
    /// Evi
    case evi = "Evi"
    /// EWI
    case ewi = "EWI"
    /// Experimental Big Band
    case experimentalBigBand = "Experimental Big Band"
    /// Bass Explore
    case exploreBass = "Bass Explore"
    /// Explosions
    case explosions = "Explosions"
    /// Fa'atete
    case faatete = "Fa'atete"
    /// Fado
    case fado = "Fado"
    /// Fagote Antigo
    case fagoteAntigo = "Fagote Antigo"
    /// Fagotes
    case fagotes = "Fagotes"
    /// Fagotto
    case fagotto = "Fagotto"
    /// Fairlight
    case fairlight = "Fairlight"
    /// Fairlight CMI
    case fairlightCMI = "Fairlight CMI"
    /// Fairlight III
    case fairlightIII = "Fairlight III"
    /// Falsetto
    case falsetto = "Falsetto"
    /// Falssetist
    case falssetist = "Falssetist"
    /// Farfisa
    case farfisa = "Farfisa"
    /// Farfisa Organ
    case farfisaOrgan = "Farfisa Organ"
    /// Featured Artist
    case featuredArtist = "Featured Artist"
    /// Featuring
    case featuring = "Featuring"
    /// Fender Jaguar
    case fenderJaguar = "Fender Jaguar"
    /// Fender Jazz Bass
    case fenderJazzBass = "Fender Jazz Bass"
    /// Fender Rhodes
    case fenderRhodes = "Fender Rhodes"
    /// Fender Stratocaster
    case fenderStratocaster = "Fender Stratocaster"
    /// Fender Telecaster
    case fenderTelecaster = "Fender Telecaster"
    /// Ferrington High String
    case ferringtonHighString = "Ferrington High String"
    /// Ferrino
    case ferrino = "Ferrino"
    /// Fid
    case fid = "Fid"
    /// Fiddle
    case fiddle = "Fiddle"
    /// 12-String Fiddle
    case fiddle12String = "12-String Fiddle"
    /// One-String Fiddle
    case fiddle1String = "One-String Fiddle"
    /// 2-String Fiddle
    case fiddle2String = "2-String Fiddle"
    /// Bass Fiddle
    case fiddleBass = "Bass Fiddle"
    /// Bowed Fiddle
    case fiddleBowed = "Bowed Fiddle"
    /// Cajun Fiddle
    case fiddleCajun = "Cajun Fiddle"
    /// Contrabass Fiddle
    case fiddleContrabass = "Contrabass Fiddle"
    /// Electric Fiddle
    case fiddleElectric = "Electric Fiddle"
    /// Hardanger Fiddle
    case fiddleHardanger = "Hardanger Fiddle"
    /// Fiddle Harmonics
    case fiddleHarmonics = "Fiddle Harmonics"
    /// Irish Fiddle
    case fiddleIrish = "Irish Fiddle"
    /// Medieval Fiddle
    case fiddleMedieval = "Medieval Fiddle"
    /// Njarka Fiddle
    case fiddleNjarka = "Njarka Fiddle"
    /// Octave Fiddle
    case fiddleOctave = "Octave Fiddle"
    /// Renaissance Fiddle
    case fiddleRenaissance = "Renaissance Fiddle"
    /// Scottish Fiddle
    case fiddleScottish = "Scottish Fiddle"
    /// Stump Fiddle
    case fiddleStump = "Stump Fiddle"
    /// Field Organ
    case fieldOrgan = "Field Organ"
    /// Fife
    case fife = "Fife"
    /// Fife Drum
    case fifeDrum = "Fife Drum"
    /// Fifre
    case fifre = "Fifre"
    /// Fills
    case fills = "Fills"
    /// Finger Picking
    case fingerPicking = "Finger Picking"
    /// Finger Snaps
    case fingerSnaps = "Finger Snaps"
    /// Fiol
    case fiol = "Fiol"
    /// Fisarmonica
    case fisarmonica = "Fisarmonica"
    /// Fiscornio
    case fiscornio = "Fiscornio"
    /// 5-Strings
    case fiveStrings = "5-Strings"
    /// Flabiol
    case flabiol = "Flabiol"
    /// Flageolet
    case flageolet = "Flageolet"
    /// English Flageolet
    case flageoletEnglish = "English Flageolet"
    /// Flanger
    case flanger = "Flanger"
    /// Flapamba
    case flapamba = "Flapamba"
    /// Flautilla
    case flautilla = "Flautilla"
    /// Flautino
    case flautino = "Flautino"
    /// Flecha
    case flecha = "Flecha"
    /// Flexatones
    case flexatones = "Flexatones"
    /// Flicorno
    case flicorno = "Flicorno"
    /// Fliscorno
    case fliscorno = "Fliscorno"
    /// Floghera
    case floghera = "Floghera"
    /// Flojt
    case flojt = "Flojt"
    /// Floppy Drive
    case floppyDrive = "Floppy Drive"
    /// Flote
    case flote = "Flote"
    /// Floten
    case floten = "Floten"
    /// Fluer Gemanat
    case fluerGemanat = "Fluer Gemanat"
    /// Flugabone
    case flugabone = "Flugabone"
    /// Flugelhorn
    case flugelhorn = "Flugelhorn"
    /// Bass Flugelhorn
    case flugelhornBass = "Bass Flugelhorn"
    /// Fluger
    case fluger = "Fluger"
    /// Fluier
    case fluier = "Fluier"
    /// Flumpet
    case flumpet = "Flumpet"
    /// Flustes
    case flustes = "Flustes"
    /// Flute
    case flute = "Flute"
    /// 2-Hole Flute
    case flute2Hole = "2-Hole Flute"
    /// African Flute
    case fluteAfrican = "African Flute"
    /// Alto Flute
    case fluteAlto = "Alto Flute"
    /// Andean Flute
    case fluteAndean = "Andean Flute"
    /// Arabian Flute
    case fluteArabian = "Arabian Flute"
    /// Bamboo Flute
    case fluteBamboo = "Bamboo Flute"
    /// Flute (Baritone)
    case fluteBaritone = "Flute (Baritone)"
    /// Baroque Flute
    case fluteBaroque = "Baroque Flute"
    /// Bass Flute
    case fluteBass = "Bass Flute"
    /// Cedar Flute
    case fluteCedar = "Cedar Flute"
    /// Celtic Flute
    case fluteCeltic = "Celtic Flute"
    /// Chinese Flute
    case fluteChinese = "Chinese Flute"
    /// Clay Flute
    case fluteClay = "Clay Flute"
    /// Concert Flute
    case fluteConcert = "Concert Flute"
    /// Contrabass Flute
    case fluteContrabass = "Contrabass Flute"
    /// Flute (Copper)
    case fluteCopper = "Flute (Copper)"
    /// Flûte D'Amour
    case flûteDAmour = "Flûte D'Amour"
    /// Double Flute
    case fluteDouble = "Double Flute"
    /// Duct Flute
    case fluteDuct = "Duct Flute"
    /// E Flat Flute
    case fluteEFlat = "E Flat Flute"
    /// Egyptian Flute
    case fluteEgyptian = "Egyptian Flute"
    /// Electric Flute
    case fluteElectric = "Electric Flute"
    /// End-Blown Flute
    case fluteEndBlown = "End-Blown Flute"
    /// English Flute
    case fluteEnglish = "English Flute"
    /// Finger Flute
    case fluteFinger = "Finger Flute"
    /// Fipple Flute
    case fluteFipple = "Fipple Flute"
    /// Fourth Flute
    case fluteFourth = "Fourth Flute"
    /// Fretless Flute
    case fluteFretless = "Fretless Flute"
    /// Flute (Glass)
    case fluteGlass = "Flute (Glass)"
    /// Harmonic Flute
    case fluteHarmonic = "Harmonic Flute"
    /// Indian Flute
    case fluteIndian = "Indian Flute"
    /// Irish Flute
    case fluteIrish = "Irish Flute"
    /// Japanese Flute
    case fluteJapanese = "Japanese Flute"
    /// Lakota Flute
    case fluteLakota = "Lakota Flute"
    /// Medicine Flute
    case fluteMedicine = "Medicine Flute"
    /// Medieval Flute
    case fluteMedieval = "Medieval Flute"
    /// MIDI Flute
    case fluteMIDI = "MIDI Flute"
    /// Native American Flute
    case fluteNativeAmerican = "Native American Flute"
    /// Ney Flute
    case fluteNey = "Ney Flute"
    /// Norwegian Selje Flute
    case fluteNorwegianSelje = "Norwegian Selje Flute"
    /// Nose Flute
    case fluteNose = "Nose Flute"
    /// Octave Flute
    case fluteOctave = "Octave Flute"
    /// Fluteophone
    case fluteophone = "Fluteophone"
    /// Flute Overdub
    case fluteOverdub = "Flute Overdub"
    /// Overtone Flute
    case fluteOvertone = "Overtone Flute"
    /// Pakistani Flute
    case flutePakistani = "Pakistani Flute"
    /// Peruvian Flute
    case flutePeruvian = "Peruvian Flute"
    /// Petite Flute
    case flutePetite = "Petite Flute"
    /// Piccolo Flute
    case flutePiccolo = "Piccolo Flute"
    /// Pump Flute
    case flutePump = "Pump Flute"
    /// Reed Flute
    case fluteReed = "Reed Flute"
    /// Renaissance Flute
    case fluteRenaissance = "Renaissance Flute"
    /// Flute Sample
    case fluteSample = "Flute Sample"
    /// Saó Ôi Flute
    case flutesaóÔi = "Saó Ôi Flute"
    /// Flute Saxophone
    case fluteSaxophone = "Flute Saxophone"
    /// Indian Bamboo Flutes
    case flutesIndianBamboo = "Indian Bamboo Flutes"
    /// Navajo Flutes
    case flutesNavajo = "Navajo Flutes"
    /// Flute (Soprano)
    case fluteSoprano = "Flute (Soprano)"
    /// Spaghetti Flute
    case fluteSpaghetti = "Spaghetti Flute"
    /// Tibetan Flutes
    case flutesTibetan = "Tibetan Flutes"
    /// Synthesizer Flute
    case fluteSynthesizer = "Synthesizer Flute"
    /// Flute (Tenor)
    case fluteTenor = "Flute (Tenor)"
    /// Tin Flute
    case fluteTin = "Tin Flute"
    /// Transverse Flute
    case fluteTransverse = "Transverse Flute"
    /// Treble Flute
    case fluteTreble = "Treble Flute"
    /// Turkish Flute
    case fluteTurkish = "Turkish Flute"
    /// Vessel Flute
    case fluteVessel = "Vessel Flute"
    /// Willow Flute
    case fluteWillow = "Willow Flute"
    /// Flute (Wood)
    case fluteWood = "Flute (Wood)"
    /// Foghorn
    case foghorn = "Foghorn"
    /// Folk Band
    case folkBand = "Folk Band"
    /// Fonico
    case fonico = "Fonico"
    /// Footdella
    case footdella = "Footdella"
    /// Foot Stamps
    case footStamps = "Foot Stamps"
    /// Footsteps
    case footsteps = "Footsteps"
    /// Foot Stomping
    case footStomping = "Foot Stomping"
    /// Foot Tambourine
    case footTambourine = "Foot Tambourine"
    /// Fortepiano
    case fortepiano = "Fortepiano"
    /// Fotdella
    case fotdella = "Fotdella"
    /// Found Sounds
    case foundSounds = "Found Sounds"
    /// Fra Fra
    case fraFra = "Fra Fra"
    /// Fraustophone
    case fraustophone = "Fraustophone"
    /// Freakboards
    case freakboards = "Freakboards"
    /// Freestyle
    case freestyle = "Freestyle"
    /// Frequencies
    case frequencies = "Frequencies"
    /// Frets
    case frets = "Frets"
    /// Friction Idiophone
    case frictionIdiophone = "Friction Idiophone"
    /// Frippertronics
    case frippertronics = "Frippertronics"
    /// Friscorno
    case friscorno = "Friscorno"
    /// Frottoir
    case frottoir = "Frottoir"
    /// Frula
    case frula = "Frula"
    /// Fugara
    case fugara = "Fugara"
    /// Fujara
    case fujara = "Fujara"
    /// Fukimono
    case fukimono = "Fukimono"
    /// Fulia
    case fulia = "Fulia"
    /// Funda
    case funda = "Funda"
    /// Funde Drum
    case fundeDrum = "Funde Drum"
    /// Fundeh
    case fundeh = "Fundeh"
    /// Furulya
    case furulya = "Furulya"
    /// Futozao
    case futozao = "Futozao"
    /// Fuzz Bass
    case fuzzBass = "Fuzz Bass"
    /// Fuzz Guitar
    case fuzzGuitar = "Fuzz Guitar"
    /// Fuzz Mandolin
    case fuzzMandolin = "Fuzz Mandolin"
    /// Fuzz-wah
    case fuzzwah = "Fuzz-wah"
    /// Fx Vocals
    case fxVocals = "Fx Vocals"
    /// Gabala
    case gabala = "Gabala"
    /// Gadje
    case gadje = "Gadje"
    /// Gadulka
    case gadulka = "Gadulka"
    /// Gaffer
    case gaffer = "Gaffer"
    /// Gagda
    case gagda = "Gagda"
    /// Gaide
    case gaide = "Gaide"
    /// Gaita
    case gaita = "Gaita"
    /// Gaita Hembra
    case gaitaHembra = "Gaita Hembra"
    /// Gaita Macho
    case gaitaMacho = "Gaita Macho"
    /// Gallal
    case gallal = "Gallal"
    /// Gallichone
    case gallichone = "Gallichone"
    /// Galoubet
    case galoubet = "Galoubet"
    /// Gamba
    case gamba = "Gamba"
    /// Gambang
    case gambang = "Gambang"
    /// Gambarde
    case gambarde = "Gambarde"
    /// Gambus
    case gambus = "Gambus"
    /// Gamelan
    case gamelan = "Gamelan"
    /// Ganawa
    case ganawa = "Ganawa"
    /// Gandanga
    case gandanga = "Gandanga"
    /// Ganga
    case ganga = "Ganga"
    /// Gangira
    case gangira = "Gangira"
    /// Gangkogui
    case gangkogui = "Gangkogui"
    /// Ganjeera
    case ganjeera = "Ganjeera"
    /// Gankogui
    case gankogui = "Gankogui"
    /// Ganzá
    case ganzá = "Ganzá"
    /// Gaohu
    case gaohu = "Gaohu"
    /// Garamut
    case garamut = "Garamut"
    /// Garden Hose
    case gardenHose = "Garden Hose"
    /// Gardon
    case gardon = "Gardon"
    /// Gargabou
    case gargabou = "Gargabou"
    /// Garganta
    case garganta = "Garganta"
    /// Garifuna
    case garifuna = "Garifuna"
    /// Garmon
    case garmon = "Garmon"
    /// Gasba
    case gasba = "Gasba"
    /// Gatam
    case gatam = "Gatam"
    /// Gatham
    case gatham = "Gatham"
    /// Gato
    case gato = "Gato"
    /// Gaval
    case gaval = "Gaval"
    /// Gayageum
    case gayageum = "Gayageum"
    /// Gayda
    case gayda = "Gayda"
    /// Gazamba
    case gazamba = "Gazamba"
    /// Gehu
    case gehu = "Gehu"
    /// Geige
    case geige = "Geige"
    /// Gemshorn
    case gemshorn = "Gemshorn"
    /// Gendang
    case gendang = "Gendang"
    /// Gender
    case gender = "Gender"
    /// Gender Barung
    case genderBarung = "Gender Barung"
    /// Genggong
    case genggong = "Genggong"
    /// Geomungo
    case geomungo = "Geomungo"
    /// Gesamprojekt
    case gesamprojekt = "Gesamprojekt"
    /// Gesang
    case gesang = "Gesang"
    /// Ghaita
    case ghaita = "Ghaita"
    /// Ghantam
    case ghantam = "Ghantam"
    /// Ghatam
    case ghatam = "Ghatam"
    /// Ghaychak
    case ghaychak = "Ghaychak"
    /// Ghijak
    case ghijak = "Ghijak"
    /// Ghironda
    case ghironda = "Ghironda"
    /// Ghungru
    case ghungru = "Ghungru"
    /// Gidayu
    case gidayu = "Gidayu"
    /// Gidi
    case gidi = "Gidi"
    /// Giffus
    case giffus = "Giffus"
    /// Ģīga
    case Ģīga = "Ģīga"
    /// Gimbri
    case gimbri = "Gimbri"
    /// Girl's Choir
    case girlsChoir = "Girl's Choir"
    /// Gitcho
    case gitcho = "Gitcho"
    /// Gitjo
    case gitjo = "Gitjo"
    /// Gits
    case gits = "Gits"
    /// Gittern
    case gittern = "Gittern"
    /// Gizmo
    case gizmo = "Gizmo"
    /// Glass
    case glass = "Glass"
    /// Glasses
    case glasses = "Glasses"
    /// Glissando
    case glissando = "Glissando"
    /// Glockenspiel
    case glockenspiel = "Glockenspiel"
    /// Glongkhak
    case glongkhak = "Glongkhak"
    /// Glong Song Na
    case glongSongNa = "Glong Song Na"
    /// Glongtad
    case glongtad = "Glongtad"
    /// Gnaoua
    case gnaoua = "Gnaoua"
    /// Go Go Bell
    case goGoBell = "Go Go Bell"
    /// Gome
    case gome = "Gome"
    /// Gong
    case gong = "Gong"
    /// Gonga
    case gonga = "Gonga"
    /// Gong-chime
    case gongchime = "Gong-chime"
    /// Chinese Gong
    case gongChinese = "Chinese Gong"
    /// Gongoma
    case gongoma = "Gongoma"
    /// Gongs
    case gongs = "Gongs"
    /// Muted Gongs
    case gongsMuted = "Muted Gongs"
    /// Tibetan Gongs
    case gongsTibetan = "Tibetan Gongs"
    /// Thai Gong
    case gongThai = "Thai Gong"
    /// Gongue
    case gongue = "Gongue"
    /// Wind Gong
    case gongWind = "Wind Gong"
    /// Gonkogui
    case gonkogui = "Gonkogui"
    /// Gonza
    case gonza = "Gonza"
    /// Goofus
    case goofus = "Goofus"
    /// Goong Gedé
    case goongGedé = "Goong Gedé"
    /// Gopichan
    case gopichan = "Gopichan"
    /// Gopichard
    case gopichard = "Gopichard"
    /// Gorduna
    case gorduna = "Gorduna"
    /// Gorong
    case gorong = "Gorong"
    /// Gosha Nagara
    case goshaNagara = "Gosha Nagara"
    /// Gottuvâdyam
    case gottuvâdyam = "Gottuvâdyam"
    /// Gourd
    case gourd = "Gourd"
    /// Gourd Banjo
    case gourdBanjo = "Gourd Banjo"
    /// Grabok
    case grabok = "Grabok"
    /// Graile
    case graile = "Graile"
    /// Gralla
    case gralla = "Gralla"
    /// Gramorimba
    case gramorimba = "Gramorimba"
    /// Grand Cassa
    case grandCassa = "Grand Cassa"
    /// Granite Block
    case graniteBlock = "Granite Block"
    /// Gravichord
    case gravichord = "Gravichord"
    /// Gravikord
    case gravikord = "Gravikord"
    /// Gravure
    case gravure = "Gravure"
    /// Greek Baglama
    case greekBaglama = "Greek Baglama"
    /// Grelots
    case grelots = "Grelots"
    /// Griot
    case griot = "Griot"
    /// Gritas
    case gritas = "Gritas"
    /// Gritos
    case gritos = "Gritos"
    /// Groovebox
    case groovebox = "Groovebox"
    /// Grosse Caisse
    case grosseCaisse = "Grosse Caisse"
    /// Group
    case group = "Group"
    /// Group Member
    case groupMember = "Group Member"
    /// Grup Kala Laut
    case grupKalaLaut = "Grup Kala Laut"
    /// Gu
    case gu = "Gu"
    /// Guacharaca
    case guacharaca = "Guacharaca"
    /// Guache
    case guache = "Guache"
    /// Guaga
    case guaga = "Guaga"
    /// Guan
    case guan = "Guan"
    /// Guanzi
    case guanzi = "Guanzi"
    /// Guaracha
    case guaracha = "Guaracha"
    /// Guasá
    case guasá = "Guasá"
    /// Guataca
    case guataca = "Guataca"
    /// Guayo
    case guayo = "Guayo"
    /// Gubgubbi
    case gubgubbi = "Gubgubbi"
    /// Gudok
    case gudok = "Gudok"
    /// Gudu Gudu
    case guduGudu = "Gudu Gudu"
    /// Guellal
    case guellal = "Guellal"
    /// Guembir
    case guembir = "Guembir"
    /// Guengari
    case guengari = "Guengari"
    /// Guero
    case guero = "Guero"
    /// Guest
    case guest = "Guest"
    /// Guest Artist
    case guestArtist = "Guest Artist"
    /// Guest Chorus Master
    case guestChorusMaster = "Guest Chorus Master"
    /// Guest Vocals
    case guestVocals = "Guest Vocals"
    /// Guica
    case guica = "Guica"
    /// Guichero
    case guichero = "Guichero"
    /// Guido
    case guido = "Guido"
    /// Guijo
    case guijo = "Guijo"
    /// Guimbri
    case guimbri = "Guimbri"
    /// Guinea War-Horn
    case guineaWarHorn = "Guinea War-Horn"
    /// Guira
    case guira = "Guira"
    /// Güira
    case güira = "Güira"
    /// Guiro
    case guiro = "Guiro"
    /// Güiro
    case güiro = "Güiro"
    /// Guita Flé
    case guitaFlé = "Guita Flé"
    /// Guitalele
    case guitalele = "Guitalele"
    /// Guitar
    case guitar = "Guitar"
    /// Guitar (10 String)
    case guitar10String = "Guitar (10 String)"
    /// Guitar (11 String)
    case guitar11String = "Guitar (11 String)"
    /// 12 String Guitar
    case guitar12String = "12 String Guitar"
    /// Guitar (12 String Acoustic)
    case guitar12StringAcoustic = "Guitar (12 String Acoustic)"
    /// Guitar (12 String Electric)
    case guitar12StringElectric = "Guitar (12 String Electric)"
    /// Guitar (2 String)
    case guitar2String = "Guitar (2 String)"
    /// Guitar (3 String)
    case guitar3String = "Guitar (3 String)"
    /// 6-String Guitar
    case guitar6String = "6-String Guitar"
    /// Acoustic 6-String Guitar
    case guitar6StringAcoustic = "Acoustic 6-String Guitar"
    /// 7-String Guitar
    case guitar7String = "7-String Guitar"
    /// Guitar (7 String Acoustic)
    case guitar7StringAcoustic = "Guitar (7 String Acoustic)"
    /// Guitar (7 String Electric)
    case guitar7StringElectric = "Guitar (7 String Electric)"
    /// Guitar (8 String)
    case guitar8String = "Guitar (8 String)"
    /// 9-String Guitar
    case guitar9String = "9-String Guitar"
    /// Acoustic Guitar
    case guitarAcoustic = "Acoustic Guitar"
    /// Acoustic Slide Guitar
    case guitarAcousticSlide = "Acoustic Slide Guitar"
    /// Alto Guitar
    case guitarAlto = "Alto Guitar"
    /// Archguitar
    case guitarArch = "Archguitar"
    /// Archtop Guitar
    case guitarArchTop = "Archtop Guitar"
    /// Baritone Guitar
    case guitarBaritone = "Baritone Guitar"
    /// Baroque Guitar
    case guitarBaroque = "Baroque Guitar"
    /// Bass Guitar
    case guitarBass = "Bass Guitar"
    /// Acoustic Bass Guitar
    case guitarBassAcoustic = "Acoustic Bass Guitar"
    /// Bottleneck Guitar
    case guitarBottleneck = "Bottleneck Guitar"
    /// Classical Guitar
    case guitarClassical = "Classical Guitar"
    /// Contrabass Guitar
    case guitarContrabass = "Contrabass Guitar"
    /// Guitar (Distortion)
    case guitarDistortion = "Guitar (Distortion)"
    /// Guitar (Double Neck)
    case guitarDoubleNeck = "Guitar (Double Neck)"
    /// Guitar Effects
    case guitarEffects = "Guitar Effects"
    /// Electric Guitar
    case guitarElectric = "Electric Guitar"
    /// Electric 6-String Guitar
    case guitarElectric6String = "Electric 6-String Guitar"
    /// Guitar (Electric Baritone)
    case guitarElectricBaritone = "Guitar (Electric Baritone)"
    /// Guitar (Electric Hollow Body)
    case guitarElectricHollowBody = "Guitar (Electric Hollow Body)"
    /// Electric Lap Steel Guitar
    case guitarElectricLapSteel = "Electric Lap Steel Guitar"
    /// Guitar (Electric Nylon String)
    case guitarElectricNylonString = "Guitar (Electric Nylon String)"
    /// Guitar (Electric Resonator)
    case guitarElectricResonator = "Guitar (Electric Resonator)"
    /// Electric Slide Guitar
    case guitarElectricSlide = "Electric Slide Guitar"
    /// Guitar (Electric Tenor)
    case guitarElectricTenor = "Guitar (Electric Tenor)"
    /// Guitar (Electroacoustic)
    case guitarElectroacoustic = "Guitar (Electroacoustic)"
    /// Guitar (Electronic)
    case guitarElectronic = "Guitar (Electronic)"
    /// Guitarelle
    case guitarelle = "Guitarelle"
    /// Guitaret
    case guitaret = "Guitaret"
    /// Guitar Feedback
    case guitarFeedback = "Guitar Feedback"
    /// Flamenco Guitar
    case guitarFlamenco = "Flamenco Guitar"
    /// Fretless Guitar
    case guitarFretless = "Fretless Guitar"
    /// Electric Fretless Guitar
    case guitarFretlessElectric = "Electric Fretless Guitar"
    /// Gut Guitar
    case guitarGut = "Gut Guitar"
    /// Gut String Guitar
    case guitarGutString = "Gut String Guitar"
    /// Hawaiian Guitar
    case guitarHawaiian = "Hawaiian Guitar"
    /// Hawaiian Lap Steel Guitar
    case guitarHawaiianLapSteel = "Hawaiian Lap Steel Guitar"
    /// Hi String Guitar
    case guitarHiString = "Hi String Guitar"
    /// Hi String Guitar (Acoustic)
    case guitarHiStringAcoustic = "Hi String Guitar (Acoustic)"
    /// Guitar (Hollow Body)
    case guitarHollowBody = "Guitar (Hollow Body)"
    /// Kona Guitar
    case guitarKona = "Kona Guitar"
    /// Lap Steel Guitar
    case guitarLapSteel = "Lap Steel Guitar"
    /// Lead Guitar
    case guitarLead = "Lead Guitar"
    /// Guitar (Leslie)
    case guitarLeslie = "Guitar (Leslie)"
    /// Guitar Loops
    case guitarLoops = "Guitar Loops"
    /// Mexican Guitar
    case guitarMexican = "Mexican Guitar"
    /// MIDI Guitar
    case guitarMIDI = "MIDI Guitar"
    /// Guitar (Nashville)
    case guitarNashville = "Guitar (Nashville)"
    /// National Steel Guitar
    case guitarNationalSteel = "National Steel Guitar"
    /// Nylon Guitar
    case guitarNylon = "Nylon Guitar"
    /// Guitar (Nylon String)
    case guitarNylonString = "Guitar (Nylon String)"
    /// Guitar Overdubs
    case guitarOverdubs = "Guitar Overdubs"
    /// Guitarp
    case guitarp = "Guitarp"
    /// Pedal Steel Guitar
    case guitarPedalSteel = "Pedal Steel Guitar"
    /// Piccolo Guitar
    case guitarPiccolo = "Piccolo Guitar"
    /// Prepared Guitar
    case guitarPrepared = "Prepared Guitar"
    /// Guitarra Concheros
    case guitarraConcheros = "Guitarra Concheros"
    /// Renaissance Guitar
    case guitarRenaissance = "Renaissance Guitar"
    /// Requinto Guitar
    case guitarRequinto = "Requinto Guitar"
    /// Guitar (Resonator)
    case guitarResonator = "Guitar (Resonator)"
    /// Guitar (Rhythm)
    case guitarRhythm = "Guitar (Rhythm)"
    /// Guitar (Rickenbacker)
    case guitarRickenbacker = "Guitar (Rickenbacker)"
    /// Guitarrilla
    case guitarrilla = "Guitarrilla"
    /// Guitarrón
    case guitarron = "Guitarrón"
    /// Guitarrón Chileno
    case guitarrónChileno = "Guitarrón Chileno"
    /// Guitarrón Mexicano
    case guitarrónMexicano = "Guitarrón Mexicano"
    /// Guitars
    case guitars = "Guitars"
    /// Sampled Guitar
    case guitarSampled = "Sampled Guitar"
    /// Guitar Samples
    case guitarSamples = "Guitar Samples"
    /// Electric Guitar Samples
    case guitarSamplesElectric = "Electric Guitar Samples"
    /// Semi-Acoustic Guitar
    case guitarSemiAcoustic = "Semi-Acoustic Guitar"
    /// Slack Key Guitar
    case guitarSlackKey = "Slack Key Guitar"
    /// Slide Guitar
    case guitarSlit = "Slide Guitar"
    /// Guitar (Soprano)
    case guitarSoprano = "Guitar (Soprano)"
    /// Spanish Guitar
    case guitarSpanish = "Spanish Guitar"
    /// Spanish Acoustic Guitar
    case guitarSpanishAcoustic = "Spanish Acoustic Guitar"
    /// Guitar (Steel)
    case guitarSteel = "Guitar (Steel)"
    /// Steel-String Guitar
    case guitarSteelString = "Steel-String Guitar"
    /// Guitar (String)
    case guitarString = "Guitar (String)"
    /// Guitar (String Bender)
    case guitarStringBender = "Guitar (String Bender)"
    /// Synclavier Guitar
    case guitarSynclavier = "Synclavier Guitar"
    /// Guitar (Synthesizer)
    case guitarSynthesizer = "Guitar (Synthesizer)"
    /// Guitar Synth (Horns)
    case guitarSynthHorns = "Guitar Synth (Horns)"
    /// Guitar (Tenor)
    case guitarTenor = "Guitar (Tenor)"
    /// Terz Guitar
    case guitarTerz = "Terz Guitar"
    /// Toy Guitar
    case guitarToy = "Toy Guitar"
    /// Treble Guitar
    case guitarTreble = "Treble Guitar"
    /// Guitar (Tremolo)
    case guitarTremolo = "Guitar (Tremolo)"
    /// GuitarViol
    case guitarViol = "GuitarViol"
    /// Wah Wah Guitar
    case guitarWahWah = "Wah Wah Guitar"
    /// Warr Guitar
    case guitarWarr = "Warr Guitar"
    /// Guiterne
    case guiterne = "Guiterne"
    /// Guitfiddle
    case guitfiddle = "Guitfiddle"
    /// Guitjo
    case guitjo = "Guitjo"
    /// Guitorgan
    case guitorgan = "Guitorgan"
    /// Guits
    case guits = "Guits"
    /// Guizos
    case guizos = "Guizos"
    /// Gumbri
    case gumbri = "Gumbri"
    /// Gunga
    case gunga = "Gunga"
    /// Gunga-Degun
    case gungaDegun = "Gunga-Degun"
    /// Gungon
    case gungon = "Gungon"
    /// Gunguru
    case gunguru = "Gunguru"
    /// Gunibri
    case gunibri = "Gunibri"
    /// Guoqin
    case guoqin = "Guoqin"
    /// Guqin
    case guqin = "Guqin"
    /// Gurio
    case gurio = "Gurio"
    /// Gusli
    case gusli = "Gusli"
    /// Gu-Zheng
    case guZheng = "Gu-Zheng"
    /// Guzheng
    case guzheng = "Guzheng"
    /// Gwido
    case gwido = "Gwido"
    /// Gya Ling
    case gyaLing = "Gya Ling"
    /// Gyil
    case gyil = "Gyil"
    /// Hadgini
    case hadgini = "Hadgini"
    /// Haegeum
    case haegeum = "Haegeum"
    /// Haegum
    case haegum = "Haegum"
    /// Hai Soon
    case haiSoon = "Hai Soon"
    /// Hajouj
    case hajouj = "Hajouj"
    /// Haka
    case haka = "Haka"
    /// Halldorophone
    case halldorophone = "Halldorophone"
    /// Hambone
    case hambone = "Hambone"
    /// Hammer
    case hammer = "Hammer"
    /// Hammerflugel
    case hammerflugel = "Hammerflugel"
    /// Hammerklavier
    case hammerklavier = "Hammerklavier"
    /// Hammond B3
    case hammondB5 = "Hammond B3"
    /// Hammond Organ
    case hammondOrgan = "Hammond Organ"
    /// Hammond Organ Samples
    case hammondOrganSamples = "Hammond Organ Samples"
    /// Hammond Synth
    case hammondSynth = "Hammond Synth"
    /// Ham Radio
    case hamRadio = "Ham Radio"
    /// Handbell Choir Director
    case handbellChoirDirector = "Handbell Choir Director"
    /// Hand Jive
    case handJive = "Hand Jive"
    /// Hands
    case hands = "Hands"
    /// Hand Tinting
    case handTinting = "Hand Tinting"
    /// Hang
    case hang = "Hang"
    /// Hangebekken
    case hangebekken = "Hangebekken"
    /// Hangmernok
    case hangmernok = "Hangmernok"
    /// Hardart
    case hardart = "Hardart"
    /// Hard Disk Drive
    case hardDiskDrive = "Hard Disk Drive"
    /// Hardingfele
    case hardingfele = "Hardingfele"
    /// Härjedalspipa
    case härjedalspipa = "Härjedalspipa"
    /// Harmonia
    case harmonia = "Harmonia"
    /// Harmonica
    case harmonica = "Harmonica"
    /// Harmonica (Amplified)
    case harmonicaAmplified = "Harmonica (Amplified)"
    /// Bass Harmonica
    case harmonicaBass = "Bass Harmonica"
    /// Chromatic Harmonica
    case harmonicaChromatic = "Chromatic Harmonica"
    /// Harmonica (Electric)
    case harmonicaElectric = "Harmonica (Electric)"
    /// Glass Harmonica
    case harmonicaGlass = "Glass Harmonica"
    /// Harmonica Overdub
    case harmonicaOverdub = "Harmonica Overdub"
    /// Synthesizer Harmonica
    case harmonicaSynthesizer = "Synthesizer Harmonica"
    /// Harmonicorde
    case harmonicorde = "Harmonicorde"
    /// Harmonio
    case harmonio = "Harmonio"
    /// Harmonium
    case harmonium = "Harmonium"
    /// Indian Harmonium
    case harmoniumIndian = "Indian Harmonium"
    /// Harmonium Samples
    case harmoniumSamples = "Harmonium Samples"
    /// Harmony
    case harmony = "Harmony"
    /// Harp
    case harp = "Harp"
    /// Aeolian Harp
    case harpAeolian = "Aeolian Harp"
    /// African Harp
    case harpAfrican = "African Harp"
    /// Andean Harp
    case harpAndean = "Andean Harp"
    /// Baroque Harp
    case harpBaroque = "Baroque Harp"
    /// Bass Harp
    case harpBass = "Bass Harp"
    /// Bowed Harp
    case harpBowed = "Bowed Harp"
    /// Celtic Harp
    case harpCeltic = "Celtic Harp"
    /// Chinese Harp
    case harpChinese = "Chinese Harp"
    /// Classical Harp
    case harpClassical = "Classical Harp"
    /// Concert Harp
    case harpConcert = "Concert Harp"
    /// Double Harp
    case harpDouble = "Double Harp"
    /// Echo Harp
    case harpEcho = "Echo Harp"
    /// Harpejji
    case harpejji = "Harpejji"
    /// Electric Harp
    case harpElectric = "Electric Harp"
    /// Electro-Acoustic Harp
    case harpElectroAcoustic = "Electro-Acoustic Harp"
    /// Electracoustic Pedal Harp
    case harpElectroAcousticPedal = "Electracoustic Pedal Harp"
    /// Electronic Harp
    case harpElectronic = "Electronic Harp"
    /// Folk Harp
    case harpFolk = "Folk Harp"
    /// French Harp
    case harpFrench = "French Harp"
    /// German Harp
    case harpGerman = "German Harp"
    /// Glass Harp
    case harpGlass = "Glass Harp"
    /// Gothic Harp
    case harpGothic = "Gothic Harp"
    /// Harp Guitar
    case harpGuitar = "Harp Guitar"
    /// Gut String Harp
    case harpGutString = "Gut String Harp"
    /// Hand Harp
    case harpHand = "Hand Harp"
    /// Indian Harp
    case harpIndian = "Indian Harp"
    /// Irish Harp
    case harpIrish = "Irish Harp"
    /// Irish Harp / Clàrsach
    case harpIrishClàrsach = "Irish Harp / Clàrsach"
    /// Harpischord Synclavier
    case harpischordSynclavier = "Harpischord Synclavier"
    /// Harp Keyboards
    case harpKeyboards = "Harp Keyboards"
    /// Lap Harp
    case harpLap = "Lap Harp"
    /// Laser Harp
    case harpLaser = "Laser Harp"
    /// Mandolin Harp
    case harpMandolin = "Mandolin Harp"
    /// Medieval Harp
    case harpMedieval = "Medieval Harp"
    /// Metal Harp
    case harpMetal = "Metal Harp"
    /// Mexican Harp
    case harpMexican = "Mexican Harp"
    /// Mini Harp
    case harpMini = "Mini Harp"
    /// Harpolek
    case harpolek = "Harpolek"
    /// Harpophone
    case harpophone = "Harpophone"
    /// Paraguayan Harp
    case harpParaguayan = "Paraguayan Harp"
    /// Pedal Harp
    case harpPedal = "Pedal Harp"
    /// Peruvian Harp
    case harpPeruvian = "Peruvian Harp"
    /// Prepared Harp
    case harpPrepared = "Prepared Harp"
    /// Sampled Harp
    case harpSampled = "Sampled Harp"
    /// Scottish Harp
    case harpScottish = "Scottish Harp"
    /// Harpsichord
    case harpsichord = "Harpsichord"
    /// Electric Harpsichord
    case harpsichordElectric = "Electric Harpsichord"
    /// Pedal Harpsichord
    case harpsichordPedal = "Pedal Harpsichord"
    /// Harpsichord Tuner
    case harpsichordTuner = "Harpsichord Tuner"
    /// Soprano Harp
    case harpSoprano = "Soprano Harp"
    /// Steel String Harp
    case harpSteelString = "Steel String Harp"
    /// Synthesizer Harp
    case harpSynthesizer = "Synthesizer Harp"
    /// Tenor Harp
    case harpTenor = "Tenor Harp"
    /// Triple Harp
    case harpTriple = "Triple Harp"
    /// Venezuelan Harp
    case harpVenezuelan = "Venezuelan Harp"
    /// Wire-Strung Harp
    case harpWireStrung = "Wire-Strung Harp"
    /// Wire-Strung Celtic Harp
    case harpWireStrungCeltic = "Wire-Strung Celtic Harp"
    /// Mouth Hat
    case hatMouth = "Mouth Hat"
    /// Hautbois
    case hautbois = "Hautbois"
    /// Haute Contre Vocal
    case hauteContreVocal = "Haute Contre Vocal"
    /// Head Chorister
    case headChorister = "Head Chorister"
    /// Chinese Health Balls
    case healthBallsChinese = "Chinese Health Balls"
    /// Heckelphone
    case heckelphone = "Heckelphone"
    /// Hegedu
    case hegedu = "Hegedu"
    /// Heike Biwa
    case heikeBiwa = "Heike Biwa"
    /// Helicon
    case helicon = "Helicon"
    /// Heys
    case heys = "Heys"
    /// Hichiriki
    case hichiriki = "Hichiriki"
    /// Hidalguera
    case hidalguera = "Hidalguera"
    /// Highland Bagpipe
    case highlandBagpipe = "Highland Bagpipe"
    /// High Tenor Vocal
    case highTenorVocal = "High Tenor Vocal"
    /// Hihat
    case hihat = "Hihat"
    /// Hikimono
    case hikimono = "Hikimono"
    /// Hilversum
    case hilversum = "Hilversum"
    /// Hinedewho
    case hinedewho = "Hinedewho"
    /// Hirado-o-daiko
    case hiradoodaiko = "Hirado-o-daiko"
    /// Hmông Flute
    case hmôngFlute = "Hmông Flute"
    /// Hoddu
    case hoddu = "Hoddu"
    /// Hojak
    case hojak = "Hojak"
    /// Hollers
    case hollers = "Hollers"
    /// Homemade Instruments
    case homemadeInstruments = "Homemade Instruments"
    /// Homus
    case homus = "Homus"
    /// Hook
    case hook = "Hook"
    /// Hooter
    case hooter = "Hooter"
    /// Horagai
    case horagai = "Horagai"
    /// Horn
    case horn = "Horn"
    /// Horn (Alto)
    case hornAlto = "Horn (Alto)"
    /// Baritone Horn
    case hornBaritone = "Baritone Horn"
    /// Baroque Horn
    case hornBaroque = "Baroque Horn"
    /// Bass Horn
    case hornBass = "Bass Horn"
    /// Basset Horn
    case hornBasset = "Basset Horn"
    /// Descant Horn
    case hornDescant = "Descant Horn"
    /// E Flat Horn
    case hornEFlat = "E Flat Horn"
    /// Electronic Horn
    case hornElectronic = "Electronic Horn"
    /// English Horn
    case hornEnglish = "English Horn"
    /// Horn Ensemble
    case hornEnsemble = "Horn Ensemble"
    /// Horn Flute
    case hornFlute = "Horn Flute"
    /// French Horn
    case hornFrench = "French Horn"
    /// MIDI Horn
    case hornMIDI = "MIDI Horn"
    /// Muted Horn
    case hornMuted = "Muted Horn"
    /// Natural Horn
    case hornNatural = "Natural Horn"
    /// Hornorgan
    case hornorgan = "Hornorgan"
    /// Horn Overdubs
    case hornOverdubs = "Horn Overdubs"
    /// Hornpipes
    case hornpipes = "Hornpipes"
    /// Post Horn
    case hornPost = "Post Horn"
    /// Horns
    case horns = "Horns"
    /// Horn Samples
    case hornSamples = "Horn Samples"
    /// Horn Section
    case hornSection = "Horn Section"
    /// Horn (Soprano)
    case hornSoprano = "Horn (Soprano)"
    /// Sampled Horns
    case hornsSampled = "Sampled Horns"
    /// Synclavier Horns
    case hornsSynclavier = "Synclavier Horns"
    /// Horn Synthesizer
    case hornSynthesizer = "Horn Synthesizer"
    /// Horn (Tenor)
    case hornTenor = "Horn (Tenor)"
    /// Tenor Horn / Alto Horn
    case hornTenorAltoHorn = "Tenor Horn / Alto Horn"
    /// Tibetan Horn
    case hornTibetan = "Tibetan Horn"
    /// Hosaphone
    case hosaphone = "Hosaphone"
    /// Hosepipe
    case hosepipe = "Hosepipe"
    /// Hosho
    case hosho = "Hosho"
    /// Hotchiku
    case hotchiku = "Hotchiku"
    /// Hourglass Drum
    case hourglassDrum = "Hourglass Drum"
    /// Hsiao
    case hsiao = "Hsiao"
    /// Huaca
    case huaca = "Huaca"
    /// Huancara
    case huancara = "Huancara"
    /// Huapanguera
    case huapanguera = "Huapanguera"
    /// Hue Puruhau
    case huePuruhau = "Hue Puruhau"
    /// Hue Puruwai
    case huePuruwai = "Hue Puruwai"
    /// Huevito
    case huevito = "Huevito"
    /// Hulusheng
    case hulusheng = "Hulusheng"
    /// Hulusi
    case hulusi = "Hulusi"
    /// Hummel
    case hummel = "Hummel"
    /// Humming
    case humming = "Humming"
    /// Hunting Horn
    case huntingHorn = "Hunting Horn"
    /// Huqin
    case huqin = "Huqin"
    /// Huquin
    case huquin = "Huquin"
    /// Hurdygurdy
    case hurdygurdy = "Hurdygurdy"
    /// Hydraulophone
    case hydraulophone = "Hydraulophone"
    /// Hydrophone
    case hydrophone = "Hydrophone"
    /// Hyoshigi
    case hyoshigi = "Hyoshigi"
    /// Idiophone
    case idiophone = "Idiophone"
    /// Plucked Idiophone
    case idiophonePlucked = "Plucked Idiophone"
    /// Idiophones
    case idiophones = "Idiophones"
    /// Igil
    case igil = "Igil"
    /// Ikety
    case ikety = "Ikety"
    /// Ilimba
    case ilimba = "Ilimba"
    /// Improvisation
    case improvisation = "Improvisation"
    /// Imzad
    case imzad = "Imzad"
    /// Ingoma
    case ingoma = "Ingoma"
    /// Inspirador
    case inspirador = "Inspirador"
    /// Bass Instrument
    case instrumentBass = "Bass Instrument"
    /// Bowed Instrument
    case instrumentBowed = "Bowed Instrument"
    /// Plucked Instrument
    case instrumentPlucked = "Plucked Instrument"
    /// Instruments
    case instruments = "Instruments"
    /// Digital Instruments
    case instrumentsDigital = "Digital Instruments"
    /// Electronic Instruments
    case instrumentsElectronic = "Electronic Instruments"
    /// Indian Instruments
    case instrumentsIndian = "Indian Instruments"
    /// Keyed Brass Instruments
    case instrumentsKeyedBrass = "Keyed Brass Instruments"
    /// Native American Instruments
    case instrumentsNativeAmerican = "Native American Instruments"
    /// Natural Brass Instruments
    case instrumentsNaturalBrass = "Natural Brass Instruments"
    /// Other Instruments
    case instrumentsOther = "Other Instruments"
    /// Electronic Instruments Samples
    case instrumentsSamplesElectronic = "Electronic Instruments Samples"
    /// Slide Brass Instruments
    case instrumentsSlideBrass = "Slide Brass Instruments"
    /// Toy Instruments
    case instrumentsToy = "Toy Instruments"
    /// Wind Instruments
    case instrumentsWind = "Wind Instruments"
    /// Inszenierung
    case inszenierung = "Inszenierung"
    /// Interviewee
    case interviewee = "Interviewee"
    /// Interviewer
    case interviewer = "Interviewer"
    /// I'Pu
    case iPu = "I'Pu"
    /// Isoumbous
    case isoumbous = "Isoumbous"
    /// Itotele
    case itotele = "Itotele"
    /// Iya
    case iya = "Iya"
    /// Jaleos
    case jaleos = "Jaleos"
    /// Jaltarang
    case jaltarang = "Jaltarang"
    /// Jam Man
    case jamMan = "Jam Man"
    /// Jangara
    case jangara = "Jangara"
    /// Janggu
    case janggu = "Janggu"
    /// Japanese Temple Bowl
    case japaneseTempleBowl = "Japanese Temple Bowl"
    /// Jarana
    case jarana = "Jarana"
    /// Jarocho Harp
    case jarochoHarp = "Jarocho Harp"
    /// Jase
    case jase = "Jase"
    /// Javanese Gamelan
    case javaneseGamelan = "Javanese Gamelan"
    /// Jawbone
    case jawbone = "Jawbone"
    /// Jaw Harp
    case jawHarp = "Jaw Harp"
    /// Jazz Band
    case jazzBand = "Jazz Band"
    /// Jegog
    case jegog = "Jegog"
    /// Jeli Ngɔni
    case jeliNgɔni = "Jeli Ngɔni"
    /// Jenglong
    case jenglong = "Jenglong"
    /// Jen Synthetone SX1000
    case jenSynthetoneSXOneThousand = "Jen Synthetone SX1000"
    /// Jew's Harp
    case jewsHarp = "Jew's Harp"
    /// Jimbae
    case jimbae = "Jimbae"
    /// Jimbe
    case jimbe = "Jimbe"
    /// Jing
    case jing = "Jing"
    /// Jing'erhu
    case jingerhu = "Jing'erhu"
    /// Jing'Erhu
    case jingErhu = "Jing'Erhu"
    /// Jinghu
    case jinghu = "Jinghu"
    /// Jingles
    case jingles = "Jingles"
    /// Joik
    case joik = "Joik"
    /// Jouhikko
    case jouhikko = "Jouhikko"
    /// Joza
    case joza = "Joza"
    /// Jug
    case jug = "Jug"
    /// Electric Jug
    case jugElectric = "Electric Jug"
    /// Juice Harp
    case juiceHarp = "Juice Harp"
    /// Jumbus
    case jumbus = "Jumbus"
    /// Jumon
    case jumon = "Jumon"
    /// Jun-Jun
    case junJun = "Jun-Jun"
    /// Junjung
    case junjung = "Junjung"
    /// Junkanoo
    case junkanoo = "Junkanoo"
    /// Juno
    case juno = "Juno"
    /// Jupiter
    case jupiter = "Jupiter"
    /// Jupiter 6
    case jupiter6 = "Jupiter 6"
    /// Jupiter 8
    case jupiter8 = "Jupiter 8"
    /// Jura
    case jura = "Jura"
    /// Jushichigen
    case jushichigen = "Jushichigen"
    /// Kaba Gaida
    case kabaGaida = "Kaba Gaida"
    /// Kabak Kemane
    case kabakKemane = "Kabak Kemane"
    /// kabassa
    case kabassa = "kabassa"
    /// Kabosy
    case kabosy = "Kabosy"
    /// Kacapi
    case kacapi = "Kacapi"
    /// Kacapi Indung
    case kacapiIndung = "Kacapi Indung"
    /// Kacapi Rincik
    case kacapiRincik = "Kacapi Rincik"
    /// Kacapi Zither
    case kacapiZither = "Kacapi Zither"
    /// Ka'eke'eke
    case kaekeeke = "Ka'eke'eke"
    /// Kagan
    case kagan = "Kagan"
    /// Kagurabue
    case kagurabue = "Kagurabue"
    /// Kaiamba Rambo
    case kaiambaRambo = "Kaiamba Rambo"
    /// Kajar
    case kajar = "Kajar"
    /// Kajon
    case kajon = "Kajon"
    /// Kakabar
    case kakabar = "Kakabar"
    /// Kakegoe
    case kakegoe = "Kakegoe"
    /// Kalabash
    case kalabash = "Kalabash"
    /// Kalangu
    case kalangu = "Kalangu"
    /// Kalbasse
    case kalbasse = "Kalbasse"
    /// Kalimba
    case kalimba = "Kalimba"
    /// Electric Kalimba
    case kalimbaElectric = "Electric Kalimba"
    /// Kaliuka
    case kaliuka = "Kaliuka"
    /// Kamalen Ngɔni
    case kamalenNgɔni = "Kamalen Ngɔni"
    /// Kamalngoni
    case kamalngoni = "Kamalngoni"
    /// Kaman
    case kaman = "Kaman"
    /// Kamanche
    case kamanche = "Kamanche"
    /// Kamancheh
    case kamancheh = "Kamancheh"
    /// Kamanga
    case kamanga = "Kamanga"
    /// Kamenj
    case kamenj = "Kamenj"
    /// Kangling
    case kangling = "Kangling"
    /// Kangogis
    case kangogis = "Kangogis"
    /// Kanjeera
    case kanjeera = "Kanjeera"
    /// Kanjira
    case kanjira = "Kanjira"
    /// Kanklės
    case kanklės = "Kanklės"
    /// Kanna
    case kanna = "Kanna"
    /// Kannel
    case kannel = "Kannel"
    /// Kanonaki
    case kanonaki = "Kanonaki"
    /// Kantele
    case kantele = "Kantele"
    /// Kantil
    case kantil = "Kantil"
    /// Kantilan
    case kantilan = "Kantilan"
    /// Kanun
    case kanun = "Kanun"
    /// Karakeb
    case karakeb = "Karakeb"
    /// Kargyraa
    case kargyraa = "Kargyraa"
    /// Karignan
    case karignan = "Karignan"
    /// Karimba
    case karimba = "Karimba"
    /// Karinyan
    case karinyan = "Karinyan"
    /// Karkabas
    case karkabas = "Karkabas"
    /// Karkabou
    case karkabou = "Karkabou"
    /// Karna
    case karna = "Karna"
    /// Kartal
    case kartal = "Kartal"
    /// Kartals
    case kartals = "Kartals"
    /// Kashishi
    case kashishi = "Kashishi"
    /// Kata Drum
    case kataDrum = "Kata Drum"
    /// Kaval
    case kaval = "Kaval"
    /// Kavala
    case kavala = "Kavala"
    /// Kawai
    case kawai = "Kawai"
    /// Kaxi
    case kaxi = "Kaxi"
    /// Kayagum
    case kayagum = "Kayagum"
    /// Kayam
    case kayam = "Kayam"
    /// Kayanmb
    case kayanmb = "Kayanmb"
    /// KAZ
    case kaz = "KAZ"
    /// Kazoo
    case kazoo = "Kazoo"
    /// Kecapi
    case kecapi = "Kecapi"
    /// Kecrek
    case kecrek = "Kecrek"
    /// Kehn
    case kehn = "Kehn"
    /// Kelhorn
    case kelhorn = "Kelhorn"
    /// Kelon Vibes
    case kelonVibes = "Kelon Vibes"
    /// Kelphorn
    case kelphorn = "Kelphorn"
    /// Keman
    case keman = "Keman"
    /// Kemence
    case kemence = "Kemence"
    /// Classical Kemençe
    case kemençeClassical = "Classical Kemençe"
    /// Kemenche
    case kemenche = "Kemenche"
    /// Kemenja
    case kemenja = "Kemenja"
    /// Kempli
    case kempli = "Kempli"
    /// Kempul
    case kempul = "Kempul"
    /// Kempur
    case kempur = "Kempur"
    /// Kena
    case kena = "Kena"
    /// Kenacho
    case kenacho = "Kenacho"
    /// Kenas
    case kenas = "Kenas"
    /// Kèn Bầu
    case kenBau = "Kèn Bầu"
    /// Kendhang
    case kendhang = "Kendhang"
    /// Kenkeni
    case kenkeni = "Kenkeni"
    /// Kèn Lá
    case kènLá = "Kèn Lá"
    /// Kenong
    case kenong = "Kenong"
    /// Kenyan Drum
    case kenyanDrum = "Kenyan Drum"
    /// Kerona
    case kerona = "Kerona"
    /// Kete
    case kete = "Kete"
    /// Kethuk
    case kethuk = "Kethuk"
    /// Ketipung
    case ketipung = "Ketipung"
    /// Kettle Drum
    case kettleDrum = "Kettle Drum"
    /// Kettle Drums
    case kettleDrums = "Kettle Drums"
    /// Key Bass
    case keyBass = "Key Bass"
    /// Keyboard
    case keyboard = "Keyboard"
    /// Keyboard Accordian
    case keyboardAccordian = "Keyboard Accordian"
    /// Keyboard Bass
    case keyboardBass = "Keyboard Bass"
    /// Keyboard Bass Samples
    case keyboardBassSamples = "Keyboard Bass Samples"
    /// Keyboard Drums
    case keyboardDrums = "Keyboard Drums"
    /// Electric Keyboard
    case keyboardElectric = "Electric Keyboard"
    /// Keyboard Glockenspiel
    case keyboardGlockenspiel = "Keyboard Glockenspiel"
    /// Keyboard Guitar
    case keyboardGuitar = "Keyboard Guitar"
    /// Keyboard Harmonica
    case keyboardHarmonica = "Keyboard Harmonica"
    /// Keyboard Horns
    case keyboardHorns = "Keyboard Horns"
    /// Keyboard Marimba
    case keyboardMarimba = "Keyboard Marimba"
    /// Keyboard Overdubs
    case keyboardOverdubs = "Keyboard Overdubs"
    /// Keyboard Programming
    case keyboardProgramming = "Keyboard Programming"
    /// Keyboards
    case keyboards = "Keyboards"
    /// Keyboard Samples
    case keyboardSamples = "Keyboard Samples"
    /// MIDI Keyboards
    case keyboardsMIDI = "MIDI Keyboards"
    /// Orchestral Keyboards
    case keyboardsOrchestral = "Orchestral Keyboards"
    /// Sampled Keyboards
    case keyboardsSampled = "Sampled Keyboards"
    /// String Keyboard
    case keyboardString = "String Keyboard"
    /// Keyboard Synthesizer
    case keyboardSynthesizer = "Keyboard Synthesizer"
    /// Key Harp
    case keyHarp = "Key Harp"
    /// Keymonica
    case keymonica = "Keymonica"
    /// Keytar
    case keytar = "Keytar"
    /// Khaen
    case khaen = "Khaen"
    /// Khalan
    case khalan = "Khalan"
    /// Khamak
    case khamak = "Khamak"
    /// Khartal
    case khartal = "Khartal"
    /// Khen
    case khen = "Khen"
    /// Khene
    case khene = "Khene"
    /// Khèn Mèo
    case khènMèo = "Khèn Mèo"
    /// Khim
    case khim = "Khim"
    /// Khlui
    case khlui = "Khlui"
    /// Khol
    case khol = "Khol"
    /// Khomous
    case khomous = "Khomous"
    /// Khong Wong
    case khongWong = "Khong Wong"
    /// Khong Wong Lek
    case khongWongLek = "Khong Wong Lek"
    /// Khong Wong Yai
    case khongWongYai = "Khong Wong Yai"
    /// Khoomei
    case khoomei = "Khoomei"
    /// Khulsan Khuur
    case khulsanKhuur = "Khulsan Khuur"
    /// Khurdak
    case khurdak = "Khurdak"
    /// Kick Horns
    case kickHorns = "Kick Horns"
    /// Kiema
    case kiema = "Kiema"
    /// Kilimba
    case kilimba = "Kilimba"
    /// Kinkeni
    case kinkeni = "Kinkeni"
    /// Kinnor
    case kinnor = "Kinnor"
    /// Ki Pah
    case kiPah = "Ki Pah"
    /// Kirin
    case kirin = "Kirin"
    /// Kitero
    case kitero = "Kitero"
    /// Kithara
    case kithara = "Kithara"
    /// K'Kwaengwari
    case kkwaenggari = "K'Kwaengwari"
    /// Klangspiel
    case klangspiel = "Klangspiel"
    /// Klarnet
    case klarnet = "Klarnet"
    /// Klávesy
    case klávesy = "Klávesy"
    /// Klaviatur
    case klaviatur = "Klaviatur"
    /// Klockspel
    case klockspel = "Klockspel"
    /// Klong Khaek
    case klongKhaek = "Klong Khaek"
    /// K'lông Pút
    case klôngPút = "K'lông Pút"
    /// Klong Rammana
    case klongRammana = "Klong Rammana"
    /// Klong Song Na
    case klongSongNa = "Klong Song Na"
    /// Klong That
    case klongThat = "Klong That"
    /// Klong Yao
    case klongYao = "Klong Yao"
    /// Knee Slaps
    case kneeSlaps = "Knee Slaps"
    /// Kōauau
    case kōauau = "Kōauau"
    /// Kōauau Ponga Ihu
    case kōauauPongaIhu = "Kōauau Ponga Ihu"
    /// Kobing
    case kobing = "Kobing"
    /// Kobol
    case kobol = "Kobol"
    /// koboz
    case koboz = "koboz"
    /// Kobsa
    case kobsa = "Kobsa"
    /// Kobyz
    case kobyz = "Kobyz"
    /// Kohl
    case kohl = "Kohl"
    /// Kokalja
    case kokalja = "Kokalja"
    /// Kokle
    case kokle = "Kokle"
    /// Kokyu
    case kokyu = "Kokyu"
    /// Kombu
    case kombu = "Kombu"
    /// Komungo
    case komungo = "Komungo"
    /// Electric Komungo
    case komungoElectric = "Electric Komungo"
    /// Komuz
    case komuz = "Komuz"
    /// Konakkol
    case konakkol = "Konakkol"
    /// Kone
    case kone = "Kone"
    /// Kong
    case kong = "Kong"
    /// Kongoma
    case kongoma = "Kongoma"
    /// Konnakol
    case konnakol = "Konnakol"
    /// Kontra
    case kontra = "Kontra"
    /// Kontrabasharpa
    case kontrabasharpa = "Kontrabasharpa"
    /// Konun
    case konun = "Konun"
    /// Kora
    case kora = "Kora"
    /// Electric Kora
    case koraElectric = "Electric Kora"
    /// Korg M1
    case korgM1 = "Korg M1"
    /// Korg Synthesizer
    case korgSynthesizer = "Korg Synthesizer"
    /// Korintsana
    case korintsana = "Korintsana"
    /// Kornett
    case kornett = "Kornett"
    /// korontiere
    case korontiere = "korontiere"
    /// Kortholt
    case kortholt = "Kortholt"
    /// Kös
    case kös = "Kös"
    /// Kot
    case kot = "Kot"
    /// Kotar
    case kotar = "Kotar"
    /// Koto
    case koto = "Koto"
    /// 17-String Koto
    case koto17String = "17-String Koto"
    /// Bass Koto
    case kotoBass = "Bass Koto"
    /// Kotsuzumi
    case kotsuzumi = "Kotsuzumi"
    /// kouaba
    case kouaba = "kouaba"
    /// Kouande
    case kouande = "Kouande"
    /// Kouitra
    case kouitra = "Kouitra"
    /// Kowala
    case kowala = "Kowala"
    /// Krakebs
    case krakebs = "Krakebs"
    /// Krar
    case krar = "Krar"
    /// Krin
    case krin = "Krin"
    /// Krkaba
    case krkaba = "Krkaba"
    /// Krotala
    case krotala = "Krotala"
    /// Kroupeza
    case kroupeza = "Kroupeza"
    /// Krummhorn
    case krummhorn = "Krummhorn"
    /// Kubing
    case kubing = "Kubing"
    /// Ku Cheng
    case kuCheng = "Ku Cheng"
    /// Kudu Horn
    case kuduHorn = "Kudu Horn"
    /// Kudüm
    case kudum = "Kudüm"
    /// Kulin Tang
    case kulinTang = "Kulin Tang"
    /// Kultrun
    case kultrun = "Kultrun"
    /// Kurai
    case kurai = "Kurai"
    /// Kurzweil
    case kurzweil = "Kurzweil"
    /// Kurzweil 250
    case kurzweil250 = "Kurzweil 250"
    /// Kurzweil K-2000
    case kurzweilK2000 = "Kurzweil K-2000"
    /// Kurzweil PC88
    case kurzweilPC88 = "Kurzweil PC88"
    /// Kurzweil Strings
    case kurzweilStrings = "Kurzweil Strings"
    /// Kurzweil Synthesizer
    case kurzweilSynthesizer = "Kurzweil Synthesizer"
    /// Kyma
    case kyma = "Kyma"
    /// Ladridos
    case ladridos = "Ladridos"
    /// Lakota Prayer
    case lakotaPrayer = "Lakota Prayer"
    /// Lamellophone
    case lamellophone = "Lamellophone"
    /// Langeleik
    case langeleik = "Langeleik"
    /// Laoud
    case laoud = "Laoud"
    /// Laouto
    case laouto = "Laouto"
    /// Laptop
    case laptop = "Laptop"
    /// Lasso D'amore
    case lassoDamore = "Lasso D'amore"
    /// Lataria
    case lataria = "Lataria"
    /// Laúd
    case laud = "Laúd"
    /// Laudes
    case laudes = "Laudes"
    /// Laughs
    case laughs = "Laughs"
    /// Launeddas
    case launeddas = "Launeddas"
    /// Lautenwerck
    case lautenwerck = "Lautenwerck"
    /// Lauto
    case lauto = "Lauto"
    /// Lavta
    case lavta = "Lavta"
    /// Lead
    case lead = "Lead"
    /// Leader
    case leader = "Leader"
    /// Lead Vocals Samples
    case leadVocalsSamples = "Lead Vocals Samples"
    /// Leaf
    case leaf = "Leaf"
    /// Legueros
    case legueros = "Legueros"
    /// Leiriu
    case leiriu = "Leiriu"
    /// Leitung
    case leitung = "Leitung"
    /// Lektorat
    case lektorat = "Lektorat"
    /// Lenga
    case lenga = "Lenga"
    /// Leona
    case leona = "Leona"
    /// Leslie Pedal
    case lesliePedal = "Leslie Pedal"
    /// Letra
    case letra = "Letra"
    /// Lider
    case lider = "Lider"
    /// Soprano Ligera
    case ligeraSoprano = "Soprano Ligera"
    /// Lihn
    case lihn = "Lihn"
    /// Likembe
    case likembe = "Likembe"
    /// Liliu Ukulele
    case liliuUkulele = "Liliu Ukulele"
    /// Lilting
    case lilting = "Lilting"
    /// Limbe
    case limbe = "Limbe"
    /// Linn
    case linn = "Linn"
    /// Linn 9000
    case linn9000 = "Linn 9000"
    /// Linn Drum
    case linnDrum = "Linn Drum"
    /// Lion's Roar
    case lionsRoar = "Lion's Roar"
    /// Lira (Lyra)
    case lira = "Lira (Lyra)"
    /// Lirone
    case lirone = "Lirone"
    /// Lironi
    case lironi = "Lironi"
    /// Lithophone
    case lithophone = "Lithophone"
    /// Liu Qin
    case liuQin = "Liu Qin"
    /// Liuti
    case liuti = "Liuti"
    /// Liuto
    case liuto = "Liuto"
    /// Livret
    case livret = "Livret"
    /// Llamador
    case llamador = "Llamador"
    /// Log Drums
    case logDrums = "Log Drums"
    /// Lokanga
    case lokanga = "Lokanga"
    /// Lokk
    case lokk = "Lokk"
    /// Lokole
    case lokole = "Lokole"
    /// Lombardes
    case lombardes = "Lombardes"
    /// Lon
    case lon = "Lon"
    /// Lonely
    case lonely = "Lonely"
    /// Long String Instrument
    case longStringInstrument = "Long String Instrument"
    /// Loop
    case loop = "Loop"
    /// Loop Drums
    case loopDrums = "Loop Drums"
    /// Loop Master
    case loopMaster = "Loop Master"
    /// Loop Programming
    case loopProgramming = "Loop Programming"
    /// Loops
    case loops = "Loops"
    /// Synthesizer Loop
    case loopSynthesizer = "Synthesizer Loop"
    /// Lotar
    case lotar = "Lotar"
    /// Lounga
    case lounga = "Lounga"
    /// Lowry
    case lowry = "Lowry"
    /// Low Vocals
    case lowVocals = "Low Vocals"
    /// Low Whistle
    case lowWhistle = "Low Whistle"
    /// Luces
    case luces = "Luces"
    /// Lude
    case lude = "Lude"
    /// Luito
    case luito = "Luito"
    /// Lujon
    case lujon = "Lujon"
    /// Lukeme
    case lukeme = "Lukeme"
    /// Lur
    case lur = "Lur"
    /// Lu-sheng
    case lusheng = "Lu-sheng"
    /// Luta
    case luta = "Luta"
    /// Lute
    case lute = "Lute"
    /// 3-String Lute
    case lute5String = "3-String Lute"
    /// Archlute
    case luteArch = "Archlute"
    /// Baroque Lute
    case luteBaroque = "Baroque Lute"
    /// Bowed Lute
    case luteBowed = "Bowed Lute"
    /// Chinese Lute
    case luteChinese = "Chinese Lute"
    /// Long-Necked Lute
    case luteLongNecked = "Long-Necked Lute"
    /// Medieval Lute
    case luteMedieval = "Medieval Lute"
    /// Oriental Lute
    case luteOriental = "Oriental Lute"
    /// Renaissance Lute
    case luteRenaissance = "Renaissance Lute"
    /// Soprano Lute
    case luteSoprano = "Soprano Lute"
    /// Spanish Lute
    case luteSpanish = "Spanish Lute"
    /// Tar (lute)
    case luteTar = "Tar (lute)"
    /// Tenor Lute
    case luteTenor = "Tenor Lute"
    /// Turkish Lute
    case luteTurkish = "Turkish Lute"
    /// Luth
    case luth = "Luth"
    /// Luthéal
    case luthéal = "Luthéal"
    /// Lyra
    case lyra = "Lyra"
    /// Cretan Lyra
    case lyraCretan = "Cretan Lyra"
    /// Lyra Viol
    case lyraViol = "Lyra Viol"
    /// Lyre
    case lyre = "Lyre"
    /// Bowed Lyre
    case lyreBowed = "Bowed Lyre"
    /// Cretan Lyre
    case lyreCretan = "Cretan Lyre"
    /// Pulse Lyre
    case lyrePulse = "Pulse Lyre"
    /// Lyricon
    case lyricon = "Lyricon"
    /// Lyrone
    case lyrone = "Lyrone"
    /// Lyzarden
    case lyzarden = "Lyzarden"
    /// Maccaferi Guitar
    case maccaferiGuitar = "Maccaferi Guitar"
    /// Machines
    case machines = "Machines"
    /// Maculele
    case maculele = "Maculele"
    /// Madal
    case madal = "Madal"
    /// Maddale
    case maddale = "Maddale"
    /// Main Personnel
    case mainPersonnel = "Main Personnel"
    /// Male Alto
    case maleAlto = "Male Alto"
    /// Mallets
    case mallets = "Mallets"
    /// MIDI Mallets
    case malletsMIDI = "MIDI Mallets"
    /// Mallet Synthesizer
    case malletSynthesizer = "Mallet Synthesizer"
    /// Mando
    case mando = "Mando"
    /// Mandocaster
    case mandocaster = "Mandocaster"
    /// Mandocello
    case mandocello = "Mandocello"
    /// Mando-Guitar
    case mandoGuitar = "Mando-Guitar"
    /// Mandola
    case mandola = "Mandola"
    /// Electric Mandola
    case mandolaElectric = "Electric Mandola"
    /// Mandolanjo
    case mandolanjo = "Mandolanjo"
    /// Octave Mandola
    case mandolaOctave = "Octave Mandola"
    /// Mandolin
    case mandolin = "Mandolin"
    /// Mandoline
    case mandoline = "Mandoline"
    /// Electronic Mandolin
    case mandolinElectronic = "Electronic Mandolin"
    /// Mandolin (Hammered)
    case mandolinHammered = "Mandolin (Hammered)"
    /// Long-Necked Mandolin
    case mandolinLongNecked = "Long-Necked Mandolin"
    /// Octave Mandolin
    case mandolinOctave = "Octave Mandolin"
    /// Piccolo Mandolin
    case mandolinPiccolo = "Piccolo Mandolin"
    /// Rhythm Mandolin
    case mandolinRhythm = "Rhythm Mandolin"
    /// Slide Mandolin
    case mandolinSlit = "Slide Mandolin"
    /// Mandolute
    case mandolute = "Mandolute"
    /// Mandora
    case mandora = "Mandora"
    /// Mandora / Gallichon
    case mandoraGallichon = "Mandora / Gallichon"
    /// Mando-Zither
    case mandoZither = "Mando-Zither"
    /// Manigri
    case manigri = "Manigri"
    /// Manjeera
    case manjeera = "Manjeera"
    /// Manutencao
    case manutencao = "Manutencao"
    /// Manzello
    case manzello = "Manzello"
    /// Maqutte
    case maqutte = "Maqutte"
    /// Maracas
    case maracas = "Maracas"
    /// Maracas Mbira
    case maracasMbira = "Maracas Mbira"
    /// Maracones
    case maracones = "Maracones"
    /// Marbles
    case marbles = "Marbles"
    /// Mariachi Orchestra
    case mariachiOrchestra = "Mariachi Orchestra"
    /// Marimba
    case marimba = "Marimba"
    /// Marimba de Vidro
    case marimbadeVidro = "Marimba de Vidro"
    /// Marimba (Electronics)
    case marimbaElectronics = "Marimba (Electronics)"
    /// Marimba Eroica
    case marimbaEroica = "Marimba Eroica"
    /// Marimba Lumina
    case marimbaLumina = "Marimba Lumina"
    /// Marimbaphone
    case marimbaphone = "Marimbaphone"
    /// Piccolo Marimba
    case marimbaPiccolo = "Piccolo Marimba"
    /// Soprano Marimba
    case marimbaSoprano = "Soprano Marimba"
    /// Tenor Marimba
    case marimbaTenor = "Tenor Marimba"
    /// Marimbula
    case marimbula = "Marimbula"
    /// Marímbula
    case marímbula = "Marímbula"
    /// Marinhur
    case marinhur = "Marinhur"
    /// Mark Tree
    case markTree = "Mark Tree"
    /// Marovany
    case marovany = "Marovany"
    /// Martenot
    case martenot = "Martenot"
    /// Marxophone
    case marxophone = "Marxophone"
    /// Masia
    case masia = "Masia"
    /// Matouqin
    case matouqin = "Matouqin"
    /// Matrix 12
    case matrix12 = "Matrix 12"
    /// Maung
    case maung = "Maung"
    /// Mazhar
    case mazhar = "Mazhar"
    /// M'Bend
    case mBend = "M'Bend"
    /// M'Beng
    case mBeng = "M'Beng"
    /// M'Beum M'Beum
    case mBeumMBeum = "M'Beum M'Beum"
    /// Mbira
    case mbira = "Mbira"
    /// Mbiri
    case mbiri = "Mbiri"
    /// M-Drums
    case mDrums = "M-Drums"
    /// Megaphone
    case megaphone = "Megaphone"
    /// Mellobar Slide
    case mellobarSlide = "Mellobar Slide"
    /// Mellophone
    case mellophone = "Mellophone"
    /// Mellophonium
    case mellophonium = "Mellophonium"
    /// Mellotron
    case mellotron = "Mellotron"
    /// Mellotron Samples
    case mellotronSamples = "Mellotron Samples"
    /// Mellowdrone
    case mellowdrone = "Mellowdrone"
    /// Melobar
    case melobar = "Melobar"
    /// Melodeon
    case melodeon = "Melodeon"
    /// Melodica
    case melodica = "Melodica"
    /// Melodihorn
    case melodihorn = "Melodihorn"
    /// Melodion
    case melodion = "Melodion"
    /// Membranophone
    case membranophone = "Membranophone"
    /// Memory Moog
    case memoryMoog = "Memory Moog"
    /// Mendoza
    case mendoza = "Mendoza"
    /// Menor
    case menor = "Menor"
    /// Mercy Keys
    case mercyKeys = "Mercy Keys"
    /// Mesclatge
    case mesclatge = "Mesclatge"
    /// Mesuvoche
    case mesuvoche = "Mesuvoche"
    /// Metais
    case metais = "Metais"
    /// Metal Angklung
    case metalAngklung = "Metal Angklung"
    /// Metal Bar
    case metalBar = "Metal Bar"
    /// Bowed Metal
    case metalBowed = "Bowed Metal"
    /// Metales
    case metales = "Metales"
    /// Metal Hoop
    case metalHoop = "Metal Hoop"
    /// Metallophone
    case metallophone = "Metallophone"
    /// Metallophone Samples
    case metallophoneSamples = "Metallophone Samples"
    /// Metal Objects
    case metalObjects = "Metal Objects"
    /// Metalpiece
    case metalpiece = "Metalpiece"
    /// Metal Plates
    case metalPlates = "Metal Plates"
    /// Metal Shaker
    case metalShaker = "Metal Shaker"
    /// Metal Sheets
    case metalSheets = "Metal Sheets"
    /// Metal Stick
    case metalStick = "Metal Stick"
    /// Metal Transfers
    case metalTransfers = "Metal Transfers"
    /// Metal Tray
    case metalTray = "Metal Tray"
    /// Metalwood
    case metalwood = "Metalwood"
    /// Metaphone
    case metaphone = "Metaphone"
    /// Mezafono
    case mezafono = "Mezafono"
    /// Mezcla
    case mezcla = "Mezcla"
    /// Mezmar
    case mezmar = "Mezmar"
    /// Mezoued
    case mezoued = "Mezoued"
    /// Mezzo-Tenor
    case mezzoTenor = "Mezzo-Tenor"
    /// Micanon
    case micanon = "Micanon"
    /// Microcassette
    case microcassette = "Microcassette"
    /// Micro Moog
    case microMoog = "Micro Moog"
    /// Microtonal Metal
    case microtonalMetal = "Microtonal Metal"
    /// MIDI
    case midi = "MIDI"
    /// MIDI Controller
    case midiController = "MIDI Controller"
    /// MIDI Gloves
    case midiGloves = "MIDI Gloves"
    /// MIDI Pedals
    case midiPedals = "MIDI Pedals"
    /// MIDI Vibes
    case midiVibes = "MIDI Vibes"
    /// MIDI Wind Controller
    case midiWindController = "MIDI Wind Controller"
    /// Mijwiz
    case mijwiz = "Mijwiz"
    /// Military Drum
    case militaryDrum = "Military Drum"
    /// Mimbe
    case mimbe = "Mimbe"
    /// Mineiro
    case mineiro = "Mineiro"
    /// Minister
    case minister = "Minister"
    /// Mintsas
    case mintsas = "Mintsas"
    /// Miox
    case miox = "Miox"
    /// Mirage
    case mirage = "Mirage"
    /// Mirdangam
    case mirdangam = "Mirdangam"
    /// Mirella
    case mirella = "Mirella"
    /// Mirliton
    case mirliton = "Mirliton"
    /// Missaggio
    case missaggio = "Missaggio"
    /// Mix-DJ
    case mixDJ = "Mix-DJ"
    /// Miya-daiko
    case miyadaiko = "Miya-daiko"
    /// Mizmar
    case mizmar = "Mizmar"
    /// Mizwid
    case mizwid = "Mizwid"
    /// Mob
    case mob = "Mob"
    /// Mocena
    case mocena = "Mocena"
    /// Moceño
    case moceño = "Moceño"
    /// Modelo
    case modelo = "Modelo"
    /// Modern Big Band
    case modernBigBand = "Modern Big Band"
    /// Modular Moog
    case modularMoog = "Modular Moog"
    /// Modulator
    case modulator = "Modulator"
    /// Mohan Vina
    case mohanVina = "Mohan Vina"
    /// Mohocenos
    case mohocenos = "Mohocenos"
    /// Moktak
    case moktak = "Moktak"
    /// Mondharp
    case mondharp = "Mondharp"
    /// Mondoline
    case mondoline = "Mondoline"
    /// Mong
    case mong = "Mong"
    /// Monochord
    case monochord = "Monochord"
    /// Montaje de Coros
    case montajedeCoros = "Montaje de Coros"
    /// Montuno
    case montuno = "Montuno"
    /// Moog
    case moog = "Moog"
    /// Moog Filters
    case moogFilters = "Moog Filters"
    /// Moog Lead
    case moogLead = "Moog Lead"
    /// Mini Moog
    case moogMini = "Mini Moog"
    /// Moog Samples
    case moogSamples = "Moog Samples"
    /// Moog Synthesizer
    case moogSynthesizer = "Moog Synthesizer"
    /// Moorsing
    case moorsing = "Moorsing"
    /// Morchang
    case morchang = "Morchang"
    /// Moringa
    case moringa = "Moringa"
    /// Morinhoor
    case morinhoor = "Morinhoor"
    /// Morin Khuur
    case morinKhuur = "Morin Khuur"
    /// Morin Khuur / Matouqin
    case morinKhuurMatouqin = "Morin Khuur / Matouqin"
    /// Morisca
    case morisca = "Morisca"
    /// Morsing
    case morsing = "Morsing"
    /// Mosenos
    case mosenos = "Mosenos"
    /// Mouthpiece
    case mouthpiece = "Mouthpiece"
    /// Moxceno
    case moxceno = "Moxceno"
    /// Mpungi
    case mpungi = "Mpungi"
    /// Mquillista
    case mquillista = "Mquillista"
    /// Mridangam
    case mridangam = "Mridangam"
    /// Muka Veena
    case mukaVeena = "Muka Veena"
    /// Mukkuri
    case mukkuri = "Mukkuri"
    /// Multi Instruments
    case multiInstruments = "Multi Instruments"
    /// Multivox
    case multivox = "Multivox"
    /// Mungiga
    case mungiga = "Mungiga"
    /// Munnharpe
    case munnharpe = "Munnharpe"
    /// Munspel
    case munspel = "Munspel"
    /// Murli
    case murli = "Murli"
    /// Muruga
    case muruga = "Muruga"
    /// Muselar
    case muselar = "Muselar"
    /// Musette
    case musette = "Musette"
    /// Musette De Cour
    case musetteDeCour = "Musette De Cour"
    /// Musical Bow
    case musicalBow = "Musical Bow"
    /// Musical Box
    case musicalBox = "Musical Box"
    /// Musical Instrument
    case musicalInstrument = "Musical Instrument"
    /// Musical Saw
    case musicalSaw = "Musical Saw"
    /// Music Box
    case musicBox = "Music Box"
    /// Musician
    case musician = "Musician"
    /// Musikleitung
    case musikleitung = "Musikleitung"
    /// Musikregie
    case musikregie = "Musikregie"
    /// Mutantrumpet
    case mutantrumpet = "Mutantrumpet"
    /// Mute
    case mute = "Mute"
    /// Mu-Tron
    case muTron = "Mu-Tron"
    /// Muyu
    case muyu = "Muyu"
    /// Naal
    case naal = "Naal"
    /// Nabal
    case nabal = "Nabal"
    /// Nadaswaram
    case nadaswaram = "Nadaswaram"
    /// Nagadou-Daiko
    case nagadouDaiko = "Nagadou-Daiko"
    /// Nagak
    case nagak = "Nagak"
    /// Nagara
    case nagara = "Nagara"
    /// Nagaswarm
    case nagaswarm = "Nagaswarm"
    /// Nahrat
    case nahrat = "Nahrat"
    /// Nai
    case nai = "Nai"
    /// Naipe
    case naipe = "Naipe"
    /// Nakara
    case nakara = "Nakara"
    /// Nakares
    case nakares = "Nakares"
    /// Nakers
    case nakers = "Nakers"
    /// Nanga
    case nanga = "Nanga"
    /// Não Bạt / Chập Chõa
    case nãoBạtChậpChõa = "Não Bạt / Chập Chõa"
    /// Naobo
    case naobo = "Naobo"
    /// Naqqara
    case naqqara = "Naqqara"
    /// Naqrazan
    case naqrazan = "Naqrazan"
    /// Narrator
    case narrator = "Narrator"
    /// Nattingou
    case nattingou = "Nattingou"
    /// Natural Sounds
    case naturalSounds = "Natural Sounds"
    /// Nature Recorder
    case natureRecorder = "Nature Recorder"
    /// Nay
    case nay = "Nay"
    /// Ndoma Drums
    case ndomaDrums = "Ndoma Drums"
    /// Nepalese Flute
    case nepaleseFlute = "Nepalese Flute"
    /// Ney
    case ney = "Ney"
    /// Ngawang Chopel
    case ngawangChopel = "Ngawang Chopel"
    /// Ngoma
    case ngoma = "Ngoma"
    /// Ngombi
    case ngombi = "Ngombi"
    /// N'Goni
    case nGoni = "N'Goni"
    /// Nguru
    case nguru = "Nguru"
    /// Nhenheru
    case nhenheru = "Nhenheru"
    /// Niabingi
    case niabingi = "Niabingi"
    /// Nickelodeon
    case nickelodeon = "Nickelodeon"
    /// Njarka
    case njarka = "Njarka"
    /// Nkwassi
    case nkwassi = "Nkwassi"
    /// Noah Bells
    case noahBells = "Noah Bells"
    /// Nohkan
    case nohkan = "Nohkan"
    /// Noise
    case noise = "Noise"
    /// Electronic Noise
    case noiseElectronic = "Electronic Noise"
    /// Noises
    case noises = "Noises"
    /// Nokan
    case nokan = "Nokan"
    /// Novachord
    case novachord = "Novachord"
    /// Nullsonic
    case nullsonic = "Nullsonic"
    /// Nursery Rhyme
    case nurseryRhyme = "Nursery Rhyme"
    /// Nyanyery
    case nyanyery = "Nyanyery"
    /// Nyatiti
    case nyatiti = "Nyatiti"
    /// Nyckelharpa
    case nyckelharpa = "Nyckelharpa"
    /// Nyong-Nyong
    case nyongNyong = "Nyong-Nyong"
    /// Obaka
    case obaka = "Obaka"
    /// Oberheim 8 Voice
    case oberheim8Voice = "Oberheim 8 Voice"
    /// Oberheim Expander
    case oberheimExpander = "Oberheim Expander"
    /// Oberheim OB8
    case oberheimOB8 = "Oberheim OB8"
    /// Oberheim Obxa
    case oberheimObxa = "Oberheim Obxa"
    /// Oberheim Synthesizer
    case oberheimSynthesizer = "Oberheim Synthesizer"
    /// Oboe
    case oboe = "Oboe"
    /// Baritone Oboe
    case oboeBaritone = "Baritone Oboe"
    /// Baroque Oboe
    case oboeBaroque = "Baroque Oboe"
    /// Bass Oboe
    case oboeBass = "Bass Oboe"
    /// Chinese Oboe
    case oboeChinese = "Chinese Oboe"
    /// Oboe Da Caccia
    case oboeDaCaccia = "Oboe Da Caccia"
    /// Oboe D'amore
    case oboeDamore = "Oboe D'amore"
    /// Oboe D'Amore
    case oboeDAmore = "Oboe D'Amore"
    /// Electric Oboe
    case oboeElectric = "Electric Oboe"
    /// Piccolo Oboe
    case oboePiccolo = "Piccolo Oboe"
    /// Synthesizer Oboe
    case oboeSynthesizer = "Synthesizer Oboe"
    /// Ob Xa
    case obXa = "Ob Xa"
    /// Ocarina
    case ocarina = "Ocarina"
    /// Clay Ocarina
    case ocarinaClay = "Clay Ocarina"
    /// Double Ocarina
    case ocarinaDouble = "Double Ocarina"
    /// Tenor Ocarina
    case ocarinaTenor = "Tenor Ocarina"
    /// Ocean Drum
    case oceanDrum = "Ocean Drum"
    /// Oconcolo
    case oconcolo = "Oconcolo"
    /// Octaphone
    case octaphone = "Octaphone"
    /// Octaves
    case octaves = "Octaves"
    /// Octavia
    case octavia = "Octavia"
    /// Octavilla
    case octavilla = "Octavilla"
    /// Octavina
    case octavina = "Octavina"
    /// Octoban
    case octoban = "Octoban"
    /// Octobass
    case octobass = "Octobass"
    /// Octofone
    case octofone = "Octofone"
    /// Octopad
    case octopad = "Octopad"
    /// Octophone
    case octophone = "Octophone"
    /// O-Daiko
    case oDaiko = "O-Daiko"
    /// Ohdaikos
    case ohdaikos = "Ohdaikos"
    /// Ohtsuzumi
    case ohtsuzumi = "Ohtsuzumi"
    /// Okedo-daiko
    case okedodaiko = "Okedo-daiko"
    /// Okonkolo
    case okonkolo = "Okonkolo"
    /// Oktawka
    case oktawka = "Oktawka"
    /// Olifant
    case olifant = "Olifant"
    /// Omele
    case omele = "Omele"
    /// Omnichord
    case omnichord = "Omnichord"
    /// Onaiprah
    case onaiprah = "Onaiprah"
    /// Ondes
    case ondes = "Ondes"
    /// Ondes Martenot
    case ondesMartenot = "Ondes Martenot"
    /// Ondioline
    case ondioline = "Ondioline"
    /// Opa'a
    case opaa = "Opa'a"
    /// Opera Director
    case operaDirector = "Opera Director"
    /// Ophicleide
    case ophicleide = "Ophicleide"
    /// Oprenten
    case oprenten = "Oprenten"
    /// Optigan
    case optigan = "Optigan"
    /// Orchestra
    case orchestra = "Orchestra"
    /// Orchestra (Chamber)
    case orchestraChamber = "Orchestra (Chamber)"
    /// Orchestra (Dance)
    case orchestraDance = "Orchestra (Dance)"
    /// Orchestral Overdubs
    case orchestralOverdubs = "Orchestral Overdubs"
    /// Orchestral Parts
    case orchestralParts = "Orchestral Parts"
    /// Orchestral Sequencing
    case orchestralSequencing = "Orchestral Sequencing"
    /// Orchestra Vibes
    case orchestraVibes = "Orchestra Vibes"
    /// Organ
    case organ = "Organ"
    /// Aeolian Organ
    case organAeolian = "Aeolian Organ"
    /// Baroque Organ
    case organBaroque = "Baroque Organ"
    /// Barrel Organ
    case organBarrel = "Barrel Organ"
    /// Chamber Organ
    case organChamber = "Chamber Organ"
    /// Descant Organ
    case organDescant = "Descant Organ"
    /// Electric Organ
    case organElectric = "Electric Organ"
    /// Electronic Organ
    case organElectronic = "Electronic Organ"
    /// Organetto
    case organetto = "Organetto"
    /// Organ (Hammond)
    case organHammond = "Organ (Hammond)"
    /// Organ (Hand)
    case organHand = "Organ (Hand)"
    /// Indian Organ
    case organIndian = "Indian Organ"
    /// Organistrum
    case organistrum = "Organistrum"
    /// Mouth Organ
    case organMouth = "Mouth Organ"
    /// Organo
    case organo = "Organo"
    /// Pipe Organ
    case organPipe = "Pipe Organ"
    /// Pulse Organ
    case organPulse = "Pulse Organ"
    /// Pump Organ
    case organPump = "Pump Organ"
    /// Reed Organ
    case organReed = "Reed Organ"
    /// Synthesizer Organ
    case organSynthesizer = "Synthesizer Organ"
    /// Theatre Organ
    case organTheatre = "Theatre Organ"
    /// Toy Organ
    case organToy = "Toy Organ"
    /// Pocket Organ
    case organTrumpet = "Pocket Organ"
    /// Voice Organ
    case organVoice = "Voice Organ"
    /// Wind Organ
    case organWind = "Wind Organ"
    /// Orgel
    case orgel = "Orgel"
    /// Orgelpositiv
    case orgelpositiv = "Orgelpositiv"
    /// Orgue Positif
    case orguePositif = "Orgue Positif"
    /// Original Instruments
    case originalInstruments = "Original Instruments"
    /// Orpharion
    case orpharion = "Orpharion"
    /// Orphica
    case orphica = "Orphica"
    /// Oscillator
    case oscillator = "Oscillator"
    /// Osidrum
    case osidrum = "Osidrum"
    /// Otamatone
    case otamatone = "Otamatone"
    /// Other Vocals
    case otherVocals = "Other Vocals"
    /// Ōtsuzumi
    case Ōtsuzumi = "Ōtsuzumi"
    /// Ottavino
    case ottavino = "Ottavino"
    /// Oud
    case oud = "Oud"
    /// ouidah
    case ouidah = "ouidah"
    /// Outi
    case outi = "Outi"
    /// Oval Spinet
    case ovalSpinet = "Oval Spinet"
    /// Overdubs
    case overdubs = "Overdubs"
    /// Synthesizer Overdubs
    case overdubsSynthesizer = "Synthesizer Overdubs"
    /// Overtone
    case overtone = "Overtone"
    /// Pad Chitarra
    case padChitarra = "Pad Chitarra"
    /// Padeiro
    case padeiro = "Padeiro"
    /// Steel Pads
    case padsSteel = "Steel Pads"
    /// Synthesizer Pads
    case padsSynthesizer = "Synthesizer Pads"
    /// Pahū
    case pahū = "Pahū"
    /// Pahū Pounamu
    case pahūPounamu = "Pahū Pounamu"
    /// Pahu Tupa'i
    case pahuTupai = "Pahu Tupa'i"
    /// Pai
    case pai = "Pai"
    /// Paigus
    case paigus = "Paigus"
    /// Pailas
    case pailas = "Pailas"
    /// Paiste Cymbals
    case paisteCymbals = "Paiste Cymbals"
    /// Paiste Gong
    case paisteGong = "Paiste Gong"
    /// Paixiao
    case paixiao = "Paixiao"
    /// Pakawaj
    case pakawaj = "Pakawaj"
    /// Pakhavaj
    case pakhavaj = "Pakhavaj"
    /// Pākuru
    case pākuru = "Pākuru"
    /// Palamas
    case palamas = "Palamas"
    /// Palillos
    case palillos = "Palillos"
    /// Palittos
    case palittos = "Palittos"
    /// Palmadas
    case palmadas = "Palmadas"
    /// Palmas
    case palmas = "Palmas"
    /// Palmeros
    case palmeros = "Palmeros"
    /// Palo de Lluvia
    case palodeLluvia = "Palo de Lluvia"
    /// Pandeiro
    case pandeiro = "Pandeiro"
    /// Pandereta
    case pandereta = "Pandereta"
    /// Pandereta Requinto
    case panderetaRequinto = "Pandereta Requinto"
    /// Pandereta Seguidor
    case panderetaSeguidor = "Pandereta Seguidor"
    /// Pandora
    case pandora = "Pandora"
    /// Double Tenor Pan
    case panDoubleTenor = "Double Tenor Pan"
    /// Panerus
    case panerus = "Panerus"
    /// Pan Flute
    case panFlute = "Pan Flute"
    /// Pang Gu Ly Hu Hmông
    case pangGuLyHuHmông = "Pang Gu Ly Hu Hmông"
    /// Handpan
    case panHand = "Handpan"
    /// Pan Inclinado
    case panInclinado = "Pan Inclinado"
    /// Panpipes
    case panpipes = "Panpipes"
    /// Pans
    case pans = "Pans"
    /// Steel Pan
    case panSteel = "Steel Pan"
    /// Pantar
    case pantar = "Pantar"
    /// Tenor Pan
    case panTenor = "Tenor Pan"
    /// Pan Tuner
    case panTuner = "Pan Tuner"
    /// Papoose
    case papoose = "Papoose"
    /// Paquito
    case paquito = "Paquito"
    /// Pardessus De Viole
    case pardessusDeViole = "Pardessus De Viole"
    /// Pardessus de Viole
    case pardessusdeViole = "Pardessus de Viole"
    /// Pātē
    case pātē = "Pātē"
    /// Patitas
    case patitas = "Patitas"
    /// Pato
    case pato = "Pato"
    /// Patois
    case patois = "Patois"
    /// Pattala
    case pattala = "Pattala"
    /// Pau de Chuva
    case paudeChuva = "Pau de Chuva"
    /// Pauke
    case pauke = "Pauke"
    /// Pauken
    case pauken = "Pauken"
    /// Pearl Drums
    case pearlDrums = "Pearl Drums"
    /// Peck Horn
    case peckHorn = "Peck Horn"
    /// Pedabro
    case pedabro = "Pedabro"
    /// Pedalboard
    case pedalboard = "Pedalboard"
    /// Pedalbro
    case pedalbro = "Pedalbro"
    /// Pedals
    case pedals = "Pedals"
    /// Pedal Steel
    case pedalSteel = "Pedal Steel"
    /// Wah Wah Pedal
    case pedalWahWah = "Wah Wah Pedal"
    /// Peinado
    case peinado = "Peinado"
    /// Peixe
    case peixe = "Peixe"
    /// Pektis
    case pektis = "Pektis"
    /// Pelo
    case pelo = "Pelo"
    /// Pencilina
    case pencilina = "Pencilina"
    /// Peneira Cheia
    case peneiraCheia = "Peneira Cheia"
    /// Peng
    case peng = "Peng"
    /// Pennyosley
    case pennyosley = "Pennyosley"
    /// Penny Whistle
    case pennyWhistle = "Penny Whistle"
    /// Pensa-Suhr Custom
    case pensaSuhrCustom = "Pensa-Suhr Custom"
    /// Penyacah
    case penyacah = "Penyacah"
    /// Percus
    case percus = "Percus"
    /// Percussion
    case percussion = "Percussion"
    /// African Percussion
    case percussionAfrican = "African Percussion"
    /// Afro-Cuban Percussion
    case percussionAfroCuban = "Afro-Cuban Percussion"
    /// Body Percussion
    case percussionBody = "Body Percussion"
    /// Percussion (Brazilian)
    case percussionBrazilian = "Percussion (Brazilian)"
    /// Chinese Percussion
    case percussionChinese = "Chinese Percussion"
    /// Cuban Percussion
    case percussionCuban = "Cuban Percussion"
    /// Egyptian Percussion
    case percussionEgyptian = "Egyptian Percussion"
    /// Electronic Percussion
    case percussionElectronic = "Electronic Percussion"
    /// Percussion Ensemble
    case percussionEnsemble = "Percussion Ensemble"
    /// Ethnic Percussion
    case percussionEthnic = "Ethnic Percussion"
    /// Foot Percussion
    case percussionFoot = "Foot Percussion"
    /// Hand Percussion
    case percussionHand = "Hand Percussion"
    /// Hawaiian Percussion
    case percussionHawaiian = "Hawaiian Percussion"
    /// Improvised Percussion
    case percussionImprovised = "Improvised Percussion"
    /// Indian Percussion
    case percussionIndian = "Indian Percussion"
    /// Japanese Percussion
    case percussionJapanese = "Japanese Percussion"
    /// Lap Steel Percussion
    case percussionLapSteel = "Lap Steel Percussion"
    /// Latin Percussion
    case percussionLatin = "Latin Percussion"
    /// Percussion Leader
    case percussionLeader = "Percussion Leader"
    /// Percussion Machine
    case percussionMachine = "Percussion Machine"
    /// Metal Percussion
    case percussionMetal = "Metal Percussion"
    /// MIDI Percussion
    case percussionMIDI = "MIDI Percussion"
    /// Mouth Percussion
    case percussionMouth = "Mouth Percussion"
    /// Native Percussion
    case percussionNative = "Native Percussion"
    /// Native American Percussion
    case percussionNativeAmerican = "Native American Percussion"
    /// Orchestral Percussion
    case percussionOrchestral = "Orchestral Percussion"
    /// Oriental Percussion
    case percussionOriental = "Oriental Percussion"
    /// Other Percussion
    case percussionOther = "Other Percussion"
    /// Percussion Overdubs
    case percussionOverdubs = "Percussion Overdubs"
    /// Peruvian Percussion
    case percussionPeruvian = "Peruvian Percussion"
    /// Percussion Programming
    case percussionProgramming = "Percussion Programming"
    /// Rhythm Percussion
    case percussionRhythm = "Rhythm Percussion"
    /// Sample Percussion
    case percussionSample = "Sample Percussion"
    /// Percussion Samples
    case percussionSamples = "Percussion Samples"
    /// Percussion Sampling
    case percussionSampling = "Percussion Sampling"
    /// Percussion Sequencing
    case percussionSequencing = "Percussion Sequencing"
    /// Sun Percussion
    case percussionSun = "Sun Percussion"
    /// Synthesizer Percussion
    case percussionSynthesizer = "Synthesizer Percussion"
    /// Tuned Percussion
    case percussionTuned = "Tuned Percussion"
    /// Tuvan Percussion
    case percussionTuvan = "Tuvan Percussion"
    /// Performer
    case performer = "Performer"
    /// Performing Orchestra
    case performingOrchestra = "Performing Orchestra"
    /// Perkusja
    case perkusja = "Perkusja"
    /// Peroles
    case peroles = "Peroles"
    /// Pesinden
    case pesinden = "Pesinden"
    /// Phach
    case phach = "Phach"
    /// Phách
    case phách = "Phách"
    /// Phillycorda
    case phillycorda = "Phillycorda"
    /// Phjo
    case phjo = "Phjo"
    /// Pi
    case pi = "Pi"
    /// Pianarpa
    case pianarpa = "Pianarpa"
    /// Pianet
    case pianet = "Pianet"
    /// Pianette
    case pianette = "Pianette"
    /// Pianicca
    case pianicca = "Pianicca"
    /// Pianino Harmonica
    case pianinoHarmonica = "Pianino Harmonica"
    /// Piano
    case piano = "Piano"
    /// Piano Accompanist
    case pianoAccompanist = "Piano Accompanist"
    /// Piano Accordion
    case pianoAccordion = "Piano Accordion"
    /// African Piano
    case pianoAfrican = "African Piano"
    /// Baby Grand Piano
    case pianoBabyGrand = "Baby Grand Piano"
    /// Boesendorfer Piano
    case pianoBoesendorfer = "Boesendorfer Piano"
    /// Bowed Piano
    case pianoBowed = "Bowed Piano"
    /// Concert Grand Piano
    case pianoConcertGrand = "Concert Grand Piano"
    /// Piano (Cup)
    case pianoCup = "Piano (Cup)"
    /// Piano Drum
    case pianoDrum = "Piano Drum"
    /// Piano Effects
    case pianoEffects = "Piano Effects"
    /// Electric Piano
    case pianoElectric = "Electric Piano"
    /// Electric Grand Piano
    case pianoElectricGrand = "Electric Grand Piano"
    /// Electro-Acoustic Piano
    case pianoElectroAcoustic = "Electro-Acoustic Piano"
    /// Electronic Piano
    case pianoElectronic = "Electronic Piano"
    /// Piano Fazioli
    case pianoFazioli = "Piano Fazioli"
    /// Finger Piano
    case pianoFinger = "Finger Piano"
    /// Grand Piano
    case pianoGrand = "Grand Piano"
    /// Piano (Hammered)
    case pianoHammered = "Piano (Hammered)"
    /// Pianoharp
    case pianoharp = "Pianoharp"
    /// Pianola
    case pianola = "Pianola"
    /// Pianolin
    case pianolin = "Pianolin"
    /// MIDI Piano
    case pianoMIDI = "MIDI Piano"
    /// Minipiano
    case pianoMini = "Minipiano"
    /// Muted Piano
    case pianoMuted = "Muted Piano"
    /// Piano Overdubs
    case pianoOverdubs = "Piano Overdubs"
    /// Parlour Grand Piano
    case pianoParlourGrand = "Parlour Grand Piano"
    /// Pedal Piano
    case pianoPedal = "Pedal Piano"
    /// Plucked Piano
    case pianoPlucked = "Plucked Piano"
    /// Prepared Piano
    case pianoPrepared = "Prepared Piano"
    /// Piano Programming
    case pianoProgramming = "Piano Programming"
    /// Rhodes Piano
    case pianoRhodes = "Rhodes Piano"
    /// Sampled Piano
    case pianoSampled = "Sampled Piano"
    /// Piano Samples
    case pianoSamples = "Piano Samples"
    /// Rhodes Piano Samples
    case pianoSamplesRhodes = "Rhodes Piano Samples"
    /// Piano Spinet
    case pianoSpinet = "Piano Spinet"
    /// Square Piano
    case pianoSquare = "Square Piano"
    /// Steel Piano
    case pianoSteel = "Steel Piano"
    /// String Piano
    case pianoString = "String Piano"
    /// Piano Strings
    case pianoStrings = "Piano Strings"
    /// Synthesizer Piano
    case pianoSynthesizer = "Synthesizer Piano"
    /// Tack Piano
    case pianoTack = "Tack Piano"
    /// Piano (Thumb)
    case pianoThumb = "Piano (Thumb)"
    /// Toy Piano
    case pianoToy = "Toy Piano"
    /// Treated Piano
    case pianoTreated = "Treated Piano"
    /// Piano Trio
    case pianoTrio = "Piano Trio"
    /// Piano (Upright)
    case pianoUpright = "Piano (Upright)"
    /// Wah Wah Piano
    case pianoWahWah = "Wah Wah Piano"
    /// Piatti
    case piatti = "Piatti"
    /// Pibcorn
    case pibcorn = "Pibcorn"
    /// Piccolo
    case piccolo = "Piccolo"
    /// Pico
    case pico = "Pico"
    /// Pifana
    case pifana = "Pifana"
    /// Pifano
    case pifano = "Pifano"
    /// Pifaro
    case pifaro = "Pifaro"
    /// Pilas
    case pilas = "Pilas"
    /// Pilot Vocals
    case pilotVocals = "Pilot Vocals"
    /// Pi Nai
    case piNai = "Pi Nai"
    /// Pin Namtao
    case pinNamtao = "Pin Namtao"
    /// Pintura
    case pintura = "Pintura"
    /// Pipa
    case pipa = "Pipa"
    /// Pipe
    case pipe = "Pipe"
    /// Three-Hole Pipe
    case pipe3Hole = "Three-Hole Pipe"
    /// Andean Pipe
    case pipeAndean = "Andean Pipe"
    /// Pipe And Tabor
    case pipeAndTabor = "Pipe And Tabor"
    /// Bamboo Pipe
    case pipeBamboo = "Bamboo Pipe"
    /// Celtic Pipe
    case pipeCeltic = "Celtic Pipe"
    /// Indian Pipe
    case pipeIndian = "Indian Pipe"
    /// Pipes
    case pipes = "Pipes"
    /// Metal Pipes
    case pipesMetal = "Metal Pipes"
    /// MIDI Pipes
    case pipesMIDI = "MIDI Pipes"
    /// Pipe Snare Drum
    case pipeSnareDrum = "Pipe Snare Drum"
    /// Northumbrian Pipes
    case pipesNorthumbrian = "Northumbrian Pipes"
    /// Reed Pipes
    case pipesReed = "Reed Pipes"
    /// Scottish Pipes
    case pipesScottish = "Scottish Pipes"
    /// Wind Pipes
    case pipesWind = "Wind Pipes"
    /// Tabor Pipe
    case pipeTabo = "Tabor Pipe"
    /// Pip Veures
    case pipVeures = "Pip Veures"
    /// P'iri
    case piri = "P'iri"
    /// Pi-Saw
    case piSaw = "Pi-Saw"
    /// Pitchpipes
    case pitchpipes = "Pitchpipes"
    /// Pí Thiu
    case píThiu = "Pí Thiu"
    /// Pito
    case pito = "Pito"
    /// Piwang
    case piwang = "Piwang"
    /// Pixiephone
    case pixiephone = "Pixiephone"
    /// Pizzicato
    case pizzicato = "Pizzicato"
    /// Pkhachich
    case pkhachich = "Pkhachich"
    /// Plamas
    case plamas = "Plamas"
    /// Plano
    case plano = "Plano"
    /// Plato
    case plato = "Plato"
    /// Player Piano
    case playerPiano = "Player Piano"
    /// Plenaro
    case plenaro = "Plenaro"
    /// Plenera
    case plenera = "Plenera"
    /// Plunger Mute
    case plungerMute = "Plunger Mute"
    /// Pochette
    case pochette = "Pochette"
    /// Podorythmie
    case podorythmie = "Podorythmie"
    /// Poetry Reading
    case poetryReading = "Poetry Reading"
    /// Poi
    case poi = "Poi"
    /// Poi Āwhiowhio
    case poiĀwhiowhio = "Poi Āwhiowhio"
    /// Polymoog
    case polymoog = "Polymoog"
    /// Polysix
    case polysix = "Polysix"
    /// Polysynth
    case polysynth = "Polysynth"
    /// Pontic Lyral
    case ponticLyral = "Pontic Lyral"
    /// Pop Band
    case popBand = "Pop Band"
    /// Porotiti
    case porotiti = "Porotiti"
    /// Portasound
    case portasound = "Portasound"
    /// Portative Organ
    case portativeOrgan = "Portative Organ"
    /// Portonovo
    case portonovo = "Portonovo"
    /// Portuguese Guitar
    case portugueseGuitar = "Portuguese Guitar"
    /// Pōrutu
    case pōrutu = "Pōrutu"
    /// Posaunen
    case posaunen = "Posaunen"
    /// Positive
    case positive = "Positive"
    /// Poss
    case poss = "Poss"
    /// Posuane
    case posuane = "Posuane"
    /// Pote Udu
    case poteUdu = "Pote Udu"
    /// Pots
    case pots = "Pots"
    /// Poyk
    case poyk = "Poyk"
    /// Practice Chanter
    case practiceChanter = "Practice Chanter"
    /// Prato
    case prato = "Prato"
    /// Prayer Bowl
    case prayerBowl = "Prayer Bowl"
    /// Prayers
    case prayers = "Prayers"
    /// Precentor
    case precentor = "Precentor"
    /// Prensa
    case prensa = "Prensa"
    /// Prepared Kit
    case preparedKit = "Prepared Kit"
    /// Prepared Tape
    case preparedTape = "Prepared Tape"
    /// Presa del Suono
    case presadelSuono = "Presa del Suono"
    /// Pretia
    case pretia = "Pretia"
    /// Primero
    case primero = "Primero"
    /// Processed Vocals
    case processedVocals = "Processed Vocals"
    /// Promars
    case promars = "Promars"
    /// Prophet 5
    case prophet5 = "Prophet 5"
    /// Prophet 600
    case prophet600 = "Prophet 600"
    /// Prophet Synthesizer
    case prophetSynthesizer = "Prophet Synthesizer"
    /// EMU Proteus 5
    case proteus5EMU = "EMU Proteus 5"
    /// Prp
    case prp = "Prp"
    /// Psalmodicon
    case psalmodicon = "Psalmodicon"
    /// Psaltery
    case psaltery = "Psaltery"
    /// Bowed Psaltery
    case psalteryBowed = "Bowed Psaltery"
    /// Lap Psaltery
    case psalteryLap = "Lap Psaltery"
    /// Medieval Psaltery
    case psalteryMedieval = "Medieval Psaltery"
    /// Plucked Psaltery
    case psalteryPlucked = "Plucked Psaltery"
    /// Psithyra
    case psithyra = "Psithyra"
    /// Pu-Ili
    case puIli = "Pu-Ili"
    /// Puk
    case puk = "Puk"
    /// Pūkaea
    case pūkaea = "Pūkaea"
    /// Pūmotomoto
    case pūmotomoto = "Pūmotomoto"
    /// Pungi
    case pungi = "Pungi"
    /// Punteo
    case punteo = "Punteo"
    /// Pūpakapaka
    case pūpakapaka = "Pūpakapaka"
    /// Pūrerehua
    case pūrerehua = "Pūrerehua"
    /// Puro
    case puro = "Puro"
    /// Pūtātara
    case pūtātara = "Pūtātara"
    /// Putney
    case putney = "Putney"
    /// Pūtōrino
    case pūtōrino = "Pūtōrino"
    /// Puya
    case puya = "Puya"
    /// Puzon
    case puzon = "Puzon"
    /// Pzud
    case pzud = "Pzud"
    /// Qanoun
    case qanoun = "Qanoun"
    /// Qarqaba
    case qarqaba = "Qarqaba"
    /// Qasaba
    case qasaba = "Qasaba"
    /// Qawwal
    case qawwal = "Qawwal"
    /// Qena
    case qena = "Qena"
    /// Qilaut
    case qilaut = "Qilaut"
    /// Qrakech
    case qrakech = "Qrakech"
    /// Qraqeb
    case qraqeb = "Qraqeb"
    /// Quadra
    case quadra = "Quadra"
    /// Quanoon
    case quanoon = "Quanoon"
    /// Quantec Room Simul
    case quantecRoomSimul = "Quantec Room Simul"
    /// Quanun
    case quanun = "Quanun"
    /// Qua-Qua
    case quaQua = "Qua-Qua"
    /// Quatro
    case quatro = "Quatro"
    /// Quattro Mani
    case quattroMani = "Quattro Mani"
    /// Qudi
    case qudi = "Qudi"
    /// Quejio
    case quejio = "Quejio"
    /// Quena
    case quena = "Quena"
    /// Quenacho
    case quenacho = "Quenacho"
    /// Querflöte
    case querflöte = "Querflöte"
    /// Quica
    case quica = "Quica"
    /// Quijada
    case quijada = "Quijada"
    /// Quills
    case quills = "Quills"
    /// Quinta Huapanguuera
    case quintaHuapanguuera = "Quinta Huapanguuera"
    /// Quinto
    case quinto = "Quinto"
    /// Quiro
    case quiro = "Quiro"
    /// Quitar
    case quitar = "Quitar"
    /// Quitiplas
    case quitiplas = "Quitiplas"
    /// Ra
    case ra = "Ra"
    /// Rabab
    case rabab = "Rabab"
    /// Rababah
    case rababah = "Rababah"
    /// Rabat
    case rabat = "Rabat"
    /// Rabeca
    case rabeca = "Rabeca"
    /// Rabel
    case rabel = "Rabel"
    /// Racket
    case racket = "Racket"
    /// Baroque Rackett
    case rackettBaroque = "Baroque Rackett"
    /// Renaissance Rackett
    case rackettRenaissance = "Renaissance Rackett"
    /// Radio
    case radio = "Radio"
    /// Radio Voice
    case radioVoice = "Radio Voice"
    /// Radong
    case radong = "Radong"
    /// Raga
    case raga = "Raga"
    /// Ragga Poetry
    case raggaPoetry = "Ragga Poetry"
    /// Rainer
    case rainer = "Rainer"
    /// Rainmaker
    case rainmaker = "Rainmaker"
    /// Rainstick
    case rainstick = "Rainstick"
    /// Raintree
    case raintree = "Raintree"
    /// Raita
    case raita = "Raita"
    /// Rake
    case rake = "Rake"
    /// Ramana
    case ramana = "Ramana"
    /// Ramekin
    case ramekin = "Ramekin"
    /// Rammana
    case rammana = "Rammana"
    /// Ramshackle
    case ramshackle = "Ramshackle"
    /// Ram's Horn
    case ramsHorn = "Ram's Horn"
    /// Ranant Ek
    case ranantEk = "Ranant Ek"
    /// Ranant Thum
    case ranantThum = "Ranant Thum"
    /// Ranat Ek
    case ranatEk = "Ranat Ek"
    /// Ranat Kaeo
    case ranatKaeo = "Ranat Kaeo"
    /// Ranat Thum
    case ranatThum = "Ranat Thum"
    /// Rantang
    case rantang = "Rantang"
    /// Rap
    case rap = "Rap"
    /// Raperos
    case raperos = "Raperos"
    /// Rapsoda
    case rapsoda = "Rapsoda"
    /// Raspadores
    case raspadores = "Raspadores"
    /// Rasps
    case rasps = "Rasps"
    /// Ratchet
    case ratchet = "Ratchet"
    /// Rattle
    case rattle = "Rattle"
    /// Gourd Rattle
    case rattleGourd = "Gourd Rattle"
    /// Rattles
    case rattles = "Rattles"
    /// Native American Rattles
    case rattlesNativeAmerican = "Native American Rattles"
    /// Rauschpfeife
    case rauschpfeife = "Rauschpfeife"
    /// Ravanahatha
    case ravanahatha = "Ravanahatha"
    /// Rawap
    case rawap = "Rawap"
    /// Rayong
    case rayong = "Rayong"
    /// Reactable
    case reactable = "Reactable"
    /// Readings
    case readings = "Readings"
    /// Rebab
    case rebab = "Rebab"
    /// Rebec
    case rebec = "Rebec"
    /// Recorder
    case recorder = "Recorder"
    /// Alto Recorder
    case recorderAlto = "Alto Recorder"
    /// Baroque Recorder
    case recorderBaroque = "Baroque Recorder"
    /// Recorder (Bass)
    case recorderBass = "Recorder (Bass)"
    /// Basset Recorder
    case recorderBasset = "Basset Recorder"
    /// Contrabass Recorder
    case recorderContrabass = "Contrabass Recorder"
    /// Descant Recorder
    case recorderDescant = "Descant Recorder"
    /// Descant Recorder / Soprano Recorder
    case recorderDescantSoprano = "Descant Recorder / Soprano Recorder"
    /// Double Recorder
    case recorderDouble = "Double Recorder"
    /// Garklein Recorder
    case recorderGarklein = "Garklein Recorder"
    /// Great Bass Recorder
    case recorderGreatBass = "Great Bass Recorder"
    /// Great Bass Recorder / C-Bass Recorder
    case recorderGreatBassCBassRecorder = "Great Bass Recorder / C-Bass Recorder"
    /// Sopranino Recorder
    case recorderSopranino = "Sopranino Recorder"
    /// Recorder (Soprano)
    case recorderSoprano = "Recorder (Soprano)"
    /// Subcontrabass Recorder
    case recorderSubcontrabass = "Subcontrabass Recorder"
    /// Recorder (Tenor)
    case recorderTenor = "Recorder (Tenor)"
    /// Treble Recorder
    case recorderTreble = "Treble Recorder"
    /// Treble Recorder / Alto Recorder
    case recorderTrebleAltoRecorder = "Treble Recorder / Alto Recorder"
    /// Wood Recorder
    case recorderWood = "Wood Recorder"
    /// Reco-Reco
    case recoReco = "Reco-Reco"
    /// Recto
    case recto = "Recto"
    /// Red
    case red = "Red"
    /// Redoba
    case redoba = "Redoba"
    /// Redoblante
    case redoblante = "Redoblante"
    /// Double Reed
    case reedDouble = "Double Reed"
    /// Free Reed
    case reedFree = "Free Reed"
    /// Quadruple Reed
    case reedQuadruple = "Quadruple Reed"
    /// Reeds
    case reeds = "Reeds"
    /// Double Reeds
    case reedsDouble = "Double Reeds"
    /// Reeds (Multiple)
    case reedsMultiple = "Reeds (Multiple)"
    /// Synthesizer Reeds
    case reedsSynthesizer = "Synthesizer Reeds"
    /// Tenor Reeds
    case reedsTenor = "Tenor Reeds"
    /// Regal
    case regal = "Regal"
    /// Rehu
    case rehu = "Rehu"
    /// Reikin
    case reikin = "Reikin"
    /// Relato
    case relato = "Relato"
    /// Remerciements
    case remerciements = "Remerciements"
    /// Repeater
    case repeater = "Repeater"
    /// Repinique
    case repinique = "Repinique"
    /// Repique
    case repique = "Repique"
    /// Req
    case req = "Req"
    /// Requinto
    case requinto = "Requinto"
    /// Resonating Stones
    case resonatingStones = "Resonating Stones"
    /// Resonator
    case resonator = "Resonator"
    /// Resophonic Banjo
    case resophonicBanjo = "Resophonic Banjo"
    /// Rhaita
    case rhaita = "Rhaita"
    /// Wah Wah Rhodes
    case rhodesWahWah = "Wah Wah Rhodes"
    /// Rhubarb
    case rhubarb = "Rhubarb"
    /// Rhymes
    case rhymes = "Rhymes"
    /// Rhythm
    case rhythm = "Rhythm"
    /// Rhythm Box
    case rhythmBox = "Rhythm Box"
    /// Rhythm Loops
    case rhythmLoops = "Rhythm Loops"
    /// Rhythm Machine
    case rhythmMachine = "Rhythm Machine"
    /// Rhythmstick
    case rhythmstick = "Rhythmstick"
    /// Ride Cymbal
    case rideCymbal = "Ride Cymbal"
    /// Rik
    case rik = "Rik"
    /// Rika
    case rika = "Rika"
    /// Ring Cymbals
    case ringCymbals = "Ring Cymbals"
    /// Ring Modulated Keyboard
    case ringModulatedKeyboard = "Ring Modulated Keyboard"
    /// Ring Modulator
    case ringModulator = "Ring Modulator"
    /// Riq
    case riq = "Riq"
    /// Riqq
    case riqq = "Riqq"
    /// Rocar
    case rocar = "Rocar"
    /// Rock Band
    case rockBand = "Rock Band"
    /// Rocksichord
    case rocksichord = "Rocksichord"
    /// Roland 909
    case roland090 = "Roland 909"
    /// Roland 2000
    case roland2000 = "Roland 2000"
    /// Roland 770
    case roland770 = "Roland 770"
    /// Roland D50
    case rolandD50 = "Roland D50"
    /// Roland JD800
    case rolandJD800 = "Roland JD800"
    /// Roland Juno 6
    case rolandJuno6 = "Roland Juno 6"
    /// Roland MC-303
    case rolandMC303 = "Roland MC-303"
    /// Roland MKS-80
    case rolandMKS80 = "Roland MKS-80"
    /// Roland S555
    case rolandS555 = "Roland S555"
    /// Roland Synthesizer
    case rolandSynthesizer = "Roland Synthesizer"
    /// Roland TR-808
    case rolandTR808 = "Roland TR-808"
    /// Roland U20
    case rolandU20 = "Roland U20"
    /// Roland VG8
    case rolandVG8 = "Roland VG8"
    /// Roland XP 80
    case rolandXP80 = "Roland XP 80"
    /// Rollo
    case rollo = "Rollo"
    /// Rolls
    case rolls = "Rolls"
    /// Rolmo
    case rolmo = "Rolmo"
    /// Rommelpot
    case rommelpot = "Rommelpot"
    /// Ron
    case ron = "Ron"
    /// Rondador
    case rondador = "Rondador"
    /// Ronroco
    case ronroco = "Ronroco"
    /// Rōria
    case rōria = "Rōria"
    /// Rototom
    case rototom = "Rototom"
    /// Roto Toms
    case rotoToms = "Roto Toms"
    /// Rouleur
    case rouleur = "Rouleur"
    /// Roxichord
    case roxichord = "Roxichord"
    /// Rozhok
    case rozhok = "Rozhok"
    /// Ruan
    case ruan = "Ruan"
    /// Tenor Ruan
    case ruanTenor = "Tenor Ruan"
    /// Rub
    case rub = "Rub"
    /// Rubab
    case rubab = "Rubab"
    /// Rubber Band
    case rubberBand = "Rubber Band"
    /// Rubboard
    case rubboard = "Rubboard"
    /// Rudra Veena
    case rudraVeena = "Rudra Veena"
    /// Rumba Box
    case rumbaBox = "Rumba Box"
    /// Rums
    case rums = "Rums"
    /// Ryuteki
    case ryuteki = "Ryuteki"
    /// Sabar
    case sabar = "Sabar"
    /// Sac
    case sac = "Sac"
    /// Sackbut
    case sackbut = "Sackbut"
    /// Alto Sackbut
    case sackbutAlto = "Alto Sackbut"
    /// Tenor Sackbut
    case sackbutTenor = "Tenor Sackbut"
    /// Sadcore
    case sadcore = "Sadcore"
    /// Saduk
    case saduk = "Saduk"
    /// Sagat
    case sagat = "Sagat"
    /// Sakara
    case sakara = "Sakara"
    /// Salamiyyah
    case salamiyyah = "Salamiyyah"
    /// Salawat Dulang
    case salawatDulang = "Salawat Dulang"
    /// Salidor
    case salidor = "Salidor"
    /// Salmo
    case salmo = "Salmo"
    /// Saloh
    case saloh = "Saloh"
    /// Salterio
    case salterio = "Salterio"
    /// Samba Whistle
    case sambaWhistle = "Samba Whistle"
    /// Sambuk
    case sambuk = "Sambuk"
    /// Samica
    case samica = "Samica"
    /// Sampler
    case sampler = "Sampler"
    /// Samples
    case samples = "Samples"
    /// Sample Treatments
    case sampleTreatments = "Sample Treatments"
    /// Sample Voices
    case sampleVoices = "Sample Voices"
    /// Sampling
    case sampling = "Sampling"
    /// Sampling Instruments
    case samplingInstruments = "Sampling Instruments"
    /// Sampona
    case sampona = "Sampona"
    /// Sanbani Drum
    case sanbaniDrum = "Sanbani Drum"
    /// Sand Pipe
    case sandPipe = "Sand Pipe"
    /// Sanduk Misri
    case sandukMisri = "Sanduk Misri"
    /// Sanduri
    case sanduri = "Sanduri"
    /// Sanfona
    case sanfona = "Sanfona"
    /// Sangbe Drum
    case sangbeDrum = "Sangbe Drum"
    /// Sanghaba Drum
    case sanghabaDrum = "Sanghaba Drum"
    /// Sang Och Gitarr
    case sangOchGitarr = "Sang Och Gitarr"
    /// San Hsien
    case sanHsien = "San Hsien"
    /// Sankofa Akyene
    case sankofaAkyene = "Sankofa Akyene"
    /// Sansa
    case sansa = "Sansa"
    /// Sanshin
    case sanshin = "Sanshin"
    /// San Shuen
    case sanShuen = "San Shuen"
    /// Santar
    case santar = "Santar"
    /// Santoor
    case santoor = "Santoor"
    /// Santouri
    case santouri = "Santouri"
    /// Santur
    case santur = "Santur"
    /// Sanxian
    case sanxian = "Sanxian"
    /// Sanza
    case sanza = "Sanza"
    /// Sáo Meò
    case sáoMeò = "Sáo Meò"
    /// Sao Mot Lo
    case saoMotLo = "Sao Mot Lo"
    /// Sáo Trúc
    case saoTruc = "Sáo Trúc"
    /// Sapek Clappers
    case sapekClappers = "Sapek Clappers"
    /// Sapo
    case sapo = "Sapo"
    /// Sarangi
    case sarangi = "Sarangi"
    /// Sarangui
    case sarangui = "Sarangui"
    /// Saraswati Veena
    case saraswatiVeena = "Saraswati Veena"
    /// Šargija
    case Šargija = "Šargija"
    /// Sargum
    case sargum = "Sargum"
    /// Sarinda
    case sarinda = "Sarinda"
    /// Sarod
    case sarod = "Sarod"
    /// Saron
    case saron = "Saron"
    /// Saron Penerus
    case saronPenerus = "Saron Penerus"
    /// Sarrusophone
    case sarrusophone = "Sarrusophone"
    /// Sarune
    case sarune = "Sarune"
    /// Sasando
    case sasando = "Sasando"
    /// Sassari
    case sassari = "Sassari"
    /// Satara
    case satara = "Satara"
    /// Sati
    case sati = "Sati"
    /// Sato
    case sato = "Sato"
    /// Satsuma Biwa
    case satsumaBiwa = "Satsuma Biwa"
    /// Sauf
    case sauf = "Sauf"
    /// Saung
    case saung = "Saung"
    /// Savag
    case savag = "Savag"
    /// Saw
    case saw = "Saw"
    /// Bowed Saw
    case sawBowed = "Bowed Saw"
    /// Saw Duang
    case sawDuang = "Saw Duang"
    /// Electric Saw
    case sawElectric = "Electric Saw"
    /// Saw Sai Solo
    case sawSaiSolo = "Saw Sai Solo"
    /// Saw Sam Sai
    case sawSamSai = "Saw Sam Sai"
    /// Saw U
    case sawU = "Saw U"
    /// Sax (Alto)
    case saxAlto = "Sax (Alto)"
    /// Contralto Saxaphone
    case saxaphoneContralto = "Contralto Saxaphone"
    /// Sax (Baritone)
    case saxBaritone = "Sax (Baritone)"
    /// Sax (Bass)
    case saxBass = "Sax (Bass)"
    /// Sax (C-Melody)
    case saxCMelody = "Sax (C-Melody)"
    /// Sax (Counter Tenor)
    case saxCounterTenor = "Sax (Counter Tenor)"
    /// Sax (Curved Soprano)
    case saxCurvedSoprano = "Sax (Curved Soprano)"
    /// Double Sax
    case saxDouble = "Double Sax"
    /// Sax Effects
    case saxEffects = "Sax Effects"
    /// Electronic Sax
    case saxElectronic = "Electronic Sax"
    /// Saxello
    case saxello = "Saxello"
    /// Sax (Mezzo-Soprano)
    case saxMezzoSoprano = "Sax (Mezzo-Soprano)"
    /// MIDI Sax
    case saxMIDI = "MIDI Sax"
    /// Mouth Sax
    case saxMouth = "Mouth Sax"
    /// Saxophone
    case saxophone = "Saxophone"
    /// Alto Saxophone
    case saxophoneAlto = "Alto Saxophone"
    /// Bamboo Saxophone
    case saxophoneBamboo = "Bamboo Saxophone"
    /// Baritone Saxophone
    case saxophoneBaritone = "Baritone Saxophone"
    /// Contra-Alto Saxophone
    case saxophoneContraAlto = "Contra-Alto Saxophone"
    /// Contrabass Saxophone
    case saxophoneContrabass = "Contrabass Saxophone"
    /// Electric Saxophone
    case saxophoneElectric = "Electric Saxophone"
    /// Piccolo Saxophone
    case saxophonePiccolo = "Piccolo Saxophone"
    /// Quarter Tone Saxophone
    case saxophoneQuarterTone = "Quarter Tone Saxophone"
    /// Saxophone Quartet
    case saxophoneQuartet = "Saxophone Quartet"
    /// Slide Saxophone
    case saxophoneSlit = "Slide Saxophone"
    /// Sopranino Saxophone
    case saxophoneSopranino = "Sopranino Saxophone"
    /// Soprano Saxophone
    case saxophoneSoprano = "Soprano Saxophone"
    /// Subcontrabass Saxophone
    case saxophoneSubcontrabass = "Subcontrabass Saxophone"
    /// Synthesizer Saxophone
    case saxophoneSynthesizer = "Synthesizer Saxophone"
    /// Tenor Saxophone
    case saxophoneTenor = "Tenor Saxophone"
    /// Toy Saxophone
    case saxophoneToy = "Toy Saxophone"
    /// Sax (Sopranino)
    case saxSopranino = "Sax (Sopranino)"
    /// Sax (Soprano)
    case saxSoprano = "Sax (Soprano)"
    /// Sax (Tenor)
    case saxTenor = "Sax (Tenor)"
    /// Wah Wah Sax
    case saxWahWah = "Wah Wah Sax"
    /// Saz
    case saz = "Saz"
    /// Sazabo
    case sazabo = "Sazabo"
    /// Sazbus
    case sazbus = "Sazbus"
    /// Electric Saz
    case sazElectric = "Electric Saz"
    /// Sazi
    case sazi = "Sazi"
    /// Sbs
    case sbs = "Sbs"
    /// Scacciapensieri
    case scacciapensieri = "Scacciapensieri"
    /// Scat
    case scat = "Scat"
    /// Schalmei
    case schalmei = "Schalmei"
    /// Schlagzeug
    case schlagzeug = "Schlagzeug"
    /// Schreirpfeife
    case schreirpfeife = "Schreirpfeife"
    /// Schwyzerörgeli
    case schwyzerörgeli = "Schwyzerörgeli"
    /// Scraper
    case scraper = "Scraper"
    /// Scratches
    case scratches = "Scratches"
    /// Scratching
    case scratching = "Scratching"
    /// Screams
    case screams = "Screams"
    /// Scrubboard
    case scrubboard = "Scrubboard"
    /// Seashells
    case seashells = "Seashells"
    /// Double Second
    case secondDouble = "Double Second"
    /// Rhythm Section
    case sectionRhythm = "Rhythm Section"
    /// Segon Tambou
    case segonTambou = "Segon Tambou"
    /// Seguidor
    case seguidor = "Seguidor"
    /// Segunda
    case segunda = "Segunda"
    /// Segundo
    case segundo = "Segundo"
    /// Sehtar
    case sehtar = "Sehtar"
    /// Seistro
    case seistro = "Seistro"
    /// Sekere
    case sekere = "Sekere"
    /// Sekund
    case sekund = "Sekund"
    /// Seleccion De Temas
    case seleccionDeTemas = "Seleccion De Temas"
    /// Sementes
    case sementes = "Sementes"
    /// Senggak
    case senggak = "Senggak"
    /// Sênh Tiền
    case sênhTiền = "Sênh Tiền"
    /// Sentir
    case sentir = "Sentir"
    /// Sequencers
    case sequencers = "Sequencers"
    /// Serbo-Croatian Tamburica Orchestra
    case serboCroatianTamburicaOrchestra = "Serbo-Croatian Tamburica Orchestra"
    /// Serdu
    case serdu = "Serdu"
    /// Serge
    case serge = "Serge"
    /// Serp
    case serp = "Serp"
    /// Serpent
    case serpent = "Serpent"
    /// Setar
    case setar = "Setar"
    /// SH-101
    case sh101 = "SH-101"
    /// Shac-shac
    case shacshac = "Shac-shac"
    /// Shadara
    case shadara = "Shadara"
    /// Shahi Baaja
    case shahiBaaja = "Shahi Baaja"
    /// Shahmai
    case shahmai = "Shahmai"
    /// Shahnai
    case shahnai = "Shahnai"
    /// Shak
    case shak = "Shak"
    /// Shakap
    case shakap = "Shakap"
    /// Shakara
    case shakara = "Shakara"
    /// Shaker
    case shaker = "Shaker"
    /// Shakere
    case shakere = "Shakere"
    /// Shakers
    case shakers = "Shakers"
    /// African Shakers
    case shakersAfrican = "African Shakers"
    /// Shakkai
    case shakkai = "Shakkai"
    /// Shaksha
    case shaksha = "Shaksha"
    /// Shakuhachi
    case shakuhachi = "Shakuhachi"
    /// Shamisen
    case shamisen = "Shamisen"
    /// Shanai
    case shanai = "Shanai"
    /// Shannie
    case shannie = "Shannie"
    /// Shawm
    case shawm = "Shawm"
    /// Alto Shawm
    case shawmAlto = "Alto Shawm"
    /// Soprano Shawm
    case shawmSoprano = "Soprano Shawm"
    /// Tenor Shawm
    case shawmTenor = "Tenor Shawm"
    /// Sheet Metal
    case sheetMetal = "Sheet Metal"
    /// Shehnai
    case shehnai = "Shehnai"
    /// Shekere
    case shekere = "Shekere"
    /// Shell Choir
    case shellChoir = "Shell Choir"
    /// Shells
    case shells = "Shells"
    /// Shenai
    case shenai = "Shenai"
    /// Sheng
    case sheng = "Sheng"
    /// Shepherd's Flute
    case shepherdsFlute = "Shepherd's Flute"
    /// Shevi
    case shevi = "Shevi"
    /// Shichepshin
    case shichepshin = "Shichepshin"
    /// Shime-Daiko
    case shimeDaiko = "Shime-Daiko"
    /// Shime Taiko
    case shimeTaiko = "Shime Taiko"
    /// Shinobue
    case shinobue = "Shinobue"
    /// Sho
    case sho = "Sho"
    /// Shoegaze
    case shoegaze = "Shoegaze"
    /// Shofar
    case shofar = "Shofar"
    /// Shomyo
    case shomyo = "Shomyo"
    /// Shortwave Radio
    case shortwaveRadio = "Shortwave Radio"
    /// Shou Gu
    case shouGu = "Shou Gu"
    /// Shouts
    case shouts = "Shouts"
    /// Shozygs
    case shozygs = "Shozygs"
    /// Shruti Box
    case shrutiBox = "Shruti Box"
    /// Shuang Guan
    case shuangGuan = "Shuang Guan"
    /// Shudraga
    case shudraga = "Shudraga"
    /// Shvi
    case shvi = "Shvi"
    /// Siccu
    case siccu = "Siccu"
    /// Sicura
    case sicura = "Sicura"
    /// Sifflet
    case sifflet = "Sifflet"
    /// Siko
    case siko = "Siko"
    /// Siku
    case siku = "Siku"
    /// Sikus
    case sikus = "Sikus"
    /// Silbato
    case silbato = "Silbato"
    /// Silsaka
    case silsaka = "Silsaka"
    /// Simsimiya
    case simsimiya = "Simsimiya"
    /// Sinden
    case sinden = "Sinden"
    /// Sindhi Sarangi
    case sindhiSarangi = "Sindhi Sarangi"
    /// Sinding
    case sinding = "Sinding"
    /// Singer
    case singer = "Singer"
    /// Singing
    case singing = "Singing"
    /// Singing Bowls
    case singingBowls = "Singing Bowls"
    /// Singing Saw
    case singingSaw = "Singing Saw"
    /// Single Reed
    case singleReed = "Single Reed"
    /// Singular Reed
    case singularReed = "Singular Reed"
    /// Sinte
    case sinte = "Sinte"
    /// Sintesi del Suono Med
    case sintesidelSuonoMed = "Sintesi del Suono Med"
    /// Sintetizador
    case sintetizador = "Sintetizador"
    /// Sintir
    case sintir = "Sintir"
    /// Siqus
    case siqus = "Siqus"
    /// Siren
    case siren = "Siren"
    /// Sirene
    case sirene = "Sirene"
    /// Sistra
    case sistra = "Sistra"
    /// Sistrum
    case sistrum = "Sistrum"
    /// Sitar
    case sitar = "Sitar"
    /// Coral Sitar
    case sitarCoral = "Coral Sitar"
    /// Electric Sitar
    case sitarElectric = "Electric Sitar"
    /// Site Producer
    case siteProducer = "Site Producer"
    /// Skellies
    case skellies = "Skellies"
    /// Skiffle
    case skiffle = "Skiffle"
    /// Skratjie
    case skratjie = "Skratjie"
    /// Slab
    case slab = "Slab"
    /// Slagverk
    case slagverk = "Slagverk"
    /// Slapstick
    case slapstick = "Slapstick"
    /// Sledgehammer
    case sledgehammer = "Sledgehammer"
    /// Sleigh Bells
    case sleighBells = "Sleigh Bells"
    /// Slenthêm
    case slenthêm = "Slenthêm"
    /// Slg
    case slg = "Slg"
    /// Small Group
    case smallGroup = "Small Group"
    /// Small Pipes
    case smallPipes = "Small Pipes"
    /// Northumbrian Smallpipes
    case smallpipesNorthumbrian = "Northumbrian Smallpipes"
    /// Scottish Small Pipes
    case smallPipesScottish = "Scottish Small Pipes"
    /// Scottish Smallpipes
    case smallpipesScottish = "Scottish Smallpipes"
    /// Smurd
    case smurd = "Smurd"
    /// Snake
    case snake = "Snake"
    /// Snaps
    case snaps = "Snaps"
    /// Snare
    case snare = "Snare"
    /// Piccolo Snare
    case snarePiccolo = "Piccolo Snare"
    /// Socan
    case socan = "Socan"
    /// Sodina
    case sodina = "Sodina"
    /// So Duang
    case soDuang = "So Duang"
    /// Sogo
    case sogo = "Sogo"
    /// Sokou
    case sokou = "Sokou"
    /// Solina
    case solina = "Solina"
    /// Soliste
    case soliste = "Soliste"
    /// Solo
    case solo = "Solo"
    /// Solo Instrumental
    case soloInstrumental = "Solo Instrumental"
    /// Soloist
    case soloist = "Soloist"
    /// Soloists
    case soloists = "Soloists"
    /// Sona
    case sona = "Sona"
    /// Sonajas
    case sonajas = "Sonajas"
    /// Song Loan
    case songLoan = "Song Loan"
    /// Sonorisation Salle
    case sonorisationSalle = "Sonorisation Salle"
    /// Soodum
    case soodum = "Soodum"
    /// Sopile
    case sopile = "Sopile"
    /// Sopilka
    case sopilka = "Sopilka"
    /// Sopranino
    case sopranino = "Sopranino"
    /// Soprano
    case soprano = "Soprano"
    /// Echo Soprano
    case sopranoEcho = "Echo Soprano"
    /// Sordina
    case sordina = "Sordina"
    /// Sordu
    case sordu = "Sordu"
    /// Sorna
    case sorna = "Sorna"
    /// Soroban
    case soroban = "Soroban"
    /// Sorud
    case sorud = "Sorud"
    /// Souffleur de Mots
    case souffleurdeMots = "Souffleur de Mots"
    /// Soukou
    case soukou = "Soukou"
    /// Souna
    case souna = "Souna"
    /// Sound Effects
    case soundEffects = "Sound Effects"
    /// Digital Sound Effects
    case soundEffectsDigital = "Digital Sound Effects"
    /// Sounds
    case sounds = "Sounds"
    /// Soundscape
    case soundscape = "Soundscape"
    /// Electronic Sounds
    case soundsElectronic = "Electronic Sounds"
    /// Sousaphone
    case sousaphone = "Sousaphone"
    /// Sovoso
    case sovoso = "Sovoso"
    /// Space Bass
    case spaceBass = "Space Bass"
    /// Space Belt
    case spaceBelt = "Space Belt"
    /// Space Echo Guitar
    case spaceEchoGuitar = "Space Echo Guitar"
    /// Space Phone
    case spacePhone = "Space Phone"
    /// Space Whisper
    case spaceWhisper = "Space Whisper"
    /// Space Whistle
    case spaceWhistle = "Space Whistle"
    /// Spala
    case spala = "Spala"
    /// Spalla
    case spalla = "Spalla"
    /// Spanish Text
    case spanishText = "Spanish Text"
    /// Spatial Processing
    case spatialProcessing = "Spatial Processing"
    /// Speech/Speaker/Speaking Part
    case speechSpeakerSpeakingPart = "Speech/Speaker/Speaking Part"
    /// Spiked Fiddle
    case spikedFiddle = "Spiked Fiddle"
    /// Spilåpipa
    case spilåpipa = "Spilåpipa"
    /// Spinet
    case spinet = "Spinet"
    /// Spinetta
    case spinetta = "Spinetta"
    /// Spinettino
    case spinettino = "Spinettino"
    /// Spinettone
    case spinettone = "Spinettone"
    /// Spiral Percussion Gong
    case spiralPercussionGong = "Spiral Percussion Gong"
    /// Split Bamboo
    case splitBamboo = "Split Bamboo"
    /// Spoils of War
    case spoilsofWar = "Spoils of War"
    /// Spoken Vocals
    case spokenVocals = "Spoken Vocals"
    /// Spoken Vocals Samples
    case spokenVocalsSamples = "Spoken Vocals Samples"
    /// Spool
    case spool = "Spool"
    /// Spoons
    case spoons = "Spoons"
    /// Wood Spoons
    case spoonsWood = "Wood Spoons"
    /// Spoxe
    case spoxe = "Spoxe"
    /// Sprecher
    case sprecher = "Sprecher"
    /// Sprechstimme
    case sprechstimme = "Sprechstimme"
    /// Squeezebox
    case squeezebox = "Squeezebox"
    /// Sruthi
    case sruthi = "Sruthi"
    /// Sruti Box
    case srutiBox = "Sruti Box"
    /// Standup Bass
    case standupBass = "Standup Bass"
    /// Standup Electric Bass
    case standupElectricBass = "Standup Electric Bass"
    /// Stately
    case stately = "Stately"
    /// Static Vocals
    case staticVocals = "Static Vocals"
    /// Steelpan
    case steelpan = "Steelpan"
    /// Steel String
    case steelString = "Steel String"
    /// Stell
    case stell = "Stell"
    /// Sterling Ball
    case sterlingBall = "Sterling Ball"
    /// Stick
    case stick = "Stick"
    /// Stick Bass
    case stickBass = "Stick Bass"
    /// Electric Stick
    case stickElectric = "Electric Stick"
    /// Rhythm Sticks
    case sticksRhythm = "Rhythm Sticks"
    /// Stimbre
    case stimbre = "Stimbre"
    /// Stimme
    case stimme = "Stimme"
    /// Stomp Board
    case stompBoard = "Stomp Board"
    /// Stomp Box
    case stompBox = "Stomp Box"
    /// Stomping
    case stomping = "Stomping"
    /// Stones
    case stones = "Stones"
    /// Street Sounds
    case streetSounds = "Street Sounds"
    /// String Ensemble
    case stringEnsemble = "String Ensemble"
    /// String Instrument
    case stringInstrument = "String Instrument"
    /// Bowed String Instruments
    case stringInstrumentsBowed = "Bowed String Instruments"
    /// Other String Instruments
    case stringInstrumentsOther = "Other String Instruments"
    /// Plucked String Instruments
    case stringInstrumentsPlucked = "Plucked String Instruments"
    /// String Machine
    case stringMachine = "String Machine"
    /// String Overdubs
    case stringOverdubs = "String Overdubs"
    /// String Pads
    case stringPads = "String Pads"
    /// String Quartet
    case stringQuartet = "String Quartet"
    /// Strings
    case strings = "Strings"
    /// String Section
    case stringSection = "String Section"
    /// String Section Leader
    case stringSectionLeader = "String Section Leader"
    /// Prepared Strings
    case stringsPrepared = "Prepared Strings"
    /// Sampled Strings
    case stringsSampled = "Sampled Strings"
    /// Strings Samples
    case stringsSamples = "Strings Samples"
    /// Synthesizer Strings
    case stringsSynthesizer = "Synthesizer Strings"
    /// String Trio
    case stringTrio = "String Trio"
    /// Stritch
    case stritch = "Stritch"
    /// Stroviola
    case stroviola = "Stroviola"
    /// Struck Idiophone
    case struckIdiophone = "Struck Idiophone"
    /// Struck String Instruments
    case struckStringInstruments = "Struck String Instruments"
    /// Strumstick
    case strumstick = "Strumstick"
    /// Stylophone
    case stylophone = "Stylophone"
    /// Sueng
    case sueng = "Sueng"
    /// Suikinkutsu
    case suikinkutsu = "Suikinkutsu"
    /// Suka
    case suka = "Suka"
    /// Suling
    case suling = "Suling"
    /// Suling Flute
    case sulingFlute = "Suling Flute"
    /// Suona
    case suona = "Suona"
    /// Suono
    case suono = "Suono"
    /// Surbahar
    case surbahar = "Surbahar"
    /// Surdo
    case surdo = "Surdo"
    /// Surdo de Corte
    case surdodeCorte = "Surdo de Corte"
    /// Surdo Virado
    case surdoVirado = "Surdo Virado"
    /// Sursingar
    case sursingar = "Sursingar"
    /// Suspended Cymbals
    case suspendedCymbals = "Suspended Cymbals"
    /// Svara Mandala
    case svaraMandala = "Svara Mandala"
    /// Swanee (Slide Whistle)
    case swaneeSlideWhistle = "Swanee (Slide Whistle)"
    /// Swaramandala
    case swaramandala = "Swaramandala"
    /// Swarmandal
    case swarmandal = "Swarmandal"
    /// Swarmandel
    case swarmandel = "Swarmandel"
    /// Swar Peti
    case swarPeti = "Swar Peti"
    /// Swiss Hand Bells
    case swissHandBells = "Swiss Hand Bells"
    /// Switchblade
    case switchblade = "Switchblade"
    /// Sygyt
    case sygyt = "Sygyt"
    /// Symphonia
    case symphonia = "Symphonia"
    /// Symphony
    case symphony = "Symphony"
    /// Sympitar
    case sympitar = "Sympitar"
    /// Synchrofonte
    case synchrofonte = "Synchrofonte"
    /// Synclavier
    case synclavier = "Synclavier"
    /// Synclavier Programming
    case synclavierProgramming = "Synclavier Programming"
    /// Syncussion
    case syncussion = "Syncussion"
    /// Syndrum
    case syndrum = "Syndrum"
    /// Synth
    case synth = "Synth"
    /// Synthaxe
    case synthaxe = "Synthaxe"
    /// Brass Synth
    case synthBrass = "Brass Synth"
    /// Breath Controlled Synth
    case synthBreathControlled = "Breath Controlled Synth"
    /// Synthesizer
    case synthesizer = "Synthesizer"
    /// Synthesizer Brass
    case synthesizerBrass = "Synthesizer Brass"
    /// Digital Synthesizer
    case synthesizerDigital = "Digital Synthesizer"
    /// Rhythm Synthesizer
    case synthesizerRhythm = "Rhythm Synthesizer"
    /// Syrinx
    case syrinx = "Syrinx"
    /// Taar
    case taar = "Taar"
    /// Tabla
    case tabla = "Tabla"
    /// Tabla Baladi
    case tablaBaladi = "Tabla Baladi"
    /// Tabla Saidi
    case tablaSaidi = "Tabla Saidi"
    /// Tabla Tarang
    case tablaTarang = "Tabla Tarang"
    /// Table Steel
    case tableSteel = "Table Steel"
    /// Table Steel Guitar
    case tableSteelGuitar = "Table Steel Guitar"
    /// Tabor
    case tabor = "Tabor"
    /// Tacon
    case tacon = "Tacon"
    /// Taepyeongso
    case taepyeongso = "Taepyeongso"
    /// Taiko
    case taiko = "Taiko"
    /// Taishogoto
    case taishogoto = "Taishogoto"
    /// Talempong
    case talempong = "Talempong"
    /// Talharpa
    case talharpa = "Talharpa"
    /// Talharpa / Hiiu Kannel
    case talharpaHiiuKannel = "Talharpa / Hiiu Kannel"
    /// Talk Box
    case talkBox = "Talk Box"
    /// Talking
    case talking = "Talking"
    /// Talking Bass
    case talkingBass = "Talking Bass"
    /// Talking Drum
    case talkingDrum = "Talking Drum"
    /// Talking Violin
    case talkingViolin = "Talking Violin"
    /// Tama
    case tama = "Tama"
    /// Tambak
    case tambak = "Tambak"
    /// Tambala
    case tambala = "Tambala"
    /// Tambo Drums
    case tamboDrums = "Tambo Drums"
    /// Tambor
    case tambor = "Tambor"
    /// Tambora
    case tambora = "Tambora"
    /// Tambora Apambichá
    case tamboraApambichá = "Tambora Apambichá"
    /// Tambor Alegre
    case tamborAlegre = "Tambor Alegre"
    /// Tambora Timbal
    case tamboraTimbal = "Tambora Timbal"
    /// Tambor Chico
    case tamborChico = "Tambor Chico"
    /// Tambores Arabes
    case tamboresArabes = "Tambores Arabes"
    /// Tambores Bata
    case tamboresBata = "Tambores Bata"
    /// Tambor Hembra
    case tamborHembra = "Tambor Hembra"
    /// Tamborim
    case tamborim = "Tamborim"
    /// Tambor Piano
    case tamborPiano = "Tambor Piano"
    /// Tambor Repique
    case tamborRepique = "Tambor Repique"
    /// Tambou
    case tambou = "Tambou"
    /// Tambour
    case tambour = "Tambour"
    /// Tamboura
    case tamboura = "Tamboura"
    /// Tambour Basse
    case tambourBasse = "Tambour Basse"
    /// Tambourine
    case tambourine = "Tambourine"
    /// Egyptian Tambourine
    case tambourineEgyptian = "Egyptian Tambourine"
    /// Tambourine Shakers
    case tambourineShakers = "Tambourine Shakers"
    /// Tambour Tenors
    case tambourTenors = "Tambour Tenors"
    /// Tambur
    case tambur = "Tambur"
    /// Tambura
    case tambura = "Tambura"
    /// Tamburello
    case tamburello = "Tamburello"
    /// Tamburitza
    case tamburitza = "Tamburitza"
    /// Tam-tam
    case tamtam = "Tam-tam"
    /// Tanbou Ka
    case tanbouKa = "Tanbou Ka"
    /// Tanbur
    case tanbur = "Tanbur"
    /// Tanbur A Archet
    case tanburAArchet = "Tanbur A Archet"
    /// Tanbur A Plectre
    case tanburAPlectre = "Tanbur A Plectre"
    /// Tangent Piano
    case tangentPiano = "Tangent Piano"
    /// Tanpura
    case tanpura = "Tanpura"
    /// Tan-Tan
    case tanTan = "Tan-Tan"
    /// Taonga Pūoro
    case taongaPūoro = "Taonga Pūoro"
    /// Taos Drum
    case taosDrum = "Taos Drum"
    /// Tapan
    case tapan = "Tapan"
    /// Tapboard
    case tapboard = "Tapboard"
    /// Tap Dancing
    case tapDancing = "Tap Dancing"
    /// Taphon
    case taphon = "Taphon"
    /// Taps
    case taps = "Taps"
    /// Tar
    case tar = "Tar"
    /// Taragat
    case taragat = "Taragat"
    /// Taragot
    case taragot = "Taragot"
    /// Tarang
    case tarang = "Tarang"
    /// Tarbuka
    case tarbuka = "Tarbuka"
    /// Tarkas
    case tarkas = "Tarkas"
    /// Tárogató
    case tarogato = "Tárogató"
    /// Tarola
    case tarola = "Tarola"
    /// Tarota
    case tarota = "Tarota"
    /// Tars
    case tars = "Tars"
    /// Tascam
    case tascam = "Tascam"
    /// Tastiere
    case tastiere = "Tastiere"
    /// Tavil
    case tavil = "Tavil"
    /// T-bone
    case tbone = "T-bone"
    /// Tef
    case tef = "Tef"
    /// Tehardent
    case tehardent = "Tehardent"
    /// Tehyan
    case tehyan = "Tehyan"
    /// Te Kū
    case teKū = "Te Kū"
    /// Telacados
    case telacados = "Telacados"
    /// Telecaster
    case telecaster = "Telecaster"
    /// Telephone Voice
    case telephoneVoice = "Telephone Voice"
    /// Telharmonium
    case telharmonium = "Telharmonium"
    /// Temple Bells
    case templeBells = "Temple Bells"
    /// Temple Block
    case templeBlock = "Temple Block"
    /// Temple Bowls
    case templeBowls = "Temple Bowls"
    /// Temple Gongs
    case templeGongs = "Temple Gongs"
    /// Temür Khuur
    case temürKhuur = "Temür Khuur"
    /// Tennessee Music Box
    case tennesseeMusicBox = "Tennessee Music Box"
    /// Tenora
    case tenora = "Tenora"
    /// Teponaxtle
    case teponaxtle = "Teponaxtle"
    /// Texicali Horns
    case texicaliHorns = "Texicali Horns"
    /// Text Producer
    case textProducer = "Text Producer"
    /// T-fer
    case tfer = "T-fer"
    /// Thavil
    case thavil = "Thavil"
    /// The Great Stalacpipe Organ
    case theGreatStalacpipeOrgan = "The Great Stalacpipe Organ"
    /// Theorbo
    case theorbo = "Theorbo"
    /// Theorbo-Lute
    case theorboLute = "Theorbo-Lute"
    /// Theremin
    case theremin = "Theremin"
    /// Tibetan Thighbone
    case thighboneTibetan = "Tibetan Thighbone"
    /// Thimila
    case thimila = "Thimila"
    /// Thon
    case thon = "Thon"
    /// Throat
    case throat = "Throat"
    /// Throat Singing
    case throatSinging = "Throat Singing"
    /// Thunder Sheet
    case thunderSheet = "Thunder Sheet"
    /// Thunderstick
    case thunderstick = "Thunderstick"
    /// Tible
    case tible = "Tible"
    /// Ti Bwa
    case tiBwa = "Ti Bwa"
    /// Tic Tac
    case ticTac = "Tic Tac"
    /// Tidinit
    case tidinit = "Tidinit"
    /// Tiêu
    case tiêu = "Tiêu"
    /// Tilinka
    case tilinka = "Tilinka"
    /// Timba
    case timba = "Timba"
    /// Timbaleiro
    case timbaleiro = "Timbaleiro"
    /// Timbales
    case timbales = "Timbales"
    /// Timbalitos
    case timbalitos = "Timbalitos"
    /// Timbaus
    case timbaus = "Timbaus"
    /// Timpani
    case timpani = "Timpani"
    /// Tin Cans
    case tinCans = "Tin Cans"
    /// Tinde
    case tinde = "Tinde"
    /// Tinya
    case tinya = "Tinya"
    /// Tiompan
    case tiompan = "Tiompan"
    /// Tiorba
    case tiorba = "Tiorba"
    /// Tiple
    case tiple = "Tiple"
    /// Tipple
    case tipple = "Tipple"
    /// Ti-tse
    case titse = "Ti-tse"
    /// Tma
    case tma = "Tma"
    /// Tōkere
    case tōkere = "Tōkere"
    /// Tololoche
    case tololoche = "Tololoche"
    /// Tomas de Sonido
    case tomasdeSonido = "Tomas de Sonido"
    /// Tombak
    case tombak = "Tombak"
    /// Floor Tom
    case tomFloor = "Floor Tom"
    /// Tom Overdubs
    case tomOverdubs = "Tom Overdubs"
    /// Toms
    case toms = "Toms"
    /// Concert Toms
    case tomsConcert = "Concert Toms"
    /// Tom Tom
    case tomTom = "Tom Tom"
    /// Chinese Tom Tom
    case tomTomChinese = "Chinese Tom Tom"
    /// Tone Blocks
    case toneBlocks = "Tone Blocks"
    /// Tone Box
    case toneBox = "Tone Box"
    /// Toned Bowls
    case tonedBowls = "Toned Bowls"
    /// Tone Generator
    case toneGenerator = "Tone Generator"
    /// Tonette
    case tonette = "Tonette"
    /// Tongue Tapping
    case tongueTapping = "Tongue Tapping"
    /// Toning
    case toning = "Toning"
    /// Tonkori
    case tonkori = "Tonkori"
    /// Topshuur
    case topshuur = "Topshuur"
    /// Toschpuluur
    case toschpuluur = "Toschpuluur"
    /// Toubeleki
    case toubeleki = "Toubeleki"
    /// Toy
    case toy = "Toy"
    /// Toyo
    case toyo = "Toyo"
    /// Toys
    case toys = "Toys"
    /// Toy Xylophone
    case toyXylophone = "Toy Xylophone"
    /// Trabka
    case trabka = "Trabka"
    /// Traditional Basque Ensemble
    case traditionalBasqueEnsemble = "Traditional Basque Ensemble"
    /// Trainaphone
    case trainaphone = "Trainaphone"
    /// Train Sounds
    case trainSounds = "Train Sounds"
    /// Train Whistle
    case trainWhistle = "Train Whistle"
    /// Tràm Plè
    case tràmPlè = "Tràm Plè"
    /// Tranceaphone
    case tranceaphone = "Tranceaphone"
    /// Trắng Jâu
    case trắngJâu = "Trắng Jâu"
    /// Trắng Lu
    case trắngLu = "Trắng Lu"
    /// Trap Kit
    case trapKit = "Trap Kit"
    /// Trash Cans
    case trashCans = "Trash Cans"
    /// Trautonium
    case trautonium = "Trautonium"
    /// Treated Voice
    case treatedVoice = "Treated Voice"
    /// Treble
    case treble = "Treble"
    /// Tremolo
    case tremolo = "Tremolo"
    /// Tres
    case tres = "Tres"
    /// Tres Cubano
    case tresCubano = "Tres Cubano"
    /// Tres Dos
    case tresDos = "Tres Dos"
    /// Tres Golpe
    case tresGolpe = "Tres Golpe"
    /// Treujenn-goal
    case treujenngoal = "Treujenn-goal"
    /// Triangle
    case triangle = "Triangle"
    /// Cajun Triangle
    case triangleCajun = "Cajun Triangle"
    /// Trichordon
    case trichordon = "Trichordon"
    /// Trikiti
    case trikiti = "Trikiti"
    /// Trio
    case trio = "Trio"
    /// Tritar
    case tritar = "Tritar"
    /// Tromba Marina
    case trombaMarina = "Tromba Marina"
    /// Trombone
    case trombone = "Trombone"
    /// Trombone (Alto)
    case tromboneAlto = "Trombone (Alto)"
    /// Trombone (Baritone)
    case tromboneBaritone = "Trombone (Baritone)"
    /// Baroque Bass Trombone
    case tromboneBaroqueBass = "Baroque Bass Trombone"
    /// Trombone (Bass)
    case tromboneBass = "Trombone (Bass)"
    /// Contrabass Trombone
    case tromboneContrabass = "Contrabass Trombone"
    /// Electric Trombone
    case tromboneElectric = "Electric Trombone"
    /// MIDI Trombone
    case tromboneMIDI = "MIDI Trombone"
    /// Mouth Trombone
    case tromboneMouth = "Mouth Trombone"
    /// Muted Trombone
    case tromboneMuted = "Muted Trombone"
    /// Soprano Trombone
    case tromboneSoprano = "Soprano Trombone"
    /// Tenor Trombone
    case tromboneTenor = "Tenor Trombone"
    /// Valve Trombone
    case tromboneValva = "Valve Trombone"
    /// Trombone (Valve)
    case tromboneValve = "Trombone (Valve)"
    /// Trombonium
    case trombonium = "Trombonium"
    /// Tromboon
    case tromboon = "Tromboon"
    /// Trompa
    case trompa = "Trompa"
    /// Trompong
    case trompong = "Trompong"
    /// Trống Bông
    case trốngBông = "Trống Bông"
    /// Trong De
    case trongDe = "Trong De"
    /// Truba
    case truba = "Truba"
    /// Trumbadoras
    case trumbadoras = "Trumbadoras"
    /// Trumpet
    case trumpet = "Trumpet"
    /// Bamboo Trumpet
    case trumpetBamboo = "Bamboo Trumpet"
    /// Baroque Trumpet
    case trumpetBaroque = "Baroque Trumpet"
    /// Trumpet (Bass)
    case trumpetBass = "Trumpet (Bass)"
    /// Trumpet Calls
    case trumpetCalls = "Trumpet Calls"
    /// E Flat Trumpet
    case trumpetEFlat = "E Flat Trumpet"
    /// Electric Trumpet
    case trumpetElectric = "Electric Trumpet"
    /// Electronic Trumpet
    case trumpetElectronic = "Electronic Trumpet"
    /// Trumpet Family
    case trumpetFamily = "Trumpet Family"
    /// Flatt Trumpet
    case trumpetFlatt = "Flatt Trumpet"
    /// Trumpet Flugelhorn
    case trumpetFlugelhorn = "Trumpet Flugelhorn"
    /// Marine Trumpet
    case trumpetMarine = "Marine Trumpet"
    /// Mini Trumpet
    case trumpetMini = "Mini Trumpet"
    /// Mouth Trumpet
    case trumpetMouth = "Mouth Trumpet"
    /// Trumpet (Muted)
    case trumpetMuted = "Trumpet (Muted)"
    /// Natural Trumpet
    case trumpetNatural = "Natural Trumpet"
    /// Piccolo Trumpet
    case trumpetPiccolo = "Piccolo Trumpet"
    /// Pocket Trumpet
    case trumpetPocket = "Pocket Trumpet"
    /// Processed Trumpet
    case trumpetProcessed = "Processed Trumpet"
    /// Reed Trumpet
    case trumpetReed = "Reed Trumpet"
    /// Trumpet Samples
    case trumpetSamples = "Trumpet Samples"
    /// Slide Trumpet
    case trumpetSlit = "Slide Trumpet"
    /// Soprano Trumpet
    case trumpetSoprano = "Soprano Trumpet"
    /// Tibetan Trumpet
    case trumpetTibetan = "Tibetan Trumpet"
    /// Toy Trumpet
    case trumpetToy = "Toy Trumpet"
    /// Trumpet (Valve)
    case trumpetValve = "Trumpet (Valve)"
    /// Trumpet Violin
    case trumpetViolin = "Trumpet Violin"
    /// T'rưng
    case trưng = "T'rưng"
    /// Tschanggo
    case tschanggo = "Tschanggo"
    /// Tsching
    case tsching = "Tsching"
    /// Tsikadraha
    case tsikadraha = "Tsikadraha"
    /// Tsugaru
    case tsugaru = "Tsugaru"
    /// Tuba
    case tuba = "Tuba"
    /// Tuba (Bass)
    case tubaBass = "Tuba (Bass)"
    /// Tuba (Contrabass)
    case tubaContrabass = "Tuba (Contrabass)"
    /// Electric Tuba
    case tubaElectric = "Electric Tuba"
    /// Tenor Tuba
    case tubaTenor = "Tenor Tuba"
    /// Tubax
    case tubax = "Tubax"
    /// Tuben
    case tuben = "Tuben"
    /// Tubon
    case tubon = "Tubon"
    /// Tubulum
    case tubulum = "Tubulum"
    /// Tumba
    case tumba = "Tumba"
    /// Tumbadora
    case tumbadora = "Tumbadora"
    /// Tumbi
    case tumbi = "Tumbi"
    /// Tumutumu
    case tumutumu = "Tumutumu"
    /// Tungso
    case tungso = "Tungso"
    /// Tüngür
    case tüngür = "Tüngür"
    /// Tuning Forks
    case tuningForks = "Tuning Forks"
    /// Tupan
    case tupan = "Tupan"
    /// Turntable(s)
    case turntables = "Turntable(s)"
    /// Turntable(s) Samples
    case turntablesSamples = "Turntable(s) Samples"
    /// Egyptian Twin Reed
    case twinReedEgyptian = "Egyptian Twin Reed"
    /// Tx-816
    case tx816 = "Tx-816"
    /// Txalaparta
    case txalaparta = "Txalaparta"
    /// Txistu
    case txistu = "Txistu"
    /// Chromatic Tympani
    case tympaniChromatic = "Chromatic Tympani"
    /// Tympanon
    case tympanon = "Tympanon"
    /// Typewriter
    case typewriter = "Typewriter"
    /// Tyrolian
    case tyrolian = "Tyrolian"
    /// Tzoura
    case tzoura = "Tzoura"
    /// Tzuras
    case tzuras = "Tzuras"
    /// Uakti
    case uakti = "Uakti"
    /// Uchimono
    case uchimono = "Uchimono"
    /// Uchiwa-daiko
    case uchiwadaiko = "Uchiwa-daiko"
    /// Ud
    case ud = "Ud"
    /// Udu
    case udu = "Udu"
    /// Uillean Pipes
    case uilleanPipes = "Uillean Pipes"
    /// Ukeke
    case ukeke = "Ukeke"
    /// Tenor Ukelele
    case ukeleleTenor = "Tenor Ukelele"
    /// Ukulele
    case ukulele = "Ukulele"
    /// Baritone Ukulele
    case ukuleleBaritone = "Baritone Ukulele"
    /// Ungal
    case ungal = "Ungal"
    /// Univox
    case univox = "Univox"
    /// Unknown Instrument
    case unknownInstrument = "Unknown Instrument"
    /// Unknown Performer Role
    case unknownPerformerRole = "Unknown Performer Role"
    /// Bass (Upright)
    case uprightBass = "Bass (Upright)"
    /// Ütőgardon
    case utogardon = "Ütőgardon"
    /// Vacuum Cleaner
    case vacuumCleaner = "Vacuum Cleaner"
    /// Valiha
    case valiha = "Valiha"
    /// Valthorn
    case valthorn = "Valthorn"
    /// Valved Brass Instruments
    case valvedBrassInstruments = "Valved Brass Instruments"
    /// Valvehorn
    case valvehorn = "Valvehorn"
    /// Electric Valve Instrument
    case valveInstrumentElectric = "Electric Valve Instrument"
    /// Electronic Valve Instrument
    case valveInstrumentElectronic = "Electronic Valve Instrument"
    /// Various Instruments
    case variousInstruments = "Various Instruments"
    /// VCS 3 Synthesizer
    case vcs3Synthesizer = "VCS 3 Synthesizer"
    /// Veena
    case veena = "Veena"
    /// Venu
    case venu = "Venu"
    /// Veracruz
    case veracruz = "Veracruz"
    /// Versao
    case versao = "Versao"
    /// Versiones Para El Castellano
    case versionesParaElCastellano = "Versiones Para El Castellano"
    /// Vestuario
    case vestuario = "Vestuario"
    /// Vibe Master
    case vibeMaster = "Vibe Master"
    /// Bowed Vibes
    case vibesBowed = "Bowed Vibes"
    /// Sampled Vibes
    case vibesSampled = "Sampled Vibes"
    /// Synthesizer Vibes
    case vibesSynthesizer = "Synthesizer Vibes"
    /// Vibrablock
    case vibrablock = "Vibrablock"
    /// Vibrachime
    case vibrachime = "Vibrachime"
    /// Vibraharp
    case vibraharp = "Vibraharp"
    /// Vibrandoneon
    case vibrandoneon = "Vibrandoneon"
    /// Vibraphone
    case vibraphone = "Vibraphone"
    /// Electric Vibraphone
    case vibraphoneElectric = "Electric Vibraphone"
    /// MIDI Vibraphone
    case vibraphoneMIDI = "MIDI Vibraphone"
    /// Vibraphone Samples
    case vibraphoneSamples = "Vibraphone Samples"
    /// Vibraslap
    case vibraslap = "Vibraslap"
    /// Vibuela
    case vibuela = "Vibuela"
    /// Vichitra Veena
    case vichitraVeena = "Vichitra Veena"
    /// Video Game Console
    case videoGameConsole = "Video Game Console"
    /// Vielle
    case vielle = "Vielle"
    /// Bowed Vielle
    case vielleBowed = "Bowed Vielle"
    /// Vienna Horn
    case viennaHorn = "Vienna Horn"
    /// Vientos
    case vientos = "Vientos"
    /// Vietnamese Guitar
    case vietnameseGuitar = "Vietnamese Guitar"
    /// Viguela
    case viguela = "Viguela"
    /// Vihuela
    case vihuela = "Vihuela"
    /// Mexican Vihuela
    case vihuelaMexican = "Mexican Vihuela"
    /// Spanish Vihuela
    case vihuelaSpanish = "Spanish Vihuela"
    /// Viloncello
    case viloncello = "Viloncello"
    /// Vina
    case vina = "Vina"
    /// Viol
    case viol = "Viol"
    /// Viola
    case viola = "Viola"
    /// 3-String Viola
    case viola5String = "3-String Viola"
    /// 6-String Viola
    case viola6String = "6-String Viola"
    /// Alto Viola
    case violaAlto = "Alto Viola"
    /// Baroque Viola
    case violaBaroque = "Baroque Viola"
    /// Viola Bastarda
    case violaBastarda = "Viola Bastarda"
    /// Viola Caipira
    case violaCaipira = "Viola Caipira"
    /// Viola da Braccio
    case violadaBraccio = "Viola da Braccio"
    /// Viola Da Gamba
    case violaDaGamba = "Viola Da Gamba"
    /// Alto Viola da gamba
    case violadaGambaAlto = "Alto Viola da gamba"
    /// Descant Viola da gamba
    case violaDaGambaDescant = "Descant Viola da gamba"
    /// Soprano Viola da gamba
    case violadaGambaSoprano = "Soprano Viola da gamba"
    /// Tenor Viola da gamba
    case violadaGambaTenor = "Tenor Viola da gamba"
    /// Treble Viola da gamba
    case violadagambaTreble = "Treble Viola da gamba"
    /// Viola D'Amore
    case violaDAmore = "Viola D'Amore"
    /// Electric Viola
    case violaElectric = "Electric Viola"
    /// Alto Viol
    case violAlto = "Alto Viol"
    /// Viola Nordestina
    case violaNordestina = "Viola Nordestina"
    /// Violao
    case violao = "Violao"
    /// Viola Organista
    case violaOrganista = "Viola Organista"
    /// Viola Sertaneja
    case violaSertaneja = "Viola Sertaneja"
    /// Soprano Viola
    case violaSoprano = "Soprano Viola"
    /// Tenor Viola
    case violaTenor = "Tenor Viola"
    /// Violectra
    case violectra = "Violectra"
    /// Viol Family
    case violFamily = "Viol Family"
    /// Violin
    case violin = "Violin"
    /// 6-String Violin
    case violin6String = "6-String Violin"
    /// Alto Violin
    case violinAlto = "Alto Violin"
    /// Arabian Violin
    case violinArabian = "Arabian Violin"
    /// Baritone Violin
    case violinBaritone = "Baritone Violin"
    /// Baroque Violin
    case violinBaroque = "Baroque Violin"
    /// Violin (Bass)
    case violinBass = "Violin (Bass)"
    /// Violin Bow
    case violinBow = "Violin Bow"
    /// Violin Cadenza
    case violinCadenza = "Violin Cadenza"
    /// Chinese Violin
    case violinChinese = "Chinese Violin"
    /// Contrabass Violin
    case violinContrabass = "Contrabass Violin"
    /// Double Violin
    case violinDouble = "Double Violin"
    /// Egyptian Violin
    case violinEgyptian = "Egyptian Violin"
    /// Electric Violin
    case violinElectric = "Electric Violin"
    /// Violin Family
    case violinFamily = "Violin Family"
    /// Indian Violin
    case violinIndian = "Indian Violin"
    /// MIDI Violin
    case violinMIDI = "MIDI Violin"
    /// Octave Violin
    case violinOctave = "Octave Violin"
    /// Violin Octet
    case violinOctet = "Violin Octet"
    /// Violino Piccolo
    case violinoPiccolo = "Violino Piccolo"
    /// Oriental Violin
    case violinOriental = "Oriental Violin"
    /// Violin Piccolo
    case violinPiccolo = "Violin Piccolo"
    /// Pizzicato Violin
    case violinPizzicato = "Pizzicato Violin"
    /// Plucked Violin
    case violinPlucked = "Plucked Violin"
    /// Renaissance Violin
    case violinRenaissance = "Renaissance Violin"
    /// Violins
    case violins = "Violins"
    /// Sampled Violin
    case violinSampled = "Sampled Violin"
    /// Violin Samples
    case violinSamples = "Violin Samples"
    /// Soprano Violin
    case violinSoprano = "Soprano Violin"
    /// Stroh Violin
    case violinStroh = "Stroh Violin"
    /// Synthesizer Violin
    case violinSynthesizer = "Synthesizer Violin"
    /// Tenor Violin
    case violinTenor = "Tenor Violin"
    /// Treble Violin
    case violinTreble = "Treble Violin"
    /// Wah Wah Violin
    case violinWahWah = "Wah Wah Violin"
    /// Viololyra
    case viololyra = "Viololyra"
    /// Violoncello Piccolo
    case violoncelloPiccolo = "Violoncello Piccolo"
    /// Violoncino
    case violoncino = "Violoncino"
    /// Violone
    case violone = "Violone"
    /// Piccolo Violon
    case violonPiccolo = "Piccolo Violon"
    /// Violotta
    case violotta = "Violotta"
    /// Tenor Viol
    case violTenor = "Tenor Viol"
    /// Treble Viol
    case violTreble = "Treble Viol"
    /// Upright Double Bass Viol
    case violUprightDoubleBass = "Upright Double Bass Viol"
    /// Virginal
    case virginal = "Virginal"
    /// Vocal
    case vocal = "Vocal"
    /// Vocal Ad-Libs
    case vocalAdLibs = "Vocal Ad-Libs"
    /// Alto Tenor (Vocal)
    case vocalAltoTenor = "Alto Tenor (Vocal)"
    /// Baritone (Vocal)
    case vocalBaritone = "Baritone (Vocal)"
    /// Bass (Vocal)
    case vocalBass = "Bass (Vocal)"
    /// Vocal Break
    case vocalBreak = "Vocal Break"
    /// Contralto (Vocal)
    case vocalContralto = "Contralto (Vocal)"
    /// Counter Tenor (Vocal)
    case vocalCounterTenor = "Counter Tenor (Vocal)"
    /// Vocal Drone
    case vocalDrone = "Vocal Drone"
    /// Vocal Effect
    case vocalEffect = "Vocal Effect"
    /// Vocal Ensemble
    case vocalEnsemble = "Vocal Ensemble"
    /// Vocalese
    case vocalese = "Vocalese"
    /// Vocal Group
    case vocalGroup = "Vocal Group"
    /// Harmony Vocal Group
    case vocalGroupHarmony = "Harmony Vocal Group"
    /// Vocal Harmony
    case vocalHarmony = "Vocal Harmony"
    /// Vocal Horns
    case vocalHorns = "Vocal Horns"
    /// Vocal Impersonations
    case vocalImpersonations = "Vocal Impersonations"
    /// Mezzo-Soprano (Vocal)
    case vocalMezzoSoprano = "Mezzo-Soprano (Vocal)"
    /// Vocal Overdubs
    case vocalOverdubs = "Vocal Overdubs"
    /// Vocal Percussion
    case vocalPercussion = "Vocal Percussion"
    /// Vocals
    case vocals = "Vocals"
    /// Alto (Vocals)
    case vocalsAlto = "Alto (Vocals)"
    /// Vocal Samples
    case vocalSamples = "Vocal Samples"
    /// Vocals (Background)
    case vocalsBackground = "Vocals (Background)"
    /// Baritone Vocals
    case vocalsBaritone = "Baritone Vocals"
    /// Bass Vocals
    case vocalsBass = "Bass Vocals"
    /// Choir Vocals
    case vocalsChoir = "Choir Vocals"
    /// Contralto Vocals
    case vocalsContralto = "Contralto Vocals"
    /// Countertenor Vocals
    case vocalsCounterTenor = "Countertenor Vocals"
    /// Vocal Scratches
    case vocalScratches = "Vocal Scratches"
    /// Dub Vocals
    case vocalsDub = "Dub Vocals"
    /// Harmony Vocals
    case vocalsHarmony = "Harmony Vocals"
    /// Lead Vocals
    case vocalsLead = "Lead Vocals"
    /// Mezzo-Soprano Vocals
    case vocalsMezzoSoprano = "Mezzo-Soprano Vocals"
    /// Obbligatto Vocals
    case vocalsObbligatto = "Obbligatto Vocals"
    /// Soprano (Vocal)
    case vocalSoprano = "Soprano (Vocal)"
    /// Vocals (Rhythm)
    case vocalsRhythm = "Vocals (Rhythm)"
    /// Sampled Vocals
    case vocalsSampled = "Sampled Vocals"
    /// Solo Vocals
    case vocalsSolo = "Solo Vocals"
    /// Soprano Vocals
    case vocalsSoprano = "Soprano Vocals"
    /// Spanish Vocals
    case vocalsSpanish = "Spanish Vocals"
    /// Tenor Vocals
    case vocalsTenor = "Tenor Vocals"
    /// Treble Vocals
    case vocalsTreble = "Treble Vocals"
    /// Tenor (Vocal)
    case vocalTenor = "Tenor (Vocal)"
    /// Treble (Vocal)
    case vocalTreble = "Treble (Vocal)"
    /// Vocoder
    case vocoder = "Vocoder"
    /// Vocoder Programming
    case vocoderProgramming = "Vocoder Programming"
    /// Voice
    case voice = "Voice"
    /// Voice Bag
    case voiceBag = "Voice Bag"
    /// Voice Box
    case voiceBox = "Voice Box"
    /// Voice Flute
    case voiceFlute = "Voice Flute"
    /// Voice Loop
    case voiceLoop = "Voice Loop"
    /// Voiceover
    case voiceover = "Voiceover"
    /// Overtone Voice
    case voiceOvertone = "Overtone Voice"
    /// Voices
    case voices = "Voices"
    /// Voice Sample
    case voiceSample = "Voice Sample"
    /// Synthesizer Voices
    case voicesSynthesizer = "Synthesizer Voices"
    /// Tibetan Voices
    case voicesTibetan = "Tibetan Voices"
    /// Voicestra+
    case voicestraPlus = "Voicestra+"
    /// Voice Synthesizer
    case voiceSynthesizer = "Voice Synthesizer"
    /// Votz
    case votz = "Votz"
    /// Vox Continental
    case voxContinental = "Vox Continental"
    /// Vox Jaguar
    case voxJaguar = "Vox Jaguar"
    /// Vox Organ
    case voxOrgan = "Vox Organ"
    /// Vuvuzela
    case vuvuzela = "Vuvuzela"
    /// Wagner Tuba
    case wagnerTuba = "Wagner Tuba"
    /// Wails
    case wails = "Wails"
    /// War Pipes
    case warPipes = "War Pipes"
    /// Washboard
    case washboard = "Washboard"
    /// Bass (Washboard)
    case washboardBass = "Bass (Washboard)"
    /// Wassakhoumba
    case wassakhoumba = "Wassakhoumba"
    /// Water Bottle
    case waterBottle = "Water Bottle"
    /// Water Bowl
    case waterBowl = "Water Bowl"
    /// Water Bucket
    case waterBucket = "Water Bucket"
    /// Water Effects
    case waterEffects = "Water Effects"
    /// Water Gong
    case waterGong = "Water Gong"
    /// Water Instruments
    case waterInstruments = "Water Instruments"
    /// Waterphone
    case waterphone = "Waterphone"
    /// Water Sticks
    case waterSticks = "Water Sticks"
    /// Wavedrum
    case wavedrum = "Wavedrum"
    /// Weero
    case weero = "Weero"
    /// Weirdophone
    case weirdophone = "Weirdophone"
    /// Weissenborn
    case weissenborn = "Weissenborn"
    /// Whale Sounds
    case whaleSounds = "Whale Sounds"
    /// Whip
    case whip = "Whip"
    /// Whip / Slapstick
    case whipSlapstick = "Whip / Slapstick"
    /// Whirly Tube
    case whirlyTube = "Whirly Tube"
    /// Whisper
    case whisper = "Whisper"
    /// Whistle
    case whistle = "Whistle"
    /// Bamboo Whistle
    case whistleBamboo = "Bamboo Whistle"
    /// Whistle (Human)
    case whistleHuman = "Whistle (Human)"
    /// Whistle (Instrument)
    case whistleInstrument = "Whistle (Instrument)"
    /// Irish Whistle
    case whistleIrish = "Irish Whistle"
    /// Nose Whistle
    case whistleNose = "Nose Whistle"
    /// Slide Whistle
    case whistleSlit = "Slide Whistle"
    /// Tin Whistle
    case whistleTin = "Tin Whistle"
    /// Wood Whistle
    case whistleWood = "Wood Whistle"
    /// Whistling
    case whistling = "Whistling"
    /// Whistling Water Jar
    case whistlingWaterJar = "Whistling Water Jar"
    /// Wind
    case wind = "Wind"
    /// Wind Controller
    case windController = "Wind Controller"
    /// Wind Ensemble (Winds)
    case windEnsembleWinds = "Wind Ensemble (Winds)"
    /// Electronic Wind Instrument
    case windInstrumentElectronic = "Electronic Wind Instrument"
    /// Wind Machine
    case windMachine = "Wind Machine"
    /// Wind Synthesizer
    case windSynthesizer = "Wind Synthesizer"
    /// Windwand
    case windwand = "Windwand"
    /// Wind Whistle
    case windWhistle = "Wind Whistle"
    /// Wine Bottle
    case wineBottle = "Wine Bottle"
    /// Wobble Board
    case wobbleBoard = "Wobble Board"
    /// Wood
    case wood = "Wood"
    /// Wood Block
    case woodBlock = "Wood Block"
    /// Wood Box
    case woodBox = "Wood Box"
    /// Wood Clapper
    case woodClapper = "Wood Clapper"
    /// Wooden Fish
    case woodenFish = "Wooden Fish"
    /// Woodwind
    case woodwind = "Woodwind"
    /// MIDI Woodwind
    case woodwindMIDI = "MIDI Woodwind"
    /// Wot
    case wot = "Wot"
    /// Wurlitzer
    case wurlitzer = "Wurlitzer"
    /// Wurlitzer Electric Piano
    case wurlitzerElectricPiano = "Wurlitzer Electric Piano"
    /// Wurlitzer Piano
    case wurlitzerPiano = "Wurlitzer Piano"
    /// WX7 Wind Controller
    case wxSevenWindController = "WX7 Wind Controller"
    /// Xalam
    case xalam = "Xalam"
    /// Xalam / Khalam
    case xalamKhalam = "Xalam / Khalam"
    /// Xaphoon
    case xaphoon = "Xaphoon"
    /// Xequere
    case xequere = "Xequere"
    /// Xiao
    case xiao = "Xiao"
    /// Xiaoluo
    case xiaoluo = "Xiaoluo"
    /// Xun
    case xun = "Xun"
    /// Xylophone
    case xylophone = "Xylophone"
    /// Bamboo Xylophone
    case xylophoneBamboo = "Bamboo Xylophone"
    /// Xylorimba
    case xylorimba = "Xylorimba"
    /// Yamaha Keyboards
    case yamahaKeyboards = "Yamaha Keyboards"
    /// Yang Chin
    case yangChin = "Yang Chin"
    /// Yangqin
    case yangqin = "Yangqin"
    /// Yang T'Chin
    case yangTChin = "Yang T'Chin"
    /// Yatag
    case yatag = "Yatag"
    /// Yatga
    case yatga = "Yatga"
    /// Yaylı Tanbur
    case yaylıTanbur = "Yaylı Tanbur"
    /// Yehu
    case yehu = "Yehu"
    /// Yells
    case yells = "Yells"
    /// Yembele
    case yembele = "Yembele"
    /// Yetah
    case yetah = "Yetah"
    /// Yidaki
    case yidaki = "Yidaki"
    /// Yodeling
    case yodeling = "Yodeling"
    /// Yokobue
    case yokobue = "Yokobue"
    /// Yonggo
    case yonggo = "Yonggo"
    /// Yoochin
    case yoochin = "Yoochin"
    /// Yorgaphone
    case yorgaphone = "Yorgaphone"
    /// Yu
    case yu = "Yu"
    /// Yueqin
    case yueqin = "Yueqin"
    /// Zabumba
    case zabumba = "Zabumba"
    /// Zafoon
    case zafoon = "Zafoon"
    /// Żafżafa
    case Żafżafa = "Żafżafa"
    /// Zaghareet
    case zaghareet = "Zaghareet"
    /// Zambona
    case zambona = "Zambona"
    /// Zampona
    case zampona = "Zampona"
    /// Zamponas
    case zamponas = "Zamponas"
    /// Zanka
    case zanka = "Zanka"
    /// Zanza
    case zanza = "Zanza"
    /// Zanzithophone
    case zanzithophone = "Zanzithophone"
    /// Zapateo
    case zapateo = "Zapateo"
    /// Żaqq
    case Żaqq = "Żaqq"
    /// Zarb
    case zarb = "Zarb"
    /// Zdjecia
    case zdjecia = "Zdjecia"
    /// Zendrum
    case zendrum = "Zendrum"
    /// Zeta Bass
    case zetaBass = "Zeta Bass"
    /// Zeta Violin
    case zetaViolin = "Zeta Violin"
    /// Zhaleika
    case zhaleika = "Zhaleika"
    /// Zhen
    case zhen = "Zhen"
    /// Zheng
    case zheng = "Zheng"
    /// Zhonghu
    case zhonghu = "Zhonghu"
    /// Zhongruan
    case zhongruan = "Zhongruan"
    /// Zhuihu
    case zhuihu = "Zhuihu"
    /// Zil
    case zil = "Zil"
    /// Zildjian
    case zildjian = "Zildjian"
    /// Zilia
    case zilia = "Zilia"
    /// Zill
    case zill = "Zill"
    /// Zills
    case zills = "Zills"
    /// Zink
    case zink = "Zink"
    /// Zither
    case zither = "Zither"
    /// 16-String Zither
    case zither16String = "16-String Zither"
    /// Bowed Zither
    case zitherBowed = "Bowed Zither"
    /// Electric Zither
    case zitherElectric = "Electric Zither"
    /// Treble Zither
    case zitherTreble = "Treble Zither"
    /// Tube Zither
    case zitherTube = "Tube Zither"
    /// Zongora
    case zongora = "Zongora"
    /// Zoomoozophone
    case zoomoozophone = "Zoomoozophone"
    /// Zouk
    case zouk = "Zouk"
    /// Zourka
    case zourka = "Zourka"
    /// Zpivaji
    case zpivaji = "Zpivaji"
    /// Zummara
    case zummara = "Zummara"
    /// Zurla
    case zurla = "Zurla"
    /// Zurna
    case zurna = "Zurna"
    /// Zusammenstellung
    case zusammenstellung = "Zusammenstellung"
    /// Zydeco
    case zydeco = "Zydeco"
}
