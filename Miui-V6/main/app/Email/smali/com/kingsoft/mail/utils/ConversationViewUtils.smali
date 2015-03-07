.class public Lcom/kingsoft/mail/utils/ConversationViewUtils;
.super Ljava/lang/Object;
.source "ConversationViewUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTextZoom(Landroid/content/res/Resources;Landroid/webkit/WebSettings;)V
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "settings"    # Landroid/webkit/WebSettings;

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 28
    .local v1, "fontScale":F
    const v4, 0x7f0e0013

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 30
    .local v0, "desiredFontSizePx":I
    const v4, 0x7f0e0017

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 33
    .local v3, "unstyledFontSizePx":I
    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getTextZoom()I

    move-result v2

    .line 35
    .local v2, "textZoom":I
    mul-int v4, v2, v0

    div-int v2, v4, v3

    .line 37
    int-to-float v4, v2

    mul-float/2addr v4, v1

    float-to-int v2, v4

    .line 38
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 39
    return-void
.end method
