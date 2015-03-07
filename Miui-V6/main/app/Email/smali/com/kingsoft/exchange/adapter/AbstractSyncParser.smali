.class public abstract Lcom/kingsoft/exchange/adapter/AbstractSyncParser;
.super Lcom/kingsoft/exchange/adapter/Parser;
.source "AbstractSyncParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Exchange"


# instance fields
.field protected mAccount:Lcom/android/emailcommon/provider/Account;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mContext:Landroid/content/Context;

.field private mLooping:Z

.field protected mMailbox:Lcom/android/emailcommon/provider/Mailbox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p5, "account"    # Lcom/android/emailcommon/provider/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p3}, Lcom/kingsoft/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 57
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->init(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/kingsoft/exchange/adapter/Parser;Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;)V
    .locals 0
    .param p1, "p"    # Lcom/kingsoft/exchange/adapter/Parser;
    .param p2, "adapter"    # Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/adapter/Parser;-><init>(Lcom/kingsoft/exchange/adapter/Parser;)V

    .line 67
    invoke-direct {p0, p2}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->init(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "adapter"    # Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 62
    invoke-direct {p0, p2}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->init(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;)V

    .line 63
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p4, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    .line 79
    iput-object p3, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 80
    iput-object p4, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 81
    return-void
.end method

.method private init(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;

    .prologue
    .line 71
    iget-object v0, p1, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p1, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v3, p1, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->init(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;)V

    .line 73
    return-void
.end method


# virtual methods
.method public abstract commandsParser()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/exchange/CommandStatusException;
        }
    .end annotation
.end method

.method public abstract commit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->mLooping:Z

    return v0
.end method

.method public parse()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v2, 0x1

    .line 128
    .local v2, "emptyContent":Z
    const/4 v4, 0x0

    .line 129
    .local v4, "moreAvailable":Z
    const/4 v6, 0x0

    .line 130
    .local v6, "newSyncKey":Z
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->mLooping:Z

    .line 132
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v8

    const/4 v9, 0x5

    if-eq v8, v9, :cond_0

    .line 133
    new-instance v8, Lcom/kingsoft/exchange/adapter/Parser$EasParserException;

    invoke-direct {v8, p0}, Lcom/kingsoft/exchange/adapter/Parser$EasParserException;-><init>(Lcom/kingsoft/exchange/adapter/Parser;)V

    throw v8

    .line 136
    :cond_0
    const/4 v3, 0x0

    .line 137
    .local v3, "mailboxUpdated":Z
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 140
    .local v0, "cv":Landroid/content/ContentValues;
    :cond_1
    :goto_0
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_11

    .line 141
    iget v8, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v9, 0xf

    if-eq v8, v9, :cond_1

    iget v8, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v9, 0x1c

    if-eq v8, v9, :cond_1

    .line 143
    iget v8, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v9, 0xe

    if-ne v8, v9, :cond_b

    .line 145
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v7

    .line 146
    .local v7, "status":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 147
    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    invoke-static {v7}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->isBadSyncKey(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 151
    :cond_2
    iget-object v8, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    const-string/jumbo v9, "0"

    iput-object v9, v8, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 152
    iget-object v8, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    const/4 v9, -0x2

    iput v9, v8, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 153
    const/4 v6, 0x1

    .line 154
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->wipe()V

    .line 157
    const/4 v4, 0x1

    goto :goto_0

    .line 158
    :cond_3
    const/16 v8, 0x10

    if-eq v7, v8, :cond_4

    const/4 v8, 0x5

    if-ne v7, v8, :cond_5

    .line 162
    :cond_4
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8

    .line 163
    :cond_5
    const/16 v8, 0x8

    if-eq v7, v8, :cond_6

    const/16 v8, 0xc

    if-ne v7, v8, :cond_9

    .line 171
    :cond_6
    const/16 v8, 0xc

    if-ne v7, v8, :cond_8

    .line 172
    new-instance v8, Lcom/kingsoft/exchange/eas/EasFolderSync;

    iget-object v9, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-direct {v8, v9, v10}, Lcom/kingsoft/exchange/eas/EasFolderSync;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/kingsoft/exchange/eas/EasFolderSync;->doFolderSync(Landroid/content/SyncResult;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_7

    .line 173
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8

    .line 175
    :cond_7
    const/4 v4, 0x1

    goto :goto_0

    .line 177
    :cond_8
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8

    .line 179
    :cond_9
    const/4 v8, 0x7

    if-ne v7, v8, :cond_a

    .line 182
    const/4 v4, 0x1

    goto :goto_0

    .line 184
    :cond_a
    sget-object v8, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Sync: Unknown status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 186
    new-instance v8, Lcom/kingsoft/exchange/CommandStatusException;

    invoke-direct {v8, v7}, Lcom/kingsoft/exchange/CommandStatusException;-><init>(I)V

    throw v8

    .line 189
    .end local v7    # "status":I
    :cond_b
    iget v8, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v9, 0x16

    if-ne v8, v9, :cond_c

    .line 190
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->commandsParser()V

    .line 191
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 192
    :cond_c
    iget v8, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->tag:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_d

    .line 193
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->responsesParser()V

    .line 194
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 195
    :cond_d
    iget v8, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v9, 0x14

    if-ne v8, v9, :cond_e

    .line 196
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 197
    :cond_e
    iget v8, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v9, 0xb

    if-ne v8, v9, :cond_10

    .line 198
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "newKey":Ljava/lang/String;
    iget-object v8, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v8, v8, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    const-string/jumbo v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 200
    const/4 v4, 0x1

    .line 202
    :cond_f
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "Parsed key for "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v10, v10, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, ": "

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v5, v8, v9

    invoke-virtual {p0, v8}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 203
    iget-object v8, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v8, v8, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 204
    iget-object v8, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-object v5, v8, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 205
    const-string/jumbo v8, "syncKey"

    invoke-virtual {v0, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v3, 0x1

    .line 207
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 210
    .end local v5    # "newKey":Ljava/lang/String;
    :cond_10
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto/16 :goto_0

    .line 215
    :cond_11
    if-eqz v4, :cond_15

    if-nez v6, :cond_15

    .line 216
    const-string/jumbo v8, "Exchange"

    const-string/jumbo v9, "Looping detected"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 217
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->mLooping:Z

    .line 225
    :cond_12
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->commit()V

    .line 226
    if-eqz v3, :cond_13

    .line 227
    iget-object v8, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v9, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v0}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 235
    :cond_13
    :goto_2
    if-eqz v4, :cond_14

    .line 236
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "MoreAvailable"

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 238
    :cond_14
    return v4

    .line 218
    :cond_15
    if-eqz v4, :cond_12

    if-eqz v2, :cond_12

    .line 219
    const-string/jumbo v8, "Exchange"

    const-string/jumbo v9, "moreAvailable but emptyContent"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 220
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->mLooping:Z

    goto :goto_1

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "Exchange"

    const-string/jumbo v9, "Failed to commit changes"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 231
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 232
    .local v1, "e":Landroid/content/OperationApplicationException;
    const-string/jumbo v8, "Exchange"

    const-string/jumbo v9, "Failed to commit changes"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method public abstract responsesParser()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public skipParser(I)V
    .locals 2
    .param p1, "endTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    :goto_0
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method userLog(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "num"    # I
    .param p3, "string2"    # Ljava/lang/String;

    .prologue
    .line 251
    return-void
.end method

.method varargs userLog([Ljava/lang/String;)V
    .locals 0
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 246
    return-void
.end method

.method protected abstract wipe()V
.end method
