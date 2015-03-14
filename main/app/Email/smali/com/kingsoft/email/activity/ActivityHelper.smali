.class public final Lcom/kingsoft/email/activity/ActivityHelper;
.super Ljava/lang/Object;
.source "ActivityHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static debugSetWindowFlags(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/high16 v2, 0x1000000

    .line 85
    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->sDebugInhibitGraphicsAcceleration:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method public static openUrlInMessage(Landroid/app/Activity;Ljava/lang/String;J)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "senderAccountId"    # J

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "result":Z
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string/jumbo v2, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    const/4 v1, 0x1

    .line 75
    :goto_0
    return v1

    .line 72
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static showSecurityHoldDialog(Landroid/app/Activity;J)V
    .locals 1
    .param p0, "callerActivity"    # Landroid/app/Activity;
    .param p1, "accountId"    # J

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method
