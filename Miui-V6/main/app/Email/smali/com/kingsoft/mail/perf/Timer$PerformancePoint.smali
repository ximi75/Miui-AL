.class Lcom/kingsoft/mail/perf/Timer$PerformancePoint;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/perf/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerformancePoint"
.end annotation


# instance fields
.field public final mCpuTimeNanos:J

.field public final mWallTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/mail/perf/Timer$PerformancePoint;->mCpuTimeNanos:J

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/mail/perf/Timer$PerformancePoint;->mWallTimeMillis:J

    .line 74
    return-void
.end method
