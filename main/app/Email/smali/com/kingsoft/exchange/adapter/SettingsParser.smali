.class public Lcom/kingsoft/exchange/adapter/SettingsParser;
.super Lcom/kingsoft/exchange/adapter/Parser;
.source "SettingsParser.java"


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
    .line 36
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 37
    return-void
.end method


# virtual methods
.method public parse()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "res":Z
    invoke-virtual {p0, v6}, Lcom/kingsoft/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v2

    const/16 v3, 0x485

    if-eq v2, v3, :cond_0

    .line 43
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {p0, v6}, Lcom/kingsoft/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 46
    iget v2, p0, Lcom/kingsoft/exchange/adapter/SettingsParser;->tag:I

    const/16 v3, 0x486

    if-ne v2, v3, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/SettingsParser;->getValueInt()I

    move-result v1

    .line 48
    .local v1, "status":I
    const-string/jumbo v2, "Exchange"

    const-string/jumbo v3, "Settings status = %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 49
    if-ne v1, v7, :cond_1

    .line 50
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    .end local v1    # "status":I
    :cond_2
    iget v2, p0, Lcom/kingsoft/exchange/adapter/SettingsParser;->tag:I

    const/16 v3, 0x496

    if-ne v2, v3, :cond_3

    .line 56
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/SettingsParser;->parseDeviceInformation()V

    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/SettingsParser;->skipTag()V

    goto :goto_0

    .line 61
    :cond_4
    return v0
.end method

.method public parseDeviceInformation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    :goto_0
    const/16 v0, 0x496

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 66
    iget v0, p0, Lcom/kingsoft/exchange/adapter/SettingsParser;->tag:I

    const/16 v1, 0x488

    if-ne v0, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/SettingsParser;->parseSet()V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/SettingsParser;->skipTag()V

    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method

.method public parseSet()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    :goto_0
    const/16 v0, 0x488

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 76
    iget v0, p0, Lcom/kingsoft/exchange/adapter/SettingsParser;->tag:I

    const/16 v1, 0x486

    if-ne v0, v1, :cond_0

    .line 77
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "Set status = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/SettingsParser;->getValueInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/SettingsParser;->skipTag()V

    goto :goto_0

    .line 82
    :cond_1
    return-void
.end method
