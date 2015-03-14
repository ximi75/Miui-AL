.class Lcom/kingsoft/email/statistics/KingsoftAgent$1;
.super Ljava/lang/Object;
.source "KingsoftAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/statistics/KingsoftAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/statistics/KingsoftAgent;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/statistics/KingsoftAgent;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$1;->this$0:Lcom/kingsoft/email/statistics/KingsoftAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    # getter for: Lcom/kingsoft/email/statistics/KingsoftAgent;->mInstance:Lcom/kingsoft/email/statistics/KingsoftAgent;
    invoke-static {}, Lcom/kingsoft/email/statistics/KingsoftAgent;->access$000()Lcom/kingsoft/email/statistics/KingsoftAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onAppExit()V

    .line 62
    return-void
.end method
