.class public Lcom/kingsoft/email/view/CertificateSelector2;
.super Landroid/widget/RelativeLayout;
.source "CertificateSelector2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/view/CertificateSelector2$SavedState;,
        Lcom/kingsoft/email/view/CertificateSelector2$HostCallback;
    }
.end annotation


# instance fields
.field private mCertificateType:Landroid/widget/Spinner;

.field private mHost:Lcom/kingsoft/email/view/CertificateSelector2$HostCallback;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method


# virtual methods
.method public getCertificate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingsoft/email/view/CertificateSelector2;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hasCertificate()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingsoft/email/view/CertificateSelector2;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 57
    iget-object v0, p0, Lcom/kingsoft/email/view/CertificateSelector2;->mCertificateType:Landroid/widget/Spinner;

    new-instance v1, Lcom/kingsoft/email/view/CertificateSelector2$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/email/view/CertificateSelector2$1;-><init>(Lcom/kingsoft/email/view/CertificateSelector2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/view/CertificateSelector2;->setCertificate(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcelable;

    .prologue
    .line 99
    move-object v0, p1

    check-cast v0, Lcom/kingsoft/email/view/CertificateSelector2$SavedState;

    .line 100
    .local v0, "savedState":Lcom/kingsoft/email/view/CertificateSelector2$SavedState;
    invoke-virtual {v0}, Lcom/kingsoft/email/view/CertificateSelector2$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 101
    iget-object v1, v0, Lcom/kingsoft/email/view/CertificateSelector2$SavedState;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/view/CertificateSelector2;->setCertificate(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lcom/kingsoft/email/view/CertificateSelector2$SavedState;

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/email/view/CertificateSelector2;->getCertificate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/view/CertificateSelector2$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    return-object v0
.end method

.method public setCertificate(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/kingsoft/email/view/CertificateSelector2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/kingsoft/email/view/CertificateSelector2;->mValue:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setDelegate(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 51
    return-void
.end method

.method public setHostActivity(Lcom/kingsoft/email/view/CertificateSelector2$HostCallback;)V
    .locals 0
    .param p1, "host"    # Lcom/kingsoft/email/view/CertificateSelector2$HostCallback;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/kingsoft/email/view/CertificateSelector2;->mHost:Lcom/kingsoft/email/view/CertificateSelector2$HostCallback;

    .line 48
    return-void
.end method
