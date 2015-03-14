.class public Lcom/kingsoft/email/widget/text/span/FontColorSpan;
.super Landroid/text/style/ForegroundColorSpan;
.source "FontColorSpan.java"


# static fields
.field private static mDefaultTextColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 11
    return-void
.end method

.method public static getDefaultFontColor()I
    .locals 1

    .prologue
    .line 14
    sget v0, Lcom/kingsoft/email/widget/text/span/FontColorSpan;->mDefaultTextColor:I

    return v0
.end method

.method public static setDefaultFontColor(I)V
    .locals 0
    .param p0, "textColor"    # I

    .prologue
    .line 18
    sput p0, Lcom/kingsoft/email/widget/text/span/FontColorSpan;->mDefaultTextColor:I

    .line 19
    return-void
.end method
