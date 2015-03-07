.class Lcom/kingsoft/exchange/adapter/Search$SearchParser;
.super Lcom/kingsoft/exchange/adapter/Parser;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/adapter/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchParser"
.end annotation


# static fields
.field public static final END_SEARCH:I = 0xc


# instance fields
.field private mEndSearch:Z

.field private mMessageNum:I

.field private mMinDate:J

.field private final mQuery:Ljava/lang/String;

.field private final mService:Lcom/kingsoft/exchange/EasSyncService;

.field private mTotalResults:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;Lcom/kingsoft/exchange/EasSyncService;Ljava/lang/String;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "service"    # Lcom/kingsoft/exchange/EasSyncService;
    .param p3, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 174
    iput v2, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mMessageNum:I

    .line 175
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mMinDate:J

    .line 176
    iput-boolean v2, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mEndSearch:Z

    .line 183
    iput-object p2, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mService:Lcom/kingsoft/exchange/EasSyncService;

    .line 184
    iput-object p3, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mQuery:Ljava/lang/String;

    .line 185
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lcom/kingsoft/exchange/EasSyncService;Ljava/lang/String;Lcom/kingsoft/exchange/adapter/Search$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Lcom/kingsoft/exchange/EasSyncService;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/kingsoft/exchange/adapter/Search$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;-><init>(Ljava/io/InputStream;Lcom/kingsoft/exchange/EasSyncService;Ljava/lang/String;)V

    return-void
.end method

.method private parseResponse()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "res":Z
    :goto_0
    const/16 v1, 0x3cd

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 227
    iget v1, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->tag:I

    const/16 v2, 0x3c7

    if-ne v1, v2, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->parseStore()Z

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->skipTag()V

    goto :goto_0

    .line 233
    :cond_1
    return v0
.end method

.method private parseResult(Lcom/kingsoft/exchange/adapter/EmailSyncParser;Ljava/util/ArrayList;)Z
    .locals 4
    .param p1, "parser"    # Lcom/kingsoft/exchange/adapter/EmailSyncParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/exchange/adapter/EmailSyncParser;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    .local p2, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .line 278
    .local v1, "res":Z
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 279
    .local v0, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_0
    const/16 v2, 0x3ce

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    .line 280
    iget v2, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->tag:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->getValue()Ljava/lang/String;

    goto :goto_0

    .line 282
    :cond_0
    iget v2, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->tag:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->getValue()Ljava/lang/String;

    goto :goto_0

    .line 284
    :cond_1
    iget v2, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->tag:I

    const/16 v3, 0x3d8

    if-ne v2, v3, :cond_2

    .line 285
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    goto :goto_0

    .line 286
    :cond_2
    iget v2, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->tag:I

    const/16 v3, 0x3cf

    if-ne v2, v3, :cond_4

    .line 287
    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mService:Lcom/kingsoft/exchange/EasSyncService;

    iget-object v2, v2, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 288
    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mService:Lcom/kingsoft/exchange/EasSyncService;

    iget-object v2, v2, Lcom/kingsoft/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 289
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 290
    iget v2, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->tag:I

    invoke-virtual {p1, v2}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->pushTag(I)V

    .line 291
    iget v2, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->tag:I

    invoke-virtual {p1, v0, v2}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->addData(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    .line 292
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 293
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mQuery:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kingsoft/emailcommon/utility/TextUtilities;->highlightTermsInHtml(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 295
    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)V

    .line 296
    invoke-direct {p0, v0}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->saveTimestamp(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 297
    iget v2, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mMessageNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mMessageNum:I

    goto :goto_0

    .line 299
    :cond_4
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->skipTag()V

    goto :goto_0

    .line 302
    :cond_5
    return v1
.end method

.method private parseStore()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 237
    new-instance v0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;

    iget-object v5, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mService:Lcom/kingsoft/exchange/EasSyncService;

    invoke-direct {v0, v5}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/kingsoft/exchange/EasSyncService;)V

    .line 238
    .local v0, "adapter":Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;
    new-instance v3, Lcom/kingsoft/exchange/adapter/EmailSyncParser;

    invoke-direct {v3, p0, v0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;-><init>(Lcom/kingsoft/exchange/adapter/Parser;Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;)V

    .line 239
    .local v3, "parser":Lcom/kingsoft/exchange/adapter/EmailSyncParser;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v2, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v4, 0x0

    .line 242
    .local v4, "res":Z
    :goto_0
    const/16 v5, 0x3c7

    invoke-virtual {p0, v5}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->nextTag(I)I

    move-result v5

    const/4 v8, 0x3

    if-eq v5, v8, :cond_4

    .line 243
    iget v5, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->tag:I

    const/16 v8, 0x3cc

    if-ne v5, v8, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->getValueInt()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_0

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mEndSearch:Z

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    .line 246
    :cond_1
    iget v5, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->tag:I

    const/16 v8, 0x3d0

    if-ne v5, v8, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->getValueInt()I

    move-result v5

    iput v5, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mTotalResults:I

    goto :goto_0

    .line 248
    :cond_2
    iget v5, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->tag:I

    const/16 v8, 0x3ce

    if-ne v5, v8, :cond_3

    .line 249
    invoke-direct {p0, v3, v2}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->parseResult(Lcom/kingsoft/exchange/adapter/EmailSyncParser;Ljava/util/ArrayList;)Z

    goto :goto_0

    .line 251
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->skipTag()V

    goto :goto_0

    .line 256
    :cond_4
    :try_start_0
    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 257
    sget-boolean v5, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    if-eqz v5, :cond_5

    .line 258
    iget-object v5, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mService:Lcom/kingsoft/exchange/EasSyncService;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Saved "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " search results"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v5, v6}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 265
    :cond_5
    :goto_2
    return v4

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "RemoteException while saving search results."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 262
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method private saveTimestamp(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 4
    .param p1, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;

    .prologue
    const-wide/16 v2, 0x0

    .line 269
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mMinDate:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    iget-wide v2, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mMinDate:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 270
    :cond_0
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    iput-wide v0, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mMinDate:J

    .line 272
    :cond_1
    return-void
.end method


# virtual methods
.method protected getMessageNum()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mMessageNum:I

    return v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mMinDate:J

    return-wide v0
.end method

.method protected getTotalResults()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mTotalResults:I

    return v0
.end method

.method public isEndSearch()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->mEndSearch:Z

    return v0
.end method

.method public parse()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "res":Z
    invoke-virtual {p0, v5}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->nextTag(I)I

    move-result v2

    const/16 v3, 0x3c5

    if-eq v2, v3, :cond_0

    .line 207
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 209
    :cond_0
    :goto_0
    invoke-virtual {p0, v5}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 210
    iget v2, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->tag:I

    const/16 v3, 0x3cc

    if-ne v2, v3, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "status":Ljava/lang/String;
    sget-boolean v2, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_0

    .line 213
    sget-object v2, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Search status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 215
    .end local v1    # "status":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->tag:I

    const/16 v3, 0x3cd

    if-ne v2, v3, :cond_2

    .line 216
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->parseResponse()Z

    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/Search$SearchParser;->skipTag()V

    goto :goto_0

    .line 221
    :cond_3
    return v0
.end method
