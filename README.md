# SwiftTaggerMP4

SwiftTaggerMp4 is a Swift library for reading and writing metadata and chapter tags in MP4 audio files. 

**Usage**

*Reading metadata atoms from a file*
```swift
let mp4Url = URL(fileURLWithPath: "/path/to/file.m4a")
let mp4File = try Mp4File(location: mp4Url)
var tag = try Tag(readFrom: mp4File)

print(tag.album)
print(tag.artist)
print(tag.trackNumber)
```

*Writing metadata atoms to a file*

To add new frames to a file, or edit existing frames, read `Tag` as demonstrated above, and add/edit whatever items you wish:
```swift
tag.album = "New Album Title"
tag.artist = "New Artist"
tag.trackNumber.disc = 1
tag.trackNumber.totalDiscs = 2

let outputUrl = URL(fileURLWithPath: "/path/to/new.m4a")
try mp4File.write(
    tag: tag,
    outputLocation: outputUrl)
```

If you wish to overwrite all metadata on the file and replace it with only your newly-created metadata, initialize `tag` to an empty `Tag()` instance instead of reading from an mp4 file. 
```swift
var tag = Tag()

tag.album = "Completely New Album Title"
```

To wipe the data from a particular item, set it equal to `nil`:
```swift
var tag = try mp4File.read()

tag.album = nil
tag.artist = nil
```

To remove track and disc numbers, use the removal function:
```swift
try tag.removeTrackNumber()
try tag.removeDiscNumber()
```

For unknown (`----`) metadata atoms, multiple versions of the atom are permitted in a tag. In these cases, you can locate a specific atom using its custom name as a subscript:
```swift
print(tag["My Custom Tag"]) // "Custom Tag Content"
```
Writing to these items works the same way.
```swift
tag["My Custom Tag"] = "Custom Tag Content"
```
To overwrite an existing item with a subscript accessor, just use the same name. To remove an existing item of this type, set it equal to `nil`:
```swift
tag["My Custom Tag"] = nil
```

To remove all metadata:
```swift
try tag.removeAllMetadata()
```

*Chapters*

To retrieve a list of all the chapters in the file, use the `chapterList` property.
```swift
print(tag.chapterList)
```
This will return an array of ( `startTime`,  `chapterTitle`) pairs, where the `startTime` is in milliseconds.

To access the data of a specific chapter, use its index in the `chapterList` array:
```swift
print(tag.chapterList[0].startTime) // 0
print(tag.chapterList[0].title) // "Chapter 01"
```

To add a chapter, use the `addChapter(at startTime: Int, title: String)` function. **The `startTime` must be in milliseconds**. *If a chapter exists at the specified `startTime`, it will be overwritten.* Otherwise, new chapters will be added to any existing chapters:

```swift
tag.addChapter(at: 1000, title: "Chapter 02") // start time in milliseconds
```

To remove a single chapter from the tag:
```swift
tag.removeChapter(at: startTime)
```

To wipe all chapters from the tag:
```swift
tag.removechapterList()
```

*Cover Art*

```swift
tag.coverArt // returns `NSImage`

try setCoverArt(imageLocation: URL)

try removeCoverArt()
```

Here's a complete list of the atoms handled by SwiftTaggeMP4:

## Available metadata tags are:
### String Metadata Identifiers
*  `acknowledgment = "\u{00A9}cak"`
*  `album = "\u{00A9}alb"`
*  `albumArtist = "aART"`
*  `albumArtistSort = "soaa"`
*  `albumSort = "soal"`
*  `arranger = "\u{00A9}arg"`
*  `artDirector = "\u{00A9}ard"`
*  `artist = "\u{00A9}ART"`
*  `artistSort = "soar"`
*  `artistUrl = "\u{00A9}prl"`
*  `category = "catg"`
*  `comment = "\u{00A9}cmt"`
*  `composer = "\u{00A9}com"`
*  `composerSort = "soco"`
*  `conductor = "\u{00A9}con"`
*  `copyright = "cprt"`
*  `copyrightStatement = "\u{00A9}cpy"`
*  `customGenre = "\u{00A9}gen"`
*  `description = "\u{00A9}des"`
*  `director = "\u{00A9}dir"`
*  `editDateAndDescription1 = "\u{00A9}ed1"`
*  `editDateAndDescription2 = "\u{00A9}ed2"`
*  `editDateAndDescription3 = "\u{00A9}ed3"`
*  `editDateAndDescription4 = "\u{00A9}ed4"`
*  `editDateAndDescription5 = "\u{00A9}ed5"`
*  `editDateAndDescription6 = "\u{00A9}ed6"`
*  `editDateAndDescription7 = "\u{00A9}ed7"`
*  `editDateAndDescription8 = "\u{00A9}ed8"`
*  `editDateAndDescription9 = "\u{00A9}ed9"`
*  `encodedBy = "\u{00A9}enc"`
*  `encodingTool = "\u{00A9}too"`
*  `executiveProducer = "\u{00A9}xpd"`
*  `filmMakerUrl = "\u{00A9}mal"`
*  `format = "\u{00A9}fmt"`
*  `grouping = "\u{00A9}grp"`
*  `information = "\u{00A9}inf"`
*  `isrc = "\u{00A9}isr"`
*  `label = "\u{00A9}lab"`
*  `linerNotes = "\u{00A9}lnt"`
*  `longDescription = "ldes"`
*  `lyrics = "\u{00A9}lyr"`
*  `lyricist = "\u{00A9}aut"`
*  `movementName = "\u{00A9}mvn"`
*  `narrator = "\u{00A9}nrt"`
*  `originalArtist = "\u{00A9}ope"`
*  `owner = "ownr"`
*  `performers = "\u{00A9}prf"`
*  `podcastID = "egid"`
*  `predefinedGenre = "genr"`
*  `producer = "\u{00A9}prd"`
*  `publisher = "\u{00A9}pub"`
*  `publisherUrl = "\u{00A9}lal"`
*  `purchaseUrl = "purl"`
*  `recordCompany = "\u{00A9}mak"`
*  `recordingCopyright = "\u{00A9}phg"`
*  `requirements = "\u{00A9}req"`
*  `sellerID = "xid "`
*  `soundEngineer = "\u{00A9}sne"`
*  `softwareVersion = "\u{00A9}swr"`
*  `soloist = "\u{00A9}sol"`
*  `songDescription = "desc"`
*  `sourceCredit = "\u{00A9}src"`
*  `subtitle = "\u{00A9}snm"`
*  `title = "\u{00A9}nam"`
*  `titleSort = "sonm"`
*  `thanks = "\u{00A9}thx"`
*  `trackSubtitle = "\u{00A9}st3"`
*  `tvEpisodeTitle = "tven"`
*  `tvNetwork = "tvnn"`
*  `tvShow = "tvsh"`
*  `tvShowDescription = "sdes"`
*  `tvShowSort = "sosn"`
*  `website = "\u{00A9}url"`
*  `workName = "\u{00A9}wrk"`
*  `writer = "\u{00A9}wrt"`
*  `unknown = "----"`

### String Array Metadata Identifiers
*  `arrangerKeywords = "\u{00A9}ark"`
*  `artistKeywords = "\u{00A9}prk"`
*  `composerKeywords = "\u{00A9}cok"`
*  `keywords = "keyw"`
*  `producerKeywords = "\u{00A9}pdk"`
*  `songwriterKeywords = "\u{00A9}swk"`
*  `subtitleKeywords = "\u{00A9}snk"`
*  `titleKeywords = "\u{00A9}nak"`

### Integer Metadata Identifiers
*  `albumID = "akID"`
*  `appleStoreCountryID = "sfID"`
*  `artistID = "atID"`
*  `bpm = "tmpo"`
*  `compilation = "cpil"`
*  `composerID = "cmID"`
*  `conductorID = "cnID"`
*  `gaplessPlayback = "pgap"`
*  `genreID = "geID"`
*  `mediaType = "stik"`
*  `movementCount = "\u{00A9}mvc"`
*  `movementNumber = "\u{00A9}mvi"`
*  `playlistID = "plID"`
*  `podcast = "pcst"`
*  `rating = "rtng"`
*  `showWorkAndMovement = "shwm"`
*  `tvEpisodeNumber = "tves"`
*  `tvSeason = "tvsn"`

### Integer Array Metadata Identifiers
*  `discNumber = "disk"`
*  `trackNumber = "trkn"`

### Date Metadata Identifiers
*  `purchaseDate = "purd"`
*  `recordingDate = "\u{00A9}day"`
*  `recordingYear = "yrrc"`
*  `releaseDate = "rldt"`

### Image Metadata Identifiers
*  `coverArt = "covr"`

### Freeform Tags and compatibility
To facilitate compatibility with `ID3` metadata, some freeform tags have been pre-defined for convenience. The custom name for these is the four-letter `ID3` identifier. Other tagging apps have different custom names for these, and what that custom name is differs from app to app. There's no way of predicting whether these custom tags as written by `SwiftTaggerMp4` will be recognized by other apps.

These tags are:

* `audioFileWebpage // custom name ""`
* `audioSourceWebpage // custom name ""`
* `copyrightWebpage// custom name ""`
* `encodingSettings // custom name ""`
* `encodingTime // custom name ""`
* `initialKey // custom name ""`
* `mood // custom name ""`
* `originalAlbum // custom name ""`
* `originalFilename // custom name ""`
* `originalLyricist // custom name ""`
* `originalReleaseTIME // custom name ""`
* `paymentWebpage // custom name ""`
* `producedNotice // custom name ""`
* `radioStation // custom name ""`
* `radioStationOwner // custom name ""`
* `radioStationWebpage // custom name "`
* `taggingTime // custom name ""`


If you wish to make these accessors compatible with a particular app, change the `name` parameter of the subscript accessor. 

For example, to make `mood` compatible with `Yate`, you would change "TMOO" to "MOOD"

```swift
var mood: String? {
    get {
        if let string = self["TMOO"] { 
            return string
        } else {
            return nil
        }
    }
    set {
        if let new = newValue {
            self["TMOO"] = new
        } else {
            self["TMOO"] = nil
        }
    }
}
```

This will require knowing what custom name the other app uses to access these tags. You can locate these using `AtomicParsley` or `Yate`:

```
// Atomic Parsley
Atom "----" [ORIGINAL YEAR] contains: 1996-01-01T00:00:00Z
Atom "----" [MOOD] contains: MOOD

// Yate (File > Log > Raw Data)
000000095792 000000095889 000000000097 ---- 
    000000095800 000000095828 000000000028 mean com.apple.iTunes
    000000095828 000000095853 000000000025 name ORIGINAL YEAR
    000000095853 000000095889 000000000036 data 
000000096005 000000096077 000000000072 ---- 
    000000096013 000000096041 000000000028 mean com.apple.iTunes
    000000096041 000000096057 000000000016 name MOOD
    000000096057 000000096077 000000000020 data 
```

## Missing Features:
* Handling of the `iTunMOVI` tag
This tag will pass through intact, but cannot be altered.
* Chapter images
At present, `title` is the only chapter metadata that this library permits. Chapter images have not been implemented.

If anyone would like to add these features, a pull request will be welcomed.
