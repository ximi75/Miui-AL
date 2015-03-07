.class Lcom/kingsoft/email/statistics/KingsoftAgent$3;
.super Ljava/lang/Thread;
.source "KingsoftAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/statistics/KingsoftAgent;->flushEvent(Z)V
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
    .line 151
    iput-object p1, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$3;->this$0:Lcom/kingsoft/email/statistics/KingsoftAgent;

    iput-object p2, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$3;->val$temp:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$3;->val$report:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$3;->val$temp:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->insertInfos(Ljava/util/ArrayList;)V

    .line 154
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$3;->val$temp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 155
    iget-boolean v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$3;->val$report:Z

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Lcom/kingsoft/email/statistics/AppEventUpload;

    iget-object v1, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$3;->this$0:Lcom/kingsoft/email/statistics/KingsoftAgent;

    # getter for: Lcom/kingsoft/email/statistics/KingsoftAgent;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/email/statistics/KingsoftAgent;->access$100(Lcom/kingsoft/email/statistics/KingsoftAgent;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/email/statistics/AppEventUpload;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/AppEventUpload;->postServerEvent()V

    .line 158
    :cond_0
    return-void
.end method
