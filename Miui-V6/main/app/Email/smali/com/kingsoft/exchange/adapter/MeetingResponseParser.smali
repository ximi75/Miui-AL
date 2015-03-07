.class public Lcom/kingsoft/exchange/adapter/MeetingResponseParser;
.super Lcom/kingsoft/exchange/adapter/Parser;
.source "MeetingResponseParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Exchange"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 32
    return-void
.end method

.method private parseResult()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 35
    :cond_0
    :goto_0
    const/16 v1, 0x20a

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/MeetingResponseParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 36
    iget v1, p0, Lcom/kingsoft/exchange/adapter/MeetingResponseParser;->tag:I

    const/16 v2, 0x20b

    if-ne v1, v2, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/MeetingResponseParser;->getValueInt()I

    move-result v0

    .line 38
    .local v0, "status":I
    if-eq v0, v5, :cond_0

    .line 39
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "Error in meeting response: %d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 41
    .end local v0    # "status":I
    :cond_1
    iget v1, p0, Lcom/kingsoft/exchange/adapter/MeetingResponseParser;->tag:I

    const/16 v2, 0x205

    if-ne v1, v2, :cond_2

    .line 42
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "Meeting response calender id: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/MeetingResponseParser;->getValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/MeetingResponseParser;->skipTag()V

    goto :goto_0

    .line 47
    :cond_3
    return-void
.end method


# virtual methods
.method public parse()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "res":Z
    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/adapter/MeetingResponseParser;->nextTag(I)I

    move-result v1

    const/16 v2, 0x207

    if-eq v1, v2, :cond_0

    .line 53
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 55
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/adapter/MeetingResponseParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 56
    iget v1, p0, Lcom/kingsoft/exchange/adapter/MeetingResponseParser;->tag:I

    const/16 v2, 0x20a

    if-ne v1, v2, :cond_1

    .line 57
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/MeetingResponseParser;->parseResult()V

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/MeetingResponseParser;->skipTag()V

    goto :goto_0

    .line 62
    :cond_2
    return v0
.end method
