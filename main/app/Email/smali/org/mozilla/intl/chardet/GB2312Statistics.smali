.class public Lorg/mozilla/intl/chardet/GB2312Statistics;
.super Lorg/mozilla/intl/chardet/nsEUCStatistics;
.source "GB2312Statistics.java"


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

    sput-object v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mFirstByteFreq:[F

    .line 160
    const v0, 0x3ca480e9

    sput v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mFirstByteStdDev:F

    .line 161
    sput v1, Lorg/mozilla/intl/chardet/GB2312Statistics;->mFirstByteMean:F

    .line 162
    const v0, 0x3f162707

    sput v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mFirstByteWeight:F

    .line 164
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mSecondByteFreq:[F

    .line 262
    const v0, 0x3c67ee91

    sput v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mSecondByteStdDev:F

    .line 263
    sput v1, Lorg/mozilla/intl/chardet/GB2312Statistics;->mSecondByteMean:F

    .line 264
    const v0, 0x3ed3b1f2

    sput v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mSecondByteWeight:F

    .line 265
    return-void

    .line 62
    nop

    :array_0
    .array-data 4
        0x3c3e835e
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
        0x3c3e835e
        0x3c4b35f4
        0x3c18676a
        0x3b7e047d
        0x3c920e1f
        0x3d186877
        0x3c0bb4d5
        0x3c251e32
        0x3c9ec2ce
        0x3d5e43ee
        0x3c251e32
        0x3d2848bf
        0x3cab7564
        0x3c986983
        0x3c251e32
        0x3c57e88a
        0x3c855b8a
        0x3bcb3a26
        0x3c18676a
        0x3c8bb4d5
        0x3c3e835e
        0x3c0bb4d5
        0x3b98676a
        0x3bcb3a26
        0x3c920e1f
        0x3ccb35f4
        0x3ca51c19
        0x3c649b20
        0x3d055b8a
        0x3d120f2c
        0x3d8bb55b
        0x3c31d0c8
        0x3d153bd1
        0x3defba02
        0x3ce49d39
        0x3dce6320
        0x3c251e32
        0x3c920e1f
        0x3d7e047d
        0x3c4b35f4
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
        0x3acb295f
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
        0x3bcb3a26
        0x3cfe047d
        0x3bb1cc96
        0x3b4b3a26
        0x3acb295f
        0x3b4b3a26
        0x3da84945
        0x3c7151e7
        0x3be49f51
        0x3acb295f
        0x3c649b20
        0x0
        0x3c649b20
        0x3c251e32
        0x3c0bb4d5
        0x3be49f51
        0x3b98676a
        0x3b4b3a26
        0x3b4b3a26
        0x3b4b3a26
        0x3c0bb4d5
        0x3b4b3a26
        0x3bb1cc96
        0x3bb1cc96
        0x3bb1cc96
        0x3b4b3a26
        0x3acb295f
        0x3bcb3a26
        0x3c7151e7
        0x3c31d0c8
        0x0
        0x3c3e835e
        0x0
        0x3d022ee4
        0x3c649b20
        0x3cf7ab32
        0x3d21ef74
        0x3c0bb4d5
        0x3c7e047d
        0x0
        0x3b4b3a26
        0x3c0bb4d5
        0x3c855b8a
        0x3bb1cc96
        0x3acb295f
        0x3c649b20
        0x3c649b20
        0x3d382907
        0x3b4b3a26
        0x3b98676a
        0x3be49f51
        0x3acb295f
        0x3bb1cc96
        0x3c4b35f4
        0x3acb295f
        0x3c7e047d
        0x0
        0x3bcb3a26
        0x3acb295f
        0x0
        0x3bfe047d
        0x3be49f51
        0x3acb295f
        0x3c18676a
        0x3c3e835e
        0x3b98676a
        0x3c31d0c8
        0x3c4b35f4
        0x3c920e1f
        0x3bb1cc96
        0x3ccb35f4
        0x0
        0x3bcb3a26
        0x0
        0x3da84945
        0x3c7e047d
        0x3b98676a
        0x0
        0x3be49f51
        0x3b98676a
        0x0
        0x3c0bb4d5
        0x3c4b35f4
        0x3b98676a
        0x3b7e047d
        0x3b4b3a26
        0x3cb82a13
        0x3cc4dca9
        0x3acb295f
        0x3d41b003
        0x3c18676a
        0x3acb295f
        0x3bb1cc96
        0x3c8bb4d5
    .end array-data
.end method


# virtual methods
.method public mFirstByteFreq()[F
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mFirstByteFreq:[F

    return-object v0
.end method

.method public mFirstByteMean()F
    .locals 1

    .prologue
    .line 53
    sget v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mFirstByteMean:F

    return v0
.end method

.method public mFirstByteStdDev()F
    .locals 1

    .prologue
    .line 52
    sget v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mFirstByteStdDev:F

    return v0
.end method

.method public mFirstByteWeight()F
    .locals 1

    .prologue
    .line 54
    sget v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mFirstByteWeight:F

    return v0
.end method

.method public mSecondByteFreq()[F
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mSecondByteFreq:[F

    return-object v0
.end method

.method public mSecondByteMean()F
    .locals 1

    .prologue
    .line 57
    sget v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mSecondByteMean:F

    return v0
.end method

.method public mSecondByteStdDev()F
    .locals 1

    .prologue
    .line 56
    sget v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mSecondByteStdDev:F

    return v0
.end method

.method public mSecondByteWeight()F
    .locals 1

    .prologue
    .line 58
    sget v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mSecondByteWeight:F

    return v0
.end method
