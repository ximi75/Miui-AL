.class public abstract Lcom/kingsoft/mail/ui/AbstractMailActivity;
.super Lcom/kingsoft/mail/ui/BaseActivity;
.source "AbstractMailActivity.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/HelpCallback;
.implements Lcom/kingsoft/mail/ui/RestrictedActivity;


# static fields
.field private static final STRICT_MODE:Z


# instance fields
.field private final mUiHandler:Lcom/kingsoft/mail/ui/UiHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BaseActivity;-><init>()V

    .line 44
    new-instance v0, Lcom/kingsoft/mail/ui/UiHandler;

    invoke-direct {v0}, Lcom/kingsoft/mail/ui/UiHandler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractMailActivity;->mUiHandler:Lcom/kingsoft/mail/ui/UiHandler;

    return-void
.end method


# virtual methods
.method public getActivityContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 114
    return-object p0
.end method

.method public getHelpContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string/jumbo v0, "Mail"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractMailActivity;->mUiHandler:Lcom/kingsoft/mail/ui/UiHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/UiHandler;->setEnabled(Z)V

    .line 66
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onPause()V

    .line 92
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onResume()V

    .line 85
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 86
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractMailActivity;->mUiHandler:Lcom/kingsoft/mail/ui/UiHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/UiHandler;->setEnabled(Z)V

    .line 87
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 79
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractMailActivity;->mUiHandler:Lcom/kingsoft/mail/ui/UiHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/UiHandler;->setEnabled(Z)V

    .line 80
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onStart()V

    .line 72
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractMailActivity;->mUiHandler:Lcom/kingsoft/mail/ui/UiHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/UiHandler;->setEnabled(Z)V

    .line 73
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/EmailApplication;->setApplicationIconNumber(Z)V

    .line 98
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onStop()V

    .line 99
    return-void
.end method
