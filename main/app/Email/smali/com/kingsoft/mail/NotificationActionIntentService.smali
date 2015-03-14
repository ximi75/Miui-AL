.class public Lcom/kingsoft/mail/NotificationActionIntentService;
.super Landroid/app/IntentService;
.source "NotificationActionIntentService.java"


# static fields
.field public static final ACTION_ARCHIVE_REMOVE_LABEL:Ljava/lang/String; = "com.android.mail.action.notification.ARCHIVE"

.field public static final ACTION_DELETE:Ljava/lang/String; = "com.android.mail.action.notification.DELETE"

.field public static final ACTION_DESTRUCT:Ljava/lang/String; = "com.android.mail.action.notification.DESTRUCT"

.field public static final ACTION_FORWARD:Ljava/lang/String; = "com.android.mail.action.notification.FORWARD"

.field public static final ACTION_MARK_READ:Ljava/lang/String; = "com.android.mail.action.notification.MARK_READ"

.field public static final ACTION_NO_RESEND:Ljava/lang/String; = "com.android.mail.action.notification.NO_RESEND"

.field public static final ACTION_REPLY:Ljava/lang/String; = "com.android.mail.action.notification.REPLY"

.field public static final ACTION_REPLY_ALL:Ljava/lang/String; = "com.android.mail.action.notification.REPLY_ALL"

.field public static final ACTION_RESEND:Ljava/lang/String; = "com.android.mail.action.notification.RESEND"

.field public static final ACTION_UNDO:Ljava/lang/String; = "com.android.mail.action.notification.UNDO"

.field public static final ACTION_UNDO_TIMEOUT:Ljava/lang/String; = "com.android.mail.action.notification.UNDO_TIMEOUT"

.field public static final EXTRA_NOTIFICATION_ACTION:Ljava/lang/String; = "com.android.mail.extra.EXTRA_NOTIFICATION_ACTION"

.field private static final LOG_TAG:Ljava/lang/String; = "NotifActionIS"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    const-string/jumbo v0, "NotificationActionIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private static logNotificationAction(Ljava/lang/String;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 6
    .param p0, "intentAction"    # Ljava/lang/String;
    .param p1, "action"    # Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;

    .prologue
    .line 81
    const-string/jumbo v0, "com.android.mail.action.notification.ARCHIVE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string/jumbo v2, "archive_remove_label"

    .line 83
    .local v2, "eventAction":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Folder;->getTypeDescription()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "eventLabel":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    const-string/jumbo v1, "notification_action"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 93
    return-void

    .line 84
    .end local v2    # "eventAction":Ljava/lang/String;
    .end local v3    # "eventLabel":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "com.android.mail.action.notification.DELETE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const-string/jumbo v2, "delete"

    .line 86
    .restart local v2    # "eventAction":Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "eventLabel":Ljava/lang/String;
    goto :goto_0

    .line 88
    .end local v2    # "eventAction":Ljava/lang/String;
    .end local v3    # "eventLabel":Ljava/lang/String;
    :cond_1
    move-object v2, p0

    .line 89
    .restart local v2    # "eventAction":Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "eventLabel":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 21
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    move-object/from16 v12, p0

    .line 98
    .local v12, "context":Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.android.mail.action.notification.NO_RESEND"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    const-string/jumbo v2, "NotifActionIS"

    const-string/jumbo v4, "ryan entry ACTION_NO_RESEND.equals(action)"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 103
    const-string/jumbo v2, "notification"

    invoke-virtual {v12, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/NotificationManager;

    .line 104
    .local v16, "nm":Landroid/app/NotificationManager;
    const v2, 0x7f1002b0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 179
    .end local v16    # "nm":Landroid/app/NotificationManager;
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string/jumbo v2, "com.android.mail.action.notification.RESEND"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    const-string/jumbo v2, "NotifActionIS"

    const-string/jumbo v4, "ryan entry ACTION_RESEND.equals(action)"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 109
    const-string/jumbo v2, "notification"

    invoke-virtual {v12, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/NotificationManager;

    .line 110
    .restart local v16    # "nm":Landroid/app/NotificationManager;
    const v2, 0x7f1002b0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 112
    const-string/jumbo v2, "accountId"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 113
    .local v8, "accountId":J
    const-wide/16 v4, -0x1

    cmp-long v2, v8, v4

    if-eqz v2, :cond_0

    .line 115
    const/4 v2, 0x4

    invoke-static {v12, v8, v9, v2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v18

    .line 117
    .local v18, "sentFolder":Lcom/android/emailcommon/provider/Mailbox;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/uirefresh/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 118
    .local v3, "refreshUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/NotificationActionIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 132
    .end local v3    # "refreshUri":Landroid/net/Uri;
    .end local v8    # "accountId":J
    .end local v16    # "nm":Landroid/app/NotificationManager;
    .end local v18    # "sentFolder":Lcom/android/emailcommon/provider/Mailbox;
    :cond_2
    const-string/jumbo v2, "com.android.mail.extra.EXTRA_NOTIFICATION_ACTION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v13

    .line 133
    .local v13, "data":[B
    if-eqz v13, :cond_3

    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v14

    .line 135
    .local v14, "in":Landroid/os/Parcel;
    const/4 v2, 0x0

    array-length v4, v13

    invoke-virtual {v14, v13, v2, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 136
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 137
    sget-object v2, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    const-class v4, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-interface {v2, v14, v4}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;

    .line 144
    .local v17, "notificationAction":Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;
    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v15

    .line 146
    .local v15, "message":Lcom/kingsoft/mail/providers/Message;
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/NotificationActionIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 148
    .local v11, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "NotifActionIS"

    const-string/jumbo v4, "Handling %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v5, v6

    invoke-static {v2, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 150
    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/kingsoft/mail/NotificationActionIntentService;->logNotificationAction(Ljava/lang/String;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 152
    const-string/jumbo v2, "com.android.mail.action.notification.UNDO"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 153
    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->cancelUndoTimeout(Landroid/content/Context;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 154
    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->cancelUndoNotification(Landroid/content/Context;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V

    goto/16 :goto_0

    .line 140
    .end local v11    # "contentResolver":Landroid/content/ContentResolver;
    .end local v14    # "in":Landroid/os/Parcel;
    .end local v15    # "message":Lcom/kingsoft/mail/providers/Message;
    .end local v17    # "notificationAction":Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;
    :cond_3
    const-string/jumbo v2, "NotifActionIS"

    const-string/jumbo v4, "data was null trying to unparcel the NotificationAction"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 155
    .restart local v11    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v14    # "in":Landroid/os/Parcel;
    .restart local v15    # "message":Lcom/kingsoft/mail/providers/Message;
    .restart local v17    # "notificationAction":Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;
    :cond_4
    const-string/jumbo v2, "com.android.mail.action.notification.ARCHIVE"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "com.android.mail.action.notification.DELETE"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 157
    :cond_5
    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->createUndoNotification(Landroid/content/Context;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 159
    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->registerUndoTimeout(Landroid/content/Context;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V

    goto/16 :goto_0

    .line 161
    :cond_6
    const-string/jumbo v2, "com.android.mail.action.notification.UNDO_TIMEOUT"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "com.android.mail.action.notification.DESTRUCT"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 163
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->cancelUndoTimeout(Landroid/content/Context;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 164
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->processUndoNotification(Landroid/content/Context;Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;)V

    goto/16 :goto_0

    .line 165
    :cond_8
    const-string/jumbo v2, "com.android.mail.action.notification.MARK_READ"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    iget-object v0, v15, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    move-object/from16 v19, v0

    .line 168
    .local v19, "uri":Landroid/net/Uri;
    new-instance v20, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 169
    .local v20, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 173
    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationAction;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v4

    invoke-static {v12, v2, v4}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->resendNotifications(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)V

    goto/16 :goto_0
.end method
