.class public Lcom/kingsoft/email2/ui/CreateShortcutActivityEmail;
.super Lcom/kingsoft/mail/ui/BaseActivity;
.source "CreateShortcutActivityEmail.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {p0}, Lcom/kingsoft/mail/utils/AccountUtils;->getSyncingAccounts(Landroid/content/Context;)[Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    .line 37
    .local v0, "cachedAccounts":[Lcom/kingsoft/mail/providers/Account;
    invoke-virtual {p0}, Lcom/kingsoft/email2/ui/CreateShortcutActivityEmail;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 38
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 39
    const-class v2, Lcom/kingsoft/mail/ui/FolderSelectionActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    const/high16 v2, 0x42000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42
    const-string/jumbo v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string/jumbo v2, "account-shortcut"

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 49
    :goto_0
    invoke-virtual {p0, v1}, Lcom/kingsoft/email2/ui/CreateShortcutActivityEmail;->startActivity(Landroid/content/Intent;)V

    .line 50
    invoke-virtual {p0}, Lcom/kingsoft/email2/ui/CreateShortcutActivityEmail;->finish()V

    .line 51
    return-void

    .line 46
    :cond_0
    const-class v2, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 47
    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onPause()V

    .line 56
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onResume()V

    .line 61
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 62
    return-void
.end method
