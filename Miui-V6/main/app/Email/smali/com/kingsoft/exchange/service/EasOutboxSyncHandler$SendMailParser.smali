.class Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailParser;
.super Lcom/kingsoft/exchange/adapter/Parser;
.source "EasOutboxSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendMailParser"
.end annotation


# instance fields
.field private final mStartTag:I

.field private mStatus:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "startTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 393
    iput p2, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailParser;->mStartTag:I

    .line 394
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailParser;->mStatus:I

    return v0
.end method

.method public parse()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 405
    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailParser;->nextTag(I)I

    move-result v0

    iget v1, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailParser;->mStartTag:I

    if-eq v0, v1, :cond_0

    .line 406
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 408
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 409
    iget v0, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailParser;->tag:I

    const/16 v1, 0x552

    if-ne v0, v1, :cond_1

    .line 410
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailParser;->getValueInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailParser;->mStatus:I

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailParser;->skipTag()V

    goto :goto_0

    .line 415
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
