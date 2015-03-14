.class Lcom/kingsoft/exchange/ExchangeService$CalendarObserver$1;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;


# direct methods
.method constructor <init>(Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;

    # invokes: Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->onChangeInBackground()V
    invoke-static {v0}, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->access$700(Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;)V

    .line 500
    return-void
.end method
