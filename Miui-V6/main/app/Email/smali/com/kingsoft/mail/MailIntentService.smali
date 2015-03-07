.class public Lcom/kingsoft/mail/MailIntentService;
.super Landroid/app/IntentService;
.source "MailIntentService.java"


# static fields
.field public static final ACTION_BACKUP_DATA_CHANGED:Ljava/lang/String; = "com.android.mail.action.BACKUP_DATA_CHANGED"

.field public static final ACTION_CLEAR_NEW_MAIL_NOTIFICATIONS:Ljava/lang/String; = "com.android.mail.action.CLEAR_NEW_MAIL_NOTIFICATIONS"

.field public static final ACTION_RESEND_NOTIFICATIONS:Ljava/lang/String; = "com.android.mail.action.RESEND_NOTIFICATIONS"

.field public static final CONVERSATION_EXTRA:Ljava/lang/String; = "conversation"

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/MailIntentService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "MailIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static broadcastBackupDataChanged(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.mail.action.BACKUP_DATA_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 98
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 62
    sget-object v6, Lcom/kingsoft/mail/MailIntentService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "Handling intent %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p1, v8, v9

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 64
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 67
    invoke-static {p0}, Lcom/kingsoft/mail/utils/NotificationUtils;->cancelAndResendNotifications(Landroid/content/Context;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string/jumbo v6, "com.android.mail.action.CLEAR_NEW_MAIL_NOTIFICATIONS"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 70
    :try_start_0
    const-string/jumbo v6, "account"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Account;

    .line 71
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    const-string/jumbo v6, "folder"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/mail/providers/Folder;

    .line 72
    .local v4, "folder":Lcom/kingsoft/mail/providers/Folder;
    const/4 v6, 0x1

    invoke-static {p0, v0, v4, v6}, Lcom/kingsoft/mail/utils/NotificationUtils;->clearFolderNotification(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v0    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v4    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/kingsoft/mail/MailIntentService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getParcelableExtra Account or Folder failed!"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 79
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v6, "com.android.mail.action.RESEND_NOTIFICATIONS"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 80
    const-string/jumbo v6, "accountUri"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 81
    .local v1, "accountUri":Landroid/net/Uri;
    const-string/jumbo v6, "folderUri"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 83
    .local v5, "folderUri":Landroid/net/Uri;
    new-instance v6, Lcom/kingsoft/mail/utils/FolderUri;

    invoke-direct {v6, v5}, Lcom/kingsoft/mail/utils/FolderUri;-><init>(Landroid/net/Uri;)V

    invoke-static {p0, v9, v1, v6}, Lcom/kingsoft/mail/utils/NotificationUtils;->resendNotifications(Landroid/content/Context;ZLandroid/net/Uri;Lcom/kingsoft/mail/utils/FolderUri;)V

    goto :goto_0

    .line 85
    .end local v1    # "accountUri":Landroid/net/Uri;
    .end local v5    # "folderUri":Landroid/net/Uri;
    :cond_3
    const-string/jumbo v6, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 89
    invoke-static {v10}, Lcom/kingsoft/mail/utils/StorageLowState;->setIsStorageLow(Z)V

    goto :goto_0

    .line 90
    :cond_4
    const-string/jumbo v6, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    invoke-static {v9}, Lcom/kingsoft/mail/utils/StorageLowState;->setIsStorageLow(Z)V

    goto :goto_0
.end method
