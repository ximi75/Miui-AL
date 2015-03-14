.class public interface abstract Lorg/apache/tika/metadata/XMPDM;
.super Ljava/lang/Object;
.source "XMPDM.java"


# static fields
.field public static final ABS_PEAK_AUDIO_FILE_PATH:Lorg/apache/tika/metadata/Property;

.field public static final ALBUM:Lorg/apache/tika/metadata/Property;

.field public static final ALT_TAPE_NAME:Lorg/apache/tika/metadata/Property;

.field public static final ARTIST:Lorg/apache/tika/metadata/Property;

.field public static final AUDIO_CHANNEL_TYPE:Lorg/apache/tika/metadata/Property;

.field public static final AUDIO_COMPRESSOR:Lorg/apache/tika/metadata/Property;

.field public static final AUDIO_MOD_DATE:Lorg/apache/tika/metadata/Property;

.field public static final AUDIO_SAMPLE_RATE:Lorg/apache/tika/metadata/Property;

.field public static final AUDIO_SAMPLE_TYPE:Lorg/apache/tika/metadata/Property;

.field public static final COMPOSER:Lorg/apache/tika/metadata/Property;

.field public static final COPYRIGHT:Lorg/apache/tika/metadata/Property;

.field public static final ENGINEER:Lorg/apache/tika/metadata/Property;

.field public static final FILE_DATA_RATE:Lorg/apache/tika/metadata/Property;

.field public static final GENRE:Lorg/apache/tika/metadata/Property;

.field public static final INSTRUMENT:Lorg/apache/tika/metadata/Property;

.field public static final KEY:Lorg/apache/tika/metadata/Property;

.field public static final LOG_COMMENT:Lorg/apache/tika/metadata/Property;

.field public static final LOOP:Lorg/apache/tika/metadata/Property;

.field public static final METADATA_MOD_DATE:Lorg/apache/tika/metadata/Property;

.field public static final NUMBER_OF_BEATS:Lorg/apache/tika/metadata/Property;

.field public static final PULL_DOWN:Lorg/apache/tika/metadata/Property;

.field public static final RELATIVE_PEAK_AUDIO_FILE_PATH:Lorg/apache/tika/metadata/Property;

.field public static final RELEASE_DATE:Lorg/apache/tika/metadata/Property;

.field public static final SCALE_TYPE:Lorg/apache/tika/metadata/Property;

.field public static final SCENE:Lorg/apache/tika/metadata/Property;

.field public static final SHOT_DATE:Lorg/apache/tika/metadata/Property;

.field public static final SHOT_LOCATION:Lorg/apache/tika/metadata/Property;

.field public static final SHOT_NAME:Lorg/apache/tika/metadata/Property;

.field public static final SPEAKER_PLACEMENT:Lorg/apache/tika/metadata/Property;

.field public static final STRETCH_MODE:Lorg/apache/tika/metadata/Property;

.field public static final TAPE_NAME:Lorg/apache/tika/metadata/Property;

.field public static final TEMPO:Lorg/apache/tika/metadata/Property;

.field public static final TIME_SIGNATURE:Lorg/apache/tika/metadata/Property;

.field public static final TRACK_NUMBER:Lorg/apache/tika/metadata/Property;

.field public static final VIDEO_ALPHA_MODE:Lorg/apache/tika/metadata/Property;

.field public static final VIDEO_ALPHA_UNITY_IS_TRANSPARENT:Lorg/apache/tika/metadata/Property;

.field public static final VIDEO_COLOR_SPACE:Lorg/apache/tika/metadata/Property;

.field public static final VIDEO_COMPRESSOR:Lorg/apache/tika/metadata/Property;

.field public static final VIDEO_FIELD_ORDER:Lorg/apache/tika/metadata/Property;

.field public static final VIDEO_FRAME_RATE:Lorg/apache/tika/metadata/Property;

.field public static final VIDEO_MOD_DATE:Lorg/apache/tika/metadata/Property;

.field public static final VIDEO_PIXEL_ASPECT_RATIO:Lorg/apache/tika/metadata/Property;

.field public static final VIDEO_PIXEL_DEPTH:Lorg/apache/tika/metadata/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    const-string/jumbo v0, "xmpDM:absPeakAudioFilePath"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalURI(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 34
    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->ABS_PEAK_AUDIO_FILE_PATH:Lorg/apache/tika/metadata/Property;

    .line 40
    const-string/jumbo v0, "xmpDM:album"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->externalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->ALBUM:Lorg/apache/tika/metadata/Property;

    .line 47
    const-string/jumbo v0, "xmpDM:altTapeName"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->externalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->ALT_TAPE_NAME:Lorg/apache/tika/metadata/Property;

    .line 58
    const-string/jumbo v0, "xmpDM:artist"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->externalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->ARTIST:Lorg/apache/tika/metadata/Property;

    .line 63
    const-string/jumbo v0, "xmpDM:audioModDate"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalDate(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->AUDIO_MOD_DATE:Lorg/apache/tika/metadata/Property;

    .line 70
    const-string/jumbo v0, "xmpDM:audioSampleRate"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalInteger(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 69
    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->AUDIO_SAMPLE_RATE:Lorg/apache/tika/metadata/Property;

    .line 76
    const-string/jumbo v0, "xmpDM:audioSampleType"

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "8Int"

    aput-object v2, v1, v4

    const-string/jumbo v2, "16Int"

    aput-object v2, v1, v5

    const-string/jumbo v2, "32Int"

    aput-object v2, v1, v6

    const-string/jumbo v2, "32Float"

    aput-object v2, v1, v7

    .line 75
    invoke-static {v0, v1}, Lorg/apache/tika/metadata/Property;->internalClosedChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->AUDIO_SAMPLE_TYPE:Lorg/apache/tika/metadata/Property;

    .line 82
    const-string/jumbo v0, "xmpDM:audioChannelType"

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "Mono"

    aput-object v2, v1, v4

    const-string/jumbo v2, "Stereo"

    aput-object v2, v1, v5

    const-string/jumbo v2, "5.1"

    aput-object v2, v1, v6

    const-string/jumbo v2, "7.1"

    aput-object v2, v1, v7

    .line 81
    invoke-static {v0, v1}, Lorg/apache/tika/metadata/Property;->internalClosedChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->AUDIO_CHANNEL_TYPE:Lorg/apache/tika/metadata/Property;

    .line 87
    const-string/jumbo v0, "xmpDM:audioCompressor"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->AUDIO_COMPRESSOR:Lorg/apache/tika/metadata/Property;

    .line 97
    const-string/jumbo v0, "xmpDM:composer"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->externalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->COMPOSER:Lorg/apache/tika/metadata/Property;

    .line 107
    const-string/jumbo v0, "xmpDM:copyright"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->externalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->COPYRIGHT:Lorg/apache/tika/metadata/Property;

    .line 117
    const-string/jumbo v0, "xmpDM:engineer"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->externalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->ENGINEER:Lorg/apache/tika/metadata/Property;

    .line 123
    const-string/jumbo v0, "xmpDM:fileDataRate"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalRational(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->FILE_DATA_RATE:Lorg/apache/tika/metadata/Property;

    .line 128
    const-string/jumbo v0, "xmpDM:genre"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->externalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->GENRE:Lorg/apache/tika/metadata/Property;

    .line 133
    const-string/jumbo v0, "xmpDM:instrument"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->externalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->INSTRUMENT:Lorg/apache/tika/metadata/Property;

    .line 144
    const-string/jumbo v0, "xmpDM:key"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "C"

    aput-object v2, v1, v4

    const-string/jumbo v2, "C#"

    aput-object v2, v1, v5

    const-string/jumbo v2, "D"

    aput-object v2, v1, v6

    const-string/jumbo v2, "D#"

    aput-object v2, v1, v7

    const-string/jumbo v2, "E"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "F"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "F#"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 145
    const-string/jumbo v3, "G"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "G#"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "A"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "A#"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "B"

    aput-object v3, v1, v2

    .line 143
    invoke-static {v0, v1}, Lorg/apache/tika/metadata/Property;->internalClosedChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->KEY:Lorg/apache/tika/metadata/Property;

    .line 150
    const-string/jumbo v0, "xmpDM:logComment"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->externalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->LOG_COMMENT:Lorg/apache/tika/metadata/Property;

    .line 155
    const-string/jumbo v0, "xmpDM:loop"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalBoolean(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->LOOP:Lorg/apache/tika/metadata/Property;

    .line 160
    const-string/jumbo v0, "xmpDM:numberOfBeats"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalReal(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->NUMBER_OF_BEATS:Lorg/apache/tika/metadata/Property;

    .line 170
    const-string/jumbo v0, "xmpDM:metadataModDate"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalDate(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->METADATA_MOD_DATE:Lorg/apache/tika/metadata/Property;

    .line 186
    const-string/jumbo v0, "xmpDM:pullDown"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "WSSWW"

    aput-object v2, v1, v4

    const-string/jumbo v2, "SSWWW"

    aput-object v2, v1, v5

    const-string/jumbo v2, "SWWWS"

    aput-object v2, v1, v6

    const-string/jumbo v2, "WWWSS"

    aput-object v2, v1, v7

    const-string/jumbo v2, "WWSSW"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    .line 187
    const-string/jumbo v3, "WSSWW_24p"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "SSWWW_24p"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "SWWWS_24p"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "WWWSS_24p"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "WWSSW_24p"

    aput-object v3, v1, v2

    .line 185
    invoke-static {v0, v1}, Lorg/apache/tika/metadata/Property;->internalClosedChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->PULL_DOWN:Lorg/apache/tika/metadata/Property;

    .line 194
    const-string/jumbo v0, "xmpDM:relativePeakAudioFilePath"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalURI(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 193
    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->RELATIVE_PEAK_AUDIO_FILE_PATH:Lorg/apache/tika/metadata/Property;

    .line 204
    const-string/jumbo v0, "xmpDM:releaseDate"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->externalDate(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->RELEASE_DATE:Lorg/apache/tika/metadata/Property;

    .line 216
    const-string/jumbo v0, "xmpDM:scaleType"

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "Major"

    aput-object v2, v1, v4

    const-string/jumbo v2, "Minor"

    aput-object v2, v1, v5

    const-string/jumbo v2, "Both"

    aput-object v2, v1, v6

    const-string/jumbo v2, "Neither"

    aput-object v2, v1, v7

    .line 215
    invoke-static {v0, v1}, Lorg/apache/tika/metadata/Property;->internalClosedChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->SCALE_TYPE:Lorg/apache/tika/metadata/Property;

    .line 221
    const-string/jumbo v0, "xmpDM:scene"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->externalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->SCENE:Lorg/apache/tika/metadata/Property;

    .line 226
    const-string/jumbo v0, "xmpDM:shotDate"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->externalDate(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->SHOT_DATE:Lorg/apache/tika/metadata/Property;

    .line 233
    const-string/jumbo v0, "xmpDM:shotLocation"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->externalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->SHOT_LOCATION:Lorg/apache/tika/metadata/Property;

    .line 238
    const-string/jumbo v0, "xmpDM:shotName"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->externalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->SHOT_NAME:Lorg/apache/tika/metadata/Property;

    .line 246
    const-string/jumbo v0, "xmpDM:speakerPlacement"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->externalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 245
    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->SPEAKER_PLACEMENT:Lorg/apache/tika/metadata/Property;

    .line 258
    const-string/jumbo v0, "xmpDM:stretchMode"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Fixed length"

    aput-object v2, v1, v4

    const-string/jumbo v2, "Time-Scale"

    aput-object v2, v1, v5

    const-string/jumbo v2, "Resample"

    aput-object v2, v1, v6

    .line 259
    const-string/jumbo v2, "Beat Splice"

    aput-object v2, v1, v7

    const-string/jumbo v2, "Hybrid"

    aput-object v2, v1, v8

    .line 257
    invoke-static {v0, v1}, Lorg/apache/tika/metadata/Property;->internalClosedChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->STRETCH_MODE:Lorg/apache/tika/metadata/Property;

    .line 265
    const-string/jumbo v0, "xmpDM:tapeName"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->externalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->TAPE_NAME:Lorg/apache/tika/metadata/Property;

    .line 270
    const-string/jumbo v0, "xmpDM:tempo"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalReal(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->TEMPO:Lorg/apache/tika/metadata/Property;

    .line 281
    const-string/jumbo v0, "xmpDM:timeSignature"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "2/4"

    aput-object v2, v1, v4

    const-string/jumbo v2, "3/4"

    aput-object v2, v1, v5

    const-string/jumbo v2, "4/4"

    aput-object v2, v1, v6

    const-string/jumbo v2, "5/4"

    aput-object v2, v1, v7

    const-string/jumbo v2, "7/4"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    .line 282
    const-string/jumbo v3, "6/8"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "9/8"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "12/8"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "other"

    aput-object v3, v1, v2

    .line 280
    invoke-static {v0, v1}, Lorg/apache/tika/metadata/Property;->internalClosedChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->TIME_SIGNATURE:Lorg/apache/tika/metadata/Property;

    .line 288
    const-string/jumbo v0, "xmpDM:trackNumber"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->externalInteger(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->TRACK_NUMBER:Lorg/apache/tika/metadata/Property;

    .line 301
    const-string/jumbo v0, "xmpDM:videoAlphaMode"

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "straight"

    aput-object v2, v1, v4

    const-string/jumbo v2, "pre-multiplied"

    aput-object v2, v1, v5

    .line 300
    invoke-static {v0, v1}, Lorg/apache/tika/metadata/Property;->externalClosedChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->VIDEO_ALPHA_MODE:Lorg/apache/tika/metadata/Property;

    .line 313
    const-string/jumbo v0, "xmpDM:videoAlphaUnityIsTransparent"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalBoolean(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 312
    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->VIDEO_ALPHA_UNITY_IS_TRANSPARENT:Lorg/apache/tika/metadata/Property;

    .line 319
    const-string/jumbo v0, "xmpDM:videoColorSpace"

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "sRGB"

    aput-object v2, v1, v4

    const-string/jumbo v2, "CCIR-601"

    aput-object v2, v1, v5

    const-string/jumbo v2, "CCIR-709"

    aput-object v2, v1, v6

    .line 318
    invoke-static {v0, v1}, Lorg/apache/tika/metadata/Property;->internalClosedChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->VIDEO_COLOR_SPACE:Lorg/apache/tika/metadata/Property;

    .line 324
    const-string/jumbo v0, "xmpDM:videoCompressor"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->VIDEO_COMPRESSOR:Lorg/apache/tika/metadata/Property;

    .line 330
    const-string/jumbo v0, "xmpDM:videoFieldOrder"

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "Upper"

    aput-object v2, v1, v4

    const-string/jumbo v2, "Lower"

    aput-object v2, v1, v5

    const-string/jumbo v2, "Progressive"

    aput-object v2, v1, v6

    .line 329
    invoke-static {v0, v1}, Lorg/apache/tika/metadata/Property;->internalClosedChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->VIDEO_FIELD_ORDER:Lorg/apache/tika/metadata/Property;

    .line 336
    const-string/jumbo v0, "xmpDM:videoFrameRate"

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "24"

    aput-object v2, v1, v4

    const-string/jumbo v2, "NTSC"

    aput-object v2, v1, v5

    const-string/jumbo v2, "PAL"

    aput-object v2, v1, v6

    .line 335
    invoke-static {v0, v1}, Lorg/apache/tika/metadata/Property;->internalOpenChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->VIDEO_FRAME_RATE:Lorg/apache/tika/metadata/Property;

    .line 346
    const-string/jumbo v0, "xmpDM:videoModDate"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalDate(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->VIDEO_MOD_DATE:Lorg/apache/tika/metadata/Property;

    .line 353
    const-string/jumbo v0, "xmpDM:videoPixelDepth"

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "8Int"

    aput-object v2, v1, v4

    const-string/jumbo v2, "16Int"

    aput-object v2, v1, v5

    const-string/jumbo v2, "32Int"

    aput-object v2, v1, v6

    const-string/jumbo v2, "32Float"

    aput-object v2, v1, v7

    .line 352
    invoke-static {v0, v1}, Lorg/apache/tika/metadata/Property;->internalClosedChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->VIDEO_PIXEL_DEPTH:Lorg/apache/tika/metadata/Property;

    .line 359
    const-string/jumbo v0, "xmpDM:videoPixelAspectRatio"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalRational(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 358
    sput-object v0, Lorg/apache/tika/metadata/XMPDM;->VIDEO_PIXEL_ASPECT_RATIO:Lorg/apache/tika/metadata/Property;

    .line 359
    return-void
.end method
