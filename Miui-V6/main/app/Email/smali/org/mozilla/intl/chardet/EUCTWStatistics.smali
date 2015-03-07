.class public Lorg/mozilla/intl/chardet/EUCTWStatistics;
.super Lorg/mozilla/intl/chardet/nsEUCStatistics;
.source "EUCTWStatistics.java"


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

    sput-object v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mFirstByteFreq:[F

    .line 159
    const v0, 0x3c88a698

    sput v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mFirstByteStdDev:F

    .line 160
    sput v1, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mFirstByteMean:F

    .line 161
    const v0, 0x3f37317f

    sput v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mFirstByteWeight:F

    .line 163
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mSecondByteFreq:[F

    .line 260
    const v0, 0x3bd94079

    sput v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mSecondByteStdDev:F

    .line 261
    sput v1, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mSecondByteMean:F

    .line 262
    const v0, 0x3e919d02

    sput v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mSecondByteWeight:F

    .line 263
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
        0x3df44c38
        0x3d55f245
        0x3d34bd77
        0x3d5703f3
        0x3d3c07ee
        0x3c9bf594
        0x3d04fa05
        0x3cd70e6f
        0x3cd0e992
        0x3c82c4d6
        0x3d5702e6
        0x3c9dbec2
        0x3c78012e
        0x3d022dd8
        0x3c8e4b88
        0x3c9780bb
        0x3c7f2e49
        0x3c8828c3
        0x3bf3eccc
        0x3c3ebe16
        0x3c63ffef
        0x3c9cf356
        0x3c86b7aa
        0x3c00a17b
        0x3c3584b2
        0x3cbb1f25
        0x3c7e2a3d
        0x3c246174
        0x3c230553
        0x3c298677
        0x3c56adf7
        0x3c7bd6a6
        0x3c4cd530
        0x3bf3a9b0
        0x3c958751
        0x3c67924b
        0x3c11eeaa
        0x3bb14ec2
        0x3c1ccb7d
        0x3c5eca25
        0x3bc79f66
        0x3bf2c732
        0x3c0a265f
        0x3bbe9425
        0x3c192c8c
        0x3bb34e77
        0x3beaf252
        0x3bf32379
        0x3b713cef
        0x3bf6837f
        0x3b970f7c
        0x3bc9a77e
        0x3b5b6a1f
        0x3ba643cc
        0x3bc20d56
        0x3bac29bf
        0x3b996b76
        0x3b092ab7
        0x0
    .end array-data

    .line 163
    :array_1
    .array-data 4
        0x3ced04e6
        0x3c3a4d6e
        0x3c3517a4
        0x3becfa6a
        0x3c26fc59
        0x3b861e93
        0x3c7676ea
        0x3c408b76
        0x3cb764f1
        0x3c09ca19
        0x3c4bf2b2
        0x3bf4e011
        0x3b6b8950
        0x3be9ee46
        0x3c9aed57
        0x3bc753e7
        0x3b58665e
        0x3c275cd1
        0x3c100820
        0x3cc68a93
        0x3c67210c
        0x3c67253e
        0x3c28cdea
        0x3c1f6230
        0x3c010e88
        0x3c1f3c71
        0x3c02491b
        0x3cac42ea
        0x3bbcdff0
        0x3c190afe
        0x3bd7f951
        0x3c4d141a
        0x3bc204f3
        0x3c13293d
        0x3c0fb43e
        0x3c51bf7b
        0x3bc22ee4
        0x3c08ace2
        0x3b4a3e7d
        0x3be03b3f
        0x3bf84018
        0x3b9b1fac
        0x3c8661ae
        0x3c103a75
        0x3c043c3a
        0x3baf46aa
        0x3c0c5868
        0x3c319a41
        0x3c7c547a
        0x3d02adc5
        0x3c0e0c9e
        0x3c3c126a
        0x3c332ce9
        0x3bf99807
        0x3c135fc4
        0x3c04f095
        0x3c0dda49
        0x3bc27200
        0x3c2b3ede
        0x3c15c854
        0x3b94141f
        0x3c08a04d
        0x3bf4f93c
        0x3be642c0
        0x3bc56d5d
        0x3cb29e4d
        0x3cc6a3be
        0x3c82363b
        0x3b76f08d
        0x3c26a444
        0x3c23f466
        0x3c26c1a0
        0x3c083fd5
        0x3bdfdef8
        0x3bd0891a
        0x3c15c422
        0x3c15e17e
        0x3c45ef63
        0x3c4332f0
        0x3b9246bf
        0x3c699631
        0x3be2541e
        0x3c390215
        0x3c988d2a
        0x3c058362
        0x3b97e996
        0x3bd8a97a
        0x3c5cd2d4
        0x3c4eaaf3
        0x3ba9ef52
        0x3d45c67e
        0x3bdf58c1
        0x3bdcf462
        0x3c0e10cf
    .end array-data
.end method


# virtual methods
.method public mFirstByteFreq()[F
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mFirstByteFreq:[F

    return-object v0
.end method

.method public mFirstByteMean()F
    .locals 1

    .prologue
    .line 53
    sget v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mFirstByteMean:F

    return v0
.end method

.method public mFirstByteStdDev()F
    .locals 1

    .prologue
    .line 52
    sget v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mFirstByteStdDev:F

    return v0
.end method

.method public mFirstByteWeight()F
    .locals 1

    .prologue
    .line 54
    sget v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mFirstByteWeight:F

    return v0
.end method

.method public mSecondByteFreq()[F
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mSecondByteFreq:[F

    return-object v0
.end method

.method public mSecondByteMean()F
    .locals 1

    .prologue
    .line 57
    sget v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mSecondByteMean:F

    return v0
.end method

.method public mSecondByteStdDev()F
    .locals 1

    .prologue
    .line 56
    sget v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mSecondByteStdDev:F

    return v0
.end method

.method public mSecondByteWeight()F
    .locals 1

    .prologue
    .line 58
    sget v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mSecondByteWeight:F

    return v0
.end method
