.class public Lorg/mozilla/intl/chardet/EUCKRStatistics;
.super Lorg/mozilla/intl/chardet/nsEUCStatistics;
.source "EUCKRStatistics.java"


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

    .line 60
    invoke-direct {p0}, Lorg/mozilla/intl/chardet/nsEUCStatistics;-><init>()V

    .line 62
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mozilla/intl/chardet/EUCKRStatistics;->mFirstByteFreq:[F

    .line 160
    const v0, 0x3cd1a869

    sput v0, Lorg/mozilla/intl/chardet/EUCKRStatistics;->mFirstByteStdDev:F

    .line 161
    sput v1, Lorg/mozilla/intl/chardet/EUCKRStatistics;->mFirstByteMean:F

    .line 162
    const v0, 0x3f25be6e

    sput v0, Lorg/mozilla/intl/chardet/EUCKRStatistics;->mFirstByteWeight:F

    .line 164
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lorg/mozilla/intl/chardet/EUCKRStatistics;->mSecondByteFreq:[F

    .line 262
    const v0, 0x3c645804

    sput v0, Lorg/mozilla/intl/chardet/EUCKRStatistics;->mSecondByteStdDev:F

    .line 263
    sput v1, Lorg/mozilla/intl/chardet/EUCKRStatistics;->mSecondByteMean:F

    .line 264
    const v0, 0x3eb48323

    sput v0, Lorg/mozilla/intl/chardet/EUCKRStatistics;->mSecondByteWeight:F

    .line 265
    return-void

    .line 62
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x39d801b4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3d6b8738
        0x3d07e9d9
        0x3b1491f3
        0x3c83b1d1
        0x3c6fbf40
        0x3d0711d8
        0x3b8711d8
        0x3c39baa1
        0x3d6fc04d
        0x3cc8eac0
        0x3cd4bcf1
        0x3d5ede12
        0x3ca0663c
        0x3d819546
        0x3de96b33
        0x3cf4d163
        0x3e19a459
        0x3d724852
        0x3b2f9229
        0x3c221640
        0x3c731f47
        0x3cd81cf8
        0x3c767f4e
        0x3d8e3ef3
        0x3db80885
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 164
    :array_1
    .array-data 4
        0x3c88c1db
        0x0
        0x3c515ad1
        0x3cf68167
        0x3b2f9229
        0x3bd81adf
        0x3af32379
        0x3a5801b4
        0x3bc3dab6
        0x3b9b5200
        0x3b4aa327
        0x3a5801b4
        0x3ca0663c
        0x3d18cc14
        0x3c0711d8
        0x3c6fbf40
        0x3a87229f
        0x0
        0x3b582342
        0x3b0711d8
        0x3bca9ac3
        0x3bc3dab6
        0x3a5801b4
        0x3cb2f87b
        0x3c731f47
        0x3d58f4f9
        0x3c8dd1e5
        0x3bf9e386
        0x39d801b4
        0x3a5801b4
        0x3c365669
        0x0
        0x39d801b4
        0x3ad82342
        0x3bc3dab6
        0x3d86a5d7
        0x3ca57647
        0x3caf965b
        0x3c6fbf40
        0x3b8711d8
        0x3ad82342
        0x3a5801b4
        0x3a5801b4
        0x3d54bbe4
        0x3ca0663c
        0x3cbec893
        0x3cd81cf8
        0x3d257647
        0x3c1491f3
        0x3abd230c
        0x3b732379
        0x3bf32379
        0x3abd230c
        0x3c581adf
        0x3b3d1245
        0x39d801b4
        0x3b582342
        0x3cd4bcf1
        0x39d801b4
        0x39d801b4
        0x3bca9ac3
        0x3b582342
        0x3d892e62
        0x3b2f9229
        0x3b1491f3
        0x3c365669
        0x39d801b4
        0x3c257647
        0x3c79df55
        0x3bf9e386
        0x3d33cf70
        0x3b732379
        0x3b2f9229
        0x3abd230c
        0x3c32f662
        0x3b3d1245
        0x3c1491f3
        0x3ca3c643
        0x39d801b4
        0x3c0a71de
        0x3ba8da7f
        0x0
        0x3c257647
        0x0
        0x3ad82342
        0x3c473abd
        0x3c3d1aa8
        0x3bd81adf
        0x3af32379
        0x3c32f662
        0x39d801b4
        0x3cc22ab2
        0x3b732379
        0x3af32379
    .end array-data
.end method


# virtual methods
.method public mFirstByteFreq()[F
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/mozilla/intl/chardet/EUCKRStatistics;->mFirstByteFreq:[F

    return-object v0
.end method

.method public mFirstByteMean()F
    .locals 1

    .prologue
    .line 53
    sget v0, Lorg/mozilla/intl/chardet/EUCKRStatistics;->mFirstByteMean:F

    return v0
.end method

.method public mFirstByteStdDev()F
    .locals 1

    .prologue
    .line 52
    sget v0, Lorg/mozilla/intl/chardet/EUCKRStatistics;->mFirstByteStdDev:F

    return v0
.end method

.method public mFirstByteWeight()F
    .locals 1

    .prologue
    .line 54
    sget v0, Lorg/mozilla/intl/chardet/EUCKRStatistics;->mFirstByteWeight:F

    return v0
.end method

.method public mSecondByteFreq()[F
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/mozilla/intl/chardet/EUCKRStatistics;->mSecondByteFreq:[F

    return-object v0
.end method

.method public mSecondByteMean()F
    .locals 1

    .prologue
    .line 57
    sget v0, Lorg/mozilla/intl/chardet/EUCKRStatistics;->mSecondByteMean:F

    return v0
.end method

.method public mSecondByteStdDev()F
    .locals 1

    .prologue
    .line 56
    sget v0, Lorg/mozilla/intl/chardet/EUCKRStatistics;->mSecondByteStdDev:F

    return v0
.end method

.method public mSecondByteWeight()F
    .locals 1

    .prologue
    .line 58
    sget v0, Lorg/mozilla/intl/chardet/EUCKRStatistics;->mSecondByteWeight:F

    return v0
.end method
