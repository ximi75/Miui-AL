.class public Lcom/kingsoft/exchange/service/EasMeetingResponder;
.super Lcom/kingsoft/exchange/service/EasServerConnection;
.source "EasMeetingResponder.java"


# static fields
.field private static final EAS_RESPOND_ACCEPT:I = 0x1

.field private static final EAS_RESPOND_DECLINE:I = 0x3

.field private static final EAS_RESPOND_TENTATIVE:I = 0x2

.field private static final EAS_RESPOND_UNKNOWN:I = -0x1

.field private static final MAILBOX_SERVER_ID_COLUMN:I = 0x0

.field private static final MAILBOX_SERVER_ID_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Exchange"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "serverId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/exchange/service/EasMeetingResponder;->MAILBOX_SERVER_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/service/EasServerConnection;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 53
    return-void
.end method

.method private static messageOperationResponseToUserResponse(I)I
    .locals 1
    .param p0, "messageOperationResponse"    # I

    .prologue
    .line 62
    packed-switch p0, :pswitch_data_0

    .line 70
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 64
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 66
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 68
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static sendMeetingResponse(Landroid/content/Context;JI)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J
    .param p3, "response"    # I

    .prologue
    .line 81
    invoke-static/range {p3 .. p3}, Lcom/kingsoft/exchange/service/EasMeetingResponder;->messageOperationResponseToUserResponse(I)I

    move-result v9

    .line 82
    .local v9, "easResponse":I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_0

    .line 83
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "Bad response value: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    .line 87
    .local v11, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v11, :cond_1

    .line 88
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "Could not load message %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 91
    :cond_1
    iget-wide v0, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v7

    .line 92
    .local v7, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v7, :cond_2

    .line 93
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "Could not load account %d for message %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 96
    :cond_2
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/exchange/service/EasMeetingResponder;->MAILBOX_SERVER_ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 99
    .local v10, "mailboxServerId":Ljava/lang/String;
    if-nez v10, :cond_3

    .line 100
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "Could not load mailbox %d for message %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 104
    :cond_3
    new-instance v12, Lcom/kingsoft/exchange/service/EasMeetingResponder;

    invoke-direct {v12, p0, v7}, Lcom/kingsoft/exchange/service/EasMeetingResponder;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 106
    .local v12, "responder":Lcom/kingsoft/exchange/service/EasMeetingResponder;
    :try_start_0
    invoke-direct {v12, v11, v10, v9}, Lcom/kingsoft/exchange/service/EasMeetingResponder;->sendResponse(Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 107
    :catch_0
    move-exception v8

    .line 108
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "IOException: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 109
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 110
    .local v8, "e":Ljava/security/cert/CertificateException;
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "CertificateException: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0
.end method

.method private sendMeetingResponseMail(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .locals 24
    .param p1, "msg"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p2, "response"    # I

    .prologue
    .line 121
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    new-instance v13, Lcom/kingsoft/emailcommon/mail/PackedString;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Lcom/kingsoft/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 126
    .local v13, "meetingInfo":Lcom/kingsoft/emailcommon/mail/PackedString;
    const-string/jumbo v20, "ORGMAIL"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/kingsoft/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v4

    .line 128
    .local v4, "addrs":[Lcom/kingsoft/emailcommon/mail/Address;
    array-length v0, v4

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 129
    const/16 v20, 0x0

    aget-object v20, v4, v20

    invoke-virtual/range {v20 .. v20}, Lcom/kingsoft/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v14

    .line 131
    .local v14, "organizerEmail":Ljava/lang/String;
    const-string/jumbo v20, "DTSTAMP"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, "dtStamp":Ljava/lang/String;
    const-string/jumbo v20, "DTSTART"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 133
    .local v9, "dtStart":Ljava/lang/String;
    const-string/jumbo v20, "DTEND"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, "dtEnd":Ljava/lang/String;
    new-instance v11, Landroid/content/ContentValues;

    const/16 v20, 0x6

    move/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 138
    .local v11, "entityValues":Landroid/content/ContentValues;
    new-instance v10, Landroid/content/Entity;

    invoke-direct {v10, v11}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 141
    .local v10, "entity":Landroid/content/Entity;
    const-string/jumbo v20, "DTSTAMP"

    invoke-static {v8}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->convertEmailDateTimeToCalendarDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v20, "dtstart"

    invoke-static {v9}, Lcom/kingsoft/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 144
    const-string/jumbo v20, "dtend"

    invoke-static {v7}, Lcom/kingsoft/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 145
    const-string/jumbo v20, "eventLocation"

    const-string/jumbo v21, "LOC"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v20, "title"

    const-string/jumbo v21, "TITLE"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v20, "organizer"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v5, Landroid/content/ContentValues;

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 151
    .local v5, "attendeeValues":Landroid/content/ContentValues;
    const-string/jumbo v20, "attendeeRelationship"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string/jumbo v20, "attendeeEmail"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/service/EasMeetingResponder;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget-object v20, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v5}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 157
    new-instance v15, Landroid/content/ContentValues;

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-direct {v15, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 158
    .local v15, "organizerValues":Landroid/content/ContentValues;
    const-string/jumbo v20, "attendeeRelationship"

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string/jumbo v20, "attendeeEmail"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v20, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v15}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 167
    packed-switch p2, :pswitch_data_0

    .line 176
    :pswitch_0
    const/16 v12, 0x100

    .line 179
    .local v12, "flag":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/service/EasMeetingResponder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "UID"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/service/EasMeetingResponder;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v10, v12, v1, v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v19

    .line 184
    .local v19, "outgoingMsg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v19, :cond_0

    .line 187
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide/from16 v17, v0

    .line 188
    .local v17, "originalMsgId":J
    const-wide/16 v20, 0x0

    cmp-long v20, v17, v20

    if-eqz v20, :cond_2

    .line 189
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 190
    .local v6, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, -0x1f1

    move/from16 v16, v0

    .line 191
    .local v16, "originalMsgFlags":I
    const/high16 v20, 0x40000

    or-int v20, v20, v12

    or-int v16, v16, v20

    .line 192
    const-string/jumbo v20, "flags"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/service/EasMeetingResponder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 198
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v16    # "originalMsgFlags":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/service/EasMeetingResponder;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/service/EasMeetingResponder;->sendMessage(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto/16 :goto_0

    .line 169
    .end local v12    # "flag":I
    .end local v17    # "originalMsgId":J
    .end local v19    # "outgoingMsg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :pswitch_1
    const/16 v12, 0x40

    .line 170
    .restart local v12    # "flag":I
    goto/16 :goto_1

    .line 172
    .end local v12    # "flag":I
    :pswitch_2
    const/16 v12, 0x80

    .line 173
    .restart local v12    # "flag":I
    goto/16 :goto_1

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private sendResponse(Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;I)V
    .locals 10
    .param p1, "msg"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p2, "mailboxServerId"    # Ljava/lang/String;
    .param p3, "response"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v3, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct {v3}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 212
    .local v3, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    const/16 v5, 0x207

    invoke-virtual {v3, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x209

    invoke-virtual {v5, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 213
    const/16 v5, 0x20c

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 214
    const/16 v5, 0x206

    invoke-virtual {v3, v5, p2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 215
    const/16 v5, 0x208

    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 216
    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 217
    const-string/jumbo v5, "MeetingResponse"

    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/kingsoft/exchange/service/EasMeetingResponder;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v1

    .line 219
    .local v1, "resp":Lcom/kingsoft/exchange/EasResponse;
    :try_start_0
    invoke-virtual {v1}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v4

    .line 220
    .local v4, "status":I
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 221
    invoke-virtual {v1}, Lcom/kingsoft/exchange/EasResponse;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 223
    new-instance v5, Lcom/kingsoft/exchange/adapter/MeetingResponseParser;

    invoke-virtual {v1}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/kingsoft/exchange/adapter/MeetingResponseParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5}, Lcom/kingsoft/exchange/adapter/MeetingResponseParser;->parse()Z

    .line 225
    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 226
    new-instance v0, Lcom/kingsoft/emailcommon/mail/PackedString;

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/kingsoft/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "meetingInfo":Lcom/kingsoft/emailcommon/mail/PackedString;
    const-string/jumbo v5, "RESPONSE"

    invoke-virtual {v0, v5}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "responseRequested":Ljava/lang/String;
    const-string/jumbo v5, "0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 231
    invoke-direct {p0, p1, p3}, Lcom/kingsoft/exchange/service/EasMeetingResponder;->sendMeetingResponseMail(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    .end local v0    # "meetingInfo":Lcom/kingsoft/emailcommon/mail/PackedString;
    .end local v2    # "responseRequested":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/kingsoft/exchange/EasResponse;->close()V

    .line 245
    return-void

    .line 235
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/kingsoft/exchange/EasResponse;->isAuthError()Z

    move-result v5

    if-nez v5, :cond_0

    .line 239
    const-string/jumbo v5, "Exchange"

    const-string/jumbo v6, "Meeting response request failed, code: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 240
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    .end local v4    # "status":I
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v5
.end method
