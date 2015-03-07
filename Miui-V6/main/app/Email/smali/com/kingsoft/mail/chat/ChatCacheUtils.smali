.class public Lcom/kingsoft/mail/chat/ChatCacheUtils;
.super Ljava/lang/Object;
.source "ChatCacheUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/chat/ChatCacheUtils$CCSCType;
    }
.end annotation


# static fields
.field public static final SHOW_NEW_EMAIL:Ljava/lang/String; = "new_email"

.field public static final UPDATE_CHAT_VIEW_BROADCAST:Ljava/lang/String; = "com.android.email.action.UPDATE_CHAT_VIEW"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    return-void
.end method

.method private static checkChatCache(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 124
    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Lcom/kingsoft/mail/ui/SubjectMergeInfo;->findRawSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "rawSubject":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 127
    :cond_1
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatCache;->getInstance()Lcom/kingsoft/mail/chat/ChatCache;

    move-result-object v3

    iget-object v3, v3, Lcom/kingsoft/mail/chat/ChatCache;->rawSubject:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatCache;->getInstance()Lcom/kingsoft/mail/chat/ChatCache;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/mail/chat/ChatCache;->checkAccount(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    const/4 v7, 0x5

    invoke-static {p0, v5, v6, v7}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    move v1, v2

    .line 133
    goto :goto_0

    .line 134
    :cond_2
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatCache;->getInstance()Lcom/kingsoft/mail/chat/ChatCache;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-virtual {v3, v4, v5, p0}, Lcom/kingsoft/mail/chat/ChatCache;->checkMailBox(JLandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 137
    goto :goto_0
.end method

.method public static getUiMessageFromId(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Message;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    const/4 v3, 0x0

    .line 111
    const/4 v7, 0x0

    .line 112
    .local v7, "uiMessage":Lcom/kingsoft/mail/providers/Message;
    const-string/jumbo v0, "uimessage"

    invoke-static {v0, p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 113
    .local v1, "msgUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->MESSAGE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 115
    .local v6, "messageCursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v7, Lcom/kingsoft/mail/providers/Message;

    .end local v7    # "uiMessage":Lcom/kingsoft/mail/providers/Message;
    invoke-direct {v7, v6}, Lcom/kingsoft/mail/providers/Message;-><init>(Landroid/database/Cursor;)V

    .line 118
    .restart local v7    # "uiMessage":Lcom/kingsoft/mail/providers/Message;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 119
    return-object v7
.end method

.method public static moveCacheItem(Landroid/content/Context;JZ)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J
    .param p3, "force"    # Z

    .prologue
    const/4 v8, 0x0

    .line 172
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatCache;->getInstance()Lcom/kingsoft/mail/chat/ChatCache;

    move-result-object v0

    .line 173
    .local v0, "cache":Lcom/kingsoft/mail/chat/ChatCache;
    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatCache;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/mail/chat/ChatCache;->containsColumn(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    if-eqz p3, :cond_2

    .line 178
    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/mail/chat/ChatCache;->removeColumnSafely(J)Z

    .line 179
    invoke-static {p0, v8}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->sendRefreshBroadCast(Landroid/content/Context;Z)V

    goto :goto_0

    .line 181
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->getUiMessageFromId(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Message;

    move-result-object v1

    .line 182
    .local v1, "message":Lcom/kingsoft/mail/providers/Message;
    iget-object v4, v1, Lcom/kingsoft/mail/providers/Message;->accountUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x5

    invoke-static {p0, v4, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v2

    .line 183
    .local v2, "sendBoxKey":J
    iget-wide v4, v1, Lcom/kingsoft/mail/providers/Message;->mailBoxKey:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    iget-wide v4, v1, Lcom/kingsoft/mail/providers/Message;->mailBoxKey:J

    iget-wide v6, v0, Lcom/kingsoft/mail/chat/ChatCache;->mailboxKey:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 184
    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/mail/chat/ChatCache;->removeColumnSafely(J)Z

    .line 185
    invoke-static {p0, v8}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->sendRefreshBroadCast(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static sendRefreshBroadCast(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showNewEmail"    # Z

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.email.action.UPDATE_CHAT_VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "new_email"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 225
    return-void
.end method

.method public static setItemAsRead(Landroid/content/Context;Lcom/kingsoft/mail/providers/Message;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->updateReadStatus2DataBase(Landroid/content/Context;Lcom/kingsoft/mail/providers/Message;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/kingsoft/mail/providers/Message;->read:Z

    .line 45
    return-void
.end method

.method public static setItemsAsRead(Landroid/content/Context;Lcom/kingsoft/mail/chat/ChatCache;J)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "chatCache"    # Lcom/kingsoft/mail/chat/ChatCache;
    .param p2, "acountKey"    # J

    .prologue
    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/mail/chat/ChatCache;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 71
    :cond_0
    const/16 v17, 0x0

    .line 72
    .local v17, "sentCount":I
    const/4 v13, 0x0

    .line 73
    .local v13, "inboxCount":I
    const/4 v9, 0x0

    .line 74
    .local v9, "count":I
    const-wide/16 v4, 0x0

    .line 75
    .local v4, "boxId":J
    const/4 v8, 0x0

    .line 76
    .local v8, "conversationUri":Landroid/net/Uri;
    const-wide/16 v6, 0x0

    .line 77
    .local v6, "convId":J
    const/16 v19, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v15

    .line 79
    .local v15, "sendboxId":J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/mail/chat/ChatCache;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_3

    .line 80
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/kingsoft/mail/chat/ChatCache;->getRow(I)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v14

    .line 81
    .local v14, "message":Lcom/kingsoft/mail/providers/Message;
    iget-wide v0, v14, Lcom/kingsoft/mail/providers/Message;->mailBoxKey:J

    move-wide/from16 v19, v0

    cmp-long v19, v19, v15

    if-nez v19, :cond_2

    .line 82
    add-int/lit8 v17, v17, 0x1

    .line 79
    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 85
    :cond_2
    add-int/lit8 v13, v13, 0x1

    .line 86
    iget-wide v4, v14, Lcom/kingsoft/mail/providers/Message;->mailBoxKey:J

    .line 87
    if-nez v8, :cond_1

    .line 88
    iget-object v8, v14, Lcom/kingsoft/mail/providers/Message;->conversationUri:Landroid/net/Uri;

    .line 89
    iget-wide v6, v14, Lcom/kingsoft/mail/providers/Message;->id:J

    goto :goto_2

    .line 93
    .end local v14    # "message":Lcom/kingsoft/mail/providers/Message;
    :cond_3
    move v9, v13

    .line 94
    if-nez v9, :cond_4

    .line 95
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/chat/ChatCache;->getRow(I)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v14

    .line 96
    .restart local v14    # "message":Lcom/kingsoft/mail/providers/Message;
    iget-wide v4, v14, Lcom/kingsoft/mail/providers/Message;->mailBoxKey:J

    .line 97
    move/from16 v9, v17

    .line 98
    iget-object v8, v14, Lcom/kingsoft/mail/providers/Message;->conversationUri:Landroid/net/Uri;

    .line 99
    iget-wide v6, v14, Lcom/kingsoft/mail/providers/Message;->id:J

    .line 101
    .end local v14    # "message":Lcom/kingsoft/mail/providers/Message;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 102
    .local v10, "cr":Landroid/content/ContentResolver;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 103
    .local v11, "cv":Landroid/content/ContentValues;
    const-string/jumbo v19, "read"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 104
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v19

    const-string/jumbo v20, "ids"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v19

    const-string/jumbo v20, "maxMergeCount"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v19

    const-string/jumbo v20, "mailboxKey"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v18

    .line 106
    .local v18, "uri":Landroid/net/Uri;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v10, v0, v11, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static updateChatCache(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;

    .prologue
    const/4 v6, 0x1

    .line 141
    invoke-static {p0, p1}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->checkChatCache(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 164
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatCache;->getInstance()Lcom/kingsoft/mail/chat/ChatCache;

    move-result-object v2

    .line 145
    .local v2, "chatCache":Lcom/kingsoft/mail/chat/ChatCache;
    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-virtual {v2, v4, v5}, Lcom/kingsoft/mail/chat/ChatCache;->containsColumn(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-virtual {v2, v4, v5}, Lcom/kingsoft/mail/chat/ChatCache;->getColumn(J)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v1

    .line 147
    .local v1, "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {v1, p0, p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->update(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 151
    :cond_1
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->sendRefreshBroadCast(Landroid/content/Context;Z)V

    goto :goto_0

    .line 153
    .end local v1    # "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    :cond_2
    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v4, v5}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->getUiMessageFromId(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Message;

    move-result-object v3

    .line 154
    .local v3, "uiMessage":Lcom/kingsoft/mail/providers/Message;
    if-eqz v3, :cond_3

    .line 155
    iget-object v4, v3, Lcom/kingsoft/mail/providers/Message;->accountUri:Landroid/net/Uri;

    invoke-static {v4, p0}, Lcom/kingsoft/mail/chat/ChatViewUtils;->getUIAccountFromUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    .line 156
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    invoke-static {p0, v0, v3, v6}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->getCacheItemFromMessage(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;Z)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v1

    .line 157
    .restart local v1    # "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    invoke-static {p0, v3}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->setItemAsRead(Landroid/content/Context;Lcom/kingsoft/mail/providers/Message;)V

    .line 158
    invoke-virtual {v2, v1}, Lcom/kingsoft/mail/chat/ChatCache;->putAtEnd(Lcom/kingsoft/mail/chat/ChatCacheItem;)V

    .line 161
    .end local v0    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v1    # "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    :cond_3
    invoke-static {p0, v6}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->sendRefreshBroadCast(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static updateChatCacheStatus(Landroid/content/Context;JIZ)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J
    .param p3, "changeType"    # I
    .param p4, "newStatus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatCache;->getInstance()Lcom/kingsoft/mail/chat/ChatCache;

    move-result-object v1

    .line 201
    .local v1, "chatCache":Lcom/kingsoft/mail/chat/ChatCache;
    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/ChatCache;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v2

    .line 204
    :cond_1
    invoke-virtual {v1, p1, p2}, Lcom/kingsoft/mail/chat/ChatCache;->getColumn(J)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v0

    .line 205
    .local v0, "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    if-eqz v0, :cond_0

    .line 208
    packed-switch p3, :pswitch_data_0

    .line 217
    :goto_1
    invoke-static {p0, v2}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->sendRefreshBroadCast(Landroid/content/Context;Z)V

    .line 218
    const/4 v2, 0x1

    goto :goto_0

    .line 210
    :pswitch_0
    invoke-virtual {v1, p1, p2}, Lcom/kingsoft/mail/chat/ChatCache;->getColumn(J)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v3

    iput-boolean p4, v3, Lcom/kingsoft/mail/providers/Message;->read:Z

    goto :goto_1

    .line 213
    :pswitch_1
    invoke-virtual {v1, p1, p2}, Lcom/kingsoft/mail/chat/ChatCache;->getColumn(J)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v3

    iput-boolean p4, v3, Lcom/kingsoft/mail/providers/Message;->starred:Z

    goto :goto_1

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static updateReadStatus2DataBase(Landroid/content/Context;Lcom/kingsoft/mail/providers/Message;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    const/4 v4, 0x0

    .line 49
    if-eqz p1, :cond_0

    iget-boolean v2, p1, Lcom/kingsoft/mail/providers/Message;->read:Z

    if-eqz v2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 54
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "read"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 55
    iget-object v2, p1, Lcom/kingsoft/mail/providers/Message;->conversationUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
