.class Lcom/kingsoft/exchange/service/EasServerConnection$1;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "EasServerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/exchange/service/EasServerConnection;->getHttpClient(J)Lorg/apache/http/client/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/exchange/service/EasServerConnection;


# direct methods
.method constructor <init>(Lcom/kingsoft/exchange/service/EasServerConnection;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p2, "x0"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p3, "x1"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/kingsoft/exchange/service/EasServerConnection$1;->this$0:Lcom/kingsoft/exchange/service/EasServerConnection;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 183
    .local v0, "processor":Lorg/apache/http/protocol/BasicHttpProcessor;
    new-instance v1, Lcom/kingsoft/exchange/utility/CurlLogger;

    invoke-direct {v1}, Lcom/kingsoft/exchange/utility/CurlLogger;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 184
    return-object v0
.end method
