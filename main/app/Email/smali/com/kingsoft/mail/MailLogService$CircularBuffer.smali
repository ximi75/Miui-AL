.class Lcom/kingsoft/mail/MailLogService$CircularBuffer;
.super Ljava/lang/Object;
.source "MailLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/MailLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CircularBuffer"
.end annotation


# static fields
.field public static final SIZE:I = 0x32


# instance fields
.field mCurrentSize:I

.field final mList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/MailLogService$CircularBuffer;->mList:Ljava/util/Queue;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/MailLogService$CircularBuffer;->mCurrentSize:I

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/MailLogService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/MailLogService$1;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/kingsoft/mail/MailLogService$CircularBuffer;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/MailLogService$CircularBuffer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/MailLogService$CircularBuffer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/MailLogService$CircularBuffer;->put(Ljava/lang/String;)V

    return-void
.end method

.method private static dateToString(J)Ljava/lang/String;
    .locals 5
    .param p0, "timestamp"    # J

    .prologue
    .line 78
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 79
    .local v0, "d":Ljava/util/Date;
    const-string/jumbo v1, "%d-%d %d:%d:%d: "

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized put(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/kingsoft/mail/MailLogService$CircularBuffer;->mCurrentSize:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/kingsoft/mail/MailLogService$CircularBuffer;->mList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/mail/MailLogService$CircularBuffer;->mList:Ljava/util/Queue;

    new-instance v1, Landroid/util/Pair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/kingsoft/mail/MailLogService$CircularBuffer;->mCurrentSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingsoft/mail/MailLogService$CircularBuffer;->mCurrentSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/kingsoft/mail/MailLogService$CircularBuffer;->mList:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 105
    .local v2, "s":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/kingsoft/mail/MailLogService$CircularBuffer;->dateToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 110
    .end local v2    # "s":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
