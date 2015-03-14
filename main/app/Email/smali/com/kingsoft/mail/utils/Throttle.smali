.class public Lcom/kingsoft/mail/utils/Throttle;
.super Ljava/lang/Object;
.source "Throttle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/utils/Throttle$1;,
        Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEFAULT_MAX_TIMEOUT:I = 0x9c4

.field public static final DEFAULT_MIN_TIMEOUT:I = 0x96

.field private static final LOG_TAG:Ljava/lang/String;

.field static final TIMEOUT_EXTEND_INTERVAL:I = 0x1f4

.field private static TIMER:Ljava/util/Timer;


# instance fields
.field private final mCallback:Ljava/lang/Runnable;

.field private final mClock:Lcom/kingsoft/mail/utils/Clock;

.field private final mHandler:Landroid/os/Handler;

.field private mLastEventTime:J

.field private final mMaxTimeout:I

.field private final mMinTimeout:I

.field private final mName:Ljava/lang/String;

.field private mRunningTimerTask:Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;

.field private mTimeout:I

.field private final mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/utils/Throttle;->LOG_TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/utils/Throttle;->TIMER:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/Runnable;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 73
    const/16 v4, 0x96

    const/16 v5, 0x9c4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/utils/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;II)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;II)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/Runnable;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "minTimeout"    # I
    .param p5, "maxTimeout"    # I

    .prologue
    .line 79
    sget-object v6, Lcom/kingsoft/mail/utils/Clock;->INSTANCE:Lcom/kingsoft/mail/utils/Clock;

    sget-object v7, Lcom/kingsoft/mail/utils/Throttle;->TIMER:Ljava/util/Timer;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/kingsoft/mail/utils/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;IILcom/kingsoft/mail/utils/Clock;Ljava/util/Timer;)V

    .line 80
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;IILcom/kingsoft/mail/utils/Clock;Ljava/util/Timer;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/Runnable;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "minTimeout"    # I
    .param p5, "maxTimeout"    # I
    .param p6, "clock"    # Lcom/kingsoft/mail/utils/Clock;
    .param p7, "timer"    # Ljava/util/Timer;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-ge p5, p4, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/kingsoft/mail/utils/Throttle;->mName:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/kingsoft/mail/utils/Throttle;->mCallback:Ljava/lang/Runnable;

    .line 90
    iput-object p6, p0, Lcom/kingsoft/mail/utils/Throttle;->mClock:Lcom/kingsoft/mail/utils/Clock;

    .line 91
    iput-object p7, p0, Lcom/kingsoft/mail/utils/Throttle;->mTimer:Ljava/util/Timer;

    .line 92
    iput-object p3, p0, Lcom/kingsoft/mail/utils/Throttle;->mHandler:Landroid/os/Handler;

    .line 93
    iput p4, p0, Lcom/kingsoft/mail/utils/Throttle;->mMinTimeout:I

    .line 94
    iput p5, p0, Lcom/kingsoft/mail/utils/Throttle;->mMaxTimeout:I

    .line 95
    iget v0, p0, Lcom/kingsoft/mail/utils/Throttle;->mMinTimeout:I

    iput v0, p0, Lcom/kingsoft/mail/utils/Throttle;->mTimeout:I

    .line 96
    return-void
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/utils/Throttle;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/utils/Throttle;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kingsoft/mail/utils/Throttle;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/kingsoft/mail/utils/Throttle;Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;)Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/utils/Throttle;
    .param p1, "x1"    # Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/kingsoft/mail/utils/Throttle;->mRunningTimerTask:Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kingsoft/mail/utils/Throttle;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/utils/Throttle;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kingsoft/mail/utils/Throttle;->mCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 99
    sget-object v0, Lcom/kingsoft/mail/utils/Throttle;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Throttle: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/utils/Throttle;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 100
    return-void
.end method

.method private isCallbackScheduled()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kingsoft/mail/utils/Throttle;->mRunningTimerTask:Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelScheduledCallback()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/kingsoft/mail/utils/Throttle;->mRunningTimerTask:Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/kingsoft/mail/utils/Throttle;->mRunningTimerTask:Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;

    invoke-virtual {v0}, Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;->cancel()Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/utils/Throttle;->mRunningTimerTask:Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;

    .line 112
    :cond_0
    return-void
.end method

.method getLastEventTimeForTest()J
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/kingsoft/mail/utils/Throttle;->mLastEventTime:J

    return-wide v0
.end method

.method getTimeoutForTest()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/kingsoft/mail/utils/Throttle;->mTimeout:I

    return v0
.end method

.method public onEvent()V
    .locals 4

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/kingsoft/mail/utils/Throttle;->updateTimeout()V

    .line 135
    invoke-direct {p0}, Lcom/kingsoft/mail/utils/Throttle;->isCallbackScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    new-instance v0, Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;-><init>(Lcom/kingsoft/mail/utils/Throttle;Lcom/kingsoft/mail/utils/Throttle$1;)V

    iput-object v0, p0, Lcom/kingsoft/mail/utils/Throttle;->mRunningTimerTask:Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;

    .line 140
    iget-object v0, p0, Lcom/kingsoft/mail/utils/Throttle;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/kingsoft/mail/utils/Throttle;->mRunningTimerTask:Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;

    iget v2, p0, Lcom/kingsoft/mail/utils/Throttle;->mTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method updateTimeout()V
    .locals 6

    .prologue
    .line 115
    iget-object v2, p0, Lcom/kingsoft/mail/utils/Throttle;->mClock:Lcom/kingsoft/mail/utils/Clock;

    invoke-virtual {v2}, Lcom/kingsoft/mail/utils/Clock;->getTime()J

    move-result-wide v0

    .line 116
    .local v0, "now":J
    iget-wide v2, p0, Lcom/kingsoft/mail/utils/Throttle;->mLastEventTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 117
    iget v2, p0, Lcom/kingsoft/mail/utils/Throttle;->mTimeout:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/kingsoft/mail/utils/Throttle;->mTimeout:I

    .line 118
    iget v2, p0, Lcom/kingsoft/mail/utils/Throttle;->mTimeout:I

    iget v3, p0, Lcom/kingsoft/mail/utils/Throttle;->mMaxTimeout:I

    if-lt v2, v3, :cond_0

    .line 119
    iget v2, p0, Lcom/kingsoft/mail/utils/Throttle;->mMaxTimeout:I

    iput v2, p0, Lcom/kingsoft/mail/utils/Throttle;->mTimeout:I

    .line 127
    :cond_0
    :goto_0
    iput-wide v0, p0, Lcom/kingsoft/mail/utils/Throttle;->mLastEventTime:J

    .line 128
    return-void

    .line 123
    :cond_1
    iget v2, p0, Lcom/kingsoft/mail/utils/Throttle;->mMinTimeout:I

    iput v2, p0, Lcom/kingsoft/mail/utils/Throttle;->mTimeout:I

    goto :goto_0
.end method
