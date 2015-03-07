.class public Lcom/kingsoft/exchange/eas/EasOptions;
.super Lcom/kingsoft/exchange/eas/EasOperation;
.source "EasOptions.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Exchange"

.field public static final RESULT_OK:I = 0x1

.field private static final SUPPORTED_PROTOCOL_VERSIONS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mProtocolVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "2.5"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "12.0"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "12.1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "14.0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "14.1"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/exchange/eas/EasOptions;->SUPPORTED_PROTOCOL_VERSIONS:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/kingsoft/exchange/eas/EasOperation;)V
    .locals 1
    .param p1, "parentOperation"    # Lcom/kingsoft/exchange/eas/EasOperation;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/eas/EasOperation;-><init>(Lcom/kingsoft/exchange/eas/EasOperation;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/exchange/eas/EasOptions;->mProtocolVersion:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private getProtocolVersionFromHeader(Lorg/apache/http/Header;)Ljava/lang/String;
    .locals 11
    .param p1, "versionHeader"    # Lorg/apache/http/Header;

    .prologue
    .line 114
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "supportedVersions":Ljava/lang/String;
    const-string/jumbo v7, "Exchange"

    const-string/jumbo v8, "Server supports versions: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 116
    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "supportedVersionsArray":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 119
    .local v3, "newProtocolVersion":Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    .line 120
    .local v6, "version":Ljava/lang/String;
    sget-object v7, Lcom/kingsoft/exchange/eas/EasOptions;->SUPPORTED_PROTOCOL_VERSIONS:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 121
    move-object v3, v6

    .line 119
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v6    # "version":Ljava/lang/String;
    :cond_1
    return-object v3
.end method


# virtual methods
.method protected getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string/jumbo v0, "OPTIONS"

    return-object v0
.end method

.method public getProtocolVersionFromServer(Landroid/content/SyncResult;)I
    .locals 1
    .param p1, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/eas/EasOptions;->performOperation(Landroid/content/SyncResult;)I

    move-result v0

    return v0
.end method

.method public getProtocolVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingsoft/exchange/eas/EasOptions;->mProtocolVersion:Ljava/lang/String;

    return-object v0
.end method

.method protected getRequestEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRequestUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleResponse(Lcom/kingsoft/exchange/EasResponse;Landroid/content/SyncResult;)I
    .locals 7
    .param p1, "response"    # Lcom/kingsoft/exchange/EasResponse;
    .param p2, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 84
    const-string/jumbo v4, "MS-ASProtocolCommands"

    invoke-virtual {p1, v4}, Lcom/kingsoft/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 85
    .local v0, "commands":Lorg/apache/http/Header;
    const-string/jumbo v4, "ms-asprotocolversions"

    invoke-virtual {p1, v4}, Lcom/kingsoft/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 87
    .local v2, "versions":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    if-nez v2, :cond_2

    .line 88
    :cond_0
    const-string/jumbo v4, "Exchange"

    const-string/jumbo v5, "OPTIONS response without commands or versions"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 89
    const/4 v1, 0x0

    .line 94
    .local v1, "hasProtocolVersion":Z
    :goto_0
    if-nez v1, :cond_1

    .line 95
    const/16 v3, -0x9

    .line 98
    :cond_1
    return v3

    .line 91
    .end local v1    # "hasProtocolVersion":Z
    :cond_2
    invoke-direct {p0, v2}, Lcom/kingsoft/exchange/eas/EasOptions;->getProtocolVersionFromHeader(Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/exchange/eas/EasOptions;->mProtocolVersion:Ljava/lang/String;

    .line 92
    iget-object v4, p0, Lcom/kingsoft/exchange/eas/EasOptions;->mProtocolVersion:Ljava/lang/String;

    if-eqz v4, :cond_3

    move v1, v3

    .restart local v1    # "hasProtocolVersion":Z
    :cond_3
    goto :goto_0
.end method
