.class public Lcom/kingsoft/email2/ui/MailActivityEmail;
.super Lcom/kingsoft/mail/ui/MailActivity;
.source "MailActivityEmail.java"

# interfaces
.implements Lcom/kingsoft/email/activity/InsertQuickResponseDialog$Callback;


# static fields
.field public static DEBUG:Z = false

.field public static DEBUG_EXCHANGE:Z = false

.field public static DEBUG_FILE:Z = false

.field public static DEBUG_VERBOSE:Z = false

.field public static final LOG_TAG:Ljava/lang/String;

.field private static final MATCH_LEGACY_SHORTCUT_INTENT:I = 0x1

.field static final insertQuickResponseDialogTag:Ljava/lang/String; = "insertQuickResponseDialog"

.field private static sAccountsChangedNotification:Z

.field public static sDebugInhibitGraphicsAcceleration:Z

.field private static sMessageDecodeErrorString:Ljava/lang/String;

.field private static sUiThread:Ljava/lang/Thread;

.field private static final sUrlMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mSecureConversationViewFragment:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

.field private mShouldShowPWDialog:Z

.field private mViewController:Lcom/kingsoft/mail/ui/AbstractActivityController;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->LOG_TAG:Ljava/lang/String;

    .line 84
    sput-boolean v1, Lcom/kingsoft/email2/ui/MailActivityEmail;->sDebugInhibitGraphicsAcceleration:Z

    .line 90
    sput-boolean v1, Lcom/kingsoft/email2/ui/MailActivityEmail;->sAccountsChangedNotification:Z

    .line 100
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->sUrlMatcher:Landroid/content/UriMatcher;

    .line 102
    sget-object v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "ui.email.android.com"

    const-string/jumbo v2, "view/mailbox"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/MailActivity;-><init>()V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email2/ui/MailActivityEmail;->mShouldShowPWDialog:Z

    return-void
.end method

.method public static enableStrictMode(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 353
    invoke-static {p0}, Lcom/kingsoft/emailcommon/utility/Utility;->enableStrictMode(Z)V

    .line 354
    return-void
.end method

.method public static getMessageDecodeErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    sget-object v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->sMessageDecodeErrorString:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->sMessageDecodeErrorString:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static declared-synchronized getNotifyUiAccountsChanged()Z
    .locals 2

    .prologue
    .line 334
    const-class v0, Lcom/kingsoft/email2/ui/MailActivityEmail;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/kingsoft/email2/ui/MailActivityEmail;->sAccountsChangedNotification:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getViewIntent(JJ)Landroid/content/Intent;
    .locals 10
    .param p1, "accountId"    # J
    .param p3, "mailboxId"    # J

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/kingsoft/email2/ui/MailActivityEmail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 359
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "uiaccount"

    invoke-static {v1, p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION_NO_CAPABILITIES:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 364
    .local v7, "accountCursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 365
    sget-object v1, Lcom/kingsoft/email2/ui/MailActivityEmail;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Null account cursor for mAccountId %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 366
    const/4 v1, 0x0

    .line 402
    :goto_0
    return-object v1

    .line 369
    :cond_0
    const/4 v6, 0x0

    .line 371
    .local v6, "account":Lcom/kingsoft/mail/providers/Account;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    new-instance v6, Lcom/kingsoft/mail/providers/Account;

    .end local v6    # "account":Lcom/kingsoft/mail/providers/Account;
    invoke-direct {v6, v7}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    .restart local v6    # "account":Lcom/kingsoft/mail/providers/Account;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 379
    const-string/jumbo v1, "uifolder"

    invoke-static {v1, p3, p4}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 383
    .local v9, "folderCursor":Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 384
    sget-object v1, Lcom/kingsoft/email2/ui/MailActivityEmail;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Null folder cursor for account %d, mailbox %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 386
    const/4 v1, 0x0

    goto :goto_0

    .line 375
    .end local v6    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v9    # "folderCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 389
    .restart local v6    # "account":Lcom/kingsoft/mail/providers/Account;
    .restart local v9    # "folderCursor":Landroid/database/Cursor;
    :cond_2
    const/4 v8, 0x0

    .line 391
    .local v8, "folder":Lcom/kingsoft/mail/providers/Folder;
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 392
    new-instance v8, Lcom/kingsoft/mail/providers/Folder;

    .end local v8    # "folder":Lcom/kingsoft/mail/providers/Folder;
    invoke-direct {v8, v9}, Lcom/kingsoft/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 399
    .restart local v8    # "folder":Lcom/kingsoft/mail/providers/Folder;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 402
    iget-object v1, v8, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v1, v1, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-static {p0, v1, v6}, Lcom/kingsoft/mail/utils/Utils;->createViewFolderIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/kingsoft/mail/providers/Account;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 394
    :cond_3
    :try_start_2
    sget-object v1, Lcom/kingsoft/email2/ui/MailActivityEmail;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Empty folder cursor for account %d, mailbox %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 396
    const/4 v1, 0x0

    .line 399
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :catchall_1
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 317
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 318
    return-void
.end method

.method public static declared-synchronized setNotifyUiAccountsChanged(Z)V
    .locals 2
    .param p0, "setFlag"    # Z

    .prologue
    .line 326
    const-class v0, Lcom/kingsoft/email2/ui/MailActivityEmail;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/kingsoft/email2/ui/MailActivityEmail;->sAccountsChangedNotification:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit v0

    return-void

    .line 326
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static setServicesEnabled(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    .line 152
    const-string/jumbo v1, "wmh"

    const-string/jumbo v3, "setServicesEnabled:0"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 154
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/ComponentName;

    const-class v1, Lcom/kingsoft/email/service/AttachmentDownloadService;

    invoke-direct {v3, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 161
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingsoft/email/service/AttachmentDownloadService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p0, v1}, Lcom/kingsoft/email2/ui/MailActivityEmail;->startOrStopService(ZLandroid/content/Context;Landroid/content/Intent;)V

    .line 162
    invoke-static {p0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/NotificationController;->watchForMessages()V

    .line 163
    return-void

    .line 154
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static setServicesEnabledAsync(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/kingsoft/email2/ui/MailActivityEmail$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/email2/ui/MailActivityEmail$1;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    return-void
.end method

.method public static setServicesEnabledSync(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent;->init(Landroid/content/Context;)V

    .line 135
    const/4 v6, 0x0

    .line 137
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v7, 0x1

    .line 142
    .local v7, "enable":Z
    :goto_0
    invoke-static {p0, v7}, Lcom/kingsoft/email2/ui/MailActivityEmail;->setServicesEnabled(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    if-eqz v6, :cond_0

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    .line 141
    .end local v7    # "enable":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static startOrStopService(ZLandroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "enabled"    # Z
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    if-eqz p0, :cond_0

    .line 173
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static updateLoggingFlags(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 300
    invoke-static {p0}, Lcom/kingsoft/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;

    move-result-object v4

    .line 301
    .local v4, "prefs":Lcom/kingsoft/email/Preferences;
    invoke-virtual {v4}, Lcom/kingsoft/email/Preferences;->getEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    .line 302
    .local v1, "debugLogging":I
    :goto_0
    invoke-virtual {v4}, Lcom/kingsoft/email/Preferences;->getEnableExchangeLogging()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x2

    .line 304
    .local v5, "verboseLogging":I
    :goto_1
    invoke-virtual {v4}, Lcom/kingsoft/email/Preferences;->getEnableExchangeFileLogging()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v3, 0x4

    .line 306
    .local v3, "fileLogging":I
    :goto_2
    invoke-virtual {v4}, Lcom/kingsoft/email/Preferences;->getEnableStrictMode()Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v2, 0x8

    .line 308
    .local v2, "enableStrictMode":I
    :goto_3
    or-int v6, v1, v5

    or-int/2addr v6, v3

    or-int v0, v6, v2

    .line 309
    .local v0, "debugBits":I
    invoke-static {p0, v0}, Lcom/kingsoft/email/service/EmailServiceUtils;->setRemoteServicesLogging(Landroid/content/Context;I)V

    .line 310
    return-void

    .end local v0    # "debugBits":I
    .end local v1    # "debugLogging":I
    .end local v2    # "enableStrictMode":I
    .end local v3    # "fileLogging":I
    .end local v5    # "verboseLogging":I
    :cond_0
    move v1, v6

    .line 301
    goto :goto_0

    .restart local v1    # "debugLogging":I
    :cond_1
    move v5, v6

    .line 302
    goto :goto_1

    .restart local v5    # "verboseLogging":I
    :cond_2
    move v3, v6

    .line 304
    goto :goto_2

    .restart local v3    # "fileLogging":I
    :cond_3
    move v2, v6

    .line 306
    goto :goto_3
.end method

.method public static warnIfUiThread()V
    .locals 6

    .prologue
    .line 338
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/email2/ui/MailActivityEmail;->sUiThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Method called on the UI thread"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "STACK TRACE"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 342
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/kingsoft/email2/ui/MailActivityEmail;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 182
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "show_change_pw_dialog"

    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/kingsoft/email2/ui/MailActivityEmail;->mShouldShowPWDialog:Z

    .line 183
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 184
    .local v0, "data":Landroid/net/Uri;
    :goto_0
    if-eqz v0, :cond_0

    .line 185
    sget-object v8, Lcom/kingsoft/email2/ui/MailActivityEmail;->sUrlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 186
    .local v5, "match":I
    packed-switch v5, :pswitch_data_0

    .line 203
    .end local v5    # "match":I
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/MailActivity;->onCreate(Landroid/os/Bundle;)V

    .line 204
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    sput-object v8, Lcom/kingsoft/email2/ui/MailActivityEmail;->sUiThread:Ljava/lang/Thread;

    .line 205
    invoke-static {p0}, Lcom/kingsoft/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;

    move-result-object v6

    .line 206
    .local v6, "prefs":Lcom/kingsoft/email/Preferences;
    invoke-virtual {v6}, Lcom/kingsoft/email/Preferences;->getEnableDebugLogging()Z

    move-result v8

    sput-boolean v8, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    .line 207
    invoke-virtual {v6}, Lcom/kingsoft/email/Preferences;->getInhibitGraphicsAcceleration()Z

    move-result v8

    sput-boolean v8, Lcom/kingsoft/email2/ui/MailActivityEmail;->sDebugInhibitGraphicsAcceleration:Z

    .line 208
    invoke-virtual {v6}, Lcom/kingsoft/email/Preferences;->getEnableStrictMode()Z

    move-result v8

    invoke-static {v8}, Lcom/kingsoft/email2/ui/MailActivityEmail;->enableStrictMode(Z)V

    .line 209
    invoke-static {p0}, Lcom/kingsoft/emailcommon/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 212
    invoke-static {p0}, Lcom/kingsoft/email2/ui/MailActivityEmail;->updateLoggingFlags(Landroid/content/Context;)V

    .line 215
    const v8, 0x7f10026d

    invoke-virtual {p0, v8}, Lcom/kingsoft/email2/ui/MailActivityEmail;->getString(I)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/kingsoft/email2/ui/MailActivityEmail;->sMessageDecodeErrorString:Ljava/lang/String;

    .line 221
    invoke-virtual {p0}, Lcom/kingsoft/email2/ui/MailActivityEmail;->getConversationItemAreaClickListener()Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;

    move-result-object v8

    check-cast v8, Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-object v8, p0, Lcom/kingsoft/email2/ui/MailActivityEmail;->mViewController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    .line 224
    invoke-virtual {p0}, Lcom/kingsoft/email2/ui/MailActivityEmail;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, -0x1

    invoke-static {v8, v9}, Lcom/kingsoft/email/service/ImapPushService;->actionStart(Landroid/content/Context;I)V

    .line 225
    return-void

    .line 183
    .end local v0    # "data":Landroid/net/Uri;
    .end local v6    # "prefs":Lcom/kingsoft/email/Preferences;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 188
    .restart local v0    # "data":Landroid/net/Uri;
    .restart local v5    # "match":I
    :pswitch_0
    invoke-static {v1}, Lcom/kingsoft/emailcommon/utility/IntentUtilities;->getMailboxIdFromIntent(Landroid/content/Intent;)J

    move-result-wide v3

    .line 189
    .local v3, "mailboxId":J
    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 190
    .local v2, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v2, :cond_2

    .line 191
    sget-object v8, Lcom/kingsoft/email2/ui/MailActivityEmail;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "unable to restore mailbox"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 195
    :cond_2
    iget-wide v8, v2, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-direct {p0, v8, v9, v3, v4}, Lcom/kingsoft/email2/ui/MailActivityEmail;->getViewIntent(JJ)Landroid/content/Intent;

    move-result-object v7

    .line 196
    .local v7, "viewIntent":Landroid/content/Intent;
    if-eqz v7, :cond_0

    .line 197
    invoke-virtual {p0, v7}, Lcom/kingsoft/email2/ui/MailActivityEmail;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/MailActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 248
    .local v0, "superCreated":Z
    invoke-virtual {p0}, Lcom/kingsoft/email2/ui/MailActivityEmail;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    const/4 v0, 0x1

    .line 254
    .end local v0    # "superCreated":Z
    :goto_0
    return v0

    .line 252
    .restart local v0    # "superCreated":Z
    :cond_0
    sget-object v1, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mReplyFromAccount is null, not adding Quick Response menu"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 260
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0c0289

    if-ne v2, v3, :cond_0

    .line 262
    iget-object v2, p0, Lcom/kingsoft/email2/ui/MailActivityEmail;->mViewController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getCurrentConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v2

    iget v1, v2, Lcom/kingsoft/mail/providers/Conversation;->position:I

    .line 263
    .local v1, "position":I
    invoke-virtual {p0}, Lcom/kingsoft/email2/ui/MailActivityEmail;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "conversation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    iput-object v2, p0, Lcom/kingsoft/email2/ui/MailActivityEmail;->mSecureConversationViewFragment:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    .line 267
    iget-object v2, p0, Lcom/kingsoft/email2/ui/MailActivityEmail;->mSecureConversationViewFragment:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    iget-object v3, p0, Lcom/kingsoft/email2/ui/MailActivityEmail;->mViewController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->newInstance(Landroid/app/Fragment;Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/email/activity/InsertQuickResponseDialog;

    move-result-object v0

    .line 270
    .local v0, "dialog":Lcom/kingsoft/email/activity/InsertQuickResponseDialog;
    invoke-virtual {p0}, Lcom/kingsoft/email2/ui/MailActivityEmail;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "insertQuickResponseDialog"

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 272
    .end local v0    # "dialog":Lcom/kingsoft/email/activity/InsertQuickResponseDialog;
    .end local v1    # "position":I
    :cond_0
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/MailActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2
.end method

.method public onQuickResponseSelected(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "quickResponse"    # Ljava/lang/CharSequence;

    .prologue
    .line 277
    iget-object v6, p0, Lcom/kingsoft/email2/ui/MailActivityEmail;->mSecureConversationViewFragment:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getmViewController()Lcom/kingsoft/mail/ui/SecureConversationViewController;

    move-result-object v6

    iget-object v1, v6, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    .line 279
    .local v1, "quickEditText":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    .line 280
    .local v4, "selEnd":I
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v5

    .line 282
    .local v5, "selStart":I
    if-ltz v4, :cond_2

    if-ltz v5, :cond_2

    .line 283
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 285
    .local v0, "messageBody":Landroid/text/SpannableStringBuilder;
    if-ge v5, v4, :cond_0

    move v3, v5

    .line 286
    .local v3, "replaceStart":I
    :goto_0
    if-ge v5, v4, :cond_1

    move v2, v4

    .line 287
    .local v2, "replaceEnd":I
    :goto_1
    invoke-virtual {v0, v3, v2, p1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 288
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 294
    .end local v0    # "messageBody":Landroid/text/SpannableStringBuilder;
    .end local v2    # "replaceEnd":I
    .end local v3    # "replaceStart":I
    :goto_2
    return-void

    .restart local v0    # "messageBody":Landroid/text/SpannableStringBuilder;
    :cond_0
    move v3, v4

    .line 285
    goto :goto_0

    .restart local v3    # "replaceStart":I
    :cond_1
    move v2, v5

    .line 286
    goto :goto_1

    .line 291
    .end local v0    # "messageBody":Landroid/text/SpannableStringBuilder;
    .end local v3    # "replaceStart":I
    :cond_2
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasFocus"    # Z

    .prologue
    .line 229
    if-eqz p1, :cond_0

    .line 230
    iget-boolean v3, p0, Lcom/kingsoft/email2/ui/MailActivityEmail;->mShouldShowPWDialog:Z

    if-eqz v3, :cond_0

    .line 231
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/kingsoft/email2/ui/MailActivityEmail;->mShouldShowPWDialog:Z

    .line 232
    invoke-virtual {p0}, Lcom/kingsoft/email2/ui/MailActivityEmail;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "AccountSettings.for_account"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "AccountSettings.for_account"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 233
    .local v0, "acc":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {p0}, Lcom/kingsoft/email2/ui/MailActivityEmail;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "AccountSettings.for_account_reason"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "reason":Ljava/lang/String;
    invoke-static {p0, v0, v2}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->actionCPWA(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 236
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, v1}, Lcom/kingsoft/email2/ui/MailActivityEmail;->startActivity(Landroid/content/Intent;)V

    .line 240
    .end local v0    # "acc":Lcom/android/emailcommon/provider/Account;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "reason":Ljava/lang/String;
    :cond_0
    return-void
.end method
