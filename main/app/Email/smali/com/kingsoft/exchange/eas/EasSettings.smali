.class public Lcom/kingsoft/exchange/eas/EasSettings;
.super Lcom/kingsoft/exchange/eas/EasOperation;
.source "EasSettings.java"


# static fields
.field private static final RESULT_OK:I = 0x1


# direct methods
.method public constructor <init>(Lcom/kingsoft/exchange/eas/EasOperation;)V
    .locals 0
    .param p1, "parentOperation"    # Lcom/kingsoft/exchange/eas/EasOperation;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/eas/EasOperation;-><init>(Lcom/kingsoft/exchange/eas/EasOperation;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "Settings"

    return-object v0
.end method

.method protected getRequestEntity()Lorg/apache/http/HttpEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 62
    .local v0, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    const/16 v1, 0x485

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 63
    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/eas/EasSettings;->addDeviceInformationToSerlializer(Lcom/kingsoft/exchange/adapter/Serializer;)V

    .line 64
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 65
    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/eas/EasSettings;->makeEntity(Lcom/kingsoft/exchange/adapter/Serializer;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    return-object v1
.end method

.method protected handleResponse(Lcom/kingsoft/exchange/EasResponse;Landroid/content/SyncResult;)I
    .locals 2
    .param p1, "response"    # Lcom/kingsoft/exchange/EasResponse;
    .param p2, "syncResult"    # Landroid/content/SyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/kingsoft/exchange/adapter/SettingsParser;

    invoke-virtual {p1}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/exchange/adapter/SettingsParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/SettingsParser;->parse()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/16 v0, -0xa

    goto :goto_0
.end method

.method public sendDeviceInformation(Landroid/content/SyncResult;)Z
    .locals 2
    .param p1, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/eas/EasSettings;->performOperation(Landroid/content/SyncResult;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
