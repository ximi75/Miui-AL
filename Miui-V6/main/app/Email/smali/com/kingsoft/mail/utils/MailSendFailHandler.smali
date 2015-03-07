.class public Lcom/kingsoft/mail/utils/MailSendFailHandler;
.super Ljava/lang/Object;
.source "MailSendFailHandler.java"


# static fields
.field public static final FAILURE_EAS_ATTACHMENT_LARGER:I = 0x1389

.field public static final FAILURE_EAS_CERTIFICATE:I = 0xd

.field public static final FAILURE_EAS_FILE_RW_IO:I = 0xb

.field public static final FAILURE_EAS_LOGIN:I = 0x10

.field public static final FAILURE_EAS_MESSAGE:I = 0xf

.field public static final FAILURE_EAS_NETWORK_IO:I = 0xc

.field public static final FAILURE_EAS_SECURITY:I = 0xe

.field public static final FAILURE_SMTP_RECIPIENT_NOT_EXIST:I = 0x157d

.field public static final FAILURE_THRESHOLD:I = 0x3

.field public static final FAILURE_UNKOWN:I = 0xa

.field public static final MAILBOX_KEY_AND_NOT_SEND_FAILED:Ljava/lang/String; = "mailboxKey=? and (syncServerId is null or syncServerId<3)"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayInsertOutboxError(Landroid/content/Context;J)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 200
    const v1, 0x7f1002b0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "errorMsg":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/kingsoft/mail/utils/NotificationUtils;->displaySentFailIndicator(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 202
    return-void
.end method

.method public static displaySendFailError(Landroid/content/Context;JJLjava/lang/String;I)V
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "msgId"    # J
    .param p5, "errorMsg"    # Ljava/lang/String;
    .param p6, "times"    # I

    .prologue
    .line 189
    const/4 v0, 0x3

    if-lt p6, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, p2, p5, v0}, Lcom/kingsoft/mail/utils/NotificationUtils;->displaySentFailIndicator(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 190
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStringByEasErrorCode(Landroid/content/Context;II)Ljava/lang/String;
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "errorType"    # I
    .param p2, "httpCode"    # I

    .prologue
    const v5, 0x7f1002b0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 110
    sparse-switch p1, :sswitch_data_0

    .line 136
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 112
    :sswitch_0
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Eas: Got other HTTP error from server during outbox sync: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 114
    const v0, 0x7f10021f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :sswitch_1
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Eas: Got provision error from server during outbox sync: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 119
    const v0, 0x7f1002a8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 122
    :sswitch_2
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Eas: Send large attachment during outbox sync: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 124
    const v0, 0x7f1002a9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :sswitch_3
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Eas: Got auth error from server during outbox sync: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 129
    const v0, 0x7f1002a6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :sswitch_4
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Eas: Send mail failed during outbox sync: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 133
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 110
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_4
        0x10 -> :sswitch_3
        0x1389 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getStringByEasErrorType(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "errorType"    # I

    .prologue
    const/4 v2, 0x0

    .line 80
    packed-switch p1, :pswitch_data_0

    .line 95
    :pswitch_0
    const v0, 0x7f1002b0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 82
    :pswitch_1
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Eas: Read or write file excetpion"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 83
    const v0, 0x7f1002ae

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :pswitch_2
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Eas: Got certificate error from server during outbox sync"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 88
    const v0, 0x7f1002a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :pswitch_3
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Eas: Got provision error from server during outbox sync"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 92
    const v0, 0x7f1002a8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static sendFailed(Landroid/content/Context;J)I
    .locals 11
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "msgId"    # J

    .prologue
    const/4 v10, 0x3

    const/4 v2, 0x0

    .line 213
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 214
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 215
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 217
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 218
    .local v9, "tryTimes":I
    if-eqz v6, :cond_2

    .line 220
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    const-string/jumbo v3, "syncServerId"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    long-to-int v9, v3

    .line 222
    if-lt v9, v10, :cond_0

    .line 231
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v2, v10

    .line 238
    :goto_0
    return v2

    .line 226
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 231
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_2
    :goto_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 236
    .local v7, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "syncServerId"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    invoke-virtual {v0, v1, v7, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v2, v9

    .line 238
    goto :goto_0

    .line 228
    .end local v7    # "cv":Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 229
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Send message failed, trytimes : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v5, v10

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static sendFailedConfirm(Landroid/content/Context;JI)I
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "msgId"    # J
    .param p3, "errorType"    # I

    .prologue
    const/4 v4, 0x0

    .line 242
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 243
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "syncServerId"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 246
    return p3
.end method

.method public static sendSuccess(Landroid/content/Context;J)V
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "msgId"    # J

    .prologue
    .line 205
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v0, "cv":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 207
    .local v1, "serverId":Ljava/lang/String;
    const-string/jumbo v2, "syncServerId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "syncServerId is not null"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 210
    return-void
.end method

.method public static showEasSendError(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;ZI)V
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p4, "needModify"    # Z
    .param p5, "errorType"    # I

    .prologue
    .line 58
    invoke-virtual {p3}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/kingsoft/email/service/CheckSendResultReceiver;->clearSentAlarmById(Landroid/content/Context;I)V

    .line 60
    iget-wide v0, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v0, v1}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->sendFailed(Landroid/content/Context;J)I

    move-result v6

    .line 61
    .local v6, "times":I
    invoke-static {p0, p5}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->getStringByEasErrorType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "errorMsg":Ljava/lang/String;
    iget-wide v3, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->displaySendFailError(Landroid/content/Context;JJLjava/lang/String;I)V

    .line 63
    return-void
.end method

.method public static showEasSendError(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;ZII)V
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p4, "needModify"    # Z
    .param p5, "errorType"    # I
    .param p6, "httpCode"    # I

    .prologue
    .line 67
    invoke-virtual {p3}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/kingsoft/email/service/CheckSendResultReceiver;->clearSentAlarmById(Landroid/content/Context;I)V

    .line 69
    const/4 v6, 0x0

    .line 70
    .local v6, "times":I
    const/16 v0, 0x1389

    if-ne v0, p5, :cond_0

    .line 71
    iget-wide v0, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v0, v1, p5}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->sendFailedConfirm(Landroid/content/Context;JI)I

    move-result v6

    .line 75
    :goto_0
    invoke-static {p0, p5, p6}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->getStringByEasErrorCode(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "errorMsg":Ljava/lang/String;
    iget-wide v3, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->displaySendFailError(Landroid/content/Context;JJLjava/lang/String;I)V

    .line 77
    return-void

    .line 73
    .end local v5    # "errorMsg":Ljava/lang/String;
    :cond_0
    iget-wide v0, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v0, v1}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->sendFailed(Landroid/content/Context;J)I

    move-result v6

    goto :goto_0
.end method

.method public static showEasSendError(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;ZLjava/lang/Exception;)V
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p4, "needModify"    # Z
    .param p5, "e"    # Ljava/lang/Exception;

    .prologue
    .line 48
    invoke-virtual {p3}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/kingsoft/email/service/CheckSendResultReceiver;->clearSentAlarmById(Landroid/content/Context;I)V

    .line 50
    invoke-virtual {p5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "errorMsg":Ljava/lang/String;
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Eas: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 52
    iget-wide v0, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v0, v1}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->sendFailed(Landroid/content/Context;J)I

    move-result v6

    .line 53
    .local v6, "times":I
    iget-wide v3, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->displaySendFailError(Landroid/content/Context;JJLjava/lang/String;I)V

    .line 54
    return-void
.end method

.method public static showSendLoginError(Landroid/content/Context;JLcom/kingsoft/email/NotificationController;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "nc"    # Lcom/kingsoft/email/NotificationController;

    .prologue
    .line 105
    invoke-virtual {p3, p1, p2}, Lcom/kingsoft/email/NotificationController;->showLoginFailedNotification(J)V

    .line 106
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Got auth error from server during outbox sync"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 107
    return-void
.end method

.method public static showSmtpSendError(Landroid/content/Context;JJLcom/kingsoft/emailcommon/mail/MessagingException;Lcom/kingsoft/email/NotificationController;)V
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "msgId"    # J
    .param p5, "e"    # Lcom/kingsoft/emailcommon/mail/MessagingException;
    .param p6, "nc"    # Lcom/kingsoft/email/NotificationController;

    .prologue
    const v1, 0x7f1002b0

    const/4 v3, 0x0

    .line 141
    instance-of v0, p5, Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p6, p1, p2, p5, v0}, Lcom/kingsoft/email/NotificationController;->showLoginFailedNotification(JLcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V

    .line 143
    invoke-static {p0, p3, p4}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->sendFailed(Landroid/content/Context;J)I

    .line 185
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "errorMsg":Ljava/lang/String;
    invoke-virtual {p5}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    .line 147
    .local v7, "t":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 148
    .local v6, "times":I
    if-nez v7, :cond_1

    .line 149
    invoke-virtual {p5}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 150
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Smtp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 151
    invoke-static {p0, p3, p4}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->sendFailed(Landroid/content/Context;J)I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 152
    invoke-static/range {v0 .. v6}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->displaySendFailError(Landroid/content/Context;JJLjava/lang/String;I)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 159
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Smtp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 160
    invoke-static {p0, p3, p4}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->sendFailed(Landroid/content/Context;J)I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 161
    invoke-static/range {v0 .. v6}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->displaySendFailError(Landroid/content/Context;JJLjava/lang/String;I)V

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "550 mailbox not found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "550 user not found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    :cond_3
    const v0, 0x7f1002ad

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 168
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Smtp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 169
    const/16 v0, 0x157d

    invoke-static {p0, p3, p4, v0}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->sendFailedConfirm(Landroid/content/Context;JI)I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 170
    invoke-static/range {v0 .. v6}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->displaySendFailError(Landroid/content/Context;JJLjava/lang/String;I)V

    goto/16 :goto_0

    .line 174
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "timed out"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pipe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "i/o"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 177
    :cond_5
    const v0, 0x7f1002a7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 178
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Smtp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 181
    :cond_6
    invoke-static {p0, p3, p4}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->sendFailed(Landroid/content/Context;J)I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 182
    invoke-static/range {v0 .. v6}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->displaySendFailError(Landroid/content/Context;JJLjava/lang/String;I)V

    goto/16 :goto_0
.end method
