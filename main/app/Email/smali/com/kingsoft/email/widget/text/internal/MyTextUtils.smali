.class public Lcom/kingsoft/email/widget/text/internal/MyTextUtils;
.super Ljava/lang/Object;
.source "MyTextUtils.java"


# static fields
.field private static sLock:Ljava/lang/Object;

.field private static sTemp:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingsoft/email/widget/text/internal/MyTextUtils;->sLock:Ljava/lang/Object;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/email/widget/text/internal/MyTextUtils;->sTemp:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(I)[C
    .locals 3
    .param p0, "len"    # I

    .prologue
    .line 11
    sget-object v2, Lcom/kingsoft/email/widget/text/internal/MyTextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 12
    :try_start_0
    sget-object v0, Lcom/kingsoft/email/widget/text/internal/MyTextUtils;->sTemp:[C

    .line 13
    .local v0, "buf":[C
    const/4 v1, 0x0

    sput-object v1, Lcom/kingsoft/email/widget/text/internal/MyTextUtils;->sTemp:[C

    .line 14
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p0, :cond_1

    .line 17
    :cond_0
    invoke-static {p0}, Lcom/kingsoft/email/widget/text/internal/ArrayUtils;->idealCharArraySize(I)I

    move-result v1

    new-array v0, v1, [C

    .line 20
    :cond_1
    return-object v0

    .line 14
    .end local v0    # "buf":[C
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static recycle([C)V
    .locals 2
    .param p0, "temp"    # [C

    .prologue
    .line 24
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 31
    :goto_0
    return-void

    .line 28
    :cond_0
    sget-object v1, Lcom/kingsoft/email/widget/text/internal/MyTextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    sput-object p0, Lcom/kingsoft/email/widget/text/internal/MyTextUtils;->sTemp:[C

    .line 30
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
