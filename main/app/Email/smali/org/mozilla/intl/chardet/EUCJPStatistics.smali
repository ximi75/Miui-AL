.class public Lorg/mozilla/intl/chardet/EUCJPStatistics;
.super Lorg/mozilla/intl/chardet/nsEUCStatistics;
.source "EUCJPStatistics.java"


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

    sput-object v0, Lorg/mozilla/intl/chardet/EUCJPStatistics;->mFirstByteFreq:[F

    .line 160
    const v0, 0x3d4e7792

    sput v0, Lorg/mozilla/intl/chardet/EUCJPStatistics;->mFirstByteStdDev:F

    .line 161
    sput v1, Lorg/mozilla/intl/chardet/EUCJPStatistics;->mFirstByteMean:F

    .line 162
    const v0, 0x3f24101f

    sput v0, Lorg/mozilla/intl/chardet/EUCJPStatistics;->mFirstByteWeight:F

    .line 164
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lorg/mozilla/intl/chardet/EUCJPStatistics;->mSecondByteFreq:[F

    .line 262
    const v0, 0x3ce76641

    sput v0, Lorg/mozilla/intl/chardet/EUCJPStatistics;->mSecondByteStdDev:F

    .line 263
    sput v1, Lorg/mozilla/intl/chardet/EUCJPStatistics;->mSecondByteMean:F

    .line 264
    const v0, 0x3eb7dfc2

    sput v0, Lorg/mozilla/intl/chardet/EUCJPStatistics;->mSecondByteWeight:F

    .line 265
    return-void

    .line 62
    nop

    :array_0
    .array-data 4
        0x3ebac81d
        0x0
        0x0
        0x3e14d014
        0x3e9c1aac
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
        0x3af08462
        0x3c3078d9
        0x3bd3bf2f
        0x3a97a67a
        0x3b0a8b09
        0x3b53bf2f
        0x3ab1bbcf
        0x3bf32379
        0x3b8943e1
        0x3b53bf2f
        0x3b46b485
        0x3d07f23d
        0x3bce8965
        0x3bc6b485
        0x3c2365cb
        0x3b1a4591
        0x3b708462
        0x3c15aaf8
        0x3adb8bac
        0x3b36f9fd
        0x3b0fc936
        0x3c712c28
        0x3c436da8
        0x3a662995
        0x3c57060c
        0x3a8d2a20
        0x3c184a0e
        0x3b6379b7
        0x3b3c382a
        0x3b1f72f7
        0x3a7adf2f
        0x3ad66f0d
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
        0x38a7c5ac
        0x399246bf
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
        0x38a7c5ac
        0x0
    .end array-data

    .line 164
    :array_1
    .array-data 4
        0x3b22120e
        0x3d204af9
        0x3e1c692f
        0x3c1ed395
        0x39bc382a
        0x3cb5b2d5
        0x3a46b485
        0x3b8d2a20
        0x3927c5ac
        0x3b24b125
        0x3b49539c
        0x3aac7da2
        0x3b7b00bd
        0x3a87ebf2
        0x3b6b4635
        0x3a7adf2f
        0x3927c5ac
        0x397a9c13
        0x3bd3bf2f
        0x3ad130e0
        0x3d013ec4
        0x3aac7da2
        0x3b0fc936
        0x3c879e5a
        0x3b565e46
        0x3a31bbcf
        0x3a1cc31a
        0x3e53647c
        0x3a3c382a
        0x3a8d2a20
        0x3b732379
        0x3ab1bbcf
        0x3ab1bbcf
        0x39e62995
        0x3b8fc936
        0x3bbae89f
        0x3a662995
        0x3c26a876
        0x3be75ff6
        0x3c708462
        0x3a273f75
        0x3cd2c7b9
        0x3b36f9fd
        0x3a3c382a
        0x3aeb4635
        0x3dbb7f17
        0x3a46b485
        0x3b801712
        0x3a1246bf
        0x3cff8ca8
        0x3be75ff6
        0x3aac7da2
        0x3cb8f798
        0x3be4c0df
        0x3bede54b
        0x3a92684d
        0x397a9c13
        0x3c46b053
        0x3a662995
        0x3b7861a6
        0x3a8d2a20
        0x3a46b485
        0x3b0a8b09
        0x3b12684d
        0x3a31bbcf
        0x3b44156e
        0x3b58fd5d
        0x3cbfd2e9
        0x3aa222d5
        0x3b346bad
        0x3ba89fc7
        0x3b0fc936
        0x3be6106b
        0x3c0b3700
        0x3c617e35
        0x3c40ce92
        0x3bce8965
        0x3afb00bd
        0x3a273f75
        0x3c0fc936
        0x3a70a5f0
        0x3b60daa1
        0x3d6bf120
        0x39e62995
        0x39e62995
        0x3a46b485
        0x3b3c382a
        0x3adb8bac
        0x3c350b0f
        0x0
        0x399246bf
        0x3c46b053
        0x3a3c382a
        0x3bf1d3ed
    .end array-data
.end method


# virtual methods
.method public mFirstByteFreq()[F
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/mozilla/intl/chardet/EUCJPStatistics;->mFirstByteFreq:[F

    return-object v0
.end method

.method public mFirstByteMean()F
    .locals 1

    .prologue
    .line 53
    sget v0, Lorg/mozilla/intl/chardet/EUCJPStatistics;->mFirstByteMean:F

    return v0
.end method

.method public mFirstByteStdDev()F
    .locals 1

    .prologue
    .line 52
    sget v0, Lorg/mozilla/intl/chardet/EUCJPStatistics;->mFirstByteStdDev:F

    return v0
.end method

.method public mFirstByteWeight()F
    .locals 1

    .prologue
    .line 54
    sget v0, Lorg/mozilla/intl/chardet/EUCJPStatistics;->mFirstByteWeight:F

    return v0
.end method

.method public mSecondByteFreq()[F
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/mozilla/intl/chardet/EUCJPStatistics;->mSecondByteFreq:[F

    return-object v0
.end method

.method public mSecondByteMean()F
    .locals 1

    .prologue
    .line 57
    sget v0, Lorg/mozilla/intl/chardet/EUCJPStatistics;->mSecondByteMean:F

    return v0
.end method

.method public mSecondByteStdDev()F
    .locals 1

    .prologue
    .line 56
    sget v0, Lorg/mozilla/intl/chardet/EUCJPStatistics;->mSecondByteStdDev:F

    return v0
.end method

.method public mSecondByteWeight()F
    .locals 1

    .prologue
    .line 58
    sget v0, Lorg/mozilla/intl/chardet/EUCJPStatistics;->mSecondByteWeight:F

    return v0
.end method
