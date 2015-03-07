.class public Lcom/kingsoft/emailsync/SyncManager$SyncError;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/emailsync/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncError"
.end annotation


# instance fields
.field public fatal:Z

.field holdDelay:J

.field public holdEndTime:J

.field reason:I

.field final synthetic this$0:Lcom/kingsoft/emailsync/SyncManager;


# direct methods
.method public constructor <init>(Lcom/kingsoft/emailsync/SyncManager;IZ)V
    .locals 4
    .param p2, "_reason"    # I
    .param p3, "_fatal"    # Z

    .prologue
    .line 775
    iput-object p1, p0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->fatal:Z

    .line 772
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->holdDelay:J

    .line 773
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->holdDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->holdEndTime:J

    .line 776
    iput p2, p0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->reason:I

    .line 777
    iput-boolean p3, p0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->fatal:Z

    .line 778
    return-void
.end method


# virtual methods
.method escalate()V
    .locals 4

    .prologue
    .line 784
    iget-wide v0, p0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->holdDelay:J

    const-wide/32 v2, 0x3a980

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 785
    iget-wide v0, p0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->holdDelay:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->holdDelay:J

    .line 787
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->holdDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->holdEndTime:J

    .line 788
    return-void
.end method
