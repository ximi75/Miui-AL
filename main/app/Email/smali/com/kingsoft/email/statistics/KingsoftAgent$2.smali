.class Lcom/kingsoft/email/statistics/KingsoftAgent$2;
.super Ljava/lang/Thread;
.source "KingsoftAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/statistics/KingsoftAgent;->flushUserEvent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/statistics/KingsoftAgent;

.field final synthetic val$report:Z

.field final synthetic val$temp:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/statistics/KingsoftAgent;Ljava/util/ArrayList;Z)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$2;->this$0:Lcom/kingsoft/email/statistics/KingsoftAgent;

    iput-object p2, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$2;->val$temp:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$2;->val$report:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$2;->val$temp:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->insertInfos(Ljava/util/ArrayList;)V

    .line 135
    iget-object v1, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$2;->val$temp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 136
    iget-boolean v1, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$2;->val$report:Z

    if-eqz v1, :cond_0

    .line 138
    :try_start_0
    new-instance v1, Lcom/kingsoft/email/statistics/UserEventsUploader;

    iget-object v2, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$2;->this$0:Lcom/kingsoft/email/statistics/KingsoftAgent;

    # getter for: Lcom/kingsoft/email/statistics/KingsoftAgent;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/email/statistics/KingsoftAgent;->access$100(Lcom/kingsoft/email/statistics/KingsoftAgent;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingsoft/email/statistics/UserEventsUploader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/UserEventsUploader;->postEventsToServer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
