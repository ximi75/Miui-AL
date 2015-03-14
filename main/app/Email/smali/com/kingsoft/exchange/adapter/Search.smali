.class public Lcom/kingsoft/exchange/adapter/Search;
.super Ljava/lang/Object;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/exchange/adapter/Search$1;,
        Lcom/kingsoft/exchange/adapter/Search$SearchParser;
    }
.end annotation


# static fields
.field private static final MAX_SEARCH_RESULTS:I = 0x64

.field private static final MIN_QUERY_LENGTH:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method

.method public static searchMessages(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "searchParams"    # Lcom/android/emailcommon/service/SearchParams;
    .param p4, "destMailboxId"    # J

    .prologue
    .line 57
    move-object/from16 v0, p3

    iget v13, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 58
    .local v13, "offset":I
    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    .line 59
    .local v10, "limit":I
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    .line 60
    .local v7, "filter":Ljava/lang/String;
    if-ltz v10, :cond_0

    const/16 v21, 0x64

    move/from16 v0, v21

    if-gt v10, v0, :cond_0

    if-gez v13, :cond_2

    :cond_0
    const/4 v14, 0x0

    .line 164
    :cond_1
    :goto_0
    return v14

    .line 62
    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 64
    :cond_4
    const/4 v14, 0x0

    .line 65
    .local v14, "res":I
    const-wide/16 v11, 0x0

    .line 66
    .local v11, "minDate":J
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    .line 67
    .local v4, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v4, :cond_1

    .line 68
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kingsoft/exchange/EasSyncService;->setupServiceForAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/kingsoft/exchange/EasSyncService;

    move-result-object v20

    .line 69
    .local v20, "svc":Lcom/kingsoft/exchange/EasSyncService;
    if-eqz v20, :cond_1

    .line 70
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v17

    .line 72
    .local v17, "searchMailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v17, :cond_1

    .line 73
    new-instance v19, Landroid/content/ContentValues;

    const/16 v21, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 76
    .local v19, "statusValues":Landroid/content/ContentValues;
    :try_start_0
    const-string/jumbo v21, "uiSyncStatus"

    const/16 v22, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 79
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 80
    move-object/from16 v0, v20

    iput-object v4, v0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 81
    new-instance v16, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct/range {v16 .. v16}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 82
    .local v16, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    const/16 v21, 0x3c5

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0x3c7

    invoke-virtual/range {v21 .. v22}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 83
    const/16 v21, 0x3c8

    const-string/jumbo v22, "Mailbox"

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 84
    const/16 v21, 0x3c9

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0x3d3

    invoke-virtual/range {v21 .. v22}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 85
    const/16 v21, 0x10

    const-string/jumbo v22, "Email"

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 88
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v8

    .line 90
    .local v8, "inbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v8, :cond_5

    const/4 v14, 0x0

    .line 158
    .end local v14    # "res":I
    const-string/jumbo v21, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    const-string/jumbo v21, "uiSyncStatus"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string/jumbo v21, "lastTouchedTime"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto/16 :goto_0

    .line 91
    .restart local v14    # "res":I
    :cond_5
    :try_start_1
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    move-wide/from16 v21, v0

    iget-wide v0, v8, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    move-wide/from16 v23, v0

    cmp-long v21, v21, v23

    if-eqz v21, :cond_6

    .line 92
    const/16 v21, 0x12

    iget-object v0, v8, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 95
    :cond_6
    const/16 v21, 0x3d5

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 98
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    .line 99
    const/16 v21, 0x3db

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 100
    const/16 v21, 0x8f

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 101
    const/16 v21, 0x3d2

    sget-object v22, Lcom/kingsoft/exchange/Eas;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 102
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 104
    :cond_7
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    .line 105
    const/16 v21, 0x3da

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 106
    const/16 v21, 0x8f

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 107
    const/16 v21, 0x3d2

    sget-object v22, Lcom/kingsoft/exchange/Eas;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 108
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 110
    :cond_8
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 111
    const/16 v21, 0x3ca

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 112
    if-nez v13, :cond_9

    .line 113
    const/16 v21, 0x3d9

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 115
    :cond_9
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 116
    const/16 v21, 0x3d7

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 119
    :cond_a
    const/16 v21, 0x3cb

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int v23, v13, v10

    add-int/lit8 v23, v23, -0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 120
    const/16 v21, 0x445

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 121
    const/16 v21, 0x446

    const-string/jumbo v22, "2"

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 122
    const/16 v21, 0x447

    const-string/jumbo v22, "1000000"

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 123
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 124
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 125
    const-string/jumbo v21, "Search"

    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/kingsoft/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/kingsoft/exchange/EasResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v15

    .line 127
    .local v15, "resp":Lcom/kingsoft/exchange/EasResponse;
    :try_start_2
    invoke-virtual {v15}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v5

    .line 128
    .local v5, "code":I
    const/16 v21, 0xc8

    move/from16 v0, v21

    if-ne v5, v0, :cond_d

    .line 129
    invoke-virtual {v15}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v9

    .line 131
    .local v9, "is":Ljava/io/InputStream;
    :try_start_3
    new-instance v18, Lcom/kingsoft/exchange/adapter/Search$SearchParser;

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v9, v1, v7, v2}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;-><init>(Ljava/io/InputStream;Lcom/kingsoft/exchange/EasSyncService;Ljava/lang/String;Lcom/kingsoft/exchange/adapter/Search$1;)V

    .line 132
    .local v18, "sp":Lcom/kingsoft/exchange/adapter/Search$SearchParser;
    invoke-virtual/range {v18 .. v18}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->parse()Z

    .line 133
    invoke-virtual/range {v18 .. v18}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->getMinDate()J

    move-result-wide v11

    .line 134
    invoke-virtual/range {v18 .. v18}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->getTotalResults()I

    move-result v14

    .line 135
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/emailcommon/service/SearchParams;->mTotalCount:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 136
    move-object/from16 v0, p3

    iput v14, v0, Lcom/android/emailcommon/service/SearchParams;->mTotalCount:I

    .line 138
    :cond_b
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/emailcommon/service/SearchParams;->hasQueryMessageCount:I

    move/from16 v21, v0

    invoke-virtual/range {v18 .. v18}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->getMessageNum()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/emailcommon/service/SearchParams;->hasQueryMessageCount:I

    .line 140
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/emailcommon/service/SearchParams;->mTotalCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_c

    if-eqz v14, :cond_c

    .line 141
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/emailcommon/service/SearchParams;->hasQueryMessageCount:I

    move/from16 v21, v0

    add-int v21, v21, v14

    sub-int v21, v21, v13

    invoke-virtual/range {v18 .. v18}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->getMessageNum()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/emailcommon/service/SearchParams;->mTotalCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    :cond_c
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 151
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v18    # "sp":Lcom/kingsoft/exchange/adapter/Search$SearchParser;
    :goto_1
    :try_start_5
    invoke-virtual {v15}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 158
    const-string/jumbo v21, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    const-string/jumbo v21, "uiSyncStatus"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string/jumbo v21, "lastTouchedTime"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto/16 :goto_0

    .line 145
    .restart local v9    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v21

    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    throw v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 151
    .end local v5    # "code":I
    .end local v9    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v21

    :try_start_7
    invoke-virtual {v15}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v21
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 153
    .end local v8    # "inbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v15    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .end local v16    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    :catch_0
    move-exception v6

    .line 154
    .local v6, "e":Ljava/io/IOException;
    const/16 v21, 0x1

    :try_start_8
    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Search exception "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 158
    const-string/jumbo v21, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    const-string/jumbo v21, "uiSyncStatus"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string/jumbo v21, "lastTouchedTime"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto/16 :goto_0

    .line 148
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v5    # "code":I
    .restart local v8    # "inbox":Lcom/android/emailcommon/provider/Mailbox;
    .restart local v15    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .restart local v16    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    :cond_d
    const/16 v21, 0x1

    :try_start_9
    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Search returned "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_1

    .line 158
    .end local v5    # "code":I
    .end local v8    # "inbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v15    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .end local v16    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    :catchall_2
    move-exception v21

    const-string/jumbo v22, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    const-string/jumbo v22, "uiSyncStatus"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string/jumbo v22, "lastTouchedTime"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    throw v21
.end method
