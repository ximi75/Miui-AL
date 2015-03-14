.class public Lcom/kingsoft/mail/perf/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/perf/Timer$PerformancePoint;
    }
.end annotation


# static fields
.field public static final ENABLE_TIMER:Z = false

.field private static final LOG_PERFORMANCE_STATS:Z = true

.field private static final LOG_TAG:Ljava/lang/String;

.field private static sPerformanceCollector:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/perf/Timer$PerformancePoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabled:Z

.field private final mPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/perf/Timer$PerformancePoint;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/perf/Timer;->LOG_TAG:Ljava/lang/String;

    .line 181
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/perf/Timer;->sPerformanceCollector:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/perf/Timer;-><init>(Z)V

    .line 83
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/perf/Timer;->mPoints:Ljava/util/Map;

    .line 78
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/perf/Timer;->mCounts:Ljava/util/Map;

    .line 86
    iput-boolean p1, p0, Lcom/kingsoft/mail/perf/Timer;->mEnabled:Z

    .line 87
    return-void
.end method

.method private static dumpTimings(Ljava/lang/String;IJJ)V
    .locals 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "numSubIterations"    # I
    .param p2, "cpuDurationNanos"    # J
    .param p4, "wallDurationMillis"    # J

    .prologue
    .line 230
    sget-object v0, Lcom/kingsoft/mail/perf/Timer;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Perf %s wall: %d cpu: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-wide/32 v4, 0xf4240

    div-long v4, p2, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 233
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 234
    sget-object v0, Lcom/kingsoft/mail/perf/Timer;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Perf/operation %s wall: %d cpu: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    int-to-long v4, p1

    div-long v4, p4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-wide/32 v4, 0xf4240

    div-long v4, p2, v4

    int-to-long v6, p1

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 239
    :cond_0
    return-void
.end method

.method public static startTiming(Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 192
    return-void
.end method

.method public static stopTiming(Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 201
    return-void
.end method

.method public static stopTiming(Ljava/lang/String;I)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "numSubIterations"    # I

    .prologue
    .line 224
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public count(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 133
    return-void
.end method

.method public dumpResults()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public pause(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 122
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 109
    return-void
.end method
