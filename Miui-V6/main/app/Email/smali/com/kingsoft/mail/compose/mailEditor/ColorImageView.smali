.class public Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;
.super Landroid/widget/ImageView;
.source "ColorImageView.java"


# instance fields
.field private mBgColorList:Landroid/content/res/ColorStateList;

.field private mSeletorlist:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    if-eqz p2, :cond_0

    .line 45
    const-string/jumbo v3, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v4, "tag"

    invoke-interface {p2, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "tag":Ljava/lang/String;
    const-string/jumbo v3, "background_color"

    const v4, 0x7f020102

    invoke-interface {p2, v5, v3, v4}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 49
    .local v0, "bgcolor":I
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->setBackgroundColorStateList(I)V

    .line 51
    const-string/jumbo v3, "no_selector"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    const-string/jumbo v3, "selector_color"

    const v4, 0x7f020103

    invoke-interface {p2, v5, v3, v4}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 54
    .local v1, "scolor":I
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->setSelectorColorStateList(I)V

    .line 59
    .end local v0    # "bgcolor":I
    .end local v1    # "scolor":I
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic access$001(Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method


# virtual methods
.method public refreshDrawableState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 64
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->mBgColorList:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->mBgColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 67
    .local v0, "bgColor":I
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->setBackgroundColor(I)V

    .line 70
    .end local v0    # "bgColor":I
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->mSeletorlist:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->mSeletorlist:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 73
    .local v1, "selector":I
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->setColorFilter(I)V

    .line 76
    .end local v1    # "selector":I
    :cond_1
    invoke-super {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 77
    return-void
.end method

.method public setBackgroundColorStateList(I)V
    .locals 1
    .param p1, "resSelector"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->setBackgroundColorStateList(Landroid/content/res/ColorStateList;)V

    .line 102
    return-void
.end method

.method public setBackgroundColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "list"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->mBgColorList:Landroid/content/res/ColorStateList;

    .line 107
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView$1;-><init>(Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;)V

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->post(Ljava/lang/Runnable;)Z

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0
.end method

.method public setSelectorColorStateList(I)V
    .locals 1
    .param p1, "resSelector"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->setSelectorColorStateList(Landroid/content/res/ColorStateList;)V

    .line 112
    return-void
.end method

.method public setSelectorColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "list"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->mSeletorlist:Landroid/content/res/ColorStateList;

    .line 117
    return-void
.end method
