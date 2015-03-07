.class public Lcom/kingsoft/exchange/adapter/AccountSyncAdapter;
.super Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;
.source "AccountSyncAdapter.java"


# direct methods
.method public constructor <init>(Lcom/kingsoft/exchange/EasSyncService;)V
    .locals 0
    .param p1, "service"    # Lcom/kingsoft/exchange/EasSyncService;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/kingsoft/exchange/EasSyncService;)V

    .line 12
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSyncable()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public sendLocalChanges(Lcom/kingsoft/exchange/adapter/Serializer;)Z
    .locals 1
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public sendSyncOptions(Ljava/lang/Double;Lcom/kingsoft/exchange/adapter/Serializer;Z)V
    .locals 0
    .param p1, "protocolVersion"    # Ljava/lang/Double;
    .param p2, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p3, "initialSync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    return-void
.end method

.method public wipe()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method
