.class public Lcom/kingsoft/email/view/CertificateSelector;
.super Landroid/widget/RelativeLayout;
.source "CertificateSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/view/CertificateSelector$1;,
        Lcom/kingsoft/email/view/CertificateSelector$SavedState;,
        Lcom/kingsoft/email/view/CertificateSelector$HostCallback;
    }
.end annotation


# instance fields
.field private mAliasText:Landroid/widget/TextView;

.field private mHost:Lcom/kingsoft/email/view/CertificateSelector$HostCallback;

.field private mSelectButton:Landroid/view/View;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method


# virtual methods
.method public getCertificate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kingsoft/email/view/CertificateSelector;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hasCertificate()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingsoft/email/view/CertificateSelector;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kingsoft/email/view/CertificateSelector;->mSelectButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/view/CertificateSelector;->mHost:Lcom/kingsoft/email/view/CertificateSelector$HostCallback;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/kingsoft/email/view/CertificateSelector;->hasCertificate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/view/CertificateSelector;->setCertificate(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/email/view/CertificateSelector;->mHost:Lcom/kingsoft/email/view/CertificateSelector$HostCallback;

    invoke-interface {v0}, Lcom/kingsoft/email/view/CertificateSelector$HostCallback;->onCertificateRequested()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 75
    const v0, 0x7f0c011e

    invoke-static {p0, v0}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/email/view/CertificateSelector;->mAliasText:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0c011d

    invoke-static {p0, v0}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/view/CertificateSelector;->mSelectButton:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/kingsoft/email/view/CertificateSelector;->mSelectButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/view/CertificateSelector;->setCertificate(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcelable;

    .prologue
    .line 120
    move-object v0, p1

    check-cast v0, Lcom/kingsoft/email/view/CertificateSelector$SavedState;

    .line 121
    .local v0, "savedState":Lcom/kingsoft/email/view/CertificateSelector$SavedState;
    invoke-virtual {v0}, Lcom/kingsoft/email/view/CertificateSelector$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 122
    iget-object v1, v0, Lcom/kingsoft/email/view/CertificateSelector$SavedState;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/view/CertificateSelector;->setCertificate(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Lcom/kingsoft/email/view/CertificateSelector$SavedState;

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/email/view/CertificateSelector;->getCertificate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/view/CertificateSelector$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    return-object v0
.end method

.method public setCertificate(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/kingsoft/email/view/CertificateSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/kingsoft/email/view/CertificateSelector;->mValue:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/kingsoft/email/view/CertificateSelector;->mAliasText:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const v2, 0x7f10005f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "alias":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method public setDelegate(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 70
    return-void
.end method

.method public setHostActivity(Lcom/kingsoft/email/view/CertificateSelector$HostCallback;)V
    .locals 0
    .param p1, "host"    # Lcom/kingsoft/email/view/CertificateSelector$HostCallback;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/kingsoft/email/view/CertificateSelector;->mHost:Lcom/kingsoft/email/view/CertificateSelector$HostCallback;

    .line 67
    return-void
.end method
