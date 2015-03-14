.class Lcom/kingsoft/exchange/service/EasServerConnection$2;
.super Ljava/lang/Object;
.source "EasServerConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/exchange/service/EasServerConnection;->stop(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/exchange/service/EasServerConnection;


# direct methods
.method constructor <init>(Lcom/kingsoft/exchange/service/EasServerConnection;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/kingsoft/exchange/service/EasServerConnection$2;->this$0:Lcom/kingsoft/exchange/service/EasServerConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasServerConnection$2;->this$0:Lcom/kingsoft/exchange/service/EasServerConnection;

    # getter for: Lcom/kingsoft/exchange/service/EasServerConnection;->mPendingRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static {v0}, Lcom/kingsoft/exchange/service/EasServerConnection;->access$000(Lcom/kingsoft/exchange/service/EasServerConnection;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 473
    return-void
.end method
