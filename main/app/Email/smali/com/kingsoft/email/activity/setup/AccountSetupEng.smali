.class public Lcom/kingsoft/email/activity/setup/AccountSetupEng;
.super Ljava/lang/Object;
.source "AccountSetupEng.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;
    }
.end annotation


# static fields
.field private static final REQUEST_SECURITY:I

.field public static loginStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->loginStack:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/activity/setup/AccountSetupEng;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupEng;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/email/activity/setup/AccountSetupEng;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupEng;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->finishActivity()V

    return-void
.end method

.method private finishActivity()V
    .locals 5

    .prologue
    .line 73
    :goto_0
    sget-object v3, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->loginStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    :try_start_0
    sget-object v3, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->loginStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v3

    goto :goto_0

    .line 80
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v3}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 81
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_1

    .line 83
    iget-wide v3, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {p0, v3, v4}, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->getUIAccount(J)Lcom/kingsoft/mail/providers/Account;

    move-result-object v2

    .line 84
    .local v2, "uiAccount":Lcom/kingsoft/mail/providers/Account;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 85
    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->getInstance()Lcom/kingsoft/mail/providers/MailAppProvider;

    move-result-object v3

    iget-object v4, v2, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/providers/MailAppProvider;->setLastViewedAccount(Ljava/lang/String;)V

    .line 89
    .end local v2    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->mContext:Landroid/content/Context;

    const-class v4, Lcom/kingsoft/email2/ui/MailActivityEmail;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v1, "ii":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 92
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 94
    return-void
.end method

.method private onNext()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 122
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v3}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 123
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    const-string/jumbo v1, ""

    .line 124
    .local v1, "displayName":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 126
    .local v2, "senderName":Ljava/lang/String;
    :try_start_0
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 127
    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 135
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->setDisplayName(Ljava/lang/String;)V

    .line 137
    new-instance v3, Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;

    invoke-direct {v3, p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupEng;Lcom/android/emailcommon/provider/Account;)V

    sget-object v4, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v7, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    return-void

    .line 130
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public actionSetNames(Landroid/app/Activity;Lcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 0
    .param p1, "fromActivity"    # Landroid/app/Activity;
    .param p2, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 68
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 69
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->onNext()V

    .line 71
    return-void
.end method

.method public getUIAccount(J)Lcom/kingsoft/mail/providers/Account;
    .locals 8
    .param p1, "accountId"    # J

    .prologue
    const/4 v3, 0x0

    .line 97
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "uiaccount"

    invoke-static {v1, p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 103
    .local v6, "accountCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    new-instance v7, Lcom/kingsoft/mail/providers/Account;

    invoke-direct {v7, v6}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .local v7, "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :goto_0
    if-eqz v6, :cond_0

    .line 110
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_0
    return-object v7

    .line 106
    .end local v7    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    goto :goto_0

    .line 109
    .end local v7    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 110
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method
