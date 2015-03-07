.class Lcom/kingsoft/email/activity/setup/AccountSetupBasics$7;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$7;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$7;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 8

    .prologue
    .line 876
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$7;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    .line 878
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingsoft/email/Preferences;->getLastUsedAccountId()J

    move-result-wide v4

    .line 880
    .local v4, "lastUsedAccountId":J
    invoke-static {v1, v4, v5}, Lcom/android/emailcommon/provider/Account;->getDefaultAccountId(Landroid/content/Context;J)J

    move-result-wide v2

    .line 883
    .local v2, "defaultId":J
    const-wide/16 v6, -0x1

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 884
    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 886
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v6

    .line 890
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    :goto_0
    return-object v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method
