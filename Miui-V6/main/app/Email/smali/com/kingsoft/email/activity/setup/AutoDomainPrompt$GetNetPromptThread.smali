.class Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;
.super Ljava/lang/Thread;
.source "AutoDomainPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetNetPromptThread"
.end annotation


# instance fields
.field public mHandler2:Landroid/os/Handler;

.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;


# direct methods
.method private constructor <init>(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;->this$0:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;
    .param p2, "x1"    # Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$1;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;-><init>(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;)V

    return-void
.end method

.method static synthetic access$400(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;->getDataFromNet(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getDataFromNet(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "partDomain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "word"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "size"

    sget v5, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->MAX_DATA_SIZE:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;->this$0:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    # getter for: Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->access$700(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/email/statistics/URLMap;->getDomainPromptUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->getIntance()Lcom/kingsoft/email/statistics/KingSoftHttpUtils;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->connected(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "strJson":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;->parseJson(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method private parseJson(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v3, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 379
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 380
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 385
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 345
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 346
    new-instance v0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread$1;-><init>(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;)V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;->mHandler2:Landroid/os/Handler;

    .line 361
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 362
    return-void
.end method
