.class Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;
.super Lcom/kingsoft/exchange/adapter/Parser;
.source "EmailSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetItemEstimateParser"
.end annotation


# instance fields
.field private mEstimate:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 315
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->mEstimate:I

    .line 319
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;

    .prologue
    .line 314
    iget v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->mEstimate:I

    return v0
.end method


# virtual methods
.method public parse()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 325
    iget v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->tag:I

    const/16 v1, 0x185

    if-ne v0, v1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->parseGetItemEstimate()V

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->skipTag()V

    goto :goto_0

    .line 331
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public parseCollection()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 357
    :goto_0
    const/16 v0, 0x188

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 358
    iget v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->tag:I

    const/16 v1, 0x189

    if-ne v0, v1, :cond_0

    .line 359
    const-string/jumbo v0, "Exchange"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GIE class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 360
    :cond_0
    iget v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->tag:I

    const/16 v1, 0x18a

    if-ne v0, v1, :cond_1

    .line 361
    const-string/jumbo v0, "Exchange"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GIE collectionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 362
    :cond_1
    iget v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->tag:I

    const/16 v1, 0x18c

    if-ne v0, v1, :cond_2

    .line 363
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->getValueInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->mEstimate:I

    .line 364
    const-string/jumbo v0, "Exchange"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GIE estimate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->mEstimate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 366
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->skipTag()V

    goto/16 :goto_0

    .line 369
    :cond_3
    return-void
.end method

.method public parseGetItemEstimate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    :goto_0
    const/16 v0, 0x185

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 336
    iget v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->tag:I

    const/16 v1, 0x18d

    if-ne v0, v1, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->parseResponse()V

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->skipTag()V

    goto :goto_0

    .line 342
    :cond_1
    return-void
.end method

.method public parseResponse()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    :goto_0
    const/16 v0, 0x18d

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 346
    iget v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->tag:I

    const/16 v1, 0x18e

    if-ne v0, v1, :cond_0

    .line 347
    const-string/jumbo v0, "Exchange"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GIE status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 348
    :cond_0
    iget v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->tag:I

    const/16 v1, 0x188

    if-ne v0, v1, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->parseCollection()V

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->skipTag()V

    goto :goto_0

    .line 354
    :cond_2
    return-void
.end method
