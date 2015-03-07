.class public Lcom/kingsoft/mail/photomanager/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# instance fields
.field mBuffer:[B

.field private mCachedSize:J

.field private mFreeSize:J

.field private mTotalSize:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kingsoft/mail/photomanager/MemInfoReader;->mBuffer:[B

    return-void
.end method

.method private static extractMemValue([BI)J
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "index"    # I

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 44
    :goto_0
    array-length v2, p0

    if-ge p1, v2, :cond_2

    aget-byte v2, p0, p1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 45
    aget-byte v2, p0, p1

    if-lt v2, v4, :cond_1

    aget-byte v2, p0, p1

    if-gt v2, v5, :cond_1

    .line 46
    move v0, p1

    .line 47
    .local v0, "start":I
    add-int/lit8 p1, p1, 0x1

    .line 48
    :goto_1
    array-length v2, p0

    if-ge p1, v2, :cond_0

    aget-byte v2, p0, p1

    if-lt v2, v4, :cond_0

    aget-byte v2, p0, p1

    if-gt v2, v5, :cond_0

    .line 49
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 51
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p1, v0

    invoke-direct {v1, p0, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 52
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    .line 56
    .end local v0    # "start":I
    .end local v1    # "str":Ljava/lang/String;
    :goto_2
    return-wide v2

    .line 54
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 56
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method private static matchText([BILjava/lang/String;)Z
    .locals 5
    .param p0, "buffer"    # [B
    .param p1, "index"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 32
    .local v0, "N":I
    add-int v3, p1, v0

    array-length v4, p0

    if-lt v3, v4, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v2

    .line 35
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 36
    add-int v3, p1, v1

    aget-byte v3, p0, v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 40
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCachedSize()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/kingsoft/mail/photomanager/MemInfoReader;->mCachedSize:J

    return-wide v0
.end method

.method public getFreeSize()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/kingsoft/mail/photomanager/MemInfoReader;->mFreeSize:J

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/kingsoft/mail/photomanager/MemInfoReader;->mTotalSize:J

    return-wide v0
.end method

.method public readMemInfo()V
    .locals 8

    .prologue
    .line 63
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 65
    .local v5, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const-wide/16 v6, 0x0

    :try_start_0
    iput-wide v6, p0, Lcom/kingsoft/mail/photomanager/MemInfoReader;->mTotalSize:J

    .line 66
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/kingsoft/mail/photomanager/MemInfoReader;->mFreeSize:J

    .line 67
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/kingsoft/mail/photomanager/MemInfoReader;->mCachedSize:J

    .line 68
    new-instance v3, Ljava/io/FileInputStream;

    const-string/jumbo v6, "/proc/meminfo"

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, "is":Ljava/io/FileInputStream;
    iget-object v6, p0, Lcom/kingsoft/mail/photomanager/MemInfoReader;->mBuffer:[B

    invoke-virtual {v3, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 70
    .local v4, "len":I
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 71
    iget-object v6, p0, Lcom/kingsoft/mail/photomanager/MemInfoReader;->mBuffer:[B

    array-length v0, v6

    .line 72
    .local v0, "BUFLEN":I
    const/4 v1, 0x0

    .line 73
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_4

    const/4 v6, 0x3

    if-ge v1, v6, :cond_4

    .line 74
    iget-object v6, p0, Lcom/kingsoft/mail/photomanager/MemInfoReader;->mBuffer:[B

    const-string/jumbo v7, "MemTotal"

    invoke-static {v6, v2, v7}, Lcom/kingsoft/mail/photomanager/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 75
    add-int/lit8 v2, v2, 0x8

    .line 76
    iget-object v6, p0, Lcom/kingsoft/mail/photomanager/MemInfoReader;->mBuffer:[B

    invoke-static {v6, v2}, Lcom/kingsoft/mail/photomanager/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/kingsoft/mail/photomanager/MemInfoReader;->mTotalSize:J

    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 87
    :cond_0
    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v6, p0, Lcom/kingsoft/mail/photomanager/MemInfoReader;->mBuffer:[B

    aget-byte v6, v6, v2

    const/16 v7, 0xa

    if-eq v6, v7, :cond_3

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 78
    :cond_1
    iget-object v6, p0, Lcom/kingsoft/mail/photomanager/MemInfoReader;->mBuffer:[B

    const-string/jumbo v7, "MemFree"

    invoke-static {v6, v2, v7}, Lcom/kingsoft/mail/photomanager/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    add-int/lit8 v2, v2, 0x7

    .line 80
    iget-object v6, p0, Lcom/kingsoft/mail/photomanager/MemInfoReader;->mBuffer:[B

    invoke-static {v6, v2}, Lcom/kingsoft/mail/photomanager/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/kingsoft/mail/photomanager/MemInfoReader;->mFreeSize:J

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    :cond_2
    iget-object v6, p0, Lcom/kingsoft/mail/photomanager/MemInfoReader;->mBuffer:[B

    const-string/jumbo v7, "Cached"

    invoke-static {v6, v2, v7}, Lcom/kingsoft/mail/photomanager/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 83
    add-int/lit8 v2, v2, 0x6

    .line 84
    iget-object v6, p0, Lcom/kingsoft/mail/photomanager/MemInfoReader;->mBuffer:[B

    invoke-static {v6, v2}, Lcom/kingsoft/mail/photomanager/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/kingsoft/mail/photomanager/MemInfoReader;->mCachedSize:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_4
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 96
    .end local v0    # "BUFLEN":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    :goto_2
    return-void

    .line 91
    :catch_0
    move-exception v6

    .line 94
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    .line 92
    :catch_1
    move-exception v6

    .line 94
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    :catchall_0
    move-exception v6

    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v6
.end method
