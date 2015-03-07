.class public Lcom/kingsoft/emailcommon/utility/CertificateRequestor;
.super Lcom/kingsoft/mail/ui/BaseActivity;
.source "CertificateRequestor.java"

# interfaces
.implements Landroid/security/KeyChainAliasCallback;


# static fields
.field public static final ACTION_REQUEST_CERT:Ljava/lang/String; = "com.android.emailcommon.REQUEST_CERT"

.field public static final EXTRA_HOST:Ljava/lang/String; = "CertificateRequestor.host"

.field public static final EXTRA_PORT:Ljava/lang/String; = "CertificateRequestor.port"

.field public static final RESULT_ALIAS:Ljava/lang/String; = "CertificateRequestor.alias"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public alias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/kingsoft/emailcommon/utility/CertificateRequestor;->setResult(I)V

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/emailcommon/utility/CertificateRequestor;->finish()V

    .line 81
    return-void

    .line 76
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v0, "data":Landroid/content/Intent;
    const-string/jumbo v1, "CertificateRequestor.alias"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/kingsoft/emailcommon/utility/CertificateRequestor;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/kingsoft/emailcommon/utility/CertificateRequestor;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 47
    .local v7, "i":Landroid/content/Intent;
    const-string/jumbo v0, "CertificateRequestor.host"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "host":Ljava/lang/String;
    const-string/jumbo v0, "CertificateRequestor.port"

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .local v5, "port":I
    move-object v0, p0

    move-object v1, p0

    move-object v3, v2

    move-object v6, v2

    .line 50
    invoke-static/range {v0 .. v6}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onPause()V

    .line 60
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onResume()V

    .line 65
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 66
    return-void
.end method
