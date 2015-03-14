.class Lcom/kingsoft/email/statistics/KingsoftAgent$6;
.super Ljava/lang/Thread;
.source "KingsoftAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/statistics/KingsoftAgent;->onAppStart()V
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
    .line 506
    iput-object p1, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$6;->this$0:Lcom/kingsoft/email/statistics/KingsoftAgent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 508
    iget-object v3, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$6;->this$0:Lcom/kingsoft/email/statistics/KingsoftAgent;

    # invokes: Lcom/kingsoft/email/statistics/KingsoftAgent;->isNetAvailable()Z
    invoke-static {v3}, Lcom/kingsoft/email/statistics/KingsoftAgent;->access$200(Lcom/kingsoft/email/statistics/KingsoftAgent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$6;->this$0:Lcom/kingsoft/email/statistics/KingsoftAgent;

    # invokes: Lcom/kingsoft/email/statistics/KingsoftAgent;->getUnPushedException()Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/kingsoft/email/statistics/KingsoftAgent;->access$300(Lcom/kingsoft/email/statistics/KingsoftAgent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 512
    .local v0, "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/statistics/ExceptionInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 513
    iget-object v3, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$6;->this$0:Lcom/kingsoft/email/statistics/KingsoftAgent;

    # getter for: Lcom/kingsoft/email/statistics/KingsoftAgent;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/kingsoft/email/statistics/KingsoftAgent;->access$100(Lcom/kingsoft/email/statistics/KingsoftAgent;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->Exception:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    invoke-static {v3, v4}, Lcom/kingsoft/email/statistics/DataPushSwitch;->getSwitchInfoByType(Landroid/content/Context;Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;)Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;

    move-result-object v2

    .line 516
    .local v2, "reportSwitch":Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;
    iget-boolean v3, v2, Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;->on:Z

    if-eqz v3, :cond_0

    .line 519
    iget-object v3, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$6;->this$0:Lcom/kingsoft/email/statistics/KingsoftAgent;

    # invokes: Lcom/kingsoft/email/statistics/KingsoftAgent;->exceptionToJson(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    invoke-static {v3, v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->access$400(Lcom/kingsoft/email/statistics/KingsoftAgent;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    .line 520
    .local v1, "exs":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$6;->this$0:Lcom/kingsoft/email/statistics/KingsoftAgent;

    # invokes: Lcom/kingsoft/email/statistics/KingsoftAgent;->postServerException(Lorg/json/JSONArray;)V
    invoke-static {v3, v1}, Lcom/kingsoft/email/statistics/KingsoftAgent;->access$500(Lcom/kingsoft/email/statistics/KingsoftAgent;Lorg/json/JSONArray;)V

    goto :goto_0
.end method
