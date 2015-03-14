.class Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;
.super Ljava/lang/Object;
.source "EasAttachmentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/service/EasAttachmentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IOCleaner"
.end annotation


# static fields
.field private static final KEEP_ALIVE_TIME:I

.field private static final KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static MAX_POOL_SIZE:I

.field private static POOL_SIZE:I

.field private static sInstance:Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;


# instance fields
.field private mDecodeWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 403
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 405
    const/4 v0, 0x3

    sput v0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;->POOL_SIZE:I

    .line 407
    const/16 v0, 0x10

    sput v0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;->MAX_POOL_SIZE:I

    .line 416
    new-instance v0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;

    invoke-direct {v0}, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;-><init>()V

    sput-object v0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;->sInstance:Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;

    .line 417
    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;->mDecodeWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 421
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;->POOL_SIZE:I

    sget v2, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;->MAX_POOL_SIZE:I

    const-wide/16 v3, 0x0

    sget-object v5, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;->mDecodeWorkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 423
    return-void
.end method

.method public static clean(Ljava/io/InputStream;Lcom/kingsoft/exchange/EasResponse;)V
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "resp"    # Lcom/kingsoft/exchange/EasResponse;

    .prologue
    .line 426
    sget-object v0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;->sInstance:Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;

    iget-object v0, v0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleanTask;

    invoke-direct {v1, p0, p1}, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleanTask;-><init>(Ljava/io/InputStream;Lcom/kingsoft/exchange/EasResponse;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 427
    return-void
.end method
