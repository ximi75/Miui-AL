.class public abstract Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;
.super Ljava/lang/Object;
.source "AbstractSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;
    }
.end annotation


# static fields
.field public static final DAYS:I = 0x5265c00

.field public static final HOURS:I = 0x36ee80

.field public static final MINUTES:I = 0xea60

.field public static final SECONDS:I = 0x3e8

.field private static final SEPARATOR_ID:J = 0x7fffffffffffffffL

.field public static final WEEKS:I = 0x240c8400


# instance fields
.field public mAccount:Lcom/android/emailcommon/provider/Account;

.field public final mAccountManagerAccount:Landroid/accounts/Account;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mContext:Landroid/content/Context;

.field public mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field public mService:Lcom/kingsoft/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Lcom/kingsoft/exchange/EasSyncService;)V
    .locals 3
    .param p1, "service"    # Lcom/kingsoft/exchange/EasSyncService;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/kingsoft/exchange/EasSyncService;

    .line 79
    iget-object v0, p1, Lcom/kingsoft/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 80
    iget-object v0, p1, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    .line 81
    iget-object v0, p1, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 82
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string/jumbo v2, "com.android.exchange"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    .line 84
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 85
    return-void
.end method

.method protected static addSeparatorOperation(Ljava/util/ArrayList;Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    new-instance v0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    .line 304
    .local v0, "op":Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;->mSeparator:Z

    .line 305
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method private static applyAndCopyResults(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;I)V
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "authority"    # Ljava/lang/String;
    .param p3, "result"    # [Landroid/content/ContentProviderResult;
    .param p4, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 228
    .local p2, "mini":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 230
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2, p4}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;I)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 233
    .local v0, "miniResult":[Landroid/content/ContentProviderResult;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v0    # "miniResult":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;I)[Landroid/content/ContentProviderResult;
    .locals 4
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "authority"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;",
            ">;I)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 211
    .local p2, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/ContentProviderResult;

    .line 218
    :goto_0
    return-object v3

    .line 214
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v0, "cpos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    .line 216
    .local v2, "op":Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;
    invoke-static {v2, p3}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->operationToContentProviderOperation(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;I)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 218
    .end local v2    # "op":Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->execute(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    goto :goto_0
.end method

.method private static execute(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 178
    .local p2, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [Landroid/content/ContentProviderResult;

    goto :goto_0
.end method

.method static operationToContentProviderOperation(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;I)Landroid/content/ContentProviderOperation;
    .locals 3
    .param p0, "op"    # Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;
    .param p1, "offset"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 192
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;->mOp:Landroid/content/ContentProviderOperation;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;->mOp:Landroid/content/ContentProviderOperation;

    .line 201
    :goto_0
    return-object v1

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    if-nez v1, :cond_1

    .line 195
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Operation must have CPO.Builder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 198
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;->mColumnName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;->mColumnName:Ljava/lang/String;

    iget v2, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;->mOffset:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 201
    :cond_2
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    goto :goto_0
.end method

.method protected static safeExecute(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 11
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    const/4 v10, 0x0

    .line 254
    const/4 v8, 0x0

    .line 257
    .local v8, "result":[Landroid/content/ContentProviderResult;
    const/4 v9, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v9}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;I)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v9

    .line 295
    :goto_0
    return-object v9

    .line 258
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Landroid/os/TransactionTooLargeException;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v4, "mini":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v8, v9, [Landroid/content/ContentProviderResult;

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "count":I
    const/4 v6, 0x0

    .line 266
    .local v6, "offset":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    .line 267
    .local v7, "op":Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;
    iget-boolean v9, v7, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;->mSeparator:Z

    if-eqz v9, :cond_0

    .line 270
    :try_start_1
    invoke-static {p0, p1, v4, v8, v6}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->applyAndCopyResults(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;I)V

    .line 271
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 274
    add-int/lit8 v6, v0, 0x1

    .line 283
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 284
    goto :goto_1

    .line 275
    :catch_1
    move-exception v2

    .line 276
    .local v2, "e1":Landroid/os/TransactionTooLargeException;
    new-instance v9, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "Can\'t send transaction; sync stopped."

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 277
    .end local v2    # "e1":Landroid/os/TransactionTooLargeException;
    :catch_2
    move-exception v2

    .line 278
    .local v2, "e1":Landroid/os/RemoteException;
    throw v2

    .line 281
    .end local v2    # "e1":Landroid/os/RemoteException;
    :cond_0
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 286
    .end local v7    # "op":Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 287
    .local v5, "miniSize":I
    if-lez v5, :cond_3

    const/4 v9, 0x1

    if-ne v5, v9, :cond_2

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-boolean v9, v9, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;->mSeparator:Z

    if-nez v9, :cond_3

    .line 288
    :cond_2
    invoke-static {p0, p1, v4, v8, v6}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->applyAndCopyResults(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;I)V

    .end local v0    # "count":I
    .end local v1    # "e":Landroid/os/TransactionTooLargeException;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "mini":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    .end local v5    # "miniSize":I
    .end local v6    # "offset":I
    :cond_3
    :goto_3
    move-object v9, v8

    .line 295
    goto :goto_0

    .line 290
    :catch_3
    move-exception v1

    .line 291
    .local v1, "e":Landroid/os/RemoteException;
    throw v1

    .line 292
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_4
    move-exception v9

    goto :goto_3
.end method


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract getCollectionName()Ljava/lang/String;
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Reset SyncKey to 0"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    const-string/jumbo v1, "0"

    iput-object v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    return-object v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSyncable()Z
.end method

.method public abstract parse(Ljava/io/InputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/exchange/CommandStatusException;
        }
    .end annotation
.end method

.method public abstract sendLocalChanges(Lcom/kingsoft/exchange/adapter/Serializer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendSyncOptions(Ljava/lang/Double;Lcom/kingsoft/exchange/adapter/Serializer;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setSyncKey(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "syncKey"    # Ljava/lang/String;
    .param p2, "inCommands"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-object p1, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public varargs userLog([Ljava/lang/String;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/kingsoft/exchange/EasSyncService;

    invoke-virtual {v0, p1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public abstract wipe()V
.end method
