.class public Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;
.super Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;
.source "EmailSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;,
        Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$FetchRequest;
    }
.end annotation


# static fields
.field private static final EMAIL_WINDOW_SIZE:Ljava/lang/String; = "5"

.field private static final FETCH_REQUEST_PROJECTION:[Ljava/lang/String;

.field private static final FETCH_REQUEST_RECORD_ID:I = 0x0

.field private static final FETCH_REQUEST_SERVER_ID:I = 0x1

.field static final LAST_VERB_FORWARD:I = 0x3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LAST_VERB_REPLY:I = 0x1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LAST_VERB_REPLY_ALL:I = 0x2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MESSAGE_ID_SUBJECT_ID_COLUMN:I = 0x0

.field private static final MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

.field private static final MESSAGE_ID_SUBJECT_SUBJECT_COLUMN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Exchange"

.field private static final UPDATES_FLAG_COLUMN:I = 0x3

.field private static final UPDATES_MAILBOX_KEY_COLUMN:I = 0x1

.field private static final UPDATES_PROJECTION:[Ljava/lang/String;

.field private static final UPDATES_READ_COLUMN:I = 0x0

.field private static final UPDATES_SERVER_ID_COLUMN:I = 0x2

.field private static final WHERE_BODY_SOURCE_MESSAGE_KEY:Ljava/lang/String; = "sourceMessageKey=?"

.field private static final WHERE_MAILBOX_KEY_AND_MOVED:Ljava/lang/String; = "mailboxKey=? AND (flags&512)!=0"


# instance fields
.field mDeletedIdList:Ljava/util/ArrayList;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFetchRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$FetchRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLooping:Z

.field mUpdatedIdList:Ljava/util/ArrayList;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "flagRead"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mailboxKey"

    aput-object v1, v0, v4

    const-string/jumbo v1, "syncServerId"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "flagFavorite"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->UPDATES_PROJECTION:[Ljava/lang/String;

    .line 79
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "subject"

    aput-object v1, v0, v4

    sput-object v0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

    .line 86
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "syncServerId"

    aput-object v1, v0, v4

    sput-object v0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->FETCH_REQUEST_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/kingsoft/exchange/EasSyncService;)V
    .locals 1
    .param p1, "service"    # Lcom/kingsoft/exchange/EasSyncService;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/kingsoft/exchange/EasSyncService;)V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    .line 111
    return-void
.end method

.method private addCleanupOps(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 451
    .local v1, "id":Ljava/lang/Long;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 455
    .end local v1    # "id":Ljava/lang/Long;
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 456
    .restart local v1    # "id":Ljava/lang/Long;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 459
    .end local v1    # "id":Ljava/lang/Long;
    :cond_1
    return-void
.end method

.method private static formatTwo(I)Ljava/lang/String;
    .locals 2
    .param p0, "num"    # I

    .prologue
    .line 484
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p0, 0x30

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAutomaticLookback()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 257
    const-string/jumbo v7, "3"

    invoke-direct {p0, v7}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->getEstimate(Ljava/lang/String;)I

    move-result v1

    .line 259
    .local v1, "items":I
    const/16 v7, 0x41a

    if-le v1, v7, :cond_1

    .line 261
    const/4 v2, 0x1

    .line 284
    .local v2, "lookback":I
    :goto_0
    iget-object v7, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 285
    iget-object v7, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v4

    .line 286
    .local v4, "policy":Lcom/android/emailcommon/provider/Policy;
    if-eqz v4, :cond_0

    .line 287
    iget v3, v4, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    .line 288
    .local v3, "maxLookback":I
    if-eqz v3, :cond_0

    iget v7, v4, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    if-le v2, v7, :cond_0

    .line 289
    iget v2, v4, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    .line 296
    .end local v3    # "maxLookback":I
    .end local v4    # "policy":Lcom/android/emailcommon/provider/Policy;
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 298
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v7, v7, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v7, :cond_8

    .line 299
    iget-object v7, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput v2, v7, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 300
    const-string/jumbo v7, "syncLookback"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    sget-object v7, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 307
    .local v5, "uri":Landroid/net/Uri;
    :goto_1
    iget-object v7, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v5, v0, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 309
    iget-object v7, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 311
    .local v6, "windowEntries":[Ljava/lang/CharSequence;
    const-string/jumbo v7, "Exchange"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Auto lookback: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 312
    return-void

    .line 262
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "lookback":I
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "windowEntries":[Ljava/lang/CharSequence;
    :cond_1
    const/16 v7, 0x15e

    if-gt v1, v7, :cond_2

    const/4 v7, -0x1

    if-ne v1, v7, :cond_3

    .line 264
    :cond_2
    const/4 v2, 0x2

    .restart local v2    # "lookback":I
    goto :goto_0

    .line 265
    .end local v2    # "lookback":I
    :cond_3
    const/16 v7, 0x96

    if-le v1, v7, :cond_4

    .line 267
    const/4 v2, 0x3

    .restart local v2    # "lookback":I
    goto/16 :goto_0

    .line 268
    .end local v2    # "lookback":I
    :cond_4
    const/16 v7, 0x4b

    if-le v1, v7, :cond_5

    .line 270
    const/4 v2, 0x4

    .restart local v2    # "lookback":I
    goto/16 :goto_0

    .line 271
    .end local v2    # "lookback":I
    :cond_5
    const/4 v7, 0x5

    if-ge v1, v7, :cond_7

    .line 273
    const-string/jumbo v7, "0"

    invoke-direct {p0, v7}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->getEstimate(Ljava/lang/String;)I

    move-result v1

    .line 274
    if-ltz v1, :cond_6

    const/16 v7, 0x64

    if-ge v1, v7, :cond_6

    .line 275
    const/4 v2, 0x6

    .restart local v2    # "lookback":I
    goto/16 :goto_0

    .line 277
    .end local v2    # "lookback":I
    :cond_6
    const/4 v2, 0x5

    .restart local v2    # "lookback":I
    goto/16 :goto_0

    .line 280
    .end local v2    # "lookback":I
    :cond_7
    const/4 v2, 0x5

    .restart local v2    # "lookback":I
    goto/16 :goto_0

    .line 303
    .restart local v0    # "cv":Landroid/content/ContentValues;
    :cond_8
    iget-object v7, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput v2, v7, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    .line 304
    const-string/jumbo v7, "syncLookback"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    sget-object v7, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .restart local v5    # "uri":Landroid/net/Uri;
    goto :goto_1
.end method

.method private getEmailFilter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v0, v1, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    .line 129
    .local v0, "syncLookback":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v1, :cond_1

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v0, v1, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 133
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 148
    const-string/jumbo v1, "3"

    :goto_0
    return-object v1

    .line 135
    :pswitch_0
    const-string/jumbo v1, "1"

    goto :goto_0

    .line 137
    :pswitch_1
    const-string/jumbo v1, "2"

    goto :goto_0

    .line 139
    :pswitch_2
    const-string/jumbo v1, "3"

    goto :goto_0

    .line 141
    :pswitch_3
    const-string/jumbo v1, "4"

    goto :goto_0

    .line 143
    :pswitch_4
    const-string/jumbo v1, "5"

    goto :goto_0

    .line 145
    :pswitch_5
    const-string/jumbo v1, "0"

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getEstimate(Ljava/lang/String;)I
    .locals 14
    .param p1, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    new-instance v8, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct {v8}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 381
    .local v8, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    iget-object v10, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mService:Lcom/kingsoft/exchange/EasSyncService;

    iget-object v10, v10, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x402c000000000000L

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_0

    const/4 v4, 0x1

    .line 382
    .local v4, "ex10":Z
    :goto_0
    iget-object v10, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mService:Lcom/kingsoft/exchange/EasSyncService;

    iget-object v10, v10, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x4028000000000000L

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    const/4 v2, 0x1

    .line 383
    .local v2, "ex03":Z
    :goto_1
    if-nez v4, :cond_2

    if-nez v2, :cond_2

    const/4 v3, 0x1

    .line 385
    .local v3, "ex07":Z
    :goto_2
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v9

    .line 387
    .local v9, "syncKey":Ljava/lang/String;
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "gie, sending "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, " syncKey: "

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v9, v10, v11

    invoke-virtual {p0, v10}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 389
    const/16 v10, 0x185

    invoke-virtual {v8, v10}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v10

    const/16 v11, 0x187

    invoke-virtual {v10, v11}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 390
    const/16 v10, 0x188

    invoke-virtual {v8, v10}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 391
    if-eqz v3, :cond_3

    .line 393
    const/16 v10, 0x18a

    iget-object v11, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v11, v11, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 394
    const/16 v10, 0x18

    invoke-virtual {v8, v10, p1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 395
    const/16 v10, 0xb

    invoke-virtual {v8, v10, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 408
    :goto_3
    invoke-virtual {v8}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 410
    iget-object v10, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mService:Lcom/kingsoft/exchange/EasSyncService;

    const-string/jumbo v11, "GetItemEstimate"

    new-instance v12, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v8}, Lcom/kingsoft/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const/16 v13, 0x7530

    invoke-virtual {v10, v11, v12, v13}, Lcom/kingsoft/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v7

    .line 413
    .local v7, "resp":Lcom/kingsoft/exchange/EasResponse;
    :try_start_0
    invoke-virtual {v7}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v1

    .line 414
    .local v1, "code":I
    const/16 v10, 0xc8

    if-ne v1, v10, :cond_5

    .line 415
    invoke-virtual {v7}, Lcom/kingsoft/exchange/EasResponse;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 416
    invoke-virtual {v7}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 417
    .local v6, "is":Ljava/io/InputStream;
    new-instance v5, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;

    invoke-direct {v5, v6}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;-><init>(Ljava/io/InputStream;)V

    .line 418
    .local v5, "gieParser":Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;
    invoke-virtual {v5}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->parse()Z

    .line 420
    # getter for: Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->mEstimate:I
    invoke-static {v5}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->access$000(Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 424
    invoke-virtual {v7}, Lcom/kingsoft/exchange/EasResponse;->close()V

    .line 427
    .end local v5    # "gieParser":Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;
    .end local v6    # "is":Ljava/io/InputStream;
    :goto_4
    return v10

    .line 381
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "code":I
    .end local v2    # "ex03":Z
    .end local v3    # "ex07":Z
    .end local v4    # "ex10":Z
    .end local v7    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .end local v9    # "syncKey":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 382
    .restart local v4    # "ex10":Z
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 383
    .restart local v2    # "ex03":Z
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 396
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v3    # "ex07":Z
    .restart local v9    # "syncKey":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 398
    const/16 v10, 0x189

    invoke-virtual {v8, v10, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 399
    const/16 v10, 0xb

    invoke-virtual {v8, v10, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 400
    const/16 v10, 0x18a

    iget-object v11, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v11, v11, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 401
    const/16 v10, 0x18

    invoke-virtual {v8, v10, p1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_3

    .line 404
    :cond_4
    const/16 v10, 0xb

    invoke-virtual {v8, v10, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 405
    const/16 v10, 0x18a

    iget-object v11, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v11, v11, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 406
    const/16 v10, 0x17

    invoke-virtual {v8, v10}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v10

    const/16 v11, 0x18

    invoke-virtual {v10, v11, p1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    goto/16 :goto_3

    .line 424
    .restart local v1    # "code":I
    .restart local v7    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :cond_5
    invoke-virtual {v7}, Lcom/kingsoft/exchange/EasResponse;->close()V

    .line 427
    const/4 v10, -0x1

    goto :goto_4

    .line 424
    .end local v1    # "code":I
    :catchall_0
    move-exception v10

    invoke-virtual {v7}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v10
.end method

.method private static messageReferenced(Landroid/content/ContentResolver;J)Z
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "id"    # J

    .prologue
    const/4 v7, 0x0

    .line 520
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "sourceMessageKey=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 522
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 524
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 526
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 529
    :goto_0
    return v0

    .line 526
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    move v0, v7

    .line 529
    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 7

    .prologue
    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "mailboxKey=? AND (flags&512)!=0"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 471
    :cond_0
    invoke-direct {p0, v0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->addCleanupOps(Ljava/util/ArrayList;)V

    .line 474
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v1

    goto :goto_0

    .line 476
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/16 v3, 0x3a

    const/16 v2, 0x2d

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 500
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 502
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 504
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 506
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const-string/jumbo v1, ".000Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    const-string/jumbo v0, "Email"

    return-object v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    return v0
.end method

.method public isSyncable()Z
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;

    invoke-direct {v0, p1, p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;-><init>(Ljava/io/InputStream;Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;)V

    .line 238
    .local v0, "p":Lcom/kingsoft/exchange/adapter/EmailSyncParser;
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->parse()Z

    move-result v1

    .line 240
    .local v1, "res":Z
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->isLooping()Z

    move-result v2

    iput-boolean v2, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    .line 242
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->fetchNeeded()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    :cond_0
    const/4 v1, 0x1

    .line 246
    .end local v1    # "res":Z
    :cond_1
    return v1
.end method

.method sendDeletedItems(Lcom/kingsoft/exchange/adapter/Serializer;Ljava/util/ArrayList;Z)Z
    .locals 10
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p3, "first"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/exchange/adapter/Serializer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "deletedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 545
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 548
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mailboxKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v8, v5, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 552
    .local v6, "c":Landroid/database/Cursor;
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 553
    if-eqz v6, :cond_4

    .line 555
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 556
    const/16 v1, 0xb

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 558
    .local v7, "serverId":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 561
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->messageReferenced(Landroid/content/ContentResolver;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Postponing deletion of referenced message: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 573
    .end local v7    # "serverId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 564
    .restart local v7    # "serverId":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 565
    const/16 v1, 0x16

    :try_start_1
    invoke-virtual {p1, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 566
    const/4 p3, 0x0

    .line 569
    :cond_2
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 570
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 573
    .end local v7    # "serverId":Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 576
    :cond_4
    return p3
.end method

.method public sendLocalChanges(Lcom/kingsoft/exchange/adapter/Serializer;)Z
    .locals 32
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 583
    .local v4, "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 584
    const/4 v5, 0x0

    .line 747
    :goto_0
    return v5

    .line 588
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v5, v5, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v5, v5, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 589
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 593
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v6}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->sendDeletedItems(Lcom/kingsoft/exchange/adapter/Serializer;Ljava/util/ArrayList;Z)Z

    move-result v14

    .line 595
    .local v14, "firstCommand":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 599
    if-eqz v14, :cond_3

    .line 600
    const/16 v5, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 601
    const/4 v14, 0x0

    .line 603
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$FetchRequest;

    .line 604
    .local v27, "req":Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$FetchRequest;
    const/16 v5, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xd

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$FetchRequest;->serverId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_1

    .line 609
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v27    # "req":Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$FetchRequest;
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    const/4 v8, 0x6

    invoke-static {v5, v6, v7, v8}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v29

    .line 613
    .local v29, "trashMailboxId":J
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mailboxKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 617
    .local v10, "c":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 618
    if-eqz v10, :cond_15

    .line 620
    :try_start_0
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 621
    .local v13, "cv":Landroid/content/ContentValues;
    :cond_5
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 622
    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 624
    .local v19, "id":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v19

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->UPDATES_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 631
    .local v12, "currentCursor":Landroid/database/Cursor;
    if-eqz v12, :cond_6

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_7

    .line 734
    :cond_6
    if-eqz v12, :cond_5

    .line 735
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 740
    .end local v12    # "currentCursor":Landroid/database/Cursor;
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v19    # "id":J
    :catchall_0
    move-exception v5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v5

    .line 635
    .restart local v12    # "currentCursor":Landroid/database/Cursor;
    .restart local v13    # "cv":Landroid/content/ContentValues;
    .restart local v19    # "id":J
    :cond_7
    const/4 v5, 0x2

    :try_start_3
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v28

    .line 636
    .local v28, "serverId":Ljava/lang/String;
    if-nez v28, :cond_8

    .line 734
    if-eqz v12, :cond_5

    .line 735
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 640
    :cond_8
    const/16 v16, 0x0

    .line 641
    .local v16, "flagChange":Z
    const/16 v26, 0x0

    .line 643
    .local v26, "readChange":Z
    const/4 v5, 0x1

    :try_start_5
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 645
    .local v21, "mailbox":J
    cmp-long v5, v21, v29

    if-nez v5, :cond_a

    .line 646
    if-eqz v14, :cond_9

    .line 647
    const/16 v5, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 648
    const/4 v14, 0x0

    .line 651
    :cond_9
    const/16 v5, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xd

    move-object/from16 v0, v28

    invoke-virtual {v5, v6, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 654
    const/16 v5, 0x8

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 655
    .local v17, "flags":I
    const-string/jumbo v5, "flags"

    move/from16 v0, v17

    or-int/lit16 v6, v0, 0x200

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v19

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v13, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 734
    if-eqz v12, :cond_5

    .line 735
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 660
    .end local v17    # "flags":I
    :cond_a
    const/16 v5, 0x9

    :try_start_7
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v5, v21, v5

    if-eqz v5, :cond_b

    .line 665
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mService:Lcom/kingsoft/exchange/EasSyncService;

    new-instance v6, Lcom/kingsoft/exchange/MessageMoveRequest;

    move-wide/from16 v0, v19

    move-wide/from16 v2, v21

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/kingsoft/exchange/MessageMoveRequest;-><init>(JJ)V

    invoke-virtual {v5, v6}, Lcom/kingsoft/exchange/EasSyncService;->addRequest(Lcom/kingsoft/emailsync/Request;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 674
    :cond_b
    const/4 v15, 0x0

    .line 675
    .local v15, "flag":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mService:Lcom/kingsoft/exchange/EasSyncService;

    iget-object v5, v5, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028000000000000L

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_c

    .line 676
    const/4 v5, 0x3

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 677
    const/4 v5, 0x6

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eq v15, v5, :cond_c

    .line 678
    const/16 v16, 0x1

    .line 682
    :cond_c
    const/4 v5, 0x0

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 683
    .local v25, "read":I
    const/4 v5, 0x4

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v5

    move/from16 v0, v25

    if-eq v0, v5, :cond_d

    .line 684
    const/16 v26, 0x1

    .line 687
    :cond_d
    if-nez v16, :cond_e

    if-nez v26, :cond_e

    .line 734
    if-eqz v12, :cond_5

    .line 735
    :try_start_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 692
    :cond_e
    if-eqz v14, :cond_f

    .line 693
    const/16 v5, 0x16

    :try_start_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 694
    const/4 v14, 0x0

    .line 697
    :cond_f
    const/16 v5, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xd

    const/16 v7, 0xb

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x1d

    invoke-virtual {v5, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 700
    if-eqz v26, :cond_10

    .line 701
    const/16 v5, 0x95

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 709
    :cond_10
    if-eqz v16, :cond_11

    .line 710
    if-eqz v15, :cond_12

    .line 712
    const/16 v5, 0xba

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xbb

    const-string/jumbo v7, "2"

    invoke-virtual {v5, v6, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 714
    const/16 v5, 0xbd

    const-string/jumbo v6, "FollowUp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 715
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 716
    .local v23, "now":J
    const-string/jumbo v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 718
    .local v11, "calendar":Ljava/util/Calendar;
    move-wide/from16 v0, v23

    invoke-virtual {v11, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 721
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v31

    .line 722
    .local v31, "utc":Ljava/lang/String;
    const/16 v5, 0x25e

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x25f

    move-object/from16 v0, v31

    invoke-virtual {v5, v6, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 724
    const-wide/32 v5, 0x240c8400

    add-long v5, v5, v23

    invoke-virtual {v11, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 725
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v31

    .line 726
    const/16 v5, 0x24c

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x24d

    move-object/from16 v0, v31

    invoke-virtual {v5, v6, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 727
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 732
    .end local v11    # "calendar":Ljava/util/Calendar;
    .end local v23    # "now":J
    .end local v31    # "utc":Ljava/lang/String;
    :cond_11
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 734
    if-eqz v12, :cond_5

    .line 735
    :try_start_a
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 729
    :cond_12
    const/16 v5, 0xba

    :try_start_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    .line 734
    .end local v15    # "flag":I
    .end local v16    # "flagChange":Z
    .end local v21    # "mailbox":J
    .end local v25    # "read":I
    .end local v26    # "readChange":Z
    .end local v28    # "serverId":Ljava/lang/String;
    :catchall_1
    move-exception v5

    if-eqz v12, :cond_13

    .line 735
    :try_start_c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 740
    .end local v12    # "currentCursor":Landroid/database/Cursor;
    .end local v19    # "id":J
    :cond_14
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 744
    .end local v13    # "cv":Landroid/content/ContentValues;
    :cond_15
    if-nez v14, :cond_16

    .line 745
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 747
    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public sendSyncOptions(Ljava/lang/Double;Lcom/kingsoft/exchange/adapter/Serializer;Z)V
    .locals 10
    .param p1, "protocolVersion"    # Ljava/lang/Double;
    .param p2, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p3, "initialSync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    if-eqz p3, :cond_0

    .line 233
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 172
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->FETCH_REQUEST_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "flagLoaded=2 AND mailboxKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 177
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 180
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    new-instance v1, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$FetchRequest;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$FetchRequest;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 185
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 199
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    const/4 v7, 0x1

    .line 200
    .local v7, "isTrashMailbox":Z
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028000000000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    .line 201
    if-nez v7, :cond_3

    .line 202
    const/16 v0, 0x1e

    invoke-virtual {p2, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 207
    :cond_3
    :goto_3
    const/16 v0, 0x13

    invoke-virtual {p2, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 208
    const/16 v0, 0x15

    const-string/jumbo v1, "5"

    invoke-virtual {p2, v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 209
    const/16 v0, 0x17

    invoke-virtual {p2, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 211
    const/16 v0, 0x18

    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->getEmailFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 213
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028000000000000L

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_7

    .line 214
    const/16 v0, 0x445

    invoke-virtual {p2, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 216
    const/16 v0, 0x446

    const-string/jumbo v1, "2"

    invoke-virtual {p2, v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 217
    const/16 v0, 0x447

    const-string/jumbo v1, "1000000"

    invoke-virtual {p2, v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 218
    invoke-virtual {p2}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 224
    :goto_4
    invoke-virtual {p2}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    goto/16 :goto_0

    .line 199
    .end local v7    # "isTrashMailbox":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 205
    .restart local v7    # "isTrashMailbox":Z
    :cond_5
    const/16 v1, 0x1e

    if-eqz v7, :cond_6

    const-string/jumbo v0, "0"

    :goto_5
    invoke-virtual {p2, v1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_3

    :cond_6
    const-string/jumbo v0, "1"

    goto :goto_5

    .line 221
    :cond_7
    const/16 v0, 0x22

    const-string/jumbo v1, "2"

    invoke-virtual {p2, v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 222
    const/16 v0, 0x23

    const-string/jumbo v1, "7"

    invoke-virtual {p2, v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_4

    .line 226
    .end local v7    # "isTrashMailbox":Z
    :cond_8
    const/16 v0, 0x17

    invoke-virtual {p2, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 229
    const/16 v0, 0x22

    const-string/jumbo v1, "0"

    invoke-virtual {p2, v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 230
    const/16 v0, 0x19

    const-string/jumbo v1, "7"

    invoke-virtual {p2, v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 231
    invoke-virtual {p2}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    goto/16 :goto_0
.end method

.method public wipe()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 115
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mailboxKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mailboxKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mailboxKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mService:Lcom/kingsoft/exchange/EasSyncService;

    invoke-virtual {v0}, Lcom/kingsoft/exchange/EasSyncService;->clearRequests()V

    .line 122
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 125
    return-void
.end method
