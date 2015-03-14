.class Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;
.super Lcom/kingsoft/common/OperationScheduler;
.source "OperationSchedulerTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/common/OperationSchedulerTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeTravelScheduler"
.end annotation


# static fields
.field static final DEFAULT_TIME:J = 0x123128e5180L


# instance fields
.field final synthetic this$0:Lcom/kingsoft/common/OperationSchedulerTest;

.field public timeMillis:J


# direct methods
.method public constructor <init>(Lcom/kingsoft/common/OperationSchedulerTest;)V
    .locals 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->this$0:Lcom/kingsoft/common/OperationSchedulerTest;

    # invokes: Lcom/kingsoft/common/OperationSchedulerTest;->getFreshStorage()Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/kingsoft/common/OperationSchedulerTest;->access$000(Lcom/kingsoft/common/OperationSchedulerTest;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingsoft/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    .line 31
    const-wide v0, 0x123128e5180L

    iput-wide v0, p0, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    .line 35
    return-void
.end method


# virtual methods
.method protected currentTimeMillis()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/kingsoft/common/OperationSchedulerTest$TimeTravelScheduler;->timeMillis:J

    return-wide v0
.end method
