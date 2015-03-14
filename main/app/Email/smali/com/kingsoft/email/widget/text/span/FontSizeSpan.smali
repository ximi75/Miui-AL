.class public Lcom/kingsoft/email/widget/text/span/FontSizeSpan;
.super Landroid/text/style/AbsoluteSizeSpan;
.source "FontSizeSpan.java"


# static fields
.field private static mDensity:F

.field private static mFontSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/high16 v0, 0x3f800000

    sput v0, Lcom/kingsoft/email/widget/text/span/FontSizeSpan;->mDensity:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 12
    return-void
.end method

.method public static getDefaultFontSize()F
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/kingsoft/email/widget/text/span/FontSizeSpan;->mFontSize:F

    return v0
.end method

.method public static getDensity()F
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/kingsoft/email/widget/text/span/FontSizeSpan;->mDensity:F

    return v0
.end method

.method public static setDefaultFontSize(F)V
    .locals 0
    .param p0, "fontSize"    # F

    .prologue
    .line 15
    sput p0, Lcom/kingsoft/email/widget/text/span/FontSizeSpan;->mFontSize:F

    .line 16
    return-void
.end method

.method public static setDensity(F)V
    .locals 0
    .param p0, "density"    # F

    .prologue
    .line 27
    sput p0, Lcom/kingsoft/email/widget/text/span/FontSizeSpan;->mDensity:F

    .line 28
    return-void
.end method
