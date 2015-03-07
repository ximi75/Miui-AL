.class public Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy;
.super Ljava/lang/Object;
.source "DeleteByTotalSizeStrategy.java"

# interfaces
.implements Lcom/kingsoft/email/mail/attachment/IFileDeleteStrategy;


# instance fields
.field private mMaxSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/32 v0, 0xc800000

    iput-wide v0, p0, Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy;->mMaxSize:J

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/32 v0, 0xc800000

    iput-wide v0, p0, Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy;->mMaxSize:J

    .line 16
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy;->mMaxSize:J

    .line 17
    return-void
.end method


# virtual methods
.method public delete(Ljava/io/File;)I
    .locals 9
    .param p1, "f"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 21
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    .line 62
    :goto_0
    return v5

    .line 25
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v2

    .line 26
    .local v2, "size":J
    iget-wide v7, p0, Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy;->mMaxSize:J

    cmp-long v7, v2, v7

    if-gez v7, :cond_1

    move v5, v6

    .line 28
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, "srcFile":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "dstFile":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 36
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v7}, Lorg/apache/commons/io/FileUtils;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 39
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy$1;

    invoke-direct {v8, p0, v0}, Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy$1;-><init>(Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v5, v6

    .line 62
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
