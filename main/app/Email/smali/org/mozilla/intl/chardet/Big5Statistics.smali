.class public Lorg/mozilla/intl/chardet/Big5Statistics;
.super Lorg/mozilla/intl/chardet/nsEUCStatistics;
.source "Big5Statistics.java"


# static fields
.field static mFirstByteFreq:[F

.field static mFirstByteMean:F

.field static mFirstByteStdDev:F

.field static mFirstByteWeight:F

.field static mSecondByteFreq:[F

.field static mSecondByteMean:F

.field static mSecondByteStdDev:F

.field static mSecondByteWeight:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x5e

    const v1, 0x3c2e4b02

    .line 57
    invoke-direct {p0}, Lorg/mozilla/intl/chardet/nsEUCStatistics;-><init>()V

    .line 59
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mozilla/intl/chardet/Big5Statistics;->mFirstByteFreq:[F

    .line 156
    const v0, 0x3ca8cdea

    sput v0, Lorg/mozilla/intl/chardet/Big5Statistics;->mFirstByteStdDev:F

    .line 157
    sput v1, Lorg/mozilla/intl/chardet/Big5Statistics;->mFirstByteMean:F

    .line 158
    const v0, 0x3f2cdde8

    sput v0, Lorg/mozilla/intl/chardet/Big5Statistics;->mFirstByteWeight:F

    .line 160
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lorg/mozilla/intl/chardet/Big5Statistics;->mSecondByteFreq:[F

    .line 257
    const v0, 0x3c22595c

    sput v0, Lorg/mozilla/intl/chardet/Big5Statistics;->mSecondByteStdDev:F

    .line 258
    sput v1, Lorg/mozilla/intl/chardet/Big5Statistics;->mSecondByteMean:F

    .line 259
    const v0, 0x3ea64431

    sput v0, Lorg/mozilla/intl/chardet/Big5Statistics;->mSecondByteWeight:F

    .line 261
    return-void

    .line 59
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3dea58b4
        0x3d7a17f4
        0x3d9ad320
        0x3d463066
        0x3d83009b
        0x3cddf43c
        0x3dc42bfa
        0x3cf1de6a
        0x3d0054ef
        0x3d17342f
        0x3cb2a066
        0x3c9e81cb
        0x3d199568
        0x3c940358
        0x3c510f52
        0x3cf631b6
        0x3c8e0a85
        0x3c890f73
        0x3c9fc090
        0x3c3827fa
        0x3d070eb2
        0x3c88765c
        0x3c8205ff
        0x3cafc8b0
        0x3c4acd18
        0x3c8b49e0
        0x3caa68f5
        0x3c4c0bdd
        0x3c175f2d
        0x3c5230ba
        0x3c01cb47
        0x3c252264
        0x3c20cf18
        0x3c258b3f
        0x0
        0x0
        0x0
        0x385e4c51
        0x3812ccf7
        0x38dc3372
        0x380205ff
        0x38b88ca4
        0x37e27e0f
        0x37e27e0f
        0x37da1a93
        0x3812ccf7
        0x37c9539c
        0x380e9b39
        0x39c49ba6
        0x37d1b717
        0x37eae18b
        0x37a7c5ac
        0x37c9539c
        0x37eae18b
        0x380205ff
        0x387776c5
        0x3827c5ac
        0x37fba882
        0x38a5accd
        0x381b3073
        0x3827c5ac
        0x37c0f020
        0x37fba882
        0x37e27e0f
        0x388637bd
        0x37a7c5ac
        0x37e27e0f
        0x37d1b717
        0x389b3073
        0x379f6230
        0x37c0f020
        0x37b02928
        0x3796feb5
        0x378e9b39
        0x3812ccf7
        0x37b02928
        0x379f6230
        0x37d1b717
        0x378e9b39
        0x381b3073
        0x3796feb5
        0x3796feb5
        0x379f6230
        0x37b88ca4
        0x380a697b
        0x380637bd
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 160
    :array_1
    .array-data 4
        0x3ca5efe9
        0x3b57cf5f
        0x3d3ba451
        0x3c886595
        0x3be789e7
        0x3b87db2b
        0x3c17353b
        0x3bf049aa
        0x3b5801b4
        0x3bababeb
        0x3c07b13a
        0x3b78726d
        0x3bc868ba
        0x3b67bc3c
        0x3b83dbc2
        0x3c886df8
        0x3c18eda2
        0x3bb1e5c1
        0x3d08c60d
        0x3bc892ab
        0x3c132d6f
        0x3b3790fb
        0x3b8a5050
        0x3c29b068
        0x3c70c34c
        0x3d9f9d6f
        0x3bcee5ac
        0x3b83ba34
        0x3bf038e3
        0x3bea4a8c
        0x3baf038e
        0x3c16a6a0
        0x3baf4f0e
        0x3bbab64a
        0x3b9289db
        0x3bed4e4d
        0x3b845996
        0x3c36bf44
        0x3c84944f
        0x3b9b5a64
        0x3c51f1d0
        0x3bfba01f
        0x3c03cf2d
        0x3c883dbc
        0x3c1ad85e
        0x3c870fbf
        0x3beec7c9
        0x3c4fe154
        0x3c8eb67c
        0x3c5859c9
        0x3d00f12c
        0x3b5f15a5
        0x3c15e5b0
        0x3c122963
        0x3bf63800
        0x3c0e4324
        0x3c0665e0
        0x3d00a06f
        0x3c403bc5
        0x3c7fde72
        0x3c7ac604
        0x3b8333fd
        0x3c3291b8
        0x3c233376
        0x3c096dd2
        0x3c32e9cd
        0x3b809d49
        0x3c0ca81a
        0x3c1539b9
        0x3c7eb4a6
        0x3b98aa86
        0x3be3369c
        0x3be62132
        0x3ca5e786
        0x3bb0856e
        0x3cca600b
        0x3be429e1
        0x3b2c0831
        0x3c1bd838
        0x3b42b51c
        0x3c06e3b4
        0x3c23d70a
        0x3c442a67
        0x3c2ce67d
        0x3bc2ce46
        0x3bd00b46
        0x3c1a06a7
        0x3c0c868c
        0x3c061e93
        0x3c05ad54
        0x3ba4ebdd
        0x3c0ec52a
        0x3c2de658
        0x3bd6c2f0
    .end array-data
.end method


# virtual methods
.method public mFirstByteFreq()[F
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/mozilla/intl/chardet/Big5Statistics;->mFirstByteFreq:[F

    return-object v0
.end method

.method public mFirstByteMean()F
    .locals 1

    .prologue
    .line 50
    sget v0, Lorg/mozilla/intl/chardet/Big5Statistics;->mFirstByteMean:F

    return v0
.end method

.method public mFirstByteStdDev()F
    .locals 1

    .prologue
    .line 49
    sget v0, Lorg/mozilla/intl/chardet/Big5Statistics;->mFirstByteStdDev:F

    return v0
.end method

.method public mFirstByteWeight()F
    .locals 1

    .prologue
    .line 51
    sget v0, Lorg/mozilla/intl/chardet/Big5Statistics;->mFirstByteWeight:F

    return v0
.end method

.method public mSecondByteFreq()[F
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lorg/mozilla/intl/chardet/Big5Statistics;->mSecondByteFreq:[F

    return-object v0
.end method

.method public mSecondByteMean()F
    .locals 1

    .prologue
    .line 54
    sget v0, Lorg/mozilla/intl/chardet/Big5Statistics;->mSecondByteMean:F

    return v0
.end method

.method public mSecondByteStdDev()F
    .locals 1

    .prologue
    .line 53
    sget v0, Lorg/mozilla/intl/chardet/Big5Statistics;->mSecondByteStdDev:F

    return v0
.end method

.method public mSecondByteWeight()F
    .locals 1

    .prologue
    .line 55
    sget v0, Lorg/mozilla/intl/chardet/Big5Statistics;->mSecondByteWeight:F

    return v0
.end method
