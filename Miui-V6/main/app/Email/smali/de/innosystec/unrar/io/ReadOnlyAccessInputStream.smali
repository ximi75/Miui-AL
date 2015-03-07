.class public Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;
.super Ljava/io/InputStream;
.source "ReadOnlyAccessInputStream.java"


# instance fields
.field private AESInit:[B

.field private AESKey:[B

.field private curPos:J

.field private data:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private final endPos:J

.field private file:Lde/innosystec/unrar/io/IReadOnlyAccess;

.field private hd:Lde/innosystec/unrar/rarfile/FileHeader;

.field private rin:Lgnu/crypto/cipher/Rijndael;

.field protected final startPos:J


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/io/IReadOnlyAccess;Lde/innosystec/unrar/rarfile/FileHeader;JJ)V
    .locals 4
    .param p1, "file"    # Lde/innosystec/unrar/io/IReadOnlyAccess;
    .param p2, "hd"    # Lde/innosystec/unrar/rarfile/FileHeader;
    .param p3, "startPos"    # J
    .param p5, "endPos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x10

    .line 51
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->data:Ljava/util/Queue;

    .line 45
    new-instance v0, Lgnu/crypto/cipher/Rijndael;

    invoke-direct {v0}, Lgnu/crypto/cipher/Rijndael;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->rin:Lgnu/crypto/cipher/Rijndael;

    .line 46
    new-array v0, v1, [B

    iput-object v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->AESKey:[B

    .line 47
    new-array v0, v1, [B

    iput-object v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->AESInit:[B

    .line 52
    iput-object p1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->file:Lde/innosystec/unrar/io/IReadOnlyAccess;

    .line 53
    iput-object p2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->hd:Lde/innosystec/unrar/rarfile/FileHeader;

    .line 54
    invoke-virtual {p2}, Lde/innosystec/unrar/rarfile/FileHeader;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->rin:Lgnu/crypto/cipher/Rijndael;

    invoke-virtual {p2}, Lde/innosystec/unrar/rarfile/FileHeader;->getSalt()[B

    move-result-object v1

    iget-object v2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->AESInit:[B

    iget-object v3, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->AESKey:[B

    invoke-interface {p1, v0, v1, v2, v3}, Lde/innosystec/unrar/io/IReadOnlyAccess;->initAES(Lgnu/crypto/cipher/Rijndael;[B[B[B)V

    .line 57
    :cond_0
    iput-wide p3, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->startPos:J

    .line 58
    iput-wide p3, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->curPos:J

    .line 59
    iput-wide p5, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->endPos:J

    .line 60
    iget-wide v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->curPos:J

    invoke-interface {p1, v0, v1}, Lde/innosystec/unrar/io/IReadOnlyAccess;->setPosition(J)V

    .line 61
    return-void
.end method

.method private deRead([BII)I
    .locals 11
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v7, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->data:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v1

    .line 113
    .local v1, "cs":I
    sub-int v5, p3, v1

    .line 115
    .local v5, "sizeToRead":I
    if-lez v5, :cond_0

    .line 116
    xor-int/lit8 v7, v5, -0x1

    add-int/lit8 v7, v7, 0x1

    and-int/lit8 v7, v7, 0xf

    add-int v0, v5, v7

    .line 117
    .local v0, "alignedSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    div-int/lit8 v7, v0, 0x10

    if-lt v2, v7, :cond_1

    .line 139
    .end local v0    # "alignedSize":I
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-lt v2, p3, :cond_4

    .line 142
    return p3

    .line 119
    .restart local v0    # "alignedSize":I
    :cond_1
    const/16 v7, 0x10

    new-array v6, v7, [B

    .line 120
    .local v6, "tr":[B
    iget-object v7, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->file:Lde/innosystec/unrar/io/IReadOnlyAccess;

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-interface {v7, v6, v8, v9}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BII)V

    .line 126
    const/16 v7, 0x10

    new-array v4, v7, [B

    .line 127
    .local v4, "out":[B
    iget-object v7, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->rin:Lgnu/crypto/cipher/Rijndael;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v4, v9}, Lgnu/crypto/cipher/Rijndael;->decryptBlock([BI[BI)V

    .line 128
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v7, v4

    if-lt v3, v7, :cond_2

    .line 132
    const/4 v3, 0x0

    :goto_3
    iget-object v7, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->AESInit:[B

    array-length v7, v7

    if-lt v3, v7, :cond_3

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_2
    iget-object v7, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->data:Ljava/util/Queue;

    aget-byte v8, v4, v3

    iget-object v9, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->AESInit:[B

    rem-int/lit8 v10, v3, 0x10

    aget-byte v9, v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 133
    :cond_3
    iget-object v7, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->AESInit:[B

    aget-byte v8, v6, v3

    aput-byte v8, v7, v3

    .line 132
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 140
    .end local v0    # "alignedSize":I
    .end local v3    # "j":I
    .end local v4    # "out":[B
    .end local v6    # "tr":[B
    :cond_4
    add-int v8, p2, v2

    iget-object v7, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->data:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    aput-byte v7, p1, v8

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 65
    iget-wide v2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->curPos:J

    iget-wide v4, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->endPos:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 66
    const/4 v0, -0x1

    .line 79
    :goto_0
    return v0

    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 70
    .local v0, "b":I
    iget-object v2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->hd:Lde/innosystec/unrar/rarfile/FileHeader;

    invoke-virtual {v2}, Lde/innosystec/unrar/rarfile/FileHeader;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    const/4 v2, 0x1

    new-array v1, v2, [B

    .line 72
    .local v1, "bx":[B
    array-length v2, v1

    invoke-direct {p0, v1, v6, v2}, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->deRead([BII)I

    .line 73
    aget-byte v0, v1, v6

    .line 78
    .end local v1    # "bx":[B
    :goto_1
    iget-wide v2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->curPos:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->curPos:J

    goto :goto_0

    .line 75
    :cond_1
    iget-object v2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->file:Lde/innosystec/unrar/io/IReadOnlyAccess;

    invoke-interface {v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->read()I

    move-result v0

    goto :goto_1
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    if-nez p3, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    .line 88
    :cond_0
    iget-wide v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->curPos:J

    iget-wide v3, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->endPos:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 89
    const/4 v0, -0x1

    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    .line 92
    .local v0, "bytesRead":I
    iget-object v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->hd:Lde/innosystec/unrar/rarfile/FileHeader;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/FileHeader;->isEncrypted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    int-to-long v1, p3

    iget-wide v3, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->endPos:J

    iget-wide v5, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->curPos:J

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {p0, p1, p2, v1}, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->deRead([BII)I

    move-result v0

    .line 99
    :goto_1
    iget-wide v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->curPos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->curPos:J

    goto :goto_0

    .line 96
    :cond_2
    iget-object v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->file:Lde/innosystec/unrar/io/IReadOnlyAccess;

    .line 97
    int-to-long v2, p3

    iget-wide v4, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->endPos:J

    iget-wide v6, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->curPos:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 96
    invoke-interface {v1, p1, p2, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->read([BII)I

    move-result v0

    goto :goto_1
.end method
