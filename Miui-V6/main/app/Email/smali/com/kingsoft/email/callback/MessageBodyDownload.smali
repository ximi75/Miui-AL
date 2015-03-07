.class public Lcom/kingsoft/email/callback/MessageBodyDownload;
.super Ljava/lang/Object;
.source "MessageBodyDownload.java"

# interfaces
.implements Lcom/kingsoft/email/callback/WifiConnectedCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingsoft/email/callback/MessageBodyDownload$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/email/callback/MessageBodyDownload$1;-><init>(Lcom/kingsoft/email/callback/MessageBodyDownload;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 30
    return-void
.end method

.method public downloadMessageBody()V
    .locals 21

    .prologue
    .line 35
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    if-nez v4, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v14, "idMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;>;"
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/email/EmailApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 41
    .local v12, "ctx":Landroid/content/Context;
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 42
    .local v2, "cr":Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 44
    .local v11, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v19, "syncServerId"

    aput-object v19, v4, v8

    const/4 v8, 0x1

    const-string/jumbo v19, "mailboxKey"

    aput-object v19, v4, v8

    const/4 v8, 0x2

    const-string/jumbo v19, "accountKey"

    aput-object v19, v4, v8

    const-string/jumbo v5, "flagLoaded<>?"

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v8

    const-string/jumbo v7, "accountKey ASC, mailboxKey ASC, timeStamp DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 54
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 79
    :cond_2
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 58
    :cond_3
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_7

    .line 59
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 60
    .local v18, "serverId":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 61
    .local v16, "mailboxKey":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, "accountKey":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 63
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;

    .line 64
    .local v3, "tem":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    iget-object v4, v3, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mServiceIds:Ljava/util/LinkedHashSet;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v3    # "tem":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    :cond_4
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 79
    .end local v9    # "accountKey":Ljava/lang/String;
    .end local v16    # "mailboxKey":Ljava/lang/String;
    .end local v18    # "serverId":Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4

    .line 66
    .restart local v9    # "accountKey":Ljava/lang/String;
    .restart local v16    # "mailboxKey":Ljava/lang/String;
    .restart local v18    # "serverId":Ljava/lang/String;
    :cond_6
    :try_start_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-static {v12, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v7

    .line 67
    .local v7, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-static {v12, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    .line 68
    .local v6, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    .line 69
    invoke-virtual {v6, v12}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "protocol":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 71
    new-instance v3, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;

    const/4 v8, 0x0

    move-object v4, v12

    invoke-direct/range {v3 .. v8}, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;)V

    .line 72
    .restart local v3    # "tem":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    iget-object v4, v3, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mServiceIds:Ljava/util/LinkedHashSet;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 73
    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 79
    .end local v3    # "tem":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    .end local v5    # "protocol":Ljava/lang/String;
    .end local v6    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v7    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v9    # "accountKey":Ljava/lang/String;
    .end local v16    # "mailboxKey":Ljava/lang/String;
    .end local v18    # "serverId":Ljava/lang/String;
    :cond_7
    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_8
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/email/EmailApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/email/callback/MessageBodySync;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/callback/MessageBodySync;

    move-result-object v10

    .line 87
    .local v10, "body":Lcom/kingsoft/email/callback/MessageBodySync;
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 88
    .local v15, "it":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 91
    .local v13, "entry":Ljava/util/Map$Entry;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;

    .line 92
    .local v17, "req":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mServiceIds:Ljava/util/LinkedHashSet;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v4, v8, v0, v1}, Lcom/kingsoft/email/callback/MessageBodySync;->add2BodySyncRequests(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/util/Collection;Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;)Z

    goto :goto_3
.end method
