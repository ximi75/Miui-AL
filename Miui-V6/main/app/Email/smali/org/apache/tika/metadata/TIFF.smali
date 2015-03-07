.class public interface abstract Lorg/apache/tika/metadata/TIFF;
.super Ljava/lang/Object;
.source "TIFF.java"


# static fields
.field public static final BITS_PER_SAMPLE:Lorg/apache/tika/metadata/Property;

.field public static final EQUIPMENT_MAKE:Lorg/apache/tika/metadata/Property;

.field public static final EQUIPMENT_MODEL:Lorg/apache/tika/metadata/Property;

.field public static final EXPOSURE_TIME:Lorg/apache/tika/metadata/Property;

.field public static final FLASH_FIRED:Lorg/apache/tika/metadata/Property;

.field public static final FOCAL_LENGTH:Lorg/apache/tika/metadata/Property;

.field public static final F_NUMBER:Lorg/apache/tika/metadata/Property;

.field public static final IMAGE_LENGTH:Lorg/apache/tika/metadata/Property;

.field public static final IMAGE_WIDTH:Lorg/apache/tika/metadata/Property;

.field public static final ISO_SPEED_RATINGS:Lorg/apache/tika/metadata/Property;

.field public static final ORIENTATION:Lorg/apache/tika/metadata/Property;

.field public static final ORIGINAL_DATE:Lorg/apache/tika/metadata/Property;

.field public static final RESOLUTION_HORIZONTAL:Lorg/apache/tika/metadata/Property;

.field public static final RESOLUTION_UNIT:Lorg/apache/tika/metadata/Property;

.field public static final RESOLUTION_VERTICAL:Lorg/apache/tika/metadata/Property;

.field public static final SAMPLES_PER_PIXEL:Lorg/apache/tika/metadata/Property;

.field public static final SOFTWARE:Lorg/apache/tika/metadata/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    const-string/jumbo v0, "tiff:BitsPerSample"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalIntegerSequence(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 33
    sput-object v0, Lorg/apache/tika/metadata/TIFF;->BITS_PER_SAMPLE:Lorg/apache/tika/metadata/Property;

    .line 40
    const-string/jumbo v0, "tiff:ImageLength"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalInteger(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 39
    sput-object v0, Lorg/apache/tika/metadata/TIFF;->IMAGE_LENGTH:Lorg/apache/tika/metadata/Property;

    .line 46
    const-string/jumbo v0, "tiff:ImageWidth"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalInteger(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 45
    sput-object v0, Lorg/apache/tika/metadata/TIFF;->IMAGE_WIDTH:Lorg/apache/tika/metadata/Property;

    .line 52
    const-string/jumbo v0, "tiff:SamplesPerPixel"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalInteger(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 51
    sput-object v0, Lorg/apache/tika/metadata/TIFF;->SAMPLES_PER_PIXEL:Lorg/apache/tika/metadata/Property;

    .line 58
    const-string/jumbo v0, "exif:Flash"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalBoolean(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 57
    sput-object v0, Lorg/apache/tika/metadata/TIFF;->FLASH_FIRED:Lorg/apache/tika/metadata/Property;

    .line 64
    const-string/jumbo v0, "exif:ExposureTime"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalRational(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 63
    sput-object v0, Lorg/apache/tika/metadata/TIFF;->EXPOSURE_TIME:Lorg/apache/tika/metadata/Property;

    .line 72
    const-string/jumbo v0, "exif:FNumber"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalRational(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 71
    sput-object v0, Lorg/apache/tika/metadata/TIFF;->F_NUMBER:Lorg/apache/tika/metadata/Property;

    .line 78
    const-string/jumbo v0, "exif:FocalLength"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalRational(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 77
    sput-object v0, Lorg/apache/tika/metadata/TIFF;->FOCAL_LENGTH:Lorg/apache/tika/metadata/Property;

    .line 84
    const-string/jumbo v0, "exif:IsoSpeedRatings"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalIntegerSequence(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 83
    sput-object v0, Lorg/apache/tika/metadata/TIFF;->ISO_SPEED_RATINGS:Lorg/apache/tika/metadata/Property;

    .line 90
    const-string/jumbo v0, "tiff:Make"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 89
    sput-object v0, Lorg/apache/tika/metadata/TIFF;->EQUIPMENT_MAKE:Lorg/apache/tika/metadata/Property;

    .line 96
    const-string/jumbo v0, "tiff:Model"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 95
    sput-object v0, Lorg/apache/tika/metadata/TIFF;->EQUIPMENT_MODEL:Lorg/apache/tika/metadata/Property;

    .line 102
    const-string/jumbo v0, "tiff:Software"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 101
    sput-object v0, Lorg/apache/tika/metadata/TIFF;->SOFTWARE:Lorg/apache/tika/metadata/Property;

    .line 116
    const-string/jumbo v0, "tiff:Orientation"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    const-string/jumbo v2, "2"

    aput-object v2, v1, v5

    const-string/jumbo v2, "3"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string/jumbo v3, "4"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "7"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "8"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/apache/tika/metadata/Property;->internalClosedChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 115
    sput-object v0, Lorg/apache/tika/metadata/TIFF;->ORIENTATION:Lorg/apache/tika/metadata/Property;

    .line 122
    const-string/jumbo v0, "tiff:XResolution"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalRational(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 121
    sput-object v0, Lorg/apache/tika/metadata/TIFF;->RESOLUTION_HORIZONTAL:Lorg/apache/tika/metadata/Property;

    .line 128
    const-string/jumbo v0, "tiff:YResolution"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalRational(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 127
    sput-object v0, Lorg/apache/tika/metadata/TIFF;->RESOLUTION_VERTICAL:Lorg/apache/tika/metadata/Property;

    .line 135
    const-string/jumbo v0, "tiff:ResolutionUnit"

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "Inch"

    aput-object v2, v1, v4

    const-string/jumbo v2, "cm"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lorg/apache/tika/metadata/Property;->internalClosedChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 134
    sput-object v0, Lorg/apache/tika/metadata/TIFF;->RESOLUTION_UNIT:Lorg/apache/tika/metadata/Property;

    .line 141
    const-string/jumbo v0, "exif:DateTimeOriginal"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalDate(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 140
    sput-object v0, Lorg/apache/tika/metadata/TIFF;->ORIGINAL_DATE:Lorg/apache/tika/metadata/Property;

    .line 141
    return-void
.end method
