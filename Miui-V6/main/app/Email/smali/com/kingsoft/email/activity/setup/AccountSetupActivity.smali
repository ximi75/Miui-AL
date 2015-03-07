.class public Lcom/kingsoft/email/activity/setup/AccountSetupActivity;
.super Lcom/kingsoft/mail/ui/BaseActivity;
.source "AccountSetupActivity.java"

# interfaces
.implements Lcom/kingsoft/email/activity/setup/SetupData$SetupDataContainer;


# static fields
.field private static final DEBUG_SETUP_FLOWS:Z


# instance fields
.field protected mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getSetupData()Lcom/kingsoft/email/activity/setup/SetupData;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    if-eqz p1, :cond_2

    .line 39
    const-string/jumbo v1, "com.android.email.setupdata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/activity/setup/SetupData;

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 46
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    if-nez v1, :cond_1

    .line 47
    new-instance v1, Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-direct {v1}, Lcom/kingsoft/email/activity/setup/SetupData;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 50
    :cond_1
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    return-void

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 43
    const-string/jumbo v1, "com.android.email.setupdata"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/activity/setup/SetupData;

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onPause()V

    .line 62
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onResume()V

    .line 56
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 77
    :try_start_0
    const-string/jumbo v1, "com.android.email.setupdata"

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onStop()V

    .line 69
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/EmailApplication;->setApplicationIconNumber(Z)V

    .line 70
    return-void
.end method

.method public setSetupData(Lcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 0
    .param p1, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 91
    return-void
.end method
