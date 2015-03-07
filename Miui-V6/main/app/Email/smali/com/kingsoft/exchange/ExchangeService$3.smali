.class Lcom/kingsoft/exchange/ExchangeService$3;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/exchange/ExchangeService;->onStartService(Lcom/android/emailcommon/provider/Mailbox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/exchange/ExchangeService;

.field final synthetic val$svc:Lcom/kingsoft/emailsync/AbstractSyncService;


# direct methods
.method constructor <init>(Lcom/kingsoft/exchange/ExchangeService;Lcom/kingsoft/emailsync/AbstractSyncService;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/kingsoft/exchange/ExchangeService$3;->this$0:Lcom/kingsoft/exchange/ExchangeService;

    iput-object p2, p0, Lcom/kingsoft/exchange/ExchangeService$3;->val$svc:Lcom/kingsoft/emailsync/AbstractSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/kingsoft/exchange/ExchangeService$3;->val$svc:Lcom/kingsoft/emailsync/AbstractSyncService;

    invoke-virtual {v0}, Lcom/kingsoft/emailsync/AbstractSyncService;->reset()V

    .line 758
    return-void
.end method
