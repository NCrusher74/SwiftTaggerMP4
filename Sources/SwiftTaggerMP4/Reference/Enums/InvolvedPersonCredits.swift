///*
//
// InvolvedPersonCredits.swift
// SwiftTaggerID3
//
// Copyright ©2020 Nolaine Crusher. All rights reserved.
//
// */
//
//import Foundation
//
//public enum InvolvedPersonCredits: String, CaseIterable {
//    
//    static func involvementFromAtomID(_ id: String) -> InvolvedPersonCredits? {
//        switch id {
//            case "\u{00A9}ard": return .artDirection
//            case "\u{00A9}arg": return .arranger
//            case "\u{00A9}com": return .composer
//            case "\u{00A9}con": return .conductor
//            case "\u{00A9}dir": return .director
//            case "\u{00A9}xpd": return .executiveProducer
//            case "\u{00A9}aut": return .lyricist
//            case "\u{00A9}prd": return .producer
//            case "\u{00A9}pub": return .publisher
//            case "\u{00A9}sne": return .soundEngineer
//            case "\u{00A9}wrt": return .writer
//            default: return nil
//        }
//    }
//
//    case none = ""
//    /// A&R
//    case AandR = "A&R"
//    /// A&R Assistance
//    case AandRAssistance = "A&R Assistance"
//    /// Abridged By
//    case abridgedBy = "Abridged By"
//    /// Accessories
//    case accessories = "Accessories"
//    /// Accordion Arranger
//    case accordionArranger = "Accordion Arranger"
//    /// Accordion Technician
//    case accordionTechnician = "Accordion Technician"
//    /// Accounting
//    case accounting = "Accounting"
//    /// Acoustic Treatments
//    case acousticTreatments = "Acoustic Treatments"
//    /// Acquisition
//    case acquisition = "Acquisition"
//    /// Adaptation
//    case adaptation = "Adaptation"
//    /// Adaptation to CD
//    case adaptationtoCD = "Adaptation to CD"
//    /// Adapted By
//    case adaptedBy = "Adapted By"
//    /// Additional Footage
//    case additionalFootage = "Additional Footage"
//    /// Additional Personnel
//    case additionalPersonnel = "Additional Personnel"
//    /// Additional Production
//    case additionalProduction = "Additional Production"
//    /// Adjustments
//    case adjustments = "Adjustments"
//    /// Administration
//    case administration = "Administration"
//    /// Administrative Assistant
//    case administrativeAssistant = "Administrative Assistant"
//    /// Administrative Coordinator
//    case administrativeCoordinator = "Administrative Coordinator"
//    /// Administrative Director
//    case administrativeDirector = "Administrative Director"
//    /// Advisor
//    case advisor = "Advisor"
//    /// Airbrushing
//    case airbrushing = "Airbrushing"
//    /// Album Administrator
//    case albumAdministrator = "Album Administrator"
//    /// Album Concept
//    case albumConcept = "Album Concept"
//    /// Album Consultant
//    case albumConsultant = "Album Consultant"
//    /// Album Release Supervisor
//    case albumReleaseSupervisor = "Album Release Supervisor"
//    /// Album Sequence
//    case albumSequence = "Album Sequence"
//    /// Album Supervision
//    case albumSupervision = "Album Supervision"
//    /// Amplifiers
//    case amplifiers = "Amplifiers"
//    /// AMS Audiophile Operator
//    case amsAudiophileOperator = "AMS Audiophile Operator"
//    /// Analog Engineer
//    case analogEngineer = "Analog Engineer"
//    /// Analog Processing
//    case analogProcessing = "Analog Processing"
//    /// Analog Transfer
//    case analogTransfer = "Analog Transfer"
//    /// Animation
//    case animation = "Animation"
//    /// Annotation
//    case annotation = "Annotation"
//    /// Annotation Consultant
//    case annotationConsultant = "Annotation Consultant"
//    /// Announcer
//    case announcer = "Announcer"
//    /// Arabesque
//    case arabesque = "Arabesque"
//    /// Archival Assistant
//    case archivalAssistant = "Archival Assistant"
//    /// Archival Consultant
//    case archivalConsultant = "Archival Consultant"
//    /// Archival Materials
//    case archivalMaterials = "Archival Materials"
//    /// Archival Restoration
//    case archivalRestoration = "Archival Restoration"
//    /// Archival Tape Engineer
//    case archivalTapeEngineer = "Archival Tape Engineer"
//    /// Archive Research
//    case archiveResearch = "Archive Research"
//    /// Archives Coordinator
//    case archivesCoordinator = "Archives Coordinator"
//    /// Archives Director
//    case archivesDirector = "Archives Director"
//    /// Archivist
//    case archivist = "Archivist"
//    /// Arranged By
//    case arrangedBy = "Arranged By"
//    /// Arrangement Collaboration
//    case arrangementCollaboration = "Arrangement Collaboration"
//    /// Arrangement Director
//    case arrangementDirector = "Arrangement Director"
//    /// Arrangement Preparation
//    case arrangementPreparation = "Arrangement Preparation"
//    /// Arrangement Transcription
//    case arrangementTranscription = "Arrangement Transcription"
//    /// Arranger
//    case arranger = "Arranger"
//    /// Art Administration
//    case artAdministration = "Art Administration"
//    /// Art Adviser
//    case artAdviser = "Art Adviser"
//    /// Art Assistant
//    case artAssistant = "Art Assistant"
//    /// Art Compiler
//    case artCompiler = "Art Compiler"
//    /// Art Conception
//    case artConception = "Art Conception"
//    /// Art Construction
//    case artConstruction = "Art Construction"
//    /// Art Consultant
//    case artConsultant = "Art Consultant"
//    /// Art Coordinator
//    case artCoordinator = "Art Coordinator"
//    /// Art Direction
//    case artDirection = "Art Direction"
//    /// Art Editor
//    case artEditor = "Art Editor"
//    /// Art Enhancement
//    case artEnhancement = "Art Enhancement"
//    /// Art Executor
//    case artExecutor = "Art Executor"
//    /// Art Finish
//    case artFinish = "Art Finish"
//    /// Artist Consultant
//    case artistConsultant = "Artist Consultant"
//    /// Artist Coordination
//    case artistCoordination = "Artist Coordination"
//    /// Artist Development
//    case artistDevelopment = "Artist Development"
//    /// Artist Direction
//    case artistDirection = "Artist Direction"
//    /// Artisticas
//    case artisticas = "Artisticas"
//    /// Artistic Consultation
//    case artisticConsultation = "Artistic Consultation"
//    /// Artistic Director
//    case artisticDirector = "Artistic Director"
//    /// Artistic Producer
//    case artisticProducer = "Artistic Producer"
//    /// Artistic Supervision
//    case artisticSupervision = "Artistic Supervision"
//    /// Artist Relations
//    case artistRelations = "Artist Relations"
//    /// Artists and Repertoire
//    case artistsandRepertoire = "Artists and Repertoire"
//    /// Art Manager
//    case artManager = "Art Manager"
//    /// Art Manipulation
//    case artManipulation = "Art Manipulation"
//    /// Art Producer
//    case artProducer = "Art Producer"
//    /// Art Realization
//    case artRealization = "Art Realization"
//    /// Art Recreation
//    case artRecreation = "Art Recreation"
//    /// Art Research
//    case artResearch = "Art Research"
//    /// Art Supervisor
//    case artSupervisor = "Art Supervisor"
//    /// Artwork
//    case artwork = "Artwork"
//    /// Artwork By
//    case artworkBy = "Artwork By"
//    /// Assemblage
//    case assemblage = "Assemblage"
//    /// Assembly
//    case assembly = "Assembly"
//    /// Assistant
//    case assistant = "Assistant"
//    /// Assistant Arranger
//    case assistantArranger = "Assistant Arranger"
//    /// Assistant Art Design
//    case assistantArtDesign = "Assistant Art Design"
//    /// Assistant Art Director
//    case assistantArtDirector = "Assistant Art Director"
//    /// Assistant Artist
//    case assistantArtist = "Assistant Artist"
//    /// Assistant Artistic Director
//    case assistantArtisticDirector = "Assistant Artistic Director"
//    /// Assistant Artistic Supervision
//    case assistantArtisticSupervision = "Assistant Artistic Supervision"
//    /// Assistant Assembly
//    case assistantAssembly = "Assistant Assembly"
//    /// Assistant Audio Engineer
//    case assistantAudioEngineer = "Assistant Audio Engineer"
//    /// Assistant Balance Engineer
//    case assistantBalanceEngineer = "Assistant Balance Engineer"
//    /// Assistant Choir Director
//    case assistantChoirDirector = "Assistant Choir Director"
//    /// Assistant Choreographer
//    case assistantChoreographer = "Assistant Choreographer"
//    /// Assistant Chorus Master
//    case assistantChorusMaster = "Assistant Chorus Master"
//    /// Assistant Clothes Design
//    case assistantClothesDesign = "Assistant Clothes Design"
//    /// Assistant Concertmaster
//    case assistantConcertmaster = "Assistant Concertmaster"
//    /// Assistant Conductor
//    case assistantConductor = "Assistant Conductor"
//    /// Assistant Contractor
//    case assistantContractor = "Assistant Contractor"
//    /// Assistant Coordinator
//    case assistantCoordinator = "Assistant Coordinator"
//    /// Assistant Copyist
//    case assistantCopyist = "Assistant Copyist"
//    /// Assistant Cover Designer
//    case assistantCoverDesigner = "Assistant Cover Designer"
//    /// Assistant Digital Engineer
//    case assistantDigitalEngineer = "Assistant Digital Engineer"
//    /// Assistant Director
//    case assistantDirector = "Assistant Director"
//    /// Assistant Editor
//    case assistantEditor = "Assistant Editor"
//    /// Assistant Engineer
//    case assistantEngineer = "Assistant Engineer"
//    /// Assistant Executive Producer
//    case assistantExecutiveProducer = "Assistant Executive Producer"
//    /// Assistant Graphic Design
//    case assistantGraphicDesign = "Assistant Graphic Design"
//    /// Assistant Hair Stylist
//    case assistantHairStylist = "Assistant Hair Stylist"
//    /// Assistant Leader
//    case assistantLeader = "Assistant Leader"
//    /// Assistant Light Engineer
//    case assistantLightEngineer = "Assistant Light Engineer"
//    /// Assistant Management
//    case assistantManagement = "Assistant Management"
//    /// Assistant Mastering Engineer
//    case assistantMasteringEngineer = "Assistant Mastering Engineer"
//    /// Assistant Mix Engineer
//    case assistantMixEngineer = "Assistant Mix Engineer"
//    /// Assistant Mixer
//    case assistantMixer = "Assistant Mixer"
//    /// Assistant Musical Director
//    case assistantMusicalDirector = "Assistant Musical Director"
//    /// Assistant Music Director
//    case assistantMusicDirector = "Assistant Music Director"
//    /// Assistant Music Editor
//    case assistantMusicEditor = "Assistant Music Editor"
//    /// Assistant Music Preparation
//    case assistantMusicPreparation = "Assistant Music Preparation"
//    /// Assistant Music Supervisor
//    case assistantMusicSupervisor = "Assistant Music Supervisor"
//    /// Assistant Orchestra Engineer
//    case assistantOrchestraEngineer = "Assistant Orchestra Engineer"
//    /// Assistant Package Supervisor
//    case assistantPackageSupervisor = "Assistant Package Supervisor"
//    /// Assistant Photographer
//    case assistantPhotographer = "Assistant Photographer"
//    /// Assistant Post Production
//    case assistantPostProduction = "Assistant Post Production"
//    /// Assistant Post Production Engineer
//    case assistantPostProductionEngineer = "Assistant Post Production Engineer"
//    /// Assistant Principal
//    case assistantPrincipal = "Assistant Principal"
//    /// Assistant Producer
//    case assistantProducer = "Assistant Producer"
//    /// Assistant Production Coordination
//    case assistantProductionCoordination = "Assistant Production Coordination"
//    /// Assistant Programming Engineer
//    case assistantProgrammingEngineer = "Assistant Programming Engineer"
//    /// Assistant Project Coordinator
//    case assistantProjectCoordinator = "Assistant Project Coordinator"
//    /// Assistant Project Director
//    case assistantProjectDirector = "Assistant Project Director"
//    /// Assistant Project Supervision
//    case assistantProjectSupervision = "Assistant Project Supervision"
//    /// Assistant Publisher
//    case assistantPublisher = "Assistant Publisher"
//    /// Assistant Recording Consultant
//    case assistantRecordingConsultant = "Assistant Recording Consultant"
//    /// Assistant Recording Engineer
//    case assistantRecordingEngineer = "Assistant Recording Engineer"
//    /// Assistant Recording Supervisor
//    case assistantRecordingSupervisor = "Assistant Recording Supervisor"
//    /// Assistant Remote Engineer
//    case assistantRemoteEngineer = "Assistant Remote Engineer"
//    /// Assistant Sound Engineer
//    case assistantSoundEngineer = "Assistant Sound Engineer"
//    /// Assistant Technical Director
//    case assistantTechnicalDirector = "Assistant Technical Director"
//    /// Assistant Tracking Engineer
//    case assistantTrackingEngineer = "Assistant Tracking Engineer"
//    /// Assistant Vocal Engineer
//    case assistantVocalEngineer = "Assistant Vocal Engineer"
//    /// Assobios
//    case assobios = "Assobios"
//    /// Associate Arranger
//    case associateArranger = "Associate Arranger"
//    /// Associate Audio Engineer
//    case associateAudioEngineer = "Associate Audio Engineer"
//    /// Associate Balance Engineer
//    case associateBalanceEngineer = "Associate Balance Engineer"
//    /// Associate Choreographer
//    case associateChoreographer = "Associate Choreographer"
//    /// Associate Compilation Producer
//    case associateCompilationProducer = "Associate Compilation Producer"
//    /// Associate Concertmaster
//    case associateConcertmaster = "Associate Concertmaster"
//    /// Associate Conductor
//    case associateConductor = "Associate Conductor"
//    /// Associate Director
//    case associateDirector = "Associate Director"
//    /// Associate Director Of Production
//    case associateDirectorOfProduction = "Associate Director Of Production"
//    /// Associate Editor
//    case associateEditor = "Associate Editor"
//    /// Associate Engineer
//    case associateEngineer = "Associate Engineer"
//    /// Associate Executive Producer
//    case associateExecutiveProducer = "Associate Executive Producer"
//    /// Associate Leader
//    case associateLeader = "Associate Leader"
//    /// Associate Mastering Engineer
//    case associateMasteringEngineer = "Associate Mastering Engineer"
//    /// Associate Mix Engineer
//    case associateMixEngineer = "Associate Mix Engineer"
//    /// Associate Mixer
//    case associateMixer = "Associate Mixer"
//    /// Associate Music Producer
//    case associateMusicProducer = "Associate Music Producer"
//    /// Associate Producer
//    case associateProducer = "Associate Producer"
//    /// Associate Programming Engineer
//    case associateProgrammingEngineer = "Associate Programming Engineer"
//    /// Associate Project Coordinator
//    case associateProjectCoordinator = "Associate Project Coordinator"
//    /// Associate Project Director
//    case associateProjectDirector = "Associate Project Director"
//    /// Associate Reissue Producer
//    case associateReissueProducer = "Associate Reissue Producer"
//    /// Associate Remixing Engineer
//    case associateRemixingEngineer = "Associate Remixing Engineer"
//    /// Associate Sound Engineer
//    case associateSoundEngineer = "Associate Sound Engineer"
//    /// Associate Supervisor
//    case associateSupervisor = "Associate Supervisor"
//    /// Associate Vocal Producer
//    case associateVocalProducer = "Associate Vocal Producer"
//    /// Atoke
//    case atoke = "Atoke"
//    /// Audio
//    case audio = "Audio"
//    /// Audio Book Abridgement
//    case audioBookAbridgement = "Audio Book Abridgement"
//    /// Audio Conservation
//    case audioConservation = "Audio Conservation"
//    /// Audio Consultant
//    case audioConsultant = "Audio Consultant"
//    /// Audio Control
//    case audioControl = "Audio Control"
//    /// Audio Engineer
//    case audioEngineer = "Audio Engineer"
//    /// Audio Enhancement
//    case audioEnhancement = "Audio Enhancement"
//    /// Audio Frame Systems Operator
//    case audioFrameSystemsOperator = "Audio Frame Systems Operator"
//    /// Audio Generator
//    case audioGenerator = "Audio Generator"
//    /// Audio Manipulation
//    case audioManipulation = "Audio Manipulation"
//    /// Audio Master
//    case audioMaster = "Audio Master"
//    /// Audio Post-Production
//    case audioPostProduction = "Audio Post-Production"
//    /// Audio Preparation
//    case audioPreparation = "Audio Preparation"
//    /// Audio Production
//    case audioProduction = "Audio Production"
//    /// Audio Production Director
//    case audioProductionDirector = "Audio Production Director"
//    /// Audio Research
//    case audioResearch = "Audio Research"
//    /// Audio Restoration
//    case audioRestoration = "Audio Restoration"
//    /// Audio Restoration Assistant
//    case audioRestorationAssistant = "Audio Restoration Assistant"
//    /// Audio Restoration Engineer
//    case audioRestorationEngineer = "Audio Restoration Engineer"
//    /// Audio Screenplay
//    case audioScreenplay = "Audio Screenplay"
//    /// Audio Sculpture
//    case audioSculpture = "Audio Sculpture"
//    /// Audio Sequencing
//    case audioSequencing = "Audio Sequencing"
//    /// Audio Supervisor
//    case audioSupervisor = "Audio Supervisor"
//    /// Audio Technician
//    case audioTechnician = "Audio Technician"
//    /// Augmenting
//    case augmenting = "Augmenting"
//    /// Auteur Compositeur
//    case auteurCompositeur = "Auteur Compositeur"
//    /// Authoring
//    case authoring = "Authoring"
//    /// Automatons
//    case automatons = "Automatons"
//    /// Back Cover
//    case backCover = "Back Cover"
//    /// Back Cover Photo
//    case backCoverPhoto = "Back Cover Photo"
//    /// Background Coordinator
//    case backgroundCoordinator = "Background Coordinator"
//    /// Background Noise
//    case backgroundNoise = "Background Noise"
//    /// Background Reading
//    case backgroundReading = "Background Reading"
//    /// Backline Technician
//    case backlineTechnician = "Backline Technician"
//    /// Backwards Recording
//    case backwardsRecording = "Backwards Recording"
//    /// Balance
//    case balance = "Balance"
//    /// Balance Engineer
//    case balanceEngineer = "Balance Engineer"
//    /// Band Coordinator
//    case bandCoordinator = "Band Coordinator"
//    /// Band Engineer
//    case bandEngineer = "Band Engineer"
//    /// Bandes
//    case bandes = "Bandes"
//    /// Bandleader
//    case bandleader = "Bandleader"
//    /// Band Liason
//    case bandLiason = "Band Liason"
//    /// Band Logo Design
//    case bandLogoDesign = "Band Logo Design"
//    /// Band Master
//    case bandMaster = "Band Master"
//    /// Band Photo
//    case bandPhoto = "Band Photo"
//    /// Band Technician
//    case bandTechnician = "Band Technician"
//    /// Basic Track
//    case basicTrack = "Basic Track"
//    /// Bass Arrangement
//    case bassArrangement = "Bass Arrangement"
//    /// Bass Engineer
//    case bassEngineer = "Bass Engineer"
//    /// Bass Strings
//    case bassStrings = "Bass Strings"
//    /// Bass Support
//    case bassSupport = "Bass Support"
//    /// Bass Technician
//    case bassTechnician = "Bass Technician"
//    /// Bed Track Engineer
//    case bedTrackEngineer = "Bed Track Engineer"
//    /// Bell Arrangements
//    case bellArrangements = "Bell Arrangements"
//    /// Biographical Editor
//    case biographicalEditor = "Biographical Editor"
//    /// Biographical Information
//    case biographicalInformation = "Biographical Information"
//    /// Biographical Notes
//    case biographicalNotes = "Biographical Notes"
//    /// Birth place
//    case birthplace = "Birth place"
//    /// Boards
//    case boards = "Boards"
//    /// Bonus Track Producer
//    case bonusTrackProducer = "Bonus Track Producer"
//    /// Book
//    case book = "Book"
//    /// Book Direction
//    case bookDirection = "Book Direction"
//    /// Booking
//    case booking = "Booking"
//    /// Booklet
//    case booklet = "Booklet"
//    /// Booklet Concept
//    case bookletConcept = "Booklet Concept"
//    /// Booklet Coordinator
//    case bookletCoordinator = "Booklet Coordinator"
//    /// Booklet Design
//    case bookletDesign = "Booklet Design"
//    /// Booklet Editor
//    case bookletEditor = "Booklet Editor"
//    /// Booklet Preparation
//    case bookletPreparation = "Booklet Preparation"
//    /// Booklet Supervisor
//    case bookletSupervisor = "Booklet Supervisor"
//    /// Booklet Typesetting
//    case bookletTypesetting = "Booklet Typesetting"
//    /// Booth Assistant
//    case boothAssistant = "Booth Assistant"
//    /// Booth Supervision
//    case boothSupervision = "Booth Supervision"
//    /// Brass Arrangement
//    case brassArrangement = "Brass Arrangement"
//    /// Brass Director
//    case brassDirector = "Brass Director"
//    /// Business Consultant
//    case businessConsultant = "Business Consultant"
//    /// Cable Engineer
//    case cableEngineer = "Cable Engineer"
//    /// Cables
//    case cables = "Cables"
//    /// Calligraphy
//    case calligraphy = "Calligraphy"
//    /// Camera Assistant
//    case cameraAssistant = "Camera Assistant"
//    /// Cameraman
//    case cameraman = "Cameraman"
//    /// Camera Operator
//    case cameraOperator = "Camera Operator"
//    /// Caricatures
//    case caricatures = "Caricatures"
//    /// Cassette Mastering
//    case cassetteMastering = "Cassette Mastering"
//    /// Cassette Recorder
//    case cassetteRecorder = "Cassette Recorder"
//    /// Cast Engineer
//    case castEngineer = "Cast Engineer"
//    /// Casting
//    case casting = "Casting"
//    /// Casting Consultant
//    case castingConsultant = "Casting Consultant"
//    /// Catalog Reissue Supervisor
//    case catalogReissueSupervisor = "Catalog Reissue Supervisor"
//    /// CD Arrangement
//    case cdArrangement = "CD Arrangement"
//    /// CD Art Adaptation
//    case cdArtAdaptation = "CD Art Adaptation"
//    /// CD Coordination
//    case cdCoordination = "CD Coordination"
//    /// CD Adaptation
//    case cdDAdaptation = "CD Adaptation"
//    /// CD Graphics
//    case cdGraphics = "CD Graphics"
//    /// CD Layout
//    case cdLayout = "CD Layout"
//    /// CD Master Tape
//    case cdMasterTape = "CD Master Tape"
//    /// CD Master Tape Preparation
//    case cdMasterTapePreparation = "CD Master Tape Preparation"
//    /// CD Package Design
//    case cdPackageDesign = "CD Package Design"
//    /// CD Player
//    case cdPlayer = "CD Player"
//    /// CD Players
//    case cdPlayers = "CD Players"
//    /// CD Pre-Mastering
//    case cdPreMastering = "CD Pre-Mastering"
//    /// CD Preparation
//    case cdPreparation = "CD Preparation"
//    /// CD Production Supervision
//    case cdProductionSupervision = "CD Production Supervision"
//    /// CD Release Supervisor
//    case cdReleaseSupervisor = "CD Release Supervisor"
//    /// CD-ROM Design
//    case cdROMDesign = "CD-ROM Design"
//    /// CD-ROM Production
//    case cdROMProduction = "CD-ROM Production"
//    /// Cello Arrangement
//    case celloArrangement = "Cello Arrangement"
//    /// CGI Artist
//    case cgiArtist = "CGI Artist"
//    /// Chant conductor
//    case chantconductor = "Chant conductor"
//    /// Character Design
//    case characterDesign = "Character Design"
//    /// Chart
//    case chart = "Chart"
//    /// Chart Information
//    case chartInformation = "Chart Information"
//    /// Chart Preparation
//    case chartPreparation = "Chart Preparation"
//    /// Chief Administrator
//    case chiefAdministrator = "Chief Administrator"
//    /// Chief Financial Officer
//    case chiefFinancialOfficer = "Chief Financial Officer"
//    /// Chief Officer
//    case chiefOfficer = "Chief Officer"
//    /// Chief Operating Officer
//    case chiefOperatingOfficer = "Chief Operating Officer"
//    /// Children's Choirmaster
//    case childrensChoirmaster = "Children's Choirmaster"
//    /// Choir Advisor
//    case choirAdvisor = "Choir Advisor"
//    /// Choir Arrangement
//    case choirArrangement = "Choir Arrangement"
//    /// Choir Assistant
//    case choirAssistant = "Choir Assistant"
//    /// Choir Conductor
//    case choirConductor = "Choir Conductor"
//    /// Choir Contractor
//    case choirContractor = "Choir Contractor"
//    /// Choir Control
//    case choirControl = "Choir Control"
//    /// Choir Coordinator
//    case choirCoordinator = "Choir Coordinator"
//    /// Choir Director
//    case choirDirector = "Choir Director"
//    /// Choir Instruction
//    case choirInstruction = "Choir Instruction"
//    /// Choir Manager
//    case choirManager = "Choir Manager"
//    /// Choir Master
//    case choirMaster = "Choir Master"
//    /// Choir Preparation
//    case choirPreparation = "Choir Preparation"
//    /// Choir President
//    case choirPresident = "Choir President"
//    /// Choir Production
//    case choirProduction = "Choir Production"
//    /// Choral Adaptation
//    case choralAdaptation = "Choral Adaptation"
//    /// Choral Composition
//    case choralComposition = "Choral Composition"
//    /// Choreographer
//    case choreographer = "Choreographer"
//    /// Choreography
//    case choreography = "Choreography"
//    /// Cinematographer
//    case cinematographer = "Cinematographer"
//    /// Cinematography
//    case cinematography = "Cinematography"
//    /// Circuit Design
//    case circuitDesign = "Circuit Design"
//    /// Clothing Design
//    case clothingDesign = "Clothing Design"
//    /// Clothing Image Concept
//    case clothingImageConcept = "Clothing Image Concept"
//    /// Clothing/Wardrobe
//    case clothingWardrobe = "Clothing/Wardrobe"
//    /// CMI
//    case cmi = "CMI"
//    /// Coach Master
//    case coachMaster = "Coach Master"
//    /// Co-arranger
//    case coarranger = "Co-arranger"
//    /// Co-Coordinator
//    case coCoordinator = "Co-Coordinator"
//    /// Co-Director
//    case coDirector = "Co-Director"
//    /// CoDirector
//    case codirector = "CoDirector"
//    /// Co-Founder
//    case coFounder = "Co-Founder"
//    /// Co-Leader
//    case coLeader = "Co-Leader"
//    /// Collage
//    case collage = "Collage"
//    /// Collator
//    case collator = "Collator"
//    /// Collection
//    case collection = "Collection"
//    /// Collection Consultant
//    case collectionConsultant = "Collection Consultant"
//    /// Collective Personnel
//    case collectivePersonnel = "Collective Personnel"
//    /// Coloration
//    case coloration = "Coloration"
//    /// Coloring
//    case coloring = "Coloring"
//    /// Colorist
//    case colorist = "Colorist"
//    /// Color Manipulation
//    case colorManipulation = "Color Manipulation"
//    /// Color Separation
//    case colorSeparation = "Color Separation"
//    /// Color Tinting
//    case colorTinting = "Color Tinting"
//    /// Color Transparency
//    case colorTransparency = "Color Transparency"
//    /// Comb
//    case comb = "Comb"
//    /// Comic Book Concept
//    case comicBookConcept = "Comic Book Concept"
//    /// Commentary
//    case commentary = "Commentary"
//    /// Communication
//    case communication = "Communication"
//    /// Communications Director
//    case communicationsDirector = "Communications Director"
//    /// Company Manager
//    case companyManager = "Company Manager"
//    /// Compensation Engineer
//    case compensationEngineer = "Compensation Engineer"
//    /// Compilation Assistant
//    case compilationAssistant = "Compilation Assistant"
//    /// Compilation Coordinator
//    case compilationCoordinator = "Compilation Coordinator"
//    /// Compilation Co-Producer
//    case compilationCoProducer = "Compilation Co-Producer"
//    /// Compilation Director
//    case compilationDirector = "Compilation Director"
//    /// Compilation Editing
//    case compilationEditing = "Compilation Editing"
//    /// Compilation Engineer
//    case compilationEngineer = "Compilation Engineer"
//    /// Compilation Executive Producer
//    case compilationExecutiveProducer = "Compilation Executive Producer"
//    /// Compilation Mastering
//    case compilationMastering = "Compilation Mastering"
//    /// Compilation Producer
//    case compilationProducer = "Compilation Producer"
//    /// Compilation Production Assistant
//    case compilationProductionAssistant = "Compilation Production Assistant"
//    /// Compilation Research
//    case compilationResearch = "Compilation Research"
//    /// Compilation Supervisor
//    case compilationSupervisor = "Compilation Supervisor"
//    /// Compiled
//    case compiled = "Compiled"
//    /// Compiled By
//    case compiledBy = "Compiled By"
//    /// Compiler
//    case compiler = "Compiler"
//    /// Completion
//    case completion = "Completion"
//    /// Composed By
//    case composedBy = "Composed By"
//    /// Composer
//    case composer = "Composer"
//    /// Composer/Lyricist
//    case composerLyricist = "Composer/Lyricist"
//    /// Composer's Assistant
//    case composersAssistant = "Composer's Assistant"
//    /// Composite
//    case composite = "Composite"
//    /// Computer Analysis
//    case computerAnalysis = "Computer Analysis"
//    /// Computer Concept
//    case computerConcept = "Computer Concept"
//    /// Computer Consultant
//    case computerConsultant = "Computer Consultant"
//    /// Computer Design
//    case computerDesign = "Computer Design"
//    /// Computer Editing
//    case computerEditing = "Computer Editing"
//    /// Computer Engineering
//    case computerEngineering = "Computer Engineering"
//    /// Computer Enhancing
//    case computerEnhancing = "Computer Enhancing"
//    /// Computer Graphics
//    case computerGraphics = "Computer Graphics"
//    /// Computer Illustration
//    case computerIllustration = "Computer Illustration"
//    /// Computer Imaging
//    case computerImaging = "Computer Imaging"
//    /// Computer Music Preparation
//    case computerMusicPreparation = "Computer Music Preparation"
//    /// Computers
//    case computers = "Computers"
//    /// Computer Sequencing
//    case computerSequencing = "Computer Sequencing"
//    /// Computer Vocals
//    case computerVocals = "Computer Vocals"
//    /// Co-Music Director
//    case coMusicDirector = "Co-Music Director"
//    /// Concept
//    case concept = "Concept"
//    /// Concept By
//    case conceptBy = "Concept By"
//    /// Concept Consultant
//    case conceptConsultant = "Concept Consultant"
//    /// Concept Coordination
//    case conceptCoordination = "Concept Coordination"
//    /// Concept Design
//    case conceptDesign = "Concept Design"
//    /// Concept Development
//    case conceptDevelopment = "Concept Development"
//    /// Concept Graphics
//    case conceptGraphics = "Concept Graphics"
//    /// Conception Supervisor
//    case conceptionSupervisor = "Conception Supervisor"
//    /// Conceptual Assistance
//    case conceptualAssistance = "Conceptual Assistance"
//    /// Conceptual Direction
//    case conceptualDirection = "Conceptual Direction"
//    /// Concert Comedienne
//    case concertComedienne = "Concert Comedienne"
//    /// Concert Coordinator
//    case concertCoordinator = "Concert Coordinator"
//    /// Concert Director
//    case concertDirector = "Concert Director"
//    /// Concert Manager
//    case concertManager = "Concert Manager"
//    /// Concert Master
//    case concertMaster = "Concert Master"
//    /// Concertmaster
//    case concertmaster = "Concertmaster"
//    /// Concert Mistress
//    case concertMistress = "Concert Mistress"
//    /// Concertmistress
//    case concertmistress = "Concertmistress"
//    /// Concert Organizer
//    case concertOrganizer = "Concert Organizer"
//    /// Concert Presentation
//    case concertPresentation = "Concert Presentation"
//    /// Concert Producer
//    case concertProducer = "Concert Producer"
//    /// Concert Sound
//    case concertSound = "Concert Sound"
//    /// Concert Sound Engineer
//    case concertSoundEngineer = "Concert Sound Engineer"
//    /// Concert Tuner
//    case concertTuner = "Concert Tuner"
//    /// Conductor
//    case conductor = "Conductor"
//    /// Construction
//    case construction = "Construction"
//    /// Consultant
//    case consultant = "Consultant"
//    /// Consulting Analog Engineer
//    case consultingAnalogEngineer = "Consulting Analog Engineer"
//    /// Content Editor
//    case contentEditor = "Content Editor"
//    /// Content Integration
//    case contentIntegration = "Content Integration"
//    /// Continuity
//    case continuity = "Continuity"
//    /// Continuo Cello
//    case continuoCello = "Continuo Cello"
//    /// Continuo Organ
//    case continuoOrgan = "Continuo Organ"
//    /// Continuo Violoncello
//    case continuoVioloncello = "Continuo Violoncello"
//    /// Contracting
//    case contracting = "Contracting"
//    /// Contractor
//    case contractor = "Contractor"
//    /// Contributing Editor
//    case contributingEditor = "Contributing Editor"
//    /// Contribution
//    case contribution = "Contribution"
//    /// Control Engineer
//    case controlEngineer = "Control Engineer"
//    /// Conversion Engineer
//    case conversionEngineer = "Conversion Engineer"
//    /// Coordinating Producer
//    case coordinatingProducer = "Coordinating Producer"
//    /// Coordination
//    case coordination = "Coordination"
//    /// Coordination Executive
//    case coordinationExecutive = "Coordination Executive"
//    /// Coordinator
//    case coordinator = "Coordinator"
//    /// Co-Principal
//    case coPrincipal = "Co-Principal"
//    /// Co-Producer
//    case coProducer = "Co-Producer"
//    /// Copy
//    case copy = "Copy"
//    /// Copy Coordination
//    case copyCoordination = "Copy Coordination"
//    /// Copy Director
//    case copyDirector = "Copy Director"
//    /// Copy Editing
//    case copyEditing = "Copy Editing"
//    /// Copy Editor
//    case copyEditor = "Copy Editor"
//    /// Copyist
//    case copyist = "Copyist"
//    /// Copyright Coordinator
//    case copyrightCoordinator = "Copyright Coordinator"
//    /// Copy Writer
//    case copyWriter = "Copy Writer"
//    /// Corrections
//    case corrections = "Corrections"
//    /// Corte
//    case corte = "Corte"
//    /// Costume Coordinator
//    case costumeCoordinator = "Costume Coordinator"
//    /// Costume Design
//    case costumeDesign = "Costume Design"
//    /// Counselling
//    case counselling = "Counselling"
//    /// Court Musette
//    case courtMusette = "Court Musette"
//    /// Cover
//    case cover = "Cover"
//    /// Cover Art
//    case coverArt = "Cover Art"
//    /// Cover Art Concept
//    case coverArtConcept = "Cover Art Concept"
//    /// Cover Art Direction
//    case coverArtDirection = "Cover Art Direction"
//    /// Cover Assembly
//    case coverAssembly = "Cover Assembly"
//    /// Cover Calligraphy
//    case coverCalligraphy = "Cover Calligraphy"
//    /// Cover Collage
//    case coverCollage = "Cover Collage"
//    /// Cover Compilation
//    case coverCompilation = "Cover Compilation"
//    /// Cover Composition
//    case coverComposition = "Cover Composition"
//    /// Cover Construction
//    case coverConstruction = "Cover Construction"
//    /// Cover Consultant
//    case coverConsultant = "Cover Consultant"
//    /// Cover Coordinator
//    case coverCoordinator = "Cover Coordinator"
//    /// Cover Credits
//    case coverCredits = "Cover Credits"
//    /// Cover Design
//    case coverDesign = "Cover Design"
//    /// Cover Development
//    case coverDevelopment = "Cover Development"
//    /// Cover Direction
//    case coverDirection = "Cover Direction"
//    /// Cover Drawing
//    case coverDrawing = "Cover Drawing"
//    /// Cover Editing
//    case coverEditing = "Cover Editing"
//    /// Cover Graphics
//    case coverGraphics = "Cover Graphics"
//    /// Cover Hand Tinting
//    case coverHandTinting = "Cover Hand Tinting"
//    /// Cover Handwriting
//    case coverHandwriting = "Cover Handwriting"
//    /// Cover Illustration
//    case coverIllustration = "Cover Illustration"
//    /// Cover Image
//    case coverImage = "Cover Image"
//    /// Cover Layout
//    case coverLayout = "Cover Layout"
//    /// Cover Lettering
//    case coverLettering = "Cover Lettering"
//    /// Cover Model
//    case coverModel = "Cover Model"
//    /// Cover Montage
//    case coverMontage = "Cover Montage"
//    /// Cover Packaging
//    case coverPackaging = "Cover Packaging"
//    /// Cover Painting
//    case coverPainting = "Cover Painting"
//    /// Cover Photo
//    case coverPhoto = "Cover Photo"
//    /// Cover Portrait
//    case coverPortrait = "Cover Portrait"
//    /// Cover Printing
//    case coverPrinting = "Cover Printing"
//    /// Cover Production
//    case coverProduction = "Cover Production"
//    /// Cover Redesign
//    case coverRedesign = "Cover Redesign"
//    /// Cover Sculpture
//    case coverSculpture = "Cover Sculpture"
//    /// Cover Star
//    case coverStar = "Cover Star"
//    /// Cover Text
//    case coverText = "Cover Text"
//    /// Cover Typeset
//    case coverTypeset = "Cover Typeset"
//    /// Creation
//    case creation = "Creation"
//    /// Creative Art
//    case creativeArt = "Creative Art"
//    /// Creative Assistance
//    case creativeAssistance = "Creative Assistance"
//    /// Creative Campaign
//    case creativeCampaign = "Creative Campaign"
//    /// Creative Concept
//    case creativeConcept = "Creative Concept"
//    /// Creative Consultant
//    case creativeConsultant = "Creative Consultant"
//    /// Creative Coordinator
//    case creativeCoordinator = "Creative Coordinator"
//    /// Creative Design
//    case creativeDesign = "Creative Design"
//    /// Creative Development
//    case creativeDevelopment = "Creative Development"
//    /// Creative Digital Reinforcement
//    case creativeDigitalReinforcement = "Creative Digital Reinforcement"
//    /// Creative Direction
//    case creativeDirection = "Creative Direction"
//    /// Creative Director
//    case creativeDirector = "Creative Director"
//    /// Creative Editor
//    case creativeEditor = "Creative Editor"
//    /// Creative Engineering
//    case creativeEngineering = "Creative Engineering"
//    /// Creative Input
//    case creativeInput = "Creative Input"
//    /// Creative Inspiration
//    case creativeInspiration = "Creative Inspiration"
//    /// Creative Mastering
//    case creativeMastering = "Creative Mastering"
//    /// Creative Packaging Direction
//    case creativePackagingDirection = "Creative Packaging Direction"
//    /// Creative Producer
//    case creativeProducer = "Creative Producer"
//    /// Creative Realization
//    case creativeRealization = "Creative Realization"
//    /// Creative Services Coordinator
//    case creativeServicesCoordinator = "Creative Services Coordinator"
//    /// Creative Services Director
//    case creativeServicesDirector = "Creative Services Director"
//    /// Creative Supervision
//    case creativeSupervision = "Creative Supervision"
//    /// Credits Director
//    case creditsDirector = "Credits Director"
//    /// Crew
//    case crew = "Crew"
//    /// Critic
//    case critic = "Critic"
//    /// Critical Edition
//    case criticalEdition = "Critical Edition"
//    /// Cruit
//    case cruit = "Cruit"
//    /// Crystal Players
//    case crystalPlayers = "Crystal Players"
//    /// Cultural Advisor
//    case culturalAdvisor = "Cultural Advisor"
//    /// Current Distributor
//    case currentDistributor = "Current Distributor"
//    /// Cut
//    case cut = "Cut"
//    /// Cutting Consultant
//    case cuttingConsultant = "Cutting Consultant"
//    /// Cutting Engineer
//    case cuttingEngineer = "Cutting Engineer"
//    /// Cutting Producer
//    case cuttingProducer = "Cutting Producer"
//    /// Dance Arrangement
//    case danceArrangement = "Dance Arrangement"
//    /// Dance Consultant
//    case danceConsultant = "Dance Consultant"
//    /// Dance Director
//    case danceDirector = "Dance Director"
//    /// Dance Steps
//    case danceSteps = "Dance Steps"
//    /// Dance Teacher
//    case danceTeacher = "Dance Teacher"
//    /// Dans Fanch
//    case dansFanch = "Dans Fanch"
//    /// Dan T Rung
//    case danTRung = "Dan T Rung"
//    /// Data Entry
//    case dataEntry = "Data Entry"
//    /// DAT Transfer
//    case datTransfer = "DAT Transfer"
//    /// DAW
//    case daw = "DAW"
//    /// Demo Coordinator
//    case demoCoordinator = "Demo Coordinator"
//    /// Demo Engineer
//    case demoEngineer = "Demo Engineer"
//    /// Demo Producer
//    case demoProducer = "Demo Producer"
//    /// Design
//    case design = "Design"
//    /// Design Adaptation
//    case designAdaptation = "Design Adaptation"
//    /// Design Assistant
//    case designAssistant = "Design Assistant"
//    /// Design Associate
//    case designAssociate = "Design Associate"
//    /// Design Concept
//    case designConcept = "Design Concept"
//    /// Design Consultant
//    case designConsultant = "Design Consultant"
//    /// Design Coordinator
//    case designCoordinator = "Design Coordinator"
//    /// Design Direction
//    case designDirection = "Design Direction"
//    /// Design Editing
//    case designEditing = "Design Editing"
//    /// Design Engineer
//    case designEngineer = "Design Engineer"
//    /// Design Graphics
//    case designGraphics = "Design Graphics"
//    /// Design/Illustration
//    case designIllustration = "Design/Illustration"
//    /// Design Manipulation
//    case designManipulation = "Design Manipulation"
//    /// Design Mastering
//    case designMastering = "Design Mastering"
//    /// Design Photography
//    case designPhotography = "Design Photography"
//    /// Design Producer
//    case designProducer = "Design Producer"
//    /// Design Production Assistant
//    case designProductionAssistant = "Design Production Assistant"
//    /// Design Production Coordinator
//    case designProductionCoordinator = "Design Production Coordinator"
//    /// Design Supervisor
//    case designSupervisor = "Design Supervisor"
//    /// Development
//    case development = "Development"
//    /// Development Engineer
//    case developmentEngineer = "Development Engineer"
//    /// Devices
//    case devices = "Devices"
//    /// Dhantaal
//    case dhantaal = "Dhantaal"
//    /// Diagrams
//    case diagrams = "Diagrams"
//    /// Dialect Coach
//    case dialectCoach = "Dialect Coach"
//    /// Dialogue
//    case dialogue = "Dialogue"
//    /// Dialogue Adaptation
//    case dialogueAdaptation = "Dialogue Adaptation"
//    /// Dialogue Arrangement
//    case dialogueArrangement = "Dialogue Arrangement"
//    /// Dialogue Director
//    case dialogueDirector = "Dialogue Director"
//    /// Dialogue Editor
//    case dialogueEditor = "Dialogue Editor"
//    /// Dialogue Engineering
//    case dialogueEngineering = "Dialogue Engineering"
//    /// Dialogue Mixing
//    case dialogueMixing = "Dialogue Mixing"
//    /// Dialogue Production
//    case dialogueProduction = "Dialogue Production"
//    /// Dialogue Recording
//    case dialogueRecording = "Dialogue Recording"
//    /// Dialogue Supervisor
//    case dialogueSupervisor = "Dialogue Supervisor"
//    /// Digital Adaptation
//    case digitalAdaptation = "Digital Adaptation"
//    /// Digital Arrangement
//    case digitalArrangement = "Digital Arrangement"
//    /// Digital Art
//    case digitalArt = "Digital Art"
//    /// Digital Artwork
//    case digitalArtwork = "Digital Artwork"
//    /// Digital Assembly
//    case digitalAssembly = "Digital Assembly"
//    /// Digital Coloring
//    case digitalColoring = "Digital Coloring"
//    /// Digital Compilation
//    case digitalCompilation = "Digital Compilation"
//    /// Digital Composition
//    case digitalComposition = "Digital Composition"
//    /// Digital Concept
//    case digitalConcept = "Digital Concept"
//    /// Digital Consultant
//    case digitalConsultant = "Digital Consultant"
//    /// Digital Coordinator
//    case digitalCoordinator = "Digital Coordinator"
//    /// Digital Cutting
//    case digitalCutting = "Digital Cutting"
//    /// Digital Delay
//    case digitalDelay = "Digital Delay"
//    /// Digital Design
//    case digitalDesign = "Digital Design"
//    /// Digital Editing
//    case digitalEditing = "Digital Editing"
//    /// Digital Editing Assistant
//    case digitalEditingAssistant = "Digital Editing Assistant"
//    /// Digital Effects
//    case digitalEffects = "Digital Effects"
//    /// Digital Engineer
//    case digitalEngineer = "Digital Engineer"
//    /// Digital Enhancement
//    case digitalEnhancement = "Digital Enhancement"
//    /// Digital EQ
//    case digitalEQ = "Digital EQ"
//    /// Digital Equipment
//    case digitalEquipment = "Digital Equipment"
//    /// Digital Graphics
//    case digitalGraphics = "Digital Graphics"
//    /// Digital Horn
//    case digitalHorn = "Digital Horn"
//    /// Digital Illustration
//    case digitalIllustration = "Digital Illustration"
//    /// Digital Imagery
//    case digitalImagery = "Digital Imagery"
//    /// Digital Imaging
//    case digitalImaging = "Digital Imaging"
//    /// Digital Layout
//    case digitalLayout = "Digital Layout"
//    /// Digital Manipulation
//    case digitalManipulation = "Digital Manipulation"
//    /// Digital Mastering
//    case digitalMastering = "Digital Mastering"
//    /// Digital Mixing
//    case digitalMixing = "Digital Mixing"
//    /// Digital Mixing Assistant
//    case digitalMixingAssistant = "Digital Mixing Assistant"
//    /// Digital Mixing Consultant
//    case digitalMixingConsultant = "Digital Mixing Consultant"
//    /// Digital Modulars
//    case digitalModulars = "Digital Modulars"
//    /// Digital Montage
//    case digitalMontage = "Digital Montage"
//    /// Digital Mounting
//    case digitalMounting = "Digital Mounting"
//    /// Digital Noise Reduction
//    case digitalNoiseReduction = "Digital Noise Reduction"
//    /// Digital Operations
//    case digitalOperations = "Digital Operations"
//    /// Digital Painting
//    case digitalPainting = "Digital Painting"
//    /// Digital Photography
//    case digitalPhotography = "Digital Photography"
//    /// Digital Post-Editing
//    case digitalPostEditing = "Digital Post-Editing"
//    /// Digital Post Engineer
//    case digitalPostEngineer = "Digital Post Engineer"
//    /// Digital Post Production
//    case digitalPostProduction = "Digital Post Production"
//    /// Digital Pre-Mastering
//    case digitalPreMastering = "Digital Pre-Mastering"
//    /// Digital Preparation
//    case digitalPreparation = "Digital Preparation"
//    /// Digital Pre-Production
//    case digitalPreProduction = "Digital Pre-Production"
//    /// Digital Processing
//    case digitalProcessing = "Digital Processing"
//    /// Digital Producer
//    case digitalProducer = "Digital Producer"
//    /// Digital Programming
//    case digitalProgramming = "Digital Programming"
//    /// Digital Reassembling
//    case digitalReassembling = "Digital Reassembling"
//    /// Digital Recording
//    case digitalRecording = "Digital Recording"
//    /// Digital Recording Engineer
//    case digitalRecordingEngineer = "Digital Recording Engineer"
//    /// Digital Remastering
//    case digitalRemastering = "Digital Remastering"
//    /// Digital Remastering Assistant
//    case digitalRemasteringAssistant = "Digital Remastering Assistant"
//    /// Digital Remastering Engineer
//    case digitalRemasteringEngineer = "Digital Remastering Engineer"
//    /// Digital Remastering Supervisor
//    case digitalRemasteringSupervisor = "Digital Remastering Supervisor"
//    /// Digital Remixing
//    case digitalRemixing = "Digital Remixing"
//    /// Digital Reprocessing
//    case digitalReprocessing = "Digital Reprocessing"
//    /// Digital Rerecording
//    case digitalRerecording = "Digital Rerecording"
//    /// Digital Restoration
//    case digitalRestoration = "Digital Restoration"
//    /// Digital Sampling
//    case digitalSampling = "Digital Sampling"
//    /// Digital Sequencing
//    case digitalSequencing = "Digital Sequencing"
//    /// Digital Series Coordination
//    case digitalSeriesCoordination = "Digital Series Coordination"
//    /// Digital Series Executive Producer
//    case digitalSeriesExecutiveProducer = "Digital Series Executive Producer"
//    /// Digital Signal Processing
//    case digitalSignalProcessing = "Digital Signal Processing"
//    /// Digital Supervisor
//    case digitalSupervisor = "Digital Supervisor"
//    /// Digital System Operator
//    case digitalSystemOperator = "Digital System Operator"
//    /// Digital Tape Editor
//    case digitalTapeEditor = "Digital Tape Editor"
//    /// Digital Tape Master
//    case digitalTapeMaster = "Digital Tape Master"
//    /// Digital Technician
//    case digitalTechnician = "Digital Technician"
//    /// Digital Tracking
//    case digitalTracking = "Digital Tracking"
//    /// Digital Transfer Assistant
//    case digitalTransferAssistant = "Digital Transfer Assistant"
//    /// Digital Transfer Editing
//    case digitalTransferEditing = "Digital Transfer Editing"
//    /// Digital Transfer Producer
//    case digitalTransferProducer = "Digital Transfer Producer"
//    /// Digital Transfers
//    case digitalTransfers = "Digital Transfers"
//    /// Ding
//    case ding = "Ding"
//    /// Direcccion de Cuerdas
//    case direccciondeCuerdas = "Direcccion de Cuerdas"
//    /// Directed By
//    case directedBy = "Directed By"
//    /// Direction
//    case direction = "Direction"
//    /// Director
//    case director = "Director"
//    /// Director of Creative Services
//    case directorofCreativeServices = "Director of Creative Services"
//    /// Director of Engineering
//    case directorofEngineering = "Director of Engineering"
//    /// Director of Percussion
//    case directorofPercussion = "Director of Percussion"
//    /// Director of Performances
//    case directorofPerformances = "Director of Performances"
//    /// Director Of Photography
//    case directorOfPhotography = "Director Of Photography"
//    /// Director of Programming
//    case directorofProgramming = "Director of Programming"
//    /// Disc Cutting
//    case discCutting = "Disc Cutting"
//    /// Disc Dub
//    case discDub = "Disc Dub"
//    /// Discographical Annotation
//    case discographicalAnnotation = "Discographical Annotation"
//    /// Discographical Assistant
//    case discographicalAssistant = "Discographical Assistant"
//    /// Discographical Compiled
//    case discographicalCompiled = "Discographical Compiled"
//    /// Discographical Consultant
//    case discographicalConsultant = "Discographical Consultant"
//    /// Discographical Information
//    case discographicalInformation = "Discographical Information"
//    /// Discography
//    case discography = "Discography"
//    /// Disc Sources
//    case discSources = "Disc Sources"
//    /// Disc Transfers
//    case discTransfers = "Disc Transfers"
//    /// DJ Mix
//    case djMix = "DJ Mix"
//    /// DJ-Mixer
//    case DJmixer = "DJ-Mixer"
//    /// Documentary Compilation
//    case documentaryCompilation = "Documentary Compilation"
//    /// Documentation
//    case documentation = "Documentation"
//    /// Dolby Lab Consultant
//    case dolbyLabConsultant = "Dolby Lab Consultant"
//    /// Dolby Remixing
//    case dolbyRemixing = "Dolby Remixing"
//    /// Drawing
//    case drawing = "Drawing"
//    /// Drum Arrangements
//    case drumArrangements = "Drum Arrangements"
//    /// Drum Design
//    case drumDesign = "Drum Design"
//    /// Drum Editing
//    case drumEditing = "Drum Editing"
//    /// Drum Engineering
//    case drumEngineering = "Drum Engineering"
//    /// Drum Mix
//    case drumMix = "Drum Mix"
//    /// Drum Producer
//    case drumProducer = "Drum Producer"
//    /// Drum Recordings
//    case drumRecordings = "Drum Recordings"
//    /// Drum Sound Supervision
//    case drumSoundSupervision = "Drum Sound Supervision"
//    /// Drum Technician
//    case drumTechnician = "Drum Technician"
//    /// Dub Engineer
//    case dubEngineer = "Dub Engineer"
//    /// Dub Mixing
//    case dubMixing = "Dub Mixing"
//    /// Dub Plates
//    case dubPlates = "Dub Plates"
//    /// Dub Production
//    case dubProduction = "Dub Production"
//    /// Dub Programming
//    case dubProgramming = "Dub Programming"
//    /// Dubs
//    case dubs = "Dubs"
//    /// Dulcimer Arrangement
//    case dulcimerArrangement = "Dulcimer Arrangement"
//    /// Edited By
//    case editedBy = "Edited By"
//    /// Editing
//    case editing = "Editing"
//    /// Editing Assistant
//    case editingAssistant = "Editing Assistant"
//    /// Editing Engineer
//    case editingEngineer = "Editing Engineer"
//    /// Editor
//    case editor = "Editor"
//    /// Editorial
//    case editorial = "Editorial"
//    /// Editorial Adviser
//    case editorialAdviser = "Editorial Adviser"
//    /// Editorial Assistant
//    case editorialAssistant = "Editorial Assistant"
//    /// Editorial Consultation
//    case editorialConsultation = "Editorial Consultation"
//    /// Editorial Coordinator
//    case editorialCoordinator = "Editorial Coordinator"
//    /// Editorial Design
//    case editorialDesign = "Editorial Design"
//    /// Editorial Director
//    case editorialDirector = "Editorial Director"
//    /// Editorial Engineer
//    case editorialEngineer = "Editorial Engineer"
//    /// Editorial Manager
//    case editorialManager = "Editorial Manager"
//    /// Editorial Preparation
//    case editorialPreparation = "Editorial Preparation"
//    /// Editorial Production
//    case editorialProduction = "Editorial Production"
//    /// Editorial Research
//    case editorialResearch = "Editorial Research"
//    /// Editorial Supervision
//    case editorialSupervision = "Editorial Supervision"
//    /// Editorial Supervisor
//    case editorialSupervisor = "Editorial Supervisor"
//    /// Editorial Support
//    case editorialSupport = "Editorial Support"
//    /// Editor-In-Chief
//    case editorInChief = "Editor-In-Chief"
//    /// Effects
//    case effects = "Effects"
//    /// Effects Engineer
//    case effectsEngineer = "Effects Engineer"
//    /// Effects Pedals
//    case effectsPedals = "Effects Pedals"
//    /// Effects Programming
//    case effectsProgramming = "Effects Programming"
//    /// Electrician
//    case electrician = "Electrician"
//    /// Electro-Acoustics
//    case electroAcoustics = "Electro-Acoustics"
//    /// Electronic Arrangement
//    case electronicArrangement = "Electronic Arrangement"
//    /// Electronic Art
//    case electronicArt = "Electronic Art"
//    /// Electronic Assistant
//    case electronicAssistant = "Electronic Assistant"
//    /// Electronic Design
//    case electronicDesign = "Electronic Design"
//    /// Electronic Editor
//    case electronicEditor = "Electronic Editor"
//    /// Electronic Effects
//    case electronicEffects = "Electronic Effects"
//    /// Electronic Engineer
//    case electronicEngineer = "Electronic Engineer"
//    /// Electronic Music Producer
//    case electronicMusicProducer = "Electronic Music Producer"
//    /// Electronic Orchestration
//    case electronicOrchestration = "Electronic Orchestration"
//    /// Electronic Preparation
//    case electronicPreparation = "Electronic Preparation"
//    /// Electronic Processing
//    case electronicProcessing = "Electronic Processing"
//    /// Electronic Realization
//    case electronicRealization = "Electronic Realization"
//    /// Electronic Score Consultant
//    case electronicScoreConsultant = "Electronic Score Consultant"
//    /// Electronic Score Supervisor
//    case electronicScoreSupervisor = "Electronic Score Supervisor"
//    /// Electronic Sound Design
//    case electronicSoundDesign = "Electronic Sound Design"
//    /// Electronic Tape
//    case electronicTape = "Electronic Tape"
//    /// Electronic Treatments
//    case electronicTreatments = "Electronic Treatments"
//    /// Electronic Vibes
//    case electronicVibes = "Electronic Vibes"
//    /// Electronic Winds
//    case electronicWinds = "Electronic Winds"
//    /// Engineer
//    case engineer = "Engineer"
//    /// Engineering Consultant
//    case engineeringConsultant = "Engineering Consultant"
//    /// Engineering Coordinator
//    case engineeringCoordinator = "Engineering Coordinator"
//    /// Engineering Director
//    case engineeringDirector = "Engineering Director"
//    /// Engineering Intern
//    case engineeringIntern = "Engineering Intern"
//    /// Engineering Preparation
//    case engineeringPreparation = "Engineering Preparation"
//    /// Engineering Supervisor
//    case engineeringSupervisor = "Engineering Supervisor"
//    /// Engineering Support
//    case engineeringSupport = "Engineering Support"
//    /// English Supervision
//    case englishSupervision = "English Supervision"
//    /// English Translations
//    case englishTranslations = "English Translations"
//    /// Engraving
//    case engraving = "Engraving"
//    /// Enhanced CD Audio Creation
//    case enhancedCDAudioCreation = "Enhanced CD Audio Creation"
//    /// Enhanced CD Design
//    case enhancedCDDesign = "Enhanced CD Design"
//    /// Enhanced CD Development
//    case enhancedCDDevelopment = "Enhanced CD Development"
//    /// Enhanced CD Direction
//    case enhancedCDDirection = "Enhanced CD Direction"
//    /// Enhanced CD Engineering
//    case enhancedCDEngineering = "Enhanced CD Engineering"
//    /// Enhanced Programming
//    case enhancedProgramming = "Enhanced Programming"
//    /// Enhanced Recording
//    case enhancedRecording = "Enhanced Recording"
//    /// Ensemble Arranger
//    case ensembleArranger = "Ensemble Arranger"
//    /// Ensemble Director
//    case ensembleDirector = "Ensemble Director"
//    /// Ensoniq
//    case ensoniq = "Ensoniq"
//    /// Ensoniq EPS
//    case ensoniqEPS = "Ensoniq EPS"
//    /// Ensoniq Mirage
//    case ensoniqMirage = "Ensoniq Mirage"
//    /// Envelope Filter
//    case envelopeFilter = "Envelope Filter"
//    /// Equalization
//    case equalization = "Equalization"
//    /// Equalizing
//    case equalizing = "Equalizing"
//    /// Equipment Assistant
//    case equipmentAssistant = "Equipment Assistant"
//    /// Equipment Coordinator
//    case equipmentCoordinator = "Equipment Coordinator"
//    /// Equipment Engineer
//    case equipmentEngineer = "Equipment Engineer"
//    /// Equipment Manager
//    case equipmentManager = "Equipment Manager"
//    /// Equipment Monitor
//    case equipmentMonitor = "Equipment Monitor"
//    /// Equipment Rental
//    case equipmentRental = "Equipment Rental"
//    /// Equipment Technician
//    case equipmentTechnician = "Equipment Technician"
//    /// Essay
//    case essay = "Essay"
//    /// Etching
//    case etching = "Etching"
//    /// Ethno-Musicologist
//    case ethnoMusicologist = "Ethno-Musicologist"
//    /// Event Coordinator
//    case eventCoordinator = "Event Coordinator"
//    /// Eventide
//    case eventide = "Eventide"
//    /// Event Producer
//    case eventProducer = "Event Producer"
//    /// Execution
//    case execution = "Execution"
//    /// Executive
//    case executive = "Executive"
//    /// Executive Administrator
//    case executiveAdministrator = "Executive Administrator"
//    /// Executive Art Direction
//    case executiveArtDirection = "Executive Art Direction"
//    /// Executive Assistant
//    case executiveAssistant = "Executive Assistant"
//    /// Executive Associate
//    case executiveAssociate = "Executive Associate"
//    /// Executive Chief
//    case executiveChief = "Executive Chief"
//    /// Executive Compilation Producer
//    case executiveCompilationProducer = "Executive Compilation Producer"
//    /// Executive Consultant
//    case executiveConsultant = "Executive Consultant"
//    /// Executive Coordinator
//    case executiveCoordinator = "Executive Coordinator"
//    /// Executive Director
//    case executiveDirector = "Executive Director"
//    /// Executive Editing
//    case executiveEditing = "Executive Editing"
//    /// Executive Engineer
//    case executiveEngineer = "Executive Engineer"
//    /// Executive in Charge of Music
//    case executiveinChargeofMusic = "Executive in Charge of Music"
//    /// Executive Manager
//    case executiveManager = "Executive Manager"
//    /// Executive Mixer
//    case executiveMixer = "Executive Mixer"
//    /// Executive Musical Director
//    case executiveMusicalDirector = "Executive Musical Director"
//    /// Executive Music Supervisor
//    case executiveMusicSupervisor = "Executive Music Supervisor"
//    /// Executive of Soundtracks
//    case executiveofSoundtracks = "Executive of Soundtracks"
//    /// Executive Producer
//    case executiveProducer = "Executive Producer"
//    /// Executive Production Coordinator
//    case executiveProductionCoordinator = "Executive Production Coordinator"
//    /// Executive Reissue Producer
//    case executiveReissueProducer = "Executive Reissue Producer"
//    /// Executive Secretary
//    case executiveSecretary = "Executive Secretary"
//    /// Executive Soundtrack Producer
//    case executiveSoundtrackProducer = "Executive Soundtrack Producer"
//    /// Executive Supervision
//    case executiveSupervision = "Executive Supervision"
//    /// Executive Vice President
//    case executiveVicePresident = "Executive Vice President"
//    /// Executive Video Producer
//    case executiveVideoProducer = "Executive Video Producer"
//    /// Facility Consultant
//    case facilityConsultant = "Facility Consultant"
//    /// Fashion Advisor
//    case fashionAdvisor = "Fashion Advisor"
//    /// Fashion Stylist
//    case fashionStylist = "Fashion Stylist"
//    /// Feedback
//    case feedback = "Feedback"
//    /// Fender Twin Reverb
//    case fenderTwinReverb = "Fender Twin Reverb"
//    /// Fiddle Arrangement
//    case fiddleArrangement = "Fiddle Arrangement"
//    /// Field Assistant
//    case fieldAssistant = "Field Assistant"
//    /// Field Associate
//    case fieldAssociate = "Field Associate"
//    /// Field Recording
//    case fieldRecording = "Field Recording"
//    /// Field Research
//    case fieldResearch = "Field Research"
//    /// Field Work
//    case fieldWork = "Field Work"
//    /// Film Director
//    case filmDirector = "Film Director"
//    /// Film Editor
//    case filmEditor = "Film Editor"
//    /// Filmmaker
//    case filmmaker = "Filmmaker"
//    /// Film Music Consultant
//    case filmMusicConsultant = "Film Music Consultant"
//    /// Film Music Coordinator
//    case filmMusicCoordinator = "Film Music Coordinator"
//    /// Film Music Editor
//    case filmMusicEditor = "Film Music Editor"
//    /// Film Music Supervisor
//    case filmMusicSupervisor = "Film Music Supervisor"
//    /// Film Producer
//    case filmProducer = "Film Producer"
//    /// Film Research
//    case filmResearch = "Film Research"
//    /// Film Technician
//    case filmTechnician = "Film Technician"
//    /// Financial Director
//    case financialDirector = "Financial Director"
//    /// Flute Arrangement
//    case fluteArrangement = "Flute Arrangement"
//    /// Foley Artists
//    case foleyArtists = "Foley Artists"
//    /// Folklorist
//    case folklorist = "Folklorist"
//    /// Fonts
//    case fonts = "Fonts"
//    /// Food Stylist
//    case foodStylist = "Food Stylist"
//    /// Foreign Musical Correspondent
//    case foreignMusicalCorrespondent = "Foreign Musical Correspondent"
//    /// Foreword
//    case foreword = "Foreword"
//    /// Formatting
//    case formatting = "Formatting"
//    /// Formulation
//    case formulation = "Formulation"
//    /// Frequency Analyzer
//    case frequencyAnalyzer = "Frequency Analyzer"
//    /// General Administrator
//    case generalAdministrator = "General Administrator"
//    /// General Assistance
//    case generalAssistance = "General Assistance"
//    /// General Concept
//    case generalConcept = "General Concept"
//    /// General Coordination
//    case generalCoordination = "General Coordination"
//    /// General Director
//    case generalDirector = "General Director"
//    /// General Editor
//    case generalEditor = "General Editor"
//    /// General Manager
//    case generalManager = "General Manager"
//    /// General Supervisor
//    case generalSupervisor = "General Supervisor"
//    /// Generator
//    case generator = "Generator"
//    /// Glossary
//    case glossary = "Glossary"
//    /// Graphic Assembly
//    case graphicAssembly = "Graphic Assembly"
//    /// Graphic Assistant
//    case graphicAssistant = "Graphic Assistant"
//    /// Graphic Composition
//    case graphicComposition = "Graphic Composition"
//    /// Graphic Conception
//    case graphicConception = "Graphic Conception"
//    /// Graphic Consultant
//    case graphicConsultant = "Graphic Consultant"
//    /// Graphic Coordinator
//    case graphicCoordinator = "Graphic Coordinator"
//    /// Graphic Design
//    case graphicDesign = "Graphic Design"
//    /// Graphic Design Layout
//    case graphicDesignLayout = "Graphic Design Layout"
//    /// Graphic Direction
//    case graphicDirection = "Graphic Direction"
//    /// Graphic Editing
//    case graphicEditing = "Graphic Editing"
//    /// Graphic Layout
//    case graphicLayout = "Graphic Layout"
//    /// Graphic Manipulation
//    case graphicManipulation = "Graphic Manipulation"
//    /// Graphic Presentation
//    case graphicPresentation = "Graphic Presentation"
//    /// Graphic Production
//    case graphicProduction = "Graphic Production"
//    /// Graphic Realization
//    case graphicRealization = "Graphic Realization"
//    /// Graphic Remix
//    case graphicRemix = "Graphic Remix"
//    /// Graphic Restoration
//    case graphicRestoration = "Graphic Restoration"
//    /// Graphics
//    case graphics = "Graphics"
//    /// Graphic Supervision
//    case graphicSupervision = "Graphic Supervision"
//    /// Graphic Support
//    case graphicSupport = "Graphic Support"
//    /// Grip
//    case grip = "Grip"
//    /// Groomer
//    case groomer = "Groomer"
//    /// Grooming
//    case grooming = "Grooming"
//    /// Guest Conductor
//    case guestConductor = "Guest Conductor"
//    /// Guest Operator
//    case guestOperator = "Guest Operator"
//    /// Guitar Arrangements
//    case guitarArrangements = "Guitar Arrangements"
//    /// Guitar Engineer
//    case guitarEngineer = "Guitar Engineer"
//    /// Guitar Maker
//    case guitarMaker = "Guitar Maker"
//    /// Guitar Producer
//    case guitarProducer = "Guitar Producer"
//    /// Guitar Programming
//    case guitarProgramming = "Guitar Programming"
//    /// Guitar Technician
//    case guitarTechnician = "Guitar Technician"
//    /// Hair Stylist
//    case hairStylist = "Hair Stylist"
//    /// Handbell Arrangement
//    case handbellArrangement = "Handbell Arrangement"
//    /// Hand Coloring
//    case handColoring = "Hand Coloring"
//    /// Hand Lettering
//    case handLettering = "Hand Lettering"
//    /// Handwriting
//    case handwriting = "Handwriting"
//    /// Hard Disk Editing
//    case hardDiskEditing = "Hard Disk Editing"
//    /// Hard-Disk Recorder
//    case hardDiskRecorder = "Hard-Disk Recorder"
//    /// Harmonica Arrangements
//    case harmonicaArrangements = "Harmonica Arrangements"
//    /// Harmonic Arrangement
//    case harmonicArrangement = "Harmonic Arrangement"
//    /// Harp Arrangement
//    case harpArrangement = "Harp Arrangement"
//    /// Harpsichord Arrangement
//    case harpsichordArrangement = "Harpsichord Arrangement"
//    /// Harpsichord Maker
//    case harpsichordMaker = "Harpsichord Maker"
//    /// Harpsichord Technician
//    case harpsichordTechnician = "Harpsichord Technician"
//    /// Help
//    case help = "Help"
//    /// Historical Research
//    case historicalResearch = "Historical Research"
//    /// Horn Arrangements
//    case hornArrangements = "Horn Arrangements"
//    /// Horn Conductor
//    case hornConductor = "Horn Conductor"
//    /// Horn Director
//    case hornDirector = "Horn Director"
//    /// Horn Engineer
//    case hornEngineer = "Horn Engineer"
//    /// Horn Producer
//    case hornProducer = "Horn Producer"
//    /// Horn Programming
//    case hornProgramming = "Horn Programming"
//    /// Hospitality
//    case hospitality = "Hospitality"
//    /// Hosted By
//    case hostedBy = "Hosted By"
//    /// Hot Fountain Pen
//    case hotFountainPen = "Hot Fountain Pen"
//    /// House Mix
//    case houseMix = "House Mix"
//    /// House Sound
//    case houseSound = "House Sound"
//    /// Icon
//    case icon = "Icon"
//    /// Idee
//    case idee = "Idee"
//    /// Illustration
//    case illustration = "Illustration"
//    /// Illustration Concept
//    case illustrationConcept = "Illustration Concept"
//    /// Illustration Research
//    case illustrationResearch = "Illustration Research"
//    /// Illustrations
//    case illustrations = "Illustrations"
//    /// Image Construction
//    case imageConstruction = "Image Construction"
//    /// Image Consultant
//    case imageConsultant = "Image Consultant"
//    /// Image Control
//    case imageControl = "Image Control"
//    /// Image Coordinator
//    case imageCoordinator = "Image Coordinator"
//    /// Image Design
//    case imageDesign = "Image Design"
//    /// Image Development
//    case imageDevelopment = "Image Development"
//    /// Image Editing
//    case imageEditing = "Image Editing"
//    /// Image Manipulation
//    case imageManipulation = "Image Manipulation"
//    /// Image Photography
//    case imagePhotography = "Image Photography"
//    /// Image Processing
//    case imageProcessing = "Image Processing"
//    /// Image Research
//    case imageResearch = "Image Research"
//    /// Images
//    case images = "Images"
//    /// Image Stylist
//    case imageStylist = "Image Stylist"
//    /// Image Transmission
//    case imageTransmission = "Image Transmission"
//    /// Imaging
//    case imaging = "Imaging"
//    /// Impaginazione
//    case impaginazione = "Impaginazione"
//    /// Impersonations
//    case impersonations = "Impersonations"
//    /// Impressions
//    case impressions = "Impressions"
//    /// Index
//    case index = "Index"
//    /// Information
//    case information = "Information"
//    /// Inlay Descriptions
//    case inlayDescriptions = "Inlay Descriptions"
//    /// Inlay Design
//    case inlayDesign = "Inlay Design"
//    /// Inlay Painting
//    case inlayPainting = "Inlay Painting"
//    /// Inlay Photography
//    case inlayPhotography = "Inlay Photography"
//    /// Insert
//    case insert = "Insert"
//    /// Insert Illustration
//    case insertIllustration = "Insert Illustration"
//    /// Insert Photography
//    case insertPhotography = "Insert Photography"
//    /// Inside Photo
//    case insidePhoto = "Inside Photo"
//    /// Inspiration
//    case inspiration = "Inspiration"
//    /// Instigation
//    case instigation = "Instigation"
//    /// Instructor
//    case instructor = "Instructor"
//    /// Instrumental Producer
//    case instrumentalProducer = "Instrumental Producer"
//    /// Instrument Arrangement
//    case instrumentArrangement = "Instrument Arrangement"
//    /// Instrument Arranger
//    case instrumentArranger = "Instrument Arranger"
//    /// Instrument Assistant
//    case instrumentAssistant = "Instrument Assistant"
//    /// Instrumentation
//    case instrumentation = "Instrumentation"
//    /// Instrumentation By
//    case instrumentationBy = "Instrumentation By"
//    /// Instrument Design
//    case instrumentDesign = "Instrument Design"
//    /// Instrument Director
//    case instrumentDirector = "Instrument Director"
//    /// Instrument Preparation
//    case instrumentPreparation = "Instrument Preparation"
//    /// Instrument Sequencing
//    case instrumentSequencing = "Instrument Sequencing"
//    /// Instrument Set-up
//    case instrumentSetup = "Instrument Set-up"
//    /// Instrument Technician
//    case instrumentTechnician = "Instrument Technician"
//    /// Interactive Design
//    case interactiveDesign = "Interactive Design"
//    /// Interactive Producer
//    case interactiveProducer = "Interactive Producer"
//    /// Interface Designer
//    case interfaceDesigner = "Interface Designer"
//    /// Interlude
//    case interlude = "Interlude"
//    /// Interlude Arranger
//    case interludeArranger = "Interlude Arranger"
//    /// Intern
//    case intern = "Intern"
//    /// International Coordination
//    case internationalCoordination = "International Coordination"
//    /// International Promotional Director
//    case internationalPromotionalDirector = "International Promotional Director"
//    /// Interpretation
//    case interpretation = "Interpretation"
//    /// Interview Coordinator
//    case interviewCoordinator = "Interview Coordinator"
//    /// Interview Editor
//    case interviewEditor = "Interview Editor"
//    /// Interview Producer
//    case interviewProducer = "Interview Producer"
//    /// Introduction
//    case introduction = "Introduction"
//    /// Issue Producer
//    case issueProducer = "Issue Producer"
//    /// Jacket Design
//    case jacketDesign = "Jacket Design"
//    /// Jacket Editor
//    case jacketEditor = "Jacket Editor"
//    /// Keyboard Arrangements
//    case keyboardArrangements = "Keyboard Arrangements"
//    /// Keyboard Assistant
//    case keyboardAssistant = "Keyboard Assistant"
//    /// Keyboard Computer
//    case keyboardComputer = "Keyboard Computer"
//    /// Keyboard Concepts
//    case keyboardConcepts = "Keyboard Concepts"
//    /// Keyboard Consultant
//    case keyboardConsultant = "Keyboard Consultant"
//    /// Keyboard Engineer
//    case keyboardEngineer = "Keyboard Engineer"
//    /// Keyboard Technician
//    case keyboardTechnician = "Keyboard Technician"
//    /// Key Grip
//    case keyGrip = "Key Grip"
//    /// Keyline
//    case keyline = "Keyline"
//    /// Lab Assistant
//    case labAssistant = "Lab Assistant"
//    /// Label Consultant
//    case labelConsultant = "Label Consultant"
//    /// Label Coordination
//    case labelCoordination = "Label Coordination"
//    /// Label Design
//    case labelDesign = "Label Design"
//    /// Label Direction
//    case labelDirection = "Label Direction"
//    /// Label Manager
//    case labelManager = "Label Manager"
//    /// Lacquer Cut
//    case lacquerCut = "Lacquer Cut"
//    /// Lacquer Cut By
//    case lacquerCutBy = "Lacquer Cut By"
//    /// Language Adaptation
//    case languageAdaptation = "Language Adaptation"
//    /// Language Advisor
//    case languageAdvisor = "Language Advisor"
//    /// Language Coach
//    case languageCoach = "Language Coach"
//    /// Language Consultant
//    case languageConsultant = "Language Consultant"
//    /// Language Coordinator
//    case languageCoordinator = "Language Coordinator"
//    /// Language Editing
//    case languageEditing = "Language Editing"
//    /// Lathe Operator
//    case latheOperator = "Lathe Operator"
//    /// Layout
//    case layout = "Layout"
//    /// Layout Assistance
//    case layoutAssistance = "Layout Assistance"
//    /// Layout Concept
//    case layoutConcept = "Layout Concept"
//    /// Layout Coordinator
//    case layoutCoordinator = "Layout Coordinator"
//    /// Layout Design
//    case layoutDesign = "Layout Design"
//    /// Layout Direction
//    case layoutDirection = "Layout Direction"
//    /// Layout Editing
//    case layoutEditing = "Layout Editing"
//    /// Layout Photography
//    case layoutPhotography = "Layout Photography"
//    /// Layout Typography
//    case layoutTypography = "Layout Typography"
//    /// Legal
//    case legal = "Legal"
//    /// Legal Advisor
//    case legalAdvisor = "Legal Advisor"
//    /// Legal Counsel
//    case legalCounsel = "Legal Counsel"
//    /// Legal Representation
//    case legalRepresentation = "Legal Representation"
//    /// Letter Design
//    case letterDesign = "Letter Design"
//    /// Lettering
//    case lettering = "Lettering"
//    /// Librarian
//    case librarian = "Librarian"
//    /// Librettist
//    case librettist = "Librettist"
//    /// Libretto Adaptor
//    case librettoAdaptor = "Libretto Adaptor"
//    /// Libretto By
//    case librettoBy = "Libretto By"
//    /// Libretto Design
//    case librettoDesign = "Libretto Design"
//    /// Libretto Editing
//    case librettoEditing = "Libretto Editing"
//    /// Libretto Preparation
//    case librettoPreparation = "Libretto Preparation"
//    /// Libretto Revision
//    case librettoRevision = "Libretto Revision"
//    /// Libretto Translation
//    case librettoTranslation = "Libretto Translation"
//    /// Licensing
//    case licensing = "Licensing"
//    /// Lighting
//    case lighting = "Lighting"
//    /// Lighting Assistant
//    case lightingAssistant = "Lighting Assistant"
//    /// Lighting Design
//    case lightingDesign = "Lighting Design"
//    /// Lighting Director
//    case lightingDirector = "Lighting Director"
//    /// Lighting Supervisor
//    case lightingSupervisor = "Lighting Supervisor"
//    /// Lighting Technician
//    case lightingTechnician = "Lighting Technician"
//    /// Liner Design
//    case linerDesign = "Liner Design"
//    /// Liner Editor
//    case linerEditor = "Liner Editor"
//    /// Liner Note Adaptation
//    case linerNoteAdaptation = "Liner Note Adaptation"
//    /// Liner Note Art
//    case linerNoteArt = "Liner Note Art"
//    /// Liner Note Assistant
//    case linerNoteAssistant = "Liner Note Assistant"
//    /// Liner Note Compilation
//    case linerNoteCompilation = "Liner Note Compilation"
//    /// Liner Note Coordination
//    case linerNoteCoordination = "Liner Note Coordination"
//    /// Liner Note Graphics
//    case linerNoteGraphics = "Liner Note Graphics"
//    /// Liner Note Preparation
//    case linerNotePreparation = "Liner Note Preparation"
//    /// Liner Note Producer
//    case linerNoteProducer = "Liner Note Producer"
//    /// Liner Note Research
//    case linerNoteResearch = "Liner Note Research"
//    /// Liner Note Revision
//    case linerNoteRevision = "Liner Note Revision"
//    /// Liner Notes
//    case linerNotes = "Liner Notes"
//    /// Liner Note Source
//    case linerNoteSource = "Liner Note Source"
//    /// Liner Note Suggestions
//    case linerNoteSuggestions = "Liner Note Suggestions"
//    /// Liner Note Supervision
//    case linerNoteSupervision = "Liner Note Supervision"
//    /// Liner Note Translation
//    case linerNoteTranslation = "Liner Note Translation"
//    /// Linguist
//    case linguist = "Linguist"
//    /// Literary Advisor
//    case literaryAdvisor = "Literary Advisor"
//    /// Literary Consultant
//    case literaryConsultant = "Literary Consultant"
//    /// Literary Editor
//    case literaryEditor = "Literary Editor"
//    /// Literary Supervision
//    case literarySupervision = "Literary Supervision"
//    /// Lithography
//    case lithography = "Lithography"
//    /// Liturgical Reconstruction
//    case liturgicalReconstruction = "Liturgical Reconstruction"
//    /// Live Assistant
//    case liveAssistant = "Live Assistant"
//    /// Live Crew
//    case liveCrew = "Live Crew"
//    /// Live Mixing
//    case liveMixing = "Live Mixing"
//    /// Live Production
//    case liveProduction = "Live Production"
//    /// Live Recording Coordination
//    case liveRecordingCoordination = "Live Recording Coordination"
//    /// Live Recording Mixer
//    case liveRecordingMixer = "Live Recording Mixer"
//    /// Live Remote Engineer
//    case liveRemoteEngineer = "Live Remote Engineer"
//    /// Live Sound
//    case liveSound = "Live Sound"
//    /// Live Sound Engineer
//    case liveSoundEngineer = "Live Sound Engineer"
//    /// Live Technician
//    case liveTechnician = "Live Technician"
//    /// Live Visuals
//    case liveVisuals = "Live Visuals"
//    /// Location Assistant
//    case locationAssistant = "Location Assistant"
//    /// Location Coordinator
//    case locationCoordinator = "Location Coordinator"
//    /// Location Engineer
//    case locationEngineer = "Location Engineer"
//    /// Location Recording
//    case locationRecording = "Location Recording"
//    /// Location Sound
//    case locationSound = "Location Sound"
//    /// Logistics
//    case logistics = "Logistics"
//    /// Logistische
//    case logistische = "Logistische"
//    /// Logo
//    case logo = "Logo"
//    /// Logo Adaptation
//    case logoAdaptation = "Logo Adaptation"
//    /// Logo Art
//    case logoArt = "Logo Art"
//    /// Logo Concept
//    case logoConcept = "Logo Concept"
//    /// Logo Design
//    case logoDesign = "Logo Design"
//    /// Logo Graphics
//    case logoGraphics = "Logo Graphics"
//    /// Logo Idea
//    case logoIdea = "Logo Idea"
//    /// Logo Illustration
//    case logoIllustration = "Logo Illustration"
//    /// Logo Photography
//    case logoPhotography = "Logo Photography"
//    /// Logo Treatment
//    case logoTreatment = "Logo Treatment"
//    /// Logotype
//    case logotype = "Logotype"
//    /// Logs
//    case logs = "Logs"
//    /// Loop Editing
//    case loopEditing = "Loop Editing"
//    /// Lyric Adaptations
//    case lyricAdaptations = "Lyric Adaptations"
//    /// Lyrical Reference
//    case lyricalReference = "Lyrical Reference"
//    /// Lyric Art
//    case lyricArt = "Lyric Art"
//    /// Lyric Assistant
//    case lyricAssistant = "Lyric Assistant"
//    /// Lyric Compilation
//    case lyricCompilation = "Lyric Compilation"
//    /// Lyric Concept
//    case lyricConcept = "Lyric Concept"
//    /// Lyric Consultant
//    case lyricConsultant = "Lyric Consultant"
//    /// Lyric Coordinator
//    case lyricCoordinator = "Lyric Coordinator"
//    /// Lyric Editing
//    case lyricEditing = "Lyric Editing"
//    /// Lyric Illustration
//    case lyricIllustration = "Lyric Illustration"
//    /// Lyric Input
//    case lyricInput = "Lyric Input"
//    /// Lyricist
//    case lyricist = "Lyricist"
//    /// Lyric Layout
//    case lyricLayout = "Lyric Layout"
//    /// Lyric Poetry
//    case lyricPoetry = "Lyric Poetry"
//    /// Lyric Revision
//    case lyricRevision = "Lyric Revision"
//    /// Lyrics By
//    case lyricsBy = "Lyrics By"
//    /// Lyric Soprano
//    case lyricSoprano = "Lyric Soprano"
//    /// Lyric Supervision
//    case lyricSupervision = "Lyric Supervision"
//    /// Lyric Transcription
//    case lyricTranscription = "Lyric Transcription"
//    /// Lyric Translation
//    case lyricTranslation = "Lyric Translation"
//    /// Make-Up
//    case makeUp = "Make-Up"
//    /// Make-Up Assistant
//    case makeUpAssistant = "Make-Up Assistant"
//    /// Mambo Arrangement
//    case mamboArrangement = "Mambo Arrangement"
//    /// Management
//    case management = "Management"
//    /// Managing Director
//    case managingDirector = "Managing Director"
//    /// Managing Editor
//    case managingEditor = "Managing Editor"
//    /// Mandolin Arrangement
//    case mandolinArrangement = "Mandolin Arrangement"
//    /// Manuscript Coordinator
//    case manuscriptCoordinator = "Manuscript Coordinator"
//    /// Mapping Engineer
//    case mappingEngineer = "Mapping Engineer"
//    /// Mariachi Arrangement
//    case mariachiArrangement = "Mariachi Arrangement"
//    /// Marketing
//    case marketing = "Marketing"
//    /// Marketing Consultant
//    case marketingConsultant = "Marketing Consultant"
//    /// Marketing Coordinator
//    case marketingCoordinator = "Marketing Coordinator"
//    /// Marshall Amplifiers
//    case marshallAmplifiers = "Marshall Amplifiers"
//    /// Master Chorister
//    case masterChorister = "Master Chorister"
//    /// Master Clearance
//    case masterClearance = "Master Clearance"
//    /// Master Coordination
//    case masterCoordination = "Master Coordination"
//    /// Master Cut
//    case masterCut = "Master Cut"
//    /// Mastered By
//    case masteredBy = "Mastered By"
//    /// Mastering
//    case mastering = "Mastering"
//    /// Mastering Advisor
//    case masteringAdvisor = "Mastering Advisor"
//    /// Mastering Assembly
//    case masteringAssembly = "Mastering Assembly"
//    /// Mastering Assistant
//    case masteringAssistant = "Mastering Assistant"
//    /// Mastering Associate
//    case masteringAssociate = "Mastering Associate"
//    /// Mastering Consultant
//    case masteringConsultant = "Mastering Consultant"
//    /// Mastering Coordination
//    case masteringCoordination = "Mastering Coordination"
//    /// Mastering Editor
//    case masteringEditor = "Mastering Editor"
//    /// Mastering Engineer
//    case masteringEngineer = "Mastering Engineer"
//    /// Mastering Producer
//    case masteringProducer = "Mastering Producer"
//    /// Mastering Sequencing
//    case masteringSequencing = "Mastering Sequencing"
//    /// Mastering Supervisor
//    case masteringSupervisor = "Mastering Supervisor"
//    /// Master Lacquer
//    case masterLacquer = "Master Lacquer"
//    /// Master Mixing
//    case masterMixing = "Master Mixing"
//    /// Master of Music
//    case masterofMusic = "Master of Music"
//    /// Master Owner
//    case masterOwner = "Master Owner"
//    /// Master Research
//    case masterResearch = "Master Research"
//    /// Master Tape Assembly
//    case masterTapeAssembly = "Master Tape Assembly"
//    /// Master Tape Preparation
//    case masterTapePreparation = "Master Tape Preparation"
//    /// Master Tape Research
//    case masterTapeResearch = "Master Tape Research"
//    /// Master Tape Restoration
//    case masterTapeRestoration = "Master Tape Restoration"
//    /// Master Transfers
//    case masterTransfers = "Master Transfers"
//    /// Matches
//    case matches = "Matches"
//    /// Material
//    case material = "Material"
//    /// Material Design
//    case materialDesign = "Material Design"
//    /// Material Preparation
//    case materialPreparation = "Material Preparation"
//    /// Max
//    case max = "Max"
//    /// MC
//    case mc = "MC"
//    /// Mechanical Design
//    case mechanicalDesign = "Mechanical Design"
//    /// Mechanical Producer
//    case mechanicalProducer = "Mechanical Producer"
//    /// Media Consultant
//    case mediaConsultant = "Media Consultant"
//    /// Medical Aid
//    case medicalAid = "Medical Aid"
//    /// Medley Concept
//    case medleyConcept = "Medley Concept"
//    /// Megamix
//    case megamix = "Megamix"
//    /// Melody Arrangement
//    case melodyArrangement = "Melody Arrangement"
//    /// Memorabilia
//    case memorabilia = "Memorabilia"
//    /// Mentor
//    case mentor = "Mentor"
//    /// Merchandising
//    case merchandising = "Merchandising"
//    /// Metronome
//    case metronome = "Metronome"
//    /// Microphone
//    case microphone = "Microphone"
//    /// Microphone Stand
//    case microphoneStand = "Microphone Stand"
//    /// MIDI Arrangement
//    case midiArrangement = "MIDI Arrangement"
//    /// MIDI Assistance
//    case midiAssistance = "MIDI Assistance"
//    /// MIDI Design
//    case midiDesign = "MIDI Design"
//    /// MIDI Engineer
//    case midiEngineer = "MIDI Engineer"
//    /// MIDI Manager
//    case midiManager = "MIDI Manager"
//    /// MIDI Production
//    case midiProduction = "MIDI Production"
//    /// MIDI Programming
//    case midiProgramming = "MIDI Programming"
//    /// MIDI Sequencing
//    case midiSequencing = "MIDI Sequencing"
//    /// MIDI Synthesizer
//    case midiSynthesizer = "MIDI Synthesizer"
//    /// MIDI Technician
//    case midiTechnician = "MIDI Technician"
//    /// Minister of Music
//    case ministerofMusic = "Minister of Music"
//    /// Mix Control
//    case mixControl = "Mix Control"
//    /// Mix Down
//    case mixDown = "Mix Down"
//    /// Mixdown Engineer
//    case mixdownEngineer = "Mixdown Engineer"
//    /// Mixdown Producer
//    case mixdownProducer = "Mixdown Producer"
//    /// Mixed By
//    case mixedBy = "Mixed By"
//    /// Mix Engineer
//    case mixEngineer = "Mix Engineer"
//    /// Mixer
//    case mixer = "Mixer"
//    /// Mixing
//    case mixing = "Mixing"
//    /// Mixing Advisor
//    case mixingAdvisor = "Mixing Advisor"
//    /// Mixing Arrangement
//    case mixingArrangement = "Mixing Arrangement"
//    /// Mixing Assistant
//    case mixingAssistant = "Mixing Assistant"
//    /// Mixing Consultant
//    case mixingConsultant = "Mixing Consultant"
//    /// Mixing Coordinator
//    case mixingCoordinator = "Mixing Coordinator"
//    /// Mixing Direction
//    case mixingDirection = "Mixing Direction"
//    /// Mixing Editor
//    case mixingEditor = "Mixing Editor"
//    /// Mixing Engineer
//    case mixingEngineer = "Mixing Engineer"
//    /// Mixing Producer
//    case mixingProducer = "Mixing Producer"
//    /// Mixing Programmer
//    case mixingProgrammer = "Mixing Programmer"
//    /// Mixing Reconstruction
//    case mixingReconstruction = "Mixing Reconstruction"
//    /// Mixing Supervision
//    case mixingSupervision = "Mixing Supervision"
//    /// Mixing Translation
//    case mixingTranslation = "Mixing Translation"
//    /// Mix Technician
//    case mixTechnician = "Mix Technician"
//    /// Mobile Recording Engineer
//    case mobileRecordingEngineer = "Mobile Recording Engineer"
//    /// Model
//    case model = "Model"
//    /// Model Maker
//    case modelMaker = "Model Maker"
//    /// Moderator
//    case moderator = "Moderator"
//    /// Monitor Engineer
//    case monitorEngineer = "Monitor Engineer"
//    /// Monitor Mix Engineer
//    case monitorMixEngineer = "Monitor Mix Engineer"
//    /// Monitor Mixer
//    case monitorMixer = "Monitor Mixer"
//    /// Monitors
//    case monitors = "Monitors"
//    /// Monitor Technician
//    case monitorTechnician = "Monitor Technician"
//    /// Monologue
//    case monologue = "Monologue"
//    /// Monoprint
//    case monoprint = "Monoprint"
//    /// Montage
//    case montage = "Montage"
//    /// Movement
//    case movement = "Movement"
//    /// Multi-Media
//    case multiMedia = "Multi-Media"
//    /// Multimedia Artwork
//    case multimediaArtwork = "Multimedia Artwork"
//    /// Multimedia Design
//    case multimediaDesign = "Multimedia Design"
//    /// Multimedia Producer
//    case multimediaProducer = "Multimedia Producer"
//    /// Multimedia Programming
//    case multimediaProgramming = "Multimedia Programming"
//    /// Multi-Track Mix
//    case multiTrackMix = "Multi-Track Mix"
//    /// Multi-Track Transfer
//    case multiTrackTransfer = "Multi-Track Transfer"
//    /// Music Actuator
//    case musicActuator = "Music Actuator"
//    /// Music Adaptations
//    case musicAdaptations = "Music Adaptations"
//    /// Music Administrator
//    case musicAdministrator = "Music Administrator"
//    /// Music Advisor
//    case musicAdvisor = "Music Advisor"
//    /// Musical Adaptation
//    case musicalAdaptation = "Musical Adaptation"
//    /// Musical Assistance
//    case musicalAssistance = "Musical Assistance"
//    /// Musical Associate
//    case musicalAssociate = "Musical Associate"
//    /// Musical Backing
//    case musicalBacking = "Musical Backing"
//    /// Musical Collection
//    case musicalCollection = "Musical Collection"
//    /// Musical Consultant
//    case musicalConsultant = "Musical Consultant"
//    /// Musical Continuity
//    case musicalContinuity = "Musical Continuity"
//    /// Musical Coordinator
//    case musicalCoordinator = "Musical Coordinator"
//    /// Musical Co-Production
//    case musicalCoProduction = "Musical Co-Production"
//    /// Musical Direction
//    case musicalDirection = "Musical Direction"
//    /// Musical Director
//    case musicalDirector = "Musical Director"
//    /// Musical Producer
//    case musicalProducer = "Musical Producer"
//    /// Musical Production Manager
//    case musicalProductionManager = "Musical Production Manager"
//    /// Musical Score Producer
//    case musicalScoreProducer = "Musical Score Producer"
//    /// Musical Selections
//    case musicalSelections = "Musical Selections"
//    /// Musical Staging
//    case musicalStaging = "Musical Staging"
//    /// Musical Supervision
//    case musicalSupervision = "Musical Supervision"
//    /// Music Annotation
//    case musicAnnotation = "Music Annotation"
//    /// Music Assistant
//    case musicAssistant = "Music Assistant"
//    /// Music Business Affairs
//    case musicBusinessAffairs = "Music Business Affairs"
//    /// Music By
//    case musicBy = "Music By"
//    /// Music Clearance
//    case musicClearance = "Music Clearance"
//    /// Music Coach
//    case musicCoach = "Music Coach"
//    /// Music Collaborator
//    case musicCollaborator = "Music Collaborator"
//    /// Music Consultant
//    case musicConsultant = "Music Consultant"
//    /// Music Contractor
//    case musicContractor = "Music Contractor"
//    /// Music Coordinator
//    case musicCoordinator = "Music Coordinator"
//    /// Music Copyist
//    case musicCopyist = "Music Copyist"
//    /// Music Data
//    case musicData = "Music Data"
//    /// Music Development
//    case musicDevelopment = "Music Development"
//    /// Music Direction
//    case musicDirection = "Music Direction"
//    /// Music Editor
//    case musicEditor = "Music Editor"
//    /// Music Executive
//    case musicExecutive = "Music Executive"
//    /// Music Librarian
//    case musicLibrarian = "Music Librarian"
//    /// Music Manuscript
//    case musicManuscript = "Music Manuscript"
//    /// Music Master
//    case musicMaster = "Music Master"
//    /// Music Notes
//    case musicNotes = "Music Notes"
//    /// Musicographer
//    case musicographer = "Musicographer"
//    /// Musicologist
//    case musicologist = "Musicologist"
//    /// Music Organization
//    case musicOrganization = "Music Organization"
//    /// Music Preparation
//    case musicPreparation = "Music Preparation"
//    /// Music Preparation Supervisor
//    case musicPreparationSupervisor = "Music Preparation Supervisor"
//    /// Music Preproduction
//    case musicPreproduction = "Music Preproduction"
//    /// Music Production Supervisor
//    case musicProductionSupervisor = "Music Production Supervisor"
//    /// Music Program
//    case musicProgram = "Music Program"
//    /// Music Research
//    case musicResearch = "Music Research"
//    /// Music Score Consultant
//    case musicScoreConsultant = "Music Score Consultant"
//    /// Music Scoring Coordination
//    case musicScoringCoordination = "Music Scoring Coordination"
//    /// Music Scoring Mixer
//    case musicScoringMixer = "Music Scoring Mixer"
//    /// Music Selection
//    case musicSelection = "Music Selection"
//    /// Music Sequence Selection
//    case musicSequenceSelection = "Music Sequence Selection"
//    /// Music Stand
//    case musicStand = "Music Stand"
//    /// Music Supervisor
//    case musicSupervisor = "Music Supervisor"
//    /// Music Tracks Producer
//    case musicTracksProducer = "Music Tracks Producer"
//    /// Music Video Digitizing
//    case musicVideoDigitizing = "Music Video Digitizing"
//    /// Narration Producer
//    case narrationProducer = "Narration Producer"
//    /// Narrative Script Supervision
//    case narrativeScriptSupervision = "Narrative Script Supervision"
//    /// Navigator
//    case navigator = "Navigator"
//    /// Newscast
//    case newscast = "Newscast"
//    /// Noise Manipulation
//    case noiseManipulation = "Noise Manipulation"
//    /// Noise Processing
//    case noiseProcessing = "Noise Processing"
//    /// Noise Reduction
//    case noiseReduction = "Noise Reduction"
//    /// Notation
//    case notation = "Notation"
//    /// Note Compilation
//    case noteCompilation = "Note Compilation"
//    /// Note Editing
//    case noteEditing = "Note Editing"
//    /// Notes Adaption
//    case notesAdaption = "Notes Adaption"
//    /// Notes Editing
//    case notesEditing = "Notes Editing"
//    /// Numerical Editing
//    case numericalEditing = "Numerical Editing"
//    /// Objects
//    case objects = "Objects"
//    /// Oboe Arrangement
//    case oboeArrangement = "Oboe Arrangement"
//    /// Office Coordinator
//    case officeCoordinator = "Office Coordinator"
//    /// Operation
//    case operation = "Operation"
//    /// Orator
//    case orator = "Orator"
//    /// Orchestra Assembly
//    case orchestraAssembly = "Orchestra Assembly"
//    /// Orchestra Captain
//    case orchestraCaptain = "Orchestra Captain"
//    /// Orchestra Chairman
//    case orchestraChairman = "Orchestra Chairman"
//    /// Orchestra Contractor
//    case orchestraContractor = "Orchestra Contractor"
//    /// Orchestra Director
//    case orchestraDirector = "Orchestra Director"
//    /// Orchestral Agent
//    case orchestralAgent = "Orchestral Agent"
//    /// Orchestral Arrangements
//    case orchestralArrangements = "Orchestral Arrangements"
//    /// Orchestral Assistant
//    case orchestralAssistant = "Orchestral Assistant"
//    /// Orchestral Coordinator
//    case orchestralCoordinator = "Orchestral Coordinator"
//    /// Orchestral Copyist
//    case orchestralCopyist = "Orchestral Copyist"
//    /// Orchestra Leader
//    case orchestraLeader = "Orchestra Leader"
//    /// Orchestra Librarian
//    case orchestraLibrarian = "Orchestra Librarian"
//    /// Orchestral Manager
//    case orchestralManager = "Orchestral Manager"
//    /// Orchestral Realizations
//    case orchestralRealizations = "Orchestral Realizations"
//    /// Orchestral Score
//    case orchestralScore = "Orchestral Score"
//    /// Orchestra Manager
//    case orchestraManager = "Orchestra Manager"
//    /// Orchestra Production
//    case orchestraProduction = "Orchestra Production"
//    /// Orchestra Score Mixing
//    case orchestraScoreMixing = "Orchestra Score Mixing"
//    /// Orchestra Supervision
//    case orchestraSupervision = "Orchestra Supervision"
//    /// Orchestrated By
//    case orchestratedBy = "Orchestrated By"
//    /// Orchestration
//    case orchestration = "Orchestration"
//    /// Orchestration Reconstruction
//    case orchestrationReconstruction = "Orchestration Reconstruction"
//    /// Orchestrator
//    case orchestrator = "Orchestrator"
//    /// Orchestra Transcription
//    case orchestraTranscription = "Orchestra Transcription"
//    /// Organ Arrangement
//    case organArrangement = "Organ Arrangement"
//    /// Organ Assistant
//    case organAssistant = "Organ Assistant"
//    /// Organ Curator
//    case organCurator = "Organ Curator"
//    /// Organ Design
//    case organDesign = "Organ Design"
//    /// Organic Advisor
//    case organicAdvisor = "Organic Advisor"
//    /// Organic Director
//    case organicDirector = "Organic Director"
//    /// Organizer
//    case organizer = "Organizer"
//    /// Organ Maintenance
//    case organMaintenance = "Organ Maintenance"
//    /// Organ Maker
//    case organMaker = "Organ Maker"
//    /// Organ Preparation
//    case organPreparation = "Organ Preparation"
//    /// Organ Scholar
//    case organScholar = "Organ Scholar"
//    /// Organ Technician
//    case organTechnician = "Organ Technician"
//    /// Original Album Producer
//    case originalAlbumProducer = "Original Album Producer"
//    /// Original Concept
//    case originalConcept = "Original Concept"
//    /// Original Cover Artwork
//    case originalCoverArtwork = "Original Cover Artwork"
//    /// Original Cover Photography
//    case originalCoverPhotography = "Original Cover Photography"
//    /// Original Design Concept
//    case originalDesignConcept = "Original Design Concept"
//    /// Original Editor
//    case originalEditor = "Original Editor"
//    /// Original Engineering
//    case originalEngineering = "Original Engineering"
//    /// Original Executive Producer
//    case originalExecutiveProducer = "Original Executive Producer"
//    /// Original Graphics
//    case originalGraphics = "Original Graphics"
//    /// Original Idea
//    case originalIdea = "Original Idea"
//    /// Original Illustration
//    case originalIllustration = "Original Illustration"
//    /// Original Image
//    case originalImage = "Original Image"
//    /// Original Liner Notes
//    case originalLinerNotes = "Original Liner Notes"
//    /// Original Lyrics
//    case originalLyrics = "Original Lyrics"
//    /// Original Mastering
//    case originalMastering = "Original Mastering"
//    /// Original Master Transfers
//    case originalMasterTransfers = "Original Master Transfers"
//    /// Original Material
//    case originalMaterial = "Original Material"
//    /// Original Mix
//    case originalMix = "Original Mix"
//    /// Original Orchestration
//    case originalOrchestration = "Original Orchestration"
//    /// Original Orchestrations
//    case originalOrchestrations = "Original Orchestrations"
//    /// Original Paintings
//    case originalPaintings = "Original Paintings"
//    /// Original Photography
//    case originalPhotography = "Original Photography"
//    /// Original Preparation
//    case originalPreparation = "Original Preparation"
//    /// Original Production Assistance
//    case originalProductionAssistance = "Original Production Assistance"
//    /// Original Recording Producer
//    case originalRecordingProducer = "Original Recording Producer"
//    /// Original Recordings
//    case originalRecordings = "Original Recordings"
//    /// Original Release
//    case originalRelease = "Original Release"
//    /// Original Score Producer
//    case originalScoreProducer = "Original Score Producer"
//    /// Original Session Producer
//    case originalSessionProducer = "Original Session Producer"
//    /// Original Session Supervision
//    case originalSessionSupervision = "Original Session Supervision"
//    /// Original Sleeve Design
//    case originalSleeveDesign = "Original Sleeve Design"
//    /// Original Sound Design
//    case originalSoundDesign = "Original Sound Design"
//    /// Original Transfers
//    case originalTransfers = "Original Transfers"
//    /// Os
//    case os = "Os"
//    /// Other
//    case other = "Other"
//    /// Overdub Arranger
//    case overdubArranger = "Overdub Arranger"
//    /// Overdub Assistant
//    case overdubAssistant = "Overdub Assistant"
//    /// Overdub Choir
//    case overdubChoir = "Overdub Choir"
//    /// Overdub Coordinator
//    case overdubCoordinator = "Overdub Coordinator"
//    /// Overdub Engineer
//    case overdubEngineer = "Overdub Engineer"
//    /// Overdub Producer
//    case overdubProducer = "Overdub Producer"
//    /// Overdub Vocal Coordinator
//    case overdubVocalCoordinator = "Overdub Vocal Coordinator"
//    /// Package Adaptation
//    case packageAdaptation = "Package Adaptation"
//    /// Package Art Direction
//    case packageArtDirection = "Package Art Direction"
//    /// Package Assembly
//    case packageAssembly = "Package Assembly"
//    /// Package Concept
//    case packageConcept = "Package Concept"
//    /// Package Coordinator
//    case packageCoordinator = "Package Coordinator"
//    /// Package Design
//    case packageDesign = "Package Design"
//    /// Package Development
//    case packageDevelopment = "Package Development"
//    /// Package Direction
//    case packageDirection = "Package Direction"
//    /// Package Layout
//    case packageLayout = "Package Layout"
//    /// Package Manager
//    case packageManager = "Package Manager"
//    /// Package Preparation
//    case packagePreparation = "Package Preparation"
//    /// Package Production
//    case packageProduction = "Package Production"
//    /// Package Production Coordinator
//    case packageProductionCoordinator = "Package Production Coordinator"
//    /// Package Redesign
//    case packageRedesign = "Package Redesign"
//    /// Package Remix
//    case packageRemix = "Package Remix"
//    /// Package Supervision
//    case packageSupervision = "Package Supervision"
//    /// Packaging
//    case packaging = "Packaging"
//    /// Packaging Manager
//    case packagingManager = "Packaging Manager"
//    /// Page Setup
//    case pageSetup = "Page Setup"
//    /// Page Setup Designer
//    case pageSetupDesigner = "Page Setup Designer"
//    /// Painting
//    case painting = "Painting"
//    /// Painting Concept
//    case paintingConcept = "Painting Concept"
//    /// Painting Photography
//    case paintingPhotography = "Painting Photography"
//    /// Paintings
//    case paintings = "Paintings"
//    /// Paper Cut Design
//    case paperCutDesign = "Paper Cut Design"
//    /// Pattern Design
//    case patternDesign = "Pattern Design"
//    /// PCM Operator
//    case pcmOperator = "PCM Operator"
//    /// Percussion Arrangement
//    case percussionArrangement = "Percussion Arrangement"
//    /// Percussion Assistant
//    case percussionAssistant = "Percussion Assistant"
//    /// Percussion Consultant
//    case percussionConsultant = "Percussion Consultant"
//    /// Percussion Engineer
//    case percussionEngineer = "Percussion Engineer"
//    /// Percussion Ensemble Director
//    case percussionEnsembleDirector = "Percussion Ensemble Director"
//    /// Percussion Technician
//    case percussionTechnician = "Percussion Technician"
//    /// Performance Assistant
//    case performanceAssistant = "Performance Assistant"
//    /// Performance Supervisor
//    case performanceSupervisor = "Performance Supervisor"
//    /// Personal Assistant
//    case personalAssistant = "Personal Assistant"
//    /// Personal Direction
//    case personalDirection = "Personal Direction"
//    /// Personal Manager
//    case personalManager = "Personal Manager"
//    /// Personnel
//    case personnel = "Personnel"
//    /// Personnel Manager
//    case personnelManager = "Personnel Manager"
//    /// Phasing
//    case phasing = "Phasing"
//    /// Phonographic Copyright
//    case phonographicCopyright = "Phonographic Copyright"
//    /// Photo Archivist
//    case photoArchivist = "Photo Archivist"
//    /// Photo Art
//    case photoArt = "Photo Art"
//    /// Photo Art Direction
//    case photoArtDirection = "Photo Art Direction"
//    /// Photo Assistance
//    case photoAssistance = "Photo Assistance"
//    /// Photo Booklet
//    case photoBooklet = "Photo Booklet"
//    /// Photo Coloring
//    case photoColoring = "Photo Coloring"
//    /// Photo Composites
//    case photoComposites = "Photo Composites"
//    /// Photo Concept
//    case photoConcept = "Photo Concept"
//    /// Photo Consultant
//    case photoConsultant = "Photo Consultant"
//    /// Photo Coordination
//    case photoCoordination = "Photo Coordination"
//    /// Photo Courtesy
//    case photoCourtesy = "Photo Courtesy"
//    /// Photo Design
//    case photoDesign = "Photo Design"
//    /// Photo Editing
//    case photoEditing = "Photo Editing"
//    /// Photo Effects
//    case photoEffects = "Photo Effects"
//    /// Photo Elements
//    case photoElements = "Photo Elements"
//    /// Photo Enhancement
//    case photoEnhancement = "Photo Enhancement"
//    /// Photogram
//    case photogram = "Photogram"
//    /// Photographic Reproduction
//    case photographicReproduction = "Photographic Reproduction"
//    /// Photography
//    case photography = "Photography"
//    /// Photography By
//    case photographyBy = "Photography By"
//    /// Photography Director
//    case photographyDirector = "Photography Director"
//    /// Photo Illustration
//    case photoIllustration = "Photo Illustration"
//    /// Photo Imaging
//    case photoImaging = "Photo Imaging"
//    /// Photo Manipulation
//    case photoManipulation = "Photo Manipulation"
//    /// Photo Montage
//    case photoMontage = "Photo Montage"
//    /// Photo Printing
//    case photoPrinting = "Photo Printing"
//    /// Photo Production
//    case photoProduction = "Photo Production"
//    /// Photo Remix
//    case photoRemix = "Photo Remix"
//    /// Photo Research
//    case photoResearch = "Photo Research"
//    /// Photo Restoration
//    case photoRestoration = "Photo Restoration"
//    /// Photo Retouching
//    case photoRetouching = "Photo Retouching"
//    /// Photo Scanning
//    case photoScanning = "Photo Scanning"
//    /// Photo Selection
//    case photoSelection = "Photo Selection"
//    /// Photoshop Artist
//    case photoshopArtist = "Photoshop Artist"
//    /// Photo Stylist
//    case photoStylist = "Photo Stylist"
//    /// Photo Supervision
//    case photoSupervision = "Photo Supervision"
//    /// Photo Tinting
//    case photoTinting = "Photo Tinting"
//    /// Photo Treatment
//    case photoTreatment = "Photo Treatment"
//    /// Photo Typesetting
//    case photoTypesetting = "Photo Typesetting"
//    /// Piano Arrangement
//    case pianoArrangement = "Piano Arrangement"
//    /// Piano Assistance
//    case pianoAssistance = "Piano Assistance"
//    /// Piano Director
//    case pianoDirector = "Piano Director"
//    /// Piano Engineer
//    case pianoEngineer = "Piano Engineer"
//    /// Piano Preparation
//    case pianoPreparation = "Piano Preparation"
//    /// Piano Rolls
//    case pianoRolls = "Piano Rolls"
//    /// Piano Technician
//    case pianoTechnician = "Piano Technician"
//    /// Piano Transcription
//    case pianoTranscription = "Piano Transcription"
//    /// Piano Treatments
//    case pianoTreatments = "Piano Treatments"
//    /// Piano Tuner
//    case pianoTuner = "Piano Tuner"
//    /// Picture
//    case picture = "Picture"
//    /// Picture Design
//    case pictureDesign = "Picture Design"
//    /// Picture Editor
//    case pictureEditor = "Picture Editor"
//    /// Picture Research
//    case pictureResearch = "Picture Research"
//    /// Pitch Adjustment
//    case pitchAdjustment = "Pitch Adjustment"
//    /// Player Piano Tuning
//    case playerPianoTuning = "Player Piano Tuning"
//    /// Playwright
//    case playwright = "Playwright"
//    /// Plot Synopsis
//    case plotSynopsis = "Plot Synopsis"
//    /// Poetic Adaptation
//    case poeticAdaptation = "Poetic Adaptation"
//    /// Poetry
//    case poetry = "Poetry"
//    /// Poetry Translation
//    case poetryTranslation = "Poetry Translation"
//    /// Portrait Illustrations
//    case portraitIllustrations = "Portrait Illustrations"
//    /// Portrait Photography
//    case portraitPhotography = "Portrait Photography"
//    /// Portraits
//    case portraits = "Portraits"
//    /// Post Digital Editing
//    case postDigitalEditing = "Post Digital Editing"
//    /// Post Digital Production
//    case postDigitalProduction = "Post Digital Production"
//    /// Post Editing
//    case postEditing = "Post Editing"
//    /// Poster Design
//    case posterDesign = "Poster Design"
//    /// Poster Illustration
//    case posterIllustration = "Poster Illustration"
//    /// Post Mastering
//    case postMastering = "Post Mastering"
//    /// Post Mix Editor
//    case postMixEditor = "Post Mix Editor"
//    /// Post Mix Engineer
//    case postMixEngineer = "Post Mix Engineer"
//    /// Post Processing
//    case postProcessing = "Post Processing"
//    /// Post Producer
//    case postProducer = "Post Producer"
//    /// Post Production
//    case postProduction = "Post Production"
//    /// Post Production Arranger
//    case postProductionArranger = "Post Production Arranger"
//    /// Post Production Assistant
//    case postProductionAssistant = "Post Production Assistant"
//    /// Post Production Coordinator
//    case postProductionCoordinator = "Post Production Coordinator"
//    /// Post Production Director
//    case postProductionDirector = "Post Production Director"
//    /// Post Production Editor
//    case postProductionEditor = "Post Production Editor"
//    /// Post Production Engineer
//    case postProductionEngineer = "Post Production Engineer"
//    /// Post-Production Mastering
//    case postProductionMastering = "Post-Production Mastering"
//    /// Post Production Mix
//    case postProductionMix = "Post Production Mix"
//    /// Post Production on Reissue
//    case postProductiononReissue = "Post Production on Reissue"
//    /// Post Production Supervisor
//    case postProductionSupervisor = "Post Production Supervisor"
//    /// Post Session Producer
//    case postSessionProducer = "Post Session Producer"
//    /// Powerbook
//    case powerbook = "Powerbook"
//    /// Power Tools
//    case powerTools = "Power Tools"
//    /// Pre-Assembly
//    case preAssembly = "Pre-Assembly"
//    /// Pre-Digital Editing
//    case preDigitalEditing = "Pre-Digital Editing"
//    /// Pre-Editing
//    case preEditing = "Pre-Editing"
//    /// Pre-Engineering
//    case preEngineering = "Pre-Engineering"
//    /// Preliminary Remastering
//    case preliminaryRemastering = "Preliminary Remastering"
//    /// Pre-Location Coordinator
//    case preLocationCoordinator = "Pre-Location Coordinator"
//    /// Pre-Mastering
//    case preMastering = "Pre-Mastering"
//    /// Pre-Mastering Assistant
//    case preMasteringAssistant = "Pre-Mastering Assistant"
//    /// Pre-Mastering Editor
//    case preMasteringEditor = "Pre-Mastering Editor"
//    /// Pre-Mastering Engineer
//    case preMasteringEngineer = "Pre-Mastering Engineer"
//    /// Pre-Mixing
//    case preMixing = "Pre-Mixing"
//    /// Preparation
//    case preparation = "Preparation"
//    /// Preparation Engineer
//    case preparationEngineer = "Preparation Engineer"
//    /// Preparation for CD Mastering
//    case preparationforCDMastering = "Preparation for CD Mastering"
//    /// Preparation for CD Release
//    case preparationforCDRelease = "Preparation for CD Release"
//    /// Preparation for Reissue
//    case preparationforReissue = "Preparation for Reissue"
//    /// Preparation for Release
//    case preparationforRelease = "Preparation for Release"
//    /// Preparation of Orchestra
//    case preparationofOrchestra = "Preparation of Orchestra"
//    /// Preparation of Tapes
//    case preparationofTapes = "Preparation of Tapes"
//    /// Pre-Press Layout
//    case prePressLayout = "Pre-Press Layout"
//    /// Pre-Production
//    case preProduction = "Pre-Production"
//    /// Pre-production Arranger
//    case preproductionArranger = "Pre-production Arranger"
//    /// Pre-Production Assistant
//    case preProductionAssistant = "Pre-Production Assistant"
//    /// Pre-Production Consultant
//    case preProductionConsultant = "Pre-Production Consultant"
//    /// Pre-Production Coordinator
//    case preProductionCoordinator = "Pre-Production Coordinator"
//    /// Pre-Production Digital Mastering
//    case preProductionDigitalMastering = "Pre-Production Digital Mastering"
//    /// Pre-Production Director
//    case preProductionDirector = "Pre-Production Director"
//    /// Pre-Production Engineer
//    case preProductionEngineer = "Pre-Production Engineer"
//    /// Pre-Production Programming
//    case preProductionProgramming = "Pre-Production Programming"
//    /// Pre-Programming
//    case preProgramming = "Pre-Programming"
//    /// Pre-Remastering
//    case preRemastering = "Pre-Remastering"
//    /// Presentation
//    case presentation = "Presentation"
//    /// Presenter
//    case presenter = "Presenter"
//    /// Previous Attribution
//    case previousAttribution = "Previous Attribution"
//    /// Prima
//    case prima = "Prima"
//    /// Primary Artist
//    case primaryArtist = "Primary Artist"
//    /// Principal
//    case principal = "Principal"
//    /// Print Coordination
//    case printCoordination = "Print Coordination"
//    /// Print Design
//    case printDesign = "Print Design"
//    /// Printer
//    case printer = "Printer"
//    /// Printing Engineer
//    case printingEngineer = "Printing Engineer"
//    /// Print Preparation
//    case printPreparation = "Print Preparation"
//    /// Print Production
//    case printProduction = "Print Production"
//    /// Prints
//    case prints = "Prints"
//    /// Processed Tape
//    case processedTape = "Processed Tape"
//    /// Process Engineering
//    case processEngineering = "Process Engineering"
//    /// Processing
//    case processing = "Processing"
//    /// Processing Assistant
//    case processingAssistant = "Processing Assistant"
//    /// Producer
//    case producer = "Producer"
//    /// Product Development
//    case productDevelopment = "Product Development"
//    /// Product Development Director
//    case productDevelopmentDirector = "Product Development Director"
//    /// Production Accountant
//    case productionAccountant = "Production Accountant"
//    /// Production Administrator
//    case productionAdministrator = "Production Administrator"
//    /// Production Advisor
//    case productionAdvisor = "Production Advisor"
//    /// Production Arrangement
//    case productionArrangement = "Production Arrangement"
//    /// Production Art
//    case productionArt = "Production Art"
//    /// Production Assistant
//    case productionAssistant = "Production Assistant"
//    /// Production Chief
//    case productionChief = "Production Chief"
//    /// Production Collaborator
//    case productionCollaborator = "Production Collaborator"
//    /// Production Compilation
//    case productionCompilation = "Production Compilation"
//    /// Production Composer
//    case productionComposer = "Production Composer"
//    /// Production Concept
//    case productionConcept = "Production Concept"
//    /// Production Consultant
//    case productionConsultant = "Production Consultant"
//    /// Production Control
//    case productionControl = "Production Control"
//    /// Production Coordination
//    case productionCoordination = "Production Coordination"
//    /// Production Coordination Assistant
//    case productionCoordinationAssistant = "Production Coordination Assistant"
//    /// Production Crew
//    case productionCrew = "Production Crew"
//    /// Production Delegate
//    case productionDelegate = "Production Delegate"
//    /// Production Design
//    case productionDesign = "Production Design"
//    /// Production Director
//    case productionDirector = "Production Director"
//    /// Production Director Assistant
//    case productionDirectorAssistant = "Production Director Assistant"
//    /// Production Editing
//    case productionEditing = "Production Editing"
//    /// Production Engineer
//    case productionEngineer = "Production Engineer"
//    /// Production Executive
//    case productionExecutive = "Production Executive"
//    /// Production Facilitator
//    case productionFacilitator = "Production Facilitator"
//    /// Production Guidance
//    case productionGuidance = "Production Guidance"
//    /// Production Input
//    case productionInput = "Production Input"
//    /// Production Intern
//    case productionIntern = "Production Intern"
//    /// Production Liason
//    case productionLiason = "Production Liason"
//    /// Production Manager
//    case productionManager = "Production Manager"
//    /// Production Mastering
//    case productionMastering = "Production Mastering"
//    /// Production Master Preparation
//    case productionMasterPreparation = "Production Master Preparation"
//    /// Production Mixing Assistant
//    case productionMixingAssistant = "Production Mixing Assistant"
//    /// Production Notes
//    case productionNotes = "Production Notes"
//    /// Production Organization
//    case productionOrganization = "Production Organization"
//    /// Production Overseer
//    case productionOverseer = "Production Overseer"
//    /// Production Photography
//    case productionPhotography = "Production Photography"
//    /// Production Plan
//    case productionPlan = "Production Plan"
//    /// Production Preparation
//    case productionPreparation = "Production Preparation"
//    /// Production Recording
//    case productionRecording = "Production Recording"
//    /// Production Reissue Coordinator
//    case productionReissueCoordinator = "Production Reissue Coordinator"
//    /// Production Remix
//    case productionRemix = "Production Remix"
//    /// Production Research Assistant
//    case productionResearchAssistant = "Production Research Assistant"
//    /// Production Secretary
//    case productionSecretary = "Production Secretary"
//    /// Production Service
//    case productionService = "Production Service"
//    /// Production Stage Manager
//    case productionStageManager = "Production Stage Manager"
//    /// Production Supervisor
//    case productionSupervisor = "Production Supervisor"
//    /// Production Support
//    case productionSupport = "Production Support"
//    /// Production Technician
//    case productionTechnician = "Production Technician"
//    /// Product Manager
//    case productManager = "Product Manager"
//    /// Program
//    case program = "Program"
//    /// Program Advisor
//    case programAdvisor = "Program Advisor"
//    /// Program Annotator
//    case programAnnotator = "Program Annotator"
//    /// Program Arranger
//    case programArranger = "Program Arranger"
//    /// Program Assistant
//    case programAssistant = "Program Assistant"
//    /// Program Book Design
//    case programBookDesign = "Program Book Design"
//    /// Program Collaboration
//    case programCollaboration = "Program Collaboration"
//    /// Program Consultant
//    case programConsultant = "Program Consultant"
//    /// Program Coordinator
//    case programCoordinator = "Program Coordinator"
//    /// Program Design
//    case programDesign = "Program Design"
//    /// Program Director
//    case programDirector = "Program Director"
//    /// Program Engineer
//    case programEngineer = "Program Engineer"
//    /// Programmed By
//    case programmedBy = "Programmed By"
//    /// Programmer
//    case programmer = "Programmer"
//    /// Programming
//    case programming = "Programming"
//    /// Programming Editor
//    case programmingEditor = "Programming Editor"
//    /// Programming Engineer
//    case programmingEngineer = "Programming Engineer"
//    /// Program Notes
//    case programNotes = "Program Notes"
//    /// Program Producer
//    case programProducer = "Program Producer"
//    /// Program Research
//    case programResearch = "Program Research"
//    /// Program Selection
//    case programSelection = "Program Selection"
//    /// Program Sequencer
//    case programSequencer = "Program Sequencer"
//    /// Project Accounting
//    case projectAccounting = "Project Accounting"
//    /// Project Administrator
//    case projectAdministrator = "Project Administrator"
//    /// Project Assembly
//    case projectAssembly = "Project Assembly"
//    /// Project Assistant
//    case projectAssistant = "Project Assistant"
//    /// Project Compiler
//    case projectCompiler = "Project Compiler"
//    /// Project Concept
//    case projectConcept = "Project Concept"
//    /// Project Consultant
//    case projectConsultant = "Project Consultant"
//    /// Project Controller
//    case projectController = "Project Controller"
//    /// Project Coordinator
//    case projectCoordinator = "Project Coordinator"
//    /// Project Design
//    case projectDesign = "Project Design"
//    /// Project Development
//    case projectDevelopment = "Project Development"
//    /// Project Director
//    case projectDirector = "Project Director"
//    /// Project Editor
//    case projectEditor = "Project Editor"
//    /// Project Executive
//    case projectExecutive = "Project Executive"
//    /// Project Graphics
//    case projectGraphics = "Project Graphics"
//    /// Project Initiator
//    case projectInitiator = "Project Initiator"
//    /// Project Interpreter
//    case projectInterpreter = "Project Interpreter"
//    /// Projection
//    case projection = "Projection"
//    /// Project Manager
//    case projectManager = "Project Manager"
//    /// Project Organizer
//    case projectOrganizer = "Project Organizer"
//    /// Projector Technology Engineer
//    case projectorTechnologyEngineer = "Projector Technology Engineer"
//    /// Project Producer
//    case projectProducer = "Project Producer"
//    /// Project Staff
//    case projectStaff = "Project Staff"
//    /// Project Supervisor
//    case projectSupervisor = "Project Supervisor"
//    /// Project Support
//    case projectSupport = "Project Support"
//    /// Promoter
//    case promoter = "Promoter"
//    /// Promotional Director
//    case promotionalDirector = "Promotional Director"
//    /// Promotions Coordinator
//    case promotionsCoordinator = "Promotions Coordinator"
//    /// Promotions Director
//    case promotionsDirector = "Promotions Director"
//    /// Prompter
//    case prompter = "Prompter"
//    /// Proof Reading
//    case proofReading = "Proof Reading"
//    /// Prop Design
//    case propDesign = "Prop Design"
//    /// Property Master
//    case propertyMaster = "Property Master"
//    /// Prop Stylist
//    case propStylist = "Prop Stylist"
//    /// Pro-Tools
//    case proTools = "Pro-Tools"
//    /// Publication Editing
//    case publicationEditing = "Publication Editing"
//    /// Publicity
//    case publicity = "Publicity"
//    /// Public Relations
//    case publicRelations = "Public Relations"
//    /// Publisher
//    case publisher = "Publisher"
//    /// Publishing
//    case publishing = "Publishing"
//    /// Publishing Coordinator
//    case publishingCoordinator = "Publishing Coordinator"
//    /// Pyrotechnics
//    case pyrotechnics = "Pyrotechnics"
//    /// Quadraphonic Remix Engineer
//    case quadraphonicRemixEngineer = "Quadraphonic Remix Engineer"
//    /// Quadrophonics
//    case quadrophonics = "Quadrophonics"
//    /// Quality Control
//    case qualityControl = "Quality Control"
//    /// Quotation Author
//    case quotationAuthor = "Quotation Author"
//    /// Quotes Researched & Compiled
//    case quotesResearchedandCompiled = "Quotes Researched & Compiled"
//    /// Radio Consultant
//    case radioConsultant = "Radio Consultant"
//    /// Radio Dial Tuning
//    case radioDialTuning = "Radio Dial Tuning"
//    /// Radio Engineer
//    case radioEngineer = "Radio Engineer"
//    /// Radio Producer
//    case radioProducer = "Radio Producer"
//    /// Radio Sound Effects
//    case radioSoundEffects = "Radio Sound Effects"
//    /// Rap Lyric Adaptation
//    case rapLyricAdaptation = "Rap Lyric Adaptation"
//    /// Read By
//    case readBy = "Read By"
//    /// Realization
//    case realization = "Realization"
//    /// Re-Arranged
//    case reArranged = "Re-Arranged"
//    /// Re-Assembly
//    case reAssembly = "Re-Assembly"
//    /// Re-Calibration
//    case reCalibration = "Re-Calibration"
//    /// Recall Engineer
//    case recallEngineer = "Recall Engineer"
//    /// Recitation
//    case recitation = "Recitation"
//    /// Recompilation
//    case recompilation = "Recompilation"
//    /// Reconstruction
//    case reconstruction = "Reconstruction"
//    /// Recorded By
//    case recordedBy = "Recorded By"
//    /// Recorder Arrangement
//    case recorderArrangement = "Recorder Arrangement"
//    /// Recording
//    case recording = "Recording"
//    /// Recording Arranger
//    case recordingArranger = "Recording Arranger"
//    /// Recording Assistant
//    case recordingAssistant = "Recording Assistant"
//    /// Recording Concept
//    case recordingConcept = "Recording Concept"
//    /// Recording Conductor
//    case recordingConductor = "Recording Conductor"
//    /// Recording Contractor
//    case recordingContractor = "Recording Contractor"
//    /// Recording Coordinator
//    case recordingCoordinator = "Recording Coordinator"
//    /// Recording Crew
//    case recordingCrew = "Recording Crew"
//    /// Recording Director
//    case recordingDirector = "Recording Director"
//    /// Recording Editor
//    case recordingEditor = "Recording Editor"
//    /// Recording Engineer
//    case recordingEngineer = "Recording Engineer"
//    /// Recording Equipment
//    case recordingEquipment = "Recording Equipment"
//    /// Recording Liason
//    case recordingLiason = "Recording Liason"
//    /// Recording Manager
//    case recordingManager = "Recording Manager"
//    /// Recording Preparation
//    case recordingPreparation = "Recording Preparation"
//    /// Recording Producer
//    case recordingProducer = "Recording Producer"
//    /// Recording Production Manager
//    case recordingProductionManager = "Recording Production Manager"
//    /// Recording Supervision
//    case recordingSupervision = "Recording Supervision"
//    /// Recording Supervisor
//    case recordingSupervisor = "Recording Supervisor"
//    /// Recording Technician
//    case recordingTechnician = "Recording Technician"
//    /// Records
//    case records = "Records"
//    /// Recreation
//    case recreation = "Recreation"
//    /// Redaction
//    case redaction = "Redaction"
//    /// Redesign
//    case redesign = "Redesign"
//    /// Re-Editing
//    case reEditing = "Re-Editing"
//    /// Re-Engineer
//    case reEngineer = "Re-Engineer"
//    /// Re-Equalizer
//    case reEqualizer = "Re-Equalizer"
//    /// References
//    case references = "References"
//    /// Reformatting
//    case reformatting = "Reformatting"
//    /// Regal Tip
//    case regalTip = "Regal Tip"
//    /// Regie Generale
//    case regieGenerale = "Regie Generale"
//    /// Registrant
//    case registrant = "Registrant"
//    /// Registration Assistant
//    case registrationAssistant = "Registration Assistant"
//    /// Rehearsal Accompanist
//    case rehearsalAccompanist = "Rehearsal Accompanist"
//    /// Rehearsal Assistant
//    case rehearsalAssistant = "Rehearsal Assistant"
//    /// Rehearsal Coach
//    case rehearsalCoach = "Rehearsal Coach"
//    /// Rehearsal Director
//    case rehearsalDirector = "Rehearsal Director"
//    /// Reissue
//    case reissue = "Reissue"
//    /// Reissue Art
//    case reissueArt = "Reissue Art"
//    /// Reissue Art Director
//    case reissueArtDirector = "Reissue Art Director"
//    /// Reissue Assistant
//    case reissueAssistant = "Reissue Assistant"
//    /// Reissue Assistant Engineer
//    case reissueAssistantEngineer = "Reissue Assistant Engineer"
//    /// Reissue Assistant Producer
//    case reissueAssistantProducer = "Reissue Assistant Producer"
//    /// Reissue Compilation
//    case reissueCompilation = "Reissue Compilation"
//    /// Reissue Compiler
//    case reissueCompiler = "Reissue Compiler"
//    /// Reissue Concept
//    case reissueConcept = "Reissue Concept"
//    /// Reissue Consultant
//    case reissueConsultant = "Reissue Consultant"
//    /// Reissue Coordination
//    case reissueCoordination = "Reissue Coordination"
//    /// Reissue Coordinator
//    case reissueCoordinator = "Reissue Coordinator"
//    /// Reissue Design
//    case reissueDesign = "Reissue Design"
//    /// Reissue Design Coordinator
//    case reissueDesignCoordinator = "Reissue Design Coordinator"
//    /// Reissue Digital Remastering
//    case reissueDigitalRemastering = "Reissue Digital Remastering"
//    /// Reissue Director
//    case reissueDirector = "Reissue Director"
//    /// Reissue Editor
//    case reissueEditor = "Reissue Editor"
//    /// Reissue Engineer
//    case reissueEngineer = "Reissue Engineer"
//    /// Reissue Executive Producer
//    case reissueExecutiveProducer = "Reissue Executive Producer"
//    /// Reissue Graphics
//    case reissueGraphics = "Reissue Graphics"
//    /// Reissue Inspiration
//    case reissueInspiration = "Reissue Inspiration"
//    /// Reissue Layout
//    case reissueLayout = "Reissue Layout"
//    /// Reissue Liner Notes
//    case reissueLinerNotes = "Reissue Liner Notes"
//    /// Reissue Mastering
//    case reissueMastering = "Reissue Mastering"
//    /// Reissue Mastering Supervision
//    case reissueMasteringSupervision = "Reissue Mastering Supervision"
//    /// Reissue Mixing
//    case reissueMixing = "Reissue Mixing"
//    /// Reissue Mixing Engineer
//    case reissueMixingEngineer = "Reissue Mixing Engineer"
//    /// Reissue Notes Editor
//    case reissueNotesEditor = "Reissue Notes Editor"
//    /// Reissue Package
//    case reissuePackage = "Reissue Package"
//    /// Reissue Package Coordinator
//    case reissuePackageCoordinator = "Reissue Package Coordinator"
//    /// Reissue Package Design
//    case reissuePackageDesign = "Reissue Package Design"
//    /// Reissue Photography
//    case reissuePhotography = "Reissue Photography"
//    /// Reissue Photo Research
//    case reissuePhotoResearch = "Reissue Photo Research"
//    /// Reissue Post Production
//    case reissuePostProduction = "Reissue Post Production"
//    /// Reissue Preparation
//    case reissuePreparation = "Reissue Preparation"
//    /// Reissue Producer
//    case reissueProducer = "Reissue Producer"
//    /// Reissue Production Assistance
//    case reissueProductionAssistance = "Reissue Production Assistance"
//    /// Reissue Production Coordination
//    case reissueProductionCoordination = "Reissue Production Coordination"
//    /// Reissue Production Supervisor
//    case reissueProductionSupervisor = "Reissue Production Supervisor"
//    /// Reissue Project Coordination Assistant
//    case reissueProjectCoordinationAssistant = "Reissue Project Coordination Assistant"
//    /// Reissue Remastering
//    case reissueRemastering = "Reissue Remastering"
//    /// Reissue Remixing
//    case reissueRemixing = "Reissue Remixing"
//    /// Reissue Research
//    case reissueResearch = "Reissue Research"
//    /// Reissue Restoration
//    case reissueRestoration = "Reissue Restoration"
//    /// Reissue Selection
//    case reissueSelection = "Reissue Selection"
//    /// Reissue Sequencing
//    case reissueSequencing = "Reissue Sequencing"
//    /// Reissue Series
//    case reissueSeries = "Reissue Series"
//    /// Reissue Sound Supervisor
//    case reissueSoundSupervisor = "Reissue Sound Supervisor"
//    /// Reissue Supervision Assistant
//    case reissueSupervisionAssistant = "Reissue Supervision Assistant"
//    /// Reissue Supervisor
//    case reissueSupervisor = "Reissue Supervisor"
//    /// Release Assistant
//    case releaseAssistant = "Release Assistant"
//    /// Release Coordinator
//    case releaseCoordinator = "Release Coordinator"
//    /// Release Engineer
//    case releaseEngineer = "Release Engineer"
//    /// Release Preparation
//    case releasePreparation = "Release Preparation"
//    /// Release Production
//    case releaseProduction = "Release Production"
//    /// Release Supervisor
//    case releaseSupervisor = "Release Supervisor"
//    /// Remastered By
//    case remasteredBy = "Remastered By"
//    /// Remastering
//    case remastering = "Remastering"
//    /// Remastering Art Direction
//    case remasteringArtDirection = "Remastering Art Direction"
//    /// Remastering Assistant
//    case remasteringAssistant = "Remastering Assistant"
//    /// Remastering Audio Restoration
//    case remasteringAudioRestoration = "Remastering Audio Restoration"
//    /// Remastering Consultant
//    case remasteringConsultant = "Remastering Consultant"
//    /// Remastering Coordination
//    case remasteringCoordination = "Remastering Coordination"
//    /// Remastering Engineer
//    case remasteringEngineer = "Remastering Engineer"
//    /// Remastering Executive
//    case remasteringExecutive = "Remastering Executive"
//    /// Remastering Graphics
//    case remasteringGraphics = "Remastering Graphics"
//    /// Remastering Producer
//    case remasteringProducer = "Remastering Producer"
//    /// Remastering Supervisor
//    case remasteringSupervisor = "Remastering Supervisor"
//    /// Remix
//    case remix = "Remix"
//    /// Remix Arrangement
//    case remixArrangement = "Remix Arrangement"
//    /// Remix Assistant
//    case remixAssistant = "Remix Assistant"
//    /// Remix Consultant
//    case remixConsultant = "Remix Consultant"
//    /// Remix Coordinator
//    case remixCoordinator = "Remix Coordinator"
//    /// Remix Direction
//    case remixDirection = "Remix Direction"
//    /// Remix Editing Engineer
//    case remixEditingEngineer = "Remix Editing Engineer"
//    /// Remix Engineer
//    case remixEngineer = "Remix Engineer"
//    /// Remixer
//    case remixer = "Remixer"
//    /// Remix From Original Tapes
//    case remixFromOriginalTapes = "Remix From Original Tapes"
//    /// Remixing
//    case remixing = "Remixing"
//    /// Remix Overdubs
//    case remixOverdubs = "Remix Overdubs"
//    /// Remix Producer
//    case remixProducer = "Remix Producer"
//    /// Remix Production Coordinator
//    case remixProductionCoordinator = "Remix Production Coordinator"
//    /// Remix Programmer
//    case remixProgrammer = "Remix Programmer"
//    /// Remix Supervision
//    case remixSupervision = "Remix Supervision"
//    /// Remix Vocals Arranger
//    case remixVocalsArranger = "Remix Vocals Arranger"
//    /// Remote Audio Supervisor
//    case remoteAudioSupervisor = "Remote Audio Supervisor"
//    /// Remote Control
//    case remoteControl = "Remote Control"
//    /// Remote Engineering
//    case remoteEngineering = "Remote Engineering"
//    /// Remote Recording
//    case remoteRecording = "Remote Recording"
//    /// Remote Recording Coordinator
//    case remoteRecordingCoordinator = "Remote Recording Coordinator"
//    /// Remote Recording Crew
//    case remoteRecordingCrew = "Remote Recording Crew"
//    /// Remote Recording Engineer
//    case remoteRecordingEngineer = "Remote Recording Engineer"
//    /// Remote Recording Producer
//    case remoteRecordingProducer = "Remote Recording Producer"
//    /// Remote Recording Staff
//    case remoteRecordingStaff = "Remote Recording Staff"
//    /// Remote Supervisor
//    case remoteSupervisor = "Remote Supervisor"
//    /// Remote Technician
//    case remoteTechnician = "Remote Technician"
//    /// Rendering
//    case rendering = "Rendering"
//    /// Re-Orchestration
//    case reOrchestration = "Re-Orchestration"
//    /// Repackaging
//    case repackaging = "Repackaging"
//    /// Repackaging Art Direction
//    case repackagingArtDirection = "Repackaging Art Direction"
//    /// Re-Packaging Concept
//    case rePackagingConcept = "Re-Packaging Concept"
//    /// Repackaging Design
//    case repackagingDesign = "Repackaging Design"
//    /// Repackaging Supervison
//    case repackagingSupervison = "Repackaging Supervison"
//    /// Repair
//    case repair = "Repair"
//    /// Repeat Series Coordinator
//    case repeatSeriesCoordinator = "Repeat Series Coordinator"
//    /// Repenique
//    case repenique = "Repenique"
//    /// Repertoire
//    case repertoire = "Repertoire"
//    /// Repertoire Consultant
//    case repertoireConsultant = "Repertoire Consultant"
//    /// Repertoire Coordinator
//    case repertoireCoordinator = "Repertoire Coordinator"
//    /// Repertoire Production
//    case repertoireProduction = "Repertoire Production"
//    /// Repertoire Selection
//    case repertoireSelection = "Repertoire Selection"
//    /// Repetiteur
//    case repetiteur = "Repetiteur"
//    /// Representation
//    case representation = "Representation"
//    /// Reprocessing
//    case reprocessing = "Reprocessing"
//    /// Re-Produced
//    case reProduced = "Re-Produced"
//    /// Reproduction
//    case reproduction = "Reproduction"
//    /// Re-Programmed
//    case reProgrammed = "Re-Programmed"
//    /// Reprogramming
//    case reprogramming = "Reprogramming"
//    /// Reque
//    case reque = "Reque"
//    /// Re-Recording
//    case reRecording = "Re-Recording"
//    /// Re-Recording Engineer
//    case reRecordingEngineer = "Re-Recording Engineer"
//    /// Re-Recording Mixer
//    case reRecordingMixer = "Re-Recording Mixer"
//    /// Re-Recording Supervisor
//    case reRecordingSupervisor = "Re-Recording Supervisor"
//    /// Re-Release Art Director
//    case reReleaseArtDirector = "Re-Release Art Director"
//    /// Re-Release Coordinator
//    case reReleaseCoordinator = "Re-Release Coordinator"
//    /// Re-Release Design
//    case reReleaseDesign = "Re-Release Design"
//    /// Re-Release Producer
//    case reReleaseProducer = "Re-Release Producer"
//    /// Research
//    case research = "Research"
//    /// Research Assistant
//    case researchAssistant = "Research Assistant"
//    /// Research Consultant
//    case researchConsultant = "Research Consultant"
//    /// Research Coordination
//    case researchCoordination = "Research Coordination"
//    /// Research Direction
//    case researchDirection = "Research Direction"
//    /// Research Supervisor
//    case researchSupervisor = "Research Supervisor"
//    /// Re-Sequencing
//    case reSequencing = "Re-Sequencing"
//    /// Restoration
//    case restoration = "Restoration"
//    /// Restoration Director
//    case restorationDirector = "Restoration Director"
//    /// Restoration Sound Engineer
//    case restorationSoundEngineer = "Restoration Sound Engineer"
//    /// Restoration Supervision
//    case restorationSupervision = "Restoration Supervision"
//    /// Restructuring
//    case restructuring = "Restructuring"
//    /// Retouching
//    case retouching = "Retouching"
//    /// Reverb
//    case reverb = "Reverb"
//    /// Revised By
//    case revisedBy = "Revised By"
//    /// Revised Notes
//    case revisedNotes = "Revised Notes"
//    /// Revision
//    case revision = "Revision"
//    /// Reworking
//    case reworking = "Reworking"
//    /// Rewriting
//    case rewriting = "Rewriting"
//    /// Rhythm Arrangements
//    case rhythmArrangements = "Rhythm Arrangements"
//    /// Rhythm Collage
//    case rhythmCollage = "Rhythm Collage"
//    /// Rhythm Consultant
//    case rhythmConsultant = "Rhythm Consultant"
//    /// Rhythm Coordination
//    case rhythmCoordination = "Rhythm Coordination"
//    /// Rhythm Design
//    case rhythmDesign = "Rhythm Design"
//    /// Rhythm Direction
//    case rhythmDirection = "Rhythm Direction"
//    /// Rhythm Engineer
//    case rhythmEngineer = "Rhythm Engineer"
//    /// Rhythmic Concept
//    case rhythmicConcept = "Rhythmic Concept"
//    /// Rhythm King
//    case rhythmKing = "Rhythm King"
//    /// Rhythm Log
//    case rhythmLog = "Rhythm Log"
//    /// Rhythm Production
//    case rhythmProduction = "Rhythm Production"
//    /// Rhythm Programming
//    case rhythmProgramming = "Rhythm Programming"
//    /// Rhythm Sequencing
//    case rhythmSequencing = "Rhythm Sequencing"
//    /// Rhythm Track
//    case rhythmTrack = "Rhythm Track"
//    /// Rhythm Track Arrangement
//    case rhythmTrackArrangement = "Rhythm Track Arrangement"
//    /// Rhythm Track Engineer
//    case rhythmTrackEngineer = "Rhythm Track Engineer"
//    /// Ricerca Iconografica
//    case ricercaIconografica = "Ricerca Iconografica"
//    /// Road Crew
//    case roadCrew = "Road Crew"
//    /// Roadie
//    case roadie = "Roadie"
//    /// Road Manager
//    case roadManager = "Road Manager"
//    /// Sample Arrangements
//    case sampleArrangements = "Sample Arrangements"
//    /// Sample Clearance
//    case sampleClearance = "Sample Clearance"
//    /// Sample Editing
//    case sampleEditing = "Sample Editing"
//    /// Sample Engineering
//    case sampleEngineering = "Sample Engineering"
//    /// Sample Loops
//    case sampleLoops = "Sample Loops"
//    /// Sample Organization
//    case sampleOrganization = "Sample Organization"
//    /// Sample Preparation
//    case samplePreparation = "Sample Preparation"
//    /// Sample Programming
//    case sampleProgramming = "Sample Programming"
//    /// Samples from Artist
//    case samplesfromArtist = "Samples from Artist"
//    /// Sample Source
//    case sampleSource = "Sample Source"
//    /// Sampling Assistant
//    case samplingAssistant = "Sampling Assistant"
//    /// Sampling Engineer
//    case samplingEngineer = "Sampling Engineer"
//    /// Sax Consultant
//    case saxConsultant = "Sax Consultant"
//    /// Saxophone Arrangement
//    case saxophoneArrangement = "Saxophone Arrangement"
//    /// Saxophone Maintenance
//    case saxophoneMaintenance = "Saxophone Maintenance"
//    /// Sax Technician
//    case saxTechnician = "Sax Technician"
//    /// Scenery
//    case scenery = "Scenery"
//    /// Scenic Adaptation
//    case scenicAdaptation = "Scenic Adaptation"
//    /// Scenic Design
//    case scenicDesign = "Scenic Design"
//    /// Scheduling
//    case scheduling = "Scheduling"
//    /// Scientific Assistant
//    case scientificAssistant = "Scientific Assistant"
//    /// Score
//    case score = "Score"
//    /// Score Analysis
//    case scoreAnalysis = "Score Analysis"
//    /// Score Assistance
//    case scoreAssistance = "Score Assistance"
//    /// Score Consultant
//    case scoreConsultant = "Score Consultant"
//    /// Score Coordinator
//    case scoreCoordinator = "Score Coordinator"
//    /// Score Copyist
//    case scoreCopyist = "Score Copyist"
//    /// Score Editor
//    case scoreEditor = "Score Editor"
//    /// Score Mixer
//    case scoreMixer = "Score Mixer"
//    /// Score Orchestration
//    case scoreOrchestration = "Score Orchestration"
//    /// Score Preparation
//    case scorePreparation = "Score Preparation"
//    /// Score Producer
//    case scoreProducer = "Score Producer"
//    /// Score Production Coordinator
//    case scoreProductionCoordinator = "Score Production Coordinator"
//    /// Score Reader
//    case scoreReader = "Score Reader"
//    /// Score Reconstruction
//    case scoreReconstruction = "Score Reconstruction"
//    /// Score Remix
//    case scoreRemix = "Score Remix"
//    /// Score Restoration
//    case scoreRestoration = "Score Restoration"
//    /// Score Revision
//    case scoreRevision = "Score Revision"
//    /// Score Selections
//    case scoreSelections = "Score Selections"
//    /// Score Supervisor
//    case scoreSupervisor = "Score Supervisor"
//    /// Score Transcription
//    case scoreTranscription = "Score Transcription"
//    /// Score Wrangler
//    case scoreWrangler = "Score Wrangler"
//    /// Scoring Assistant
//    case scoringAssistant = "Scoring Assistant"
//    /// Scoring Consultant
//    case scoringConsultant = "Scoring Consultant"
//    /// Scoring Coordinator
//    case scoringCoordinator = "Scoring Coordinator"
//    /// Scoring Crew
//    case scoringCrew = "Scoring Crew"
//    /// Scoring Engineer
//    case scoringEngineer = "Scoring Engineer"
//    /// Scoring Mixer
//    case scoringMixer = "Scoring Mixer"
//    /// Scoring Recordist
//    case scoringRecordist = "Scoring Recordist"
//    /// Screen Design
//    case screenDesign = "Screen Design"
//    /// Screenplay
//    case screenplay = "Screenplay"
//    /// Screenprints
//    case screenprints = "Screenprints"
//    /// Screen Sound
//    case screenSound = "Screen Sound"
//    /// Screenwriters
//    case screenwriter = "Screenwriters"
//    /// Script
//    case script = "Script"
//    /// Script By
//    case scriptBy = "Script By"
//    /// Script Supervisor
//    case scriptSupervisor = "Script Supervisor"
//    /// Scriptwriter
//    case scriptwriter = "Scriptwriter"
//    /// Sculpture
//    case sculpture = "Sculpture"
//    /// Seccion De Cuerdas
//    case seccionDeCuerdas = "Seccion De Cuerdas"
//    /// Second Conductor
//    case secondConductor = "Second Conductor"
//    /// Second Engineer
//    case secondEngineer = "Second Engineer"
//    /// Second Unit Director
//    case secondUnitDirector = "Second Unit Director"
//    /// Secrétariat d'edition
//    case secrétariatdedition = "Secrétariat d'edition"
//    /// Section Leader
//    case sectionLeader = "Section Leader"
//    /// Selection
//    case selection = "Selection"
//    /// Selection Assistance
//    case selectionAssistance = "Selection Assistance"
//    /// Selection Compilation
//    case selectionCompilation = "Selection Compilation"
//    /// Senior Executive Producer
//    case seniorExecutiveProducer = "Senior Executive Producer"
//    /// Senior Producer
//    case seniorProducer = "Senior Producer"
//    /// Senior Vice President
//    case seniorVicePresident = "Senior Vice President"
//    /// Sequenced By
//    case sequencedBy = "Sequenced By"
//    /// Sequencing
//    case sequencing = "Sequencing"
//    /// Sequencing Arranger
//    case sequencingArranger = "Sequencing Arranger"
//    /// Sequencing Assistant
//    case sequencingAssistant = "Sequencing Assistant"
//    /// Sequencing Consultant
//    case sequencingConsultant = "Sequencing Consultant"
//    /// Sequencing Editor
//    case sequencingEditor = "Sequencing Editor"
//    /// Sequencing Percussion
//    case sequencingPercussion = "Sequencing Percussion"
//    /// Sequencing Programmer
//    case sequencingProgrammer = "Sequencing Programmer"
//    /// Sequential Circuits
//    case sequentialCircuits = "Sequential Circuits"
//    /// Series Art Design
//    case seriesArtDesign = "Series Art Design"
//    /// Series Compilation
//    case seriesCompilation = "Series Compilation"
//    /// Series Concept
//    case seriesConcept = "Series Concept"
//    /// Series Consultant
//    case seriesConsultant = "Series Consultant"
//    /// Series Coordinator
//    case seriesCoordinator = "Series Coordinator"
//    /// Series Design
//    case seriesDesign = "Series Design"
//    /// Series Director
//    case seriesDirector = "Series Director"
//    /// Series Editor
//    case seriesEditor = "Series Editor"
//    /// Series Executive Coordinator
//    case seriesExecutiveCoordinator = "Series Executive Coordinator"
//    /// Series Executive Producer
//    case seriesExecutiveProducer = "Series Executive Producer"
//    /// Series Manager
//    case seriesManager = "Series Manager"
//    /// Series Originator
//    case seriesOriginator = "Series Originator"
//    /// Series Producer
//    case seriesProducer = "Series Producer"
//    /// Series Programming
//    case seriesProgramming = "Series Programming"
//    /// Series Research
//    case seriesResearch = "Series Research"
//    /// Series Supervision
//    case seriesSupervision = "Series Supervision"
//    /// Serigraphs
//    case serigraphs = "Serigraphs"
//    /// Service Coordination
//    case serviceCoordination = "Service Coordination"
//    /// Service Leader
//    case serviceLeader = "Service Leader"
//    /// Session Assistant
//    case sessionAssistant = "Session Assistant"
//    /// Session Conductor
//    case sessionConductor = "Session Conductor"
//    /// Session Coordinator
//    case sessionCoordinator = "Session Coordinator"
//    /// Session Director
//    case sessionDirector = "Session Director"
//    /// Session Information
//    case sessionInformation = "Session Information"
//    /// Session Leader
//    case sessionLeader = "Session Leader"
//    /// Session Musician
//    case sessionMusician = "Session Musician"
//    /// Sessionography
//    case sessionography = "Sessionography"
//    /// Session Photographer
//    case sessionPhotographer = "Session Photographer"
//    /// Session Producer
//    case sessionProducer = "Session Producer"
//    /// Session Research
//    case sessionResearch = "Session Research"
//    /// Session Supervisor
//    case sessionSupervisor = "Session Supervisor"
//    /// Set Construction
//    case setConstruction = "Set Construction"
//    /// Set Decoration
//    case setDecoration = "Set Decoration"
//    /// Set Design
//    case setDesign = "Set Design"
//    /// Set Designer
//    case setDesigner = "Set Designer"
//    /// Set Production
//    case setProduction = "Set Production"
//    /// Set Stylist
//    case setStylist = "Set Stylist"
//    /// Settings
//    case settings = "Settings"
//    /// Setup
//    case setup = "Setup"
//    /// Setup Assistant
//    case setupAssistant = "Setup Assistant"
//    /// Setup Engineer
//    case setupEngineer = "Setup Engineer"
//    /// Sheet Music
//    case sheetMusic = "Sheet Music"
//    /// Shoot Coordinator
//    case shootCoordinator = "Shoot Coordinator"
//    /// Show Consultant
//    case showConsultant = "Show Consultant"
//    /// Show Director
//    case showDirector = "Show Director"
//    /// Signal Generator
//    case signalGenerator = "Signal Generator"
//    /// Signal Processing
//    case signalProcessing = "Signal Processing"
//    /// Sign Language Interpreter
//    case signLanguageInterpreter = "Sign Language Interpreter"
//    /// Sketches
//    case sketches = "Sketches"
//    /// Sketch Writer
//    case sketchWriter = "Sketch Writer"
//    /// Skit
//    case skit = "Skit"
//    /// Sleeve
//    case sleeve = "Sleeve"
//    /// Sleeve Adaptation
//    case sleeveAdaptation = "Sleeve Adaptation"
//    /// Sleeve Art
//    case sleeveArt = "Sleeve Art"
//    /// Sleeve Assistant
//    case sleeveAssistant = "Sleeve Assistant"
//    /// Sleeve Coordinator
//    case sleeveCoordinator = "Sleeve Coordinator"
//    /// Sleeve Design
//    case sleeveDesign = "Sleeve Design"
//    /// Sleeve Design Assistant
//    case sleeveDesignAssistant = "Sleeve Design Assistant"
//    /// Sleeve Director
//    case sleeveDirector = "Sleeve Director"
//    /// Sleeve Idea
//    case sleeveIdea = "Sleeve Idea"
//    /// Sleeve Illustration
//    case sleeveIllustration = "Sleeve Illustration"
//    /// Sleeve Notes
//    case sleeveNotes = "Sleeve Notes"
//    /// Sleeve Painting
//    case sleevePainting = "Sleeve Painting"
//    /// Sleeve Photo
//    case sleevePhoto = "Sleeve Photo"
//    /// Sleeve Producer
//    case sleeveProducer = "Sleeve Producer"
//    /// Sleeve Remix
//    case sleeveRemix = "Sleeve Remix"
//    /// Sleeve Restoration
//    case sleeveRestoration = "Sleeve Restoration"
//    /// Slides
//    case slides = "Slides"
//    /// Slipcover Concept
//    case slipcoverConcept = "Slipcover Concept"
//    /// Software
//    case software = "Software"
//    /// Software Programming
//    case softwareProgramming = "Software Programming"
//    /// Solo Coordinator
//    case soloCoordinator = "Solo Coordinator"
//    /// Song Adaptation
//    case songAdaptation = "Song Adaptation"
//    /// Song Annotations
//    case songAnnotations = "Song Annotations"
//    /// Song Assistants
//    case songAssistants = "Song Assistants"
//    /// Song Clearance
//    case songClearance = "Song Clearance"
//    /// Song Compilation
//    case songCompilation = "Song Compilation"
//    /// Song Contractor
//    case songContractor = "Song Contractor"
//    /// Song Credits
//    case songCredits = "Song Credits"
//    /// Song Descriptions
//    case songDescriptions = "Song Descriptions"
//    /// Song Leader
//    case songLeader = "Song Leader"
//    /// Song List Development
//    case songListDevelopment = "Song List Development"
//    /// Song Music
//    case songMusic = "Song Music"
//    /// Song Notes
//    case songNotes = "Song Notes"
//    /// Song Orchestration
//    case songOrchestration = "Song Orchestration"
//    /// Song Producer
//    case songProducer = "Song Producer"
//    /// Song Research
//    case songResearch = "Song Research"
//    /// Song Selection
//    case songSelection = "Song Selection"
//    /// Song Selection Assistance
//    case songSelectionAssistance = "Song Selection Assistance"
//    /// Song Stylist
//    case songStylist = "Song Stylist"
//    /// Song Text Editor
//    case songTextEditor = "Song Text Editor"
//    /// Song Titles
//    case songTitles = "Song Titles"
//    /// Song Transcriptions
//    case songTranscriptions = "Song Transcriptions"
//    /// Song Translation
//    case songTranslation = "Song Translation"
//    /// Songwriter
//    case songwriter = "Songwriter"
//    /// Sonic Architect
//    case sonicArchitect = "Sonic Architect"
//    /// Sonic Assembly
//    case sonicAssembly = "Sonic Assembly"
//    /// Sonic Assistance
//    case sonicAssistance = "Sonic Assistance"
//    /// Sonic Consultant
//    case sonicConsultant = "Sonic Consultant"
//    /// Sonic Editing
//    case sonicEditing = "Sonic Editing"
//    /// Sonic Enhancements
//    case sonicEnhancements = "Sonic Enhancements"
//    /// Sonic Environment
//    case sonicEnvironment = "Sonic Environment"
//    /// Sonic Guidance
//    case sonicGuidance = "Sonic Guidance"
//    /// Sonic Manipulation
//    case sonicManipulation = "Sonic Manipulation"
//    /// Sonic Mastering
//    case sonicMastering = "Sonic Mastering"
//    /// Sonic Reconstruction
//    case sonicReconstruction = "Sonic Reconstruction"
//    /// Sonic Restoration
//    case sonicRestoration = "Sonic Restoration"
//    /// Sonics
//    case sonics = "Sonics"
//    /// Sonic Solutions
//    case sonicSolutions = "Sonic Solutions"
//    /// Sonic Supervisor
//    case sonicSupervisor = "Sonic Supervisor"
//    /// Sonic Treatments
//    case sonicTreatments = "Sonic Treatments"
//    /// Sound
//    case sound = "Sound"
//    /// Sound Advisor
//    case soundAdvisor = "Sound Advisor"
//    /// Sound Architect
//    case soundArchitect = "Sound Architect"
//    /// Sound Arrangement
//    case soundArrangement = "Sound Arrangement"
//    /// Sound Art
//    case soundArt = "Sound Art"
//    /// Sound Assistant
//    case soundAssistant = "Sound Assistant"
//    /// Sound Balancer
//    case soundBalancer = "Sound Balancer"
//    /// Sound Banks
//    case soundBanks = "Sound Banks"
//    /// Soundbite
//    case soundbite = "Soundbite"
//    /// Sound Board Control
//    case soundBoardControl = "Sound Board Control"
//    /// Sound Collage
//    case soundCollage = "Sound Collage"
//    /// Sound Concepts
//    case soundConcepts = "Sound Concepts"
//    /// Sound Construction
//    case soundConstruction = "Sound Construction"
//    /// Sound Consultant
//    case soundConsultant = "Sound Consultant"
//    /// Sound Coordinator
//    case soundCoordinator = "Sound Coordinator"
//    /// Sound Creation
//    case soundCreation = "Sound Creation"
//    /// Sound Crew
//    case soundCrew = "Sound Crew"
//    /// Sound Design
//    case soundDesign = "Sound Design"
//    /// Sound Designer
//    case soundDesigner = "Sound Designer"
//    /// Sound Development
//    case soundDevelopment = "Sound Development"
//    /// Sound Diffusion
//    case soundDiffusion = "Sound Diffusion"
//    /// Sound Director
//    case soundDirector = "Sound Director"
//    /// Sound Disc
//    case soundDisc = "Sound Disc"
//    /// Sound Dramatisation
//    case soundDramatisation = "Sound Dramatisation"
//    /// Sound Editing
//    case soundEditing = "Sound Editing"
//    /// Sound Effects Engineer
//    case soundEffectsEngineer = "Sound Effects Engineer"
//    /// Sound Engineer
//    case soundEngineer = "Sound Engineer"
//    /// Sound Enhancement
//    case soundEnhancement = "Sound Enhancement"
//    /// Sound Executive
//    case soundExecutive = "Sound Executive"
//    /// Sound Fragments
//    case soundFragments = "Sound Fragments"
//    /// Sound Ideas
//    case soundIdeas = "Sound Ideas"
//    /// Sound Illustration
//    case soundIllustration = "Sound Illustration"
//    /// Sound Improvements
//    case soundImprovements = "Sound Improvements"
//    /// Sound Library
//    case soundLibrary = "Sound Library"
//    /// Sound Machine
//    case soundMachine = "Sound Machine"
//    /// Sound Man
//    case soundMan = "Sound Man"
//    /// Sound Manager
//    case soundManager = "Sound Manager"
//    /// Sound Manipulation
//    case soundManipulation = "Sound Manipulation"
//    /// Sound Materials
//    case soundMaterials = "Sound Materials"
//    /// Sound Monitor
//    case soundMonitor = "Sound Monitor"
//    /// Sound Operator
//    case soundOperator = "Sound Operator"
//    /// Sound Painting
//    case soundPainting = "Sound Painting"
//    /// Sound Production
//    case soundProduction = "Sound Production"
//    /// Sound Projector
//    case soundProjector = "Sound Projector"
//    /// Sound Recording
//    case soundRecording = "Sound Recording"
//    /// Sound Reinforcement
//    case soundReinforcement = "Sound Reinforcement"
//    /// Sound Replacements
//    case soundReplacements = "Sound Replacements"
//    /// Sound Re-Recording
//    case soundReRecording = "Sound Re-Recording"
//    /// Sound Source
//    case soundSource = "Sound Source"
//    /// Soundstream Editor
//    case soundstreamEditor = "Soundstream Editor"
//    /// Soundstream Engineer
//    case soundstreamEngineer = "Soundstream Engineer"
//    /// Sound Supervision
//    case soundSupervision = "Sound Supervision"
//    /// Sound Support
//    case soundSupport = "Sound Support"
//    /// Sound Technician
//    case soundTechnician = "Sound Technician"
//    /// Sound Tools
//    case soundTools = "Sound Tools"
//    /// Soundtrack Compilation
//    case soundtrackCompilation = "Soundtrack Compilation"
//    /// Soundtrack Conception
//    case soundtrackConception = "Soundtrack Conception"
//    /// Soundtrack Coordination
//    case soundtrackCoordination = "Soundtrack Coordination"
//    /// Soundtrack Director
//    case soundtrackDirector = "Soundtrack Director"
//    /// Soundtrack Editor
//    case soundtrackEditor = "Soundtrack Editor"
//    /// Soundtrack Executive
//    case soundtrackExecutive = "Soundtrack Executive"
//    /// Soundtrack Executive Producer
//    case soundtrackExecutiveProducer = "Soundtrack Executive Producer"
//    /// Soundtrack Manager
//    case soundtrackManager = "Soundtrack Manager"
//    /// Soundtrack Mixing
//    case soundtrackMixing = "Soundtrack Mixing"
//    /// Soundtrack Music Clearance
//    case soundtrackMusicClearance = "Soundtrack Music Clearance"
//    /// Soundtrack Producer
//    case soundtrackProducer = "Soundtrack Producer"
//    /// Soundtrack Supervisor
//    case soundtrackSupervisor = "Soundtrack Supervisor"
//    /// Sound Treatment
//    case soundTreatment = "Sound Treatment"
//    /// Source Material
//    case sourceMaterial = "Source Material"
//    /// Source Recordings
//    case sourceRecordings = "Source Recordings"
//    /// Spanish Adaptation
//    case spanishAdaptation = "Spanish Adaptation"
//    /// Spanish Announcer
//    case spanishAnnouncer = "Spanish Announcer"
//    /// Spanish Coach
//    case spanishCoach = "Spanish Coach"
//    /// Spanish Lyrics
//    case spanishLyrics = "Spanish Lyrics"
//    /// Spanish Translation
//    case spanishTranslation = "Spanish Translation"
//    /// Spanish Version
//    case spanishVersion = "Spanish Version"
//    /// Spatial Enhancement
//    case spatialEnhancement = "Spatial Enhancement"
//    /// Spatialization
//    case spatialization = "Spatialization"
//    /// Special Adaptation
//    case specialAdaptation = "Special Adaptation"
//    /// Special Assistance
//    case specialAssistance = "Special Assistance"
//    /// Special Computer Editing
//    case specialComputerEditing = "Special Computer Editing"
//    /// Special Contributor
//    case specialContributor = "Special Contributor"
//    /// Special Edits
//    case specialEdits = "Special Edits"
//    /// Special Effects
//    case specialEffects = "Special Effects"
//    /// Special Effects Treatment
//    case specialEffectsTreatment = "Special Effects Treatment"
//    /// Special Electronics
//    case specialElectronics = "Special Electronics"
//    /// Special Mix Consultant
//    case specialMixConsultant = "Special Mix Consultant"
//    /// Special Participation
//    case specialParticipation = "Special Participation"
//    /// Special Presentation
//    case specialPresentation = "Special Presentation"
//    /// Special Producer
//    case specialProducer = "Special Producer"
//    /// Special Projects Coordinator
//    case specialProjectsCoordinator = "Special Projects Coordinator"
//    /// Special Sound
//    case specialSound = "Special Sound"
//    /// Speech Direction
//    case speechDirection = "Speech Direction"
//    /// Spiritual Advisor
//    case spiritualAdvisor = "Spiritual Advisor"
//    /// Spoken Word Producer
//    case spokenWordProducer = "Spoken Word Producer"
//    /// Square Dance Caller
//    case squareDanceCaller = "Square Dance Caller"
//    /// Staff
//    case staff = "Staff"
//    /// Stage Announcer
//    case stageAnnouncer = "Stage Announcer"
//    /// Stage Assistant
//    case stageAssistant = "Stage Assistant"
//    /// Stage Coordinator
//    case stageCoordinator = "Stage Coordinator"
//    /// Stage Crew
//    case stageCrew = "Stage Crew"
//    /// Stage Design
//    case stageDesign = "Stage Design"
//    /// Stage Direction
//    case stageDirection = "Stage Direction"
//    /// Stage Director
//    case stageDirector = "Stage Director"
//    /// Stage Engineer
//    case stageEngineer = "Stage Engineer"
//    /// Stage Lighting
//    case stageLighting = "Stage Lighting"
//    /// Stage Manager
//    case stageManager = "Stage Manager"
//    /// Stage Mix
//    case stageMix = "Stage Mix"
//    /// Stage Monitor Engineer
//    case stageMonitorEngineer = "Stage Monitor Engineer"
//    /// Stage Music Conductor
//    case stageMusicConductor = "Stage Music Conductor"
//    /// Stage Music Director
//    case stageMusicDirector = "Stage Music Director"
//    /// Stage Production
//    case stageProduction = "Stage Production"
//    /// Stage Sound
//    case stageSound = "Stage Sound"
//    /// Stage Technician
//    case stageTechnician = "Stage Technician"
//    /// Staging
//    case staging = "Staging"
//    /// Stained Glass Photography
//    case stainedGlassPhotography = "Stained Glass Photography"
//    /// Steel Drum Arrangement
//    case steelDrumArrangement = "Steel Drum Arrangement"
//    /// Stencil Art
//    case stencilArt = "Stencil Art"
//    /// Step Dancing
//    case stepDancing = "Step Dancing"
//    /// Stereo Enhancement
//    case stereoEnhancement = "Stereo Enhancement"
//    /// Stereo Master
//    case stereoMaster = "Stereo Master"
//    /// Stereo Mix Producer
//    case stereoMixProducer = "Stereo Mix Producer"
//    /// Stereo Recreations from 78rpm Originals
//    case stereoRecreationsfrom78rpmOriginals = "Stereo Recreations from 78rpm Originals"
//    /// Stereo Remixer
//    case stereoRemixer = "Stereo Remixer"
//    /// Still Pictures
//    case stillPictures = "Still Pictures"
//    /// Story
//    case story = "Story"
//    /// Story Adaptation
//    case storyAdaptation = "Story Adaptation"
//    /// Storyline
//    case storyline = "Storyline"
//    /// Story Notes
//    case storyNotes = "Story Notes"
//    /// Storyteller
//    case storyteller = "Storyteller"
//    /// Story Writer
//    case storyWriter = "Story Writer"
//    /// String Arrangements
//    case stringArrangements = "String Arrangements"
//    /// String Concept
//    case stringConcept = "String Concept"
//    /// String Conductor
//    case stringConductor = "String Conductor"
//    /// String Contractor
//    case stringContractor = "String Contractor"
//    /// String Coordinator
//    case stringCoordinator = "String Coordinator"
//    /// String Copyist
//    case stringCopyist = "String Copyist"
//    /// String Director
//    case stringDirector = "String Director"
//    /// String Engineer
//    case stringEngineer = "String Engineer"
//    /// String Enhancement
//    case stringEnhancement = "String Enhancement"
//    /// String Mixing
//    case stringMixing = "String Mixing"
//    /// String Preparation
//    case stringPreparation = "String Preparation"
//    /// String Programming
//    case stringProgramming = "String Programming"
//    /// String Samples
//    case stringSamples = "String Samples"
//    /// Strings Contractor
//    case stringsContractor = "Strings Contractor"
//    /// String Score
//    case stringScore = "String Score"
//    /// String Sessions Supervision
//    case stringSessionsSupervision = "String Sessions Supervision"
//    /// Strings Orchestrator
//    case stringsOrchestrator = "Strings Orchestrator"
//    /// Strings Trills
//    case stringsTrills = "Strings Trills"
//    /// String Transcription
//    case stringTranscription = "String Transcription"
//    /// String Writing
//    case stringWriting = "String Writing"
//    /// Studio Arrangements
//    case studioArrangements = "Studio Arrangements"
//    /// Studio Assistant
//    case studioAssistant = "Studio Assistant"
//    /// Studio Audience
//    case studioAudience = "Studio Audience"
//    /// Studio Chief
//    case studioChief = "Studio Chief"
//    /// Studio Construction
//    case studioConstruction = "Studio Construction"
//    /// Studio Consultant
//    case studioConsultant = "Studio Consultant"
//    /// Studio Coordinator
//    case studioCoordinator = "Studio Coordinator"
//    /// Studio Direction
//    case studioDirection = "Studio Direction"
//    /// Studio Manager
//    case studioManager = "Studio Manager"
//    /// Studio Personnel
//    case studioPersonnel = "Studio Personnel"
//    /// Studio Piano Tracking
//    case studioPianoTracking = "Studio Piano Tracking"
//    /// Studio Production Assistant
//    case studioProductionAssistant = "Studio Production Assistant"
//    /// Studio Production Coordinator
//    case studioProductionCoordinator = "Studio Production Coordinator"
//    /// Studio Project Manager
//    case studioProjectManager = "Studio Project Manager"
//    /// Studio Reinforcement
//    case studioReinforcement = "Studio Reinforcement"
//    /// Studio Supervisor
//    case studioSupervisor = "Studio Supervisor"
//    /// Studio Support
//    case studioSupport = "Studio Support"
//    /// Studio Technician
//    case studioTechnician = "Studio Technician"
//    /// Studio Work
//    case studioWork = "Studio Work"
//    /// Stunt Coordinator
//    case stuntCoordinator = "Stunt Coordinator"
//    /// Stylist
//    case stylist = "Stylist"
//    /// Stylistic Advisor
//    case stylisticAdvisor = "Stylistic Advisor"
//    /// Stylistic Assistant
//    case stylisticAssistant = "Stylistic Assistant"
//    /// Sub-Mixing
//    case subMixing = "Sub-Mixing"
//    /// Supervised By
//    case supervisedBy = "Supervised By"
//    /// Supervising Copyist
//    case supervisingCopyist = "Supervising Copyist"
//    /// Supervising Editor
//    case supervisingEditor = "Supervising Editor"
//    /// Supervising Engineer
//    case supervisingEngineer = "Supervising Engineer"
//    /// Supervising Music Editor
//    case supervisingMusicEditor = "Supervising Music Editor"
//    /// Supervising Orchestrator
//    case supervisingOrchestrator = "Supervising Orchestrator"
//    /// Supervising Producer
//    case supervisingProducer = "Supervising Producer"
//    /// Supervision Assistant
//    case supervisionAssistant = "Supervision Assistant"
//    /// Supervisor
//    case supervisor = "Supervisor"
//    /// Supervisor of Analog Tape Transfers
//    case supervisorofAnalogTapeTransfers = "Supervisor of Analog Tape Transfers"
//    /// Surround Mix
//    case surroundMix = "Surround Mix"
//    /// Surround Sound
//    case surroundSound = "Surround Sound"
//    /// Symphonic Arrangements
//    case symphonicArrangements = "Symphonic Arrangements"
//    /// Symphonic Coordinator
//    case symphonicCoordinator = "Symphonic Coordinator"
//    /// Synclavier Assistance
//    case synclavierAssistance = "Synclavier Assistance"
//    /// Synopsis
//    case synopsis = "Synopsis"
//    /// Synopsis Editing
//    case synopsisEditing = "Synopsis Editing"
//    /// Synthesizer Arrangements
//    case synthesizerArrangements = "Synthesizer Arrangements"
//    /// Synthesizer Engineer
//    case synthesizerEngineer = "Synthesizer Engineer"
//    /// Synthesizer Orchestration
//    case synthesizerOrchestration = "Synthesizer Orchestration"
//    /// Synthesizer Producer
//    case synthesizerProducer = "Synthesizer Producer"
//    /// Synthesizer Programming
//    case synthesizerProgramming = "Synthesizer Programming"
//    /// Synthesizer String Arrangement
//    case synthesizerStringArrangement = "Synthesizer String Arrangement"
//    /// System Design
//    case systemDesign = "System Design"
//    /// System Engineer
//    case systemEngineer = "System Engineer"
//    /// System Programming
//    case systemProgramming = "System Programming"
//    /// Talent Coordinator
//    case talentCoordinator = "Talent Coordinator"
//    /// Talent Director
//    case talentDirector = "Talent Director"
//    /// Tape
//    case tape = "Tape"
//    /// Tape Archivist
//    case tapeArchivist = "Tape Archivist"
//    /// Tape Box
//    case tapeBox = "Tape Box"
//    /// Tape Comparison
//    case tapeComparison = "Tape Comparison"
//    /// Tape Delays
//    case tapeDelays = "Tape Delays"
//    /// Tape Echo
//    case tapeEcho = "Tape Echo"
//    /// Tape Editor
//    case tapeEditor = "Tape Editor"
//    /// Tape Effects
//    case tapeEffects = "Tape Effects"
//    /// Tape Machine
//    case tapeMachine = "Tape Machine"
//    /// Tape Manipulation
//    case tapeManipulation = "Tape Manipulation"
//    /// Tape Op
//    case tapeOp = "Tape Op"
//    /// Tape Operator
//    case tapeOperator = "Tape Operator"
//    /// Tape Preparation
//    case tapePreparation = "Tape Preparation"
//    /// Tape Realizations
//    case tapeRealizations = "Tape Realizations"
//    /// Tape Recorders
//    case tapeRecorders = "Tape Recorders"
//    /// Tape Research
//    case tapeResearch = "Tape Research"
//    /// Tape Restoration
//    case tapeRestoration = "Tape Restoration"
//    /// Tapes
//    case tapes = "Tapes"
//    /// Tape Sources
//    case tapeSources = "Tape Sources"
//    /// Tape Splicing
//    case tapeSplicing = "Tape Splicing"
//    /// Tape Supervision
//    case tapeSupervision = "Tape Supervision"
//    /// Tape Transfer
//    case tapeTransfer = "Tape Transfer"
//    /// Tape Vault Research
//    case tapeVaultResearch = "Tape Vault Research"
//    /// Tattoo Art
//    case tattooArt = "Tattoo Art"
//    /// Teacher/Educator
//    case teacherEducator = "Teacher/Educator"
//    /// Technical Administration
//    case technicalAdministration = "Technical Administration"
//    /// Technical Advisor
//    case technicalAdvisor = "Technical Advisor"
//    /// Technical Art
//    case technicalArt = "Technical Art"
//    /// Technical Assistance
//    case technicalAssistance = "Technical Assistance"
//    /// Technical Associate
//    case technicalAssociate = "Technical Associate"
//    /// Technical Collaborator
//    case technicalCollaborator = "Technical Collaborator"
//    /// Technical Consultant
//    case technicalConsultant = "Technical Consultant"
//    /// Technical Coordinator
//    case technicalCoordinator = "Technical Coordinator"
//    /// Technical Crew
//    case technicalCrew = "Technical Crew"
//    /// Technical Design
//    case technicalDesign = "Technical Design"
//    /// Technical Director
//    case technicalDirector = "Technical Director"
//    /// Technical Editor
//    case technicalEditor = "Technical Editor"
//    /// Technical Engineer
//    case technicalEngineer = "Technical Engineer"
//    /// Technical Maintenance
//    case technicalMaintenance = "Technical Maintenance"
//    /// Technical Manager
//    case technicalManager = "Technical Manager"
//    /// Technical Master
//    case technicalMaster = "Technical Master"
//    /// Technical Notes
//    case technicalNotes = "Technical Notes"
//    /// Technical Operator
//    case technicalOperator = "Technical Operator"
//    /// Technical Processing
//    case technicalProcessing = "Technical Processing"
//    /// Technical Producer
//    case technicalProducer = "Technical Producer"
//    /// Technical Reconstruction
//    case technicalReconstruction = "Technical Reconstruction"
//    /// Technical Score Advisor
//    case technicalScoreAdvisor = "Technical Score Advisor"
//    /// Technical Sound
//    case technicalSound = "Technical Sound"
//    /// Technical Staff
//    case technicalStaff = "Technical Staff"
//    /// Technical Supervisor
//    case technicalSupervisor = "Technical Supervisor"
//    /// Technical Support
//    case technicalSupport = "Technical Support"
//    /// Technician
//    case technician = "Technician"
//    /// Telecast Director
//    case telecastDirector = "Telecast Director"
//    /// Telephone Samples
//    case telephoneSamples = "Telephone Samples"
//    /// Television Production
//    case televisionProduction = "Television Production"
//    /// Tenor Sax Arrangements
//    case tenorSaxArrangements = "Tenor Sax Arrangements"
//    /// Text
//    case text = "Text"
//    /// Text Adaptation
//    case textAdaptation = "Text Adaptation"
//    /// Text Advisor
//    case textAdvisor = "Text Advisor"
//    /// Text Assistant
//    case textAssistant = "Text Assistant"
//    /// Text By
//    case textBy = "Text By"
//    /// Text Concept
//    case textConcept = "Text Concept"
//    /// Text Coordination
//    case textCoordination = "Text Coordination"
//    /// Text Design
//    case textDesign = "Text Design"
//    /// Text Editor
//    case textEditor = "Text Editor"
//    /// Text Layout
//    case textLayout = "Text Layout"
//    /// Text Paraphraser
//    case textParaphraser = "Text Paraphraser"
//    /// Text Preparation
//    case textPreparation = "Text Preparation"
//    /// Text Presentation
//    case textPresentation = "Text Presentation"
//    /// Text Research
//    case textResearch = "Text Research"
//    /// Text Revision
//    case textRevision = "Text Revision"
//    /// Text Selection
//    case textSelection = "Text Selection"
//    /// Text Supervision
//    case textSupervision = "Text Supervision"
//    /// Text Transcription
//    case textTranscription = "Text Transcription"
//    /// Text Translation
//    case textTranslation = "Text Translation"
//    /// Textural Sampling
//    case texturalSampling = "Textural Sampling"
//    /// Thai Drums
//    case thaiDrums = "Thai Drums"
//    /// Thai Flute
//    case thaiFlute = "Thai Flute"
//    /// Theatre Producer
//    case theatreProducer = "Theatre Producer"
//    /// Thematic Assistance
//    case thematicAssistance = "Thematic Assistance"
//    /// Theme
//    case theme = "Theme"
//    /// Title
//    case title = "Title"
//    /// Title Art
//    case titleArt = "Title Art"
//    /// Title Compilation
//    case titleCompilation = "Title Compilation"
//    /// Title Concept
//    case titleConcept = "Title Concept"
//    /// Title Design
//    case titleDesign = "Title Design"
//    /// Title Graphics
//    case titleGraphics = "Title Graphics"
//    /// Title Illustration
//    case titleIllustration = "Title Illustration"
//    /// Title Lettering
//    case titleLettering = "Title Lettering"
//    /// Titles
//    case titles = "Titles"
//    /// Title Selection
//    case titleSelection = "Title Selection"
//    /// Title Typeface
//    case titleTypeface = "Title Typeface"
//    /// Ti-tze
//    case titze = "Ti-tze"
//    /// Toaster
//    case toaster = "Toaster"
//    /// Toasting
//    case toasting = "Toasting"
//    /// Tom Tom Engineer
//    case tomTomEngineer = "Tom Tom Engineer"
//    /// Tools
//    case tools = "Tools"
//    /// Topography
//    case topography = "Topography"
//    /// Tour Accountant
//    case tourAccountant = "Tour Accountant"
//    /// Tour Manager
//    case tourManager = "Tour Manager"
//    /// Track Annotations
//    case trackAnnotations = "Track Annotations"
//    /// Track Arrangement
//    case trackArrangement = "Track Arrangement"
//    /// Track Compilation
//    case trackCompilation = "Track Compilation"
//    /// Track Concept
//    case trackConcept = "Track Concept"
//    /// Track Descriptions
//    case trackDescriptions = "Track Descriptions"
//    /// Track Details
//    case trackDetails = "Track Details"
//    /// Tracked By
//    case trackedBy = "Tracked By"
//    /// Track Engineer
//    case trackEngineer = "Track Engineer"
//    /// Tracking
//    case tracking = "Tracking"
//    /// Tracking Assistant
//    case trackingAssistant = "Tracking Assistant"
//    /// Tracking By
//    case trackingBy = "Tracking By"
//    /// Tracking Producer
//    case trackingProducer = "Tracking Producer"
//    /// Track Laying
//    case trackLaying = "Track Laying"
//    /// Track Mix
//    case trackMix = "Track Mix"
//    /// Track Notes
//    case trackNotes = "Track Notes"
//    /// Track Order
//    case trackOrder = "Track Order"
//    /// Track Programmer
//    case trackProgrammer = "Track Programmer"
//    /// Track Selection
//    case trackSelection = "Track Selection"
//    /// Track Sequencing Advisor
//    case trackSequencingAdvisor = "Track Sequencing Advisor"
//    /// Track Titles
//    case trackTitles = "Track Titles"
//    /// Trainer
//    case trainer = "Trainer"
//    /// Transatlantic Coordination
//    case transatlanticCoordination = "Transatlantic Coordination"
//    /// Transcription
//    case transcription = "Transcription"
//    /// Transcription Assistant
//    case transcriptionAssistant = "Transcription Assistant"
//    /// Transcription By
//    case transcriptionBy = "Transcription By"
//    /// Transcription Effects
//    case transcriptionEffects = "Transcription Effects"
//    /// Transfer Assistant
//    case transferAssistant = "Transfer Assistant"
//    /// Transfer Effects
//    case transferEffects = "Transfer Effects"
//    /// Transfer Engineer
//    case transferEngineer = "Transfer Engineer"
//    /// Transferred By
//    case transferredBy = "Transferred By"
//    /// Transfers
//    case transfers = "Transfers"
//    /// Transfer Supervisor
//    case transferSupervisor = "Transfer Supervisor"
//    /// Transformation
//    case transformation = "Transformation"
//    /// Translated By
//    case translatedBy = "Translated By"
//    /// Translation
//    case translation = "Translation"
//    /// Translation Assistant
//    case translationAssistant = "Translation Assistant"
//    /// Translation Consultant
//    case translationConsultant = "Translation Consultant"
//    /// Translation Supervisor
//    case translationSupervisor = "Translation Supervisor"
//    /// Translator
//    case translator = "Translator"
//    /// Transliteration
//    case transliteration = "Transliteration"
//    /// Transportation
//    case transportation = "Transportation"
//    /// Transportation Coordinator
//    case transportationCoordinator = "Transportation Coordinator"
//    /// Transposition
//    case transposition = "Transposition"
//    /// Tray Card
//    case trayCard = "Tray Card"
//    /// Tray Card Art
//    case trayCardArt = "Tray Card Art"
//    /// Tray Card Design
//    case trayCardDesign = "Tray Card Design"
//    /// Tray Photo
//    case trayPhoto = "Tray Photo"
//    /// Treatments
//    case treatments = "Treatments"
//    /// Trombone Arrangement
//    case tromboneArrangement = "Trombone Arrangement"
//    /// Trumpet Arrangement
//    case trumpetArrangement = "Trumpet Arrangement"
//    /// Tuba Arrangement
//    case tubaArrangement = "Tuba Arrangement"
//    /// Tuning
//    case tuning = "Tuning"
//    /// Type
//    case type = "Type"
//    /// Type Assistance
//    case typeAssistance = "Type Assistance"
//    /// Type Design
//    case typeDesign = "Type Design"
//    /// Typeface
//    case typeface = "Typeface"
//    /// Type Setting
//    case typeSetting = "Type Setting"
//    /// Typesetting
//    case typesetting = "Typesetting"
//    /// Typing
//    case typing = "Typing"
//    /// Typography
//    case typography = "Typography"
//    /// Underscoring
//    case underscoring = "Underscoring"
//    /// Unknown Contributor Role
//    case unknownContributorRole = "Unknown Contributor Role"
//    /// Urdu Calligraphy
//    case urduCalligraphy = "Urdu Calligraphy"
//    /// US Graphic Coordination
//    case usGraphicCoordination = "US Graphic Coordination"
//    /// US Graphic Production
//    case usGraphicProduction = "US Graphic Production"
//    /// Vault Research
//    case vaultResearch = "Vault Research"
//    /// Vibe Coordinator
//    case vibeCoordinator = "Vibe Coordinator"
//    /// Vice Executive Producer
//    case viceExecutiveProducer = "Vice Executive Producer"
//    /// Video Appearance
//    case videoAppearance = "Video Appearance"
//    /// Video Archives
//    case videoArchives = "Video Archives"
//    /// Video Consultant
//    case videoConsultant = "Video Consultant"
//    /// Video Director
//    case videoDirector = "Video Director"
//    /// Video Editor
//    case videoEditor = "Video Editor"
//    /// Video Engineer
//    case videoEngineer = "Video Engineer"
//    /// Video Graphic Artist
//    case videoGraphicArtist = "Video Graphic Artist"
//    /// Videography
//    case videography = "Videography"
//    /// Video Images
//    case videoImages = "Video Images"
//    /// Video Producer
//    case videoProducer = "Video Producer"
//    /// Video Stills
//    case videoStills = "Video Stills"
//    /// Video Synthesiser
//    case videoSynthesiser = "Video Synthesiser"
//    /// Video Tape
//    case videoTape = "Video Tape"
//    /// Video Technician
//    case videoTechnician = "Video Technician"
//    /// Vinyl Coordination
//    case vinylCoordination = "Vinyl Coordination"
//    /// Vinyl Disks
//    case vinylDisks = "Vinyl Disks"
//    /// Vinyl Transcription
//    case vinylTranscription = "Vinyl Transcription"
//    /// Viola Arrangement
//    case violaArrangement = "Viola Arrangement"
//    /// Violin Arrangement
//    case violinArrangement = "Violin Arrangement"
//    /// Violin Effects
//    case violinEffects = "Violin Effects"
//    /// Violin Master
//    case violinMaster = "Violin Master"
//    /// Virtual Audio Engineer
//    case virtualAudioEngineer = "Virtual Audio Engineer"
//    /// Vision Control
//    case visionControl = "Vision Control"
//    /// Vision Supervisor
//    case visionSupervisor = "Vision Supervisor"
//    /// Visual Acquisitions
//    case visualAcquisitions = "Visual Acquisitions"
//    /// Visual Arts
//    case visualArts = "Visual Arts"
//    /// Visual Communication
//    case visualCommunication = "Visual Communication"
//    /// Visual Concept
//    case visualConcept = "Visual Concept"
//    /// Visual Consultant
//    case visualConsultant = "Visual Consultant"
//    /// Visual Coordinator
//    case visualCoordinator = "Visual Coordinator"
//    /// Visual Design
//    case visualDesign = "Visual Design"
//    /// Visual Direction
//    case visualDirection = "Visual Direction"
//    /// Visual Editing
//    case visualEditing = "Visual Editing"
//    /// Visual Effects Designer
//    case visualEffectsDesigner = "Visual Effects Designer"
//    /// Visual Media
//    case visualMedia = "Visual Media"
//    /// Visual Production
//    case visualProduction = "Visual Production"
//    /// Visual Remixing
//    case visualRemixing = "Visual Remixing"
//    /// Visuals
//    case visuals = "Visuals"
//    /// VJ
//    case vj = "VJ"
//    /// Vocal Arrangement
//    case vocalArrangement = "Vocal Arrangement"
//    /// Vocal Arrangement Assistant
//    case vocalArrangementAssistant = "Vocal Arrangement Assistant"
//    /// Vocal Arranger
//    case vocalArranger = "Vocal Arranger"
//    /// Vocal Assistance
//    case vocalAssistance = "Vocal Assistance"
//    /// Vocal Coach
//    case vocalCoach = "Vocal Coach"
//    /// Vocal Compilation
//    case vocalCompilation = "Vocal Compilation"
//    /// Vocal Concept
//    case vocalConcept = "Vocal Concept"
//    /// Vocal Conductor
//    case vocalConductor = "Vocal Conductor"
//    /// Vocal Consultant
//    case vocalConsultant = "Vocal Consultant"
//    /// Vocal Contractor
//    case vocalContractor = "Vocal Contractor"
//    /// Vocal Coordinator
//    case vocalCoordinator = "Vocal Coordinator"
//    /// Vocal Director
//    case vocalDirector = "Vocal Director"
//    /// Vocal Editing
//    case vocalEditing = "Vocal Editing"
//    /// Vocal Engineer
//    case vocalEngineer = "Vocal Engineer"
//    /// Vocal Mixing
//    case vocalMixing = "Vocal Mixing"
//    /// Vocal Producer
//    case vocalProducer = "Vocal Producer"
//    /// Vocal Production Assistance
//    case vocalProductionAssistance = "Vocal Production Assistance"
//    /// Vocal Programming
//    case vocalProgramming = "Vocal Programming"
//    /// Vocal Recording
//    case vocalRecording = "Vocal Recording"
//    /// Vocal Supervision
//    case vocalSupervision = "Vocal Supervision"
//    /// Vocal Support
//    case vocalSupport = "Vocal Support"
//    /// Vocal Technician
//    case vocalTechnician = "Vocal Technician"
//    /// Vocal Tracking
//    case vocalTracking = "Vocal Tracking"
//    /// Vocal Treatments
//    case vocalTreatments = "Vocal Treatments"
//    /// Voice Actor
//    case voiceActor = "Voice Actor"
//    /// Voice Changer
//    case voiceChanger = "Voice Changer"
//    /// Voice Design
//    case voiceDesign = "Voice Design"
//    /// Voice Editing
//    case voiceEditing = "Voice Editing"
//    /// Voice Engineer
//    case voiceEngineer = "Voice Engineer"
//    /// Walkie Talkie
//    case walkieTalkie = "Walkie Talkie"
//    /// Wardrobe
//    case wardrobe = "Wardrobe"
//    /// Wardrobe Assistant
//    case wardrobeAssistant = "Wardrobe Assistant"
//    /// Wardrobe Consultant
//    case wardrobeConsultant = "Wardrobe Consultant"
//    /// Wardrobe Coordinator
//    case wardrobeCoordinator = "Wardrobe Coordinator"
//    /// Wardrobe Design
//    case wardrobeDesign = "Wardrobe Design"
//    /// Watercolor Artwork
//    case watercolorArtwork = "Watercolor Artwork"
//    /// Wavestation
//    case wavestation = "Wavestation"
//    /// Web Design
//    case webDesign = "Web Design"
//    /// Wig Designer
//    case wigDesigner = "Wig Designer"
//    /// Wigs
//    case wigs = "Wigs"
//    /// Wind Arrangements
//    case windArrangements = "Wind Arrangements"
//    /// Woodcut
//    case woodcut = "Woodcut"
//    /// Woodwind Arrangement
//    case woodwindArrangement = "Woodwind Arrangement"
//    /// Word Processing
//    case wordProcessing = "Word Processing"
//    /// Words By
//    case wordsBy = "Words By"
//    /// Worship Leader
//    case worshipLeader = "Worship Leader"
//    /// Writer
//    case writer = "Writer"
//    /// Written By
//    case writtenBy = "Written By"
//}
