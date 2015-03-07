.class public Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;
.super Ljava/lang/Object;
.source "ReadOnlyAccessByteArray.java"

# interfaces
.implements Lde/innosystec/unrar/io/IReadOnlyAccess;


# instance fields
.field private file:[B

.field private positionInFile:I

.field private salt:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "file"    # [B

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "file must not be null!!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->file:[B

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    .line 48
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    return-void
.end method

.method public getPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public initAES(Lgnu/crypto/cipher/Rijndael;[B[B[B)V
    .locals 0
    .param p1, "rin"    # Lgnu/crypto/cipher/Rijndael;
    .param p2, "salt"    # [B
    .param p3, "AESInit"    # [B
    .param p4, "AESKey"    # [B

    .prologue
    .line 105
    return-void
.end method

.method public paddedSize()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->file:[B

    iget v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->file:[B

    array-length v1, v1

    iget v2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 73
    .local v0, "read":I
    iget-object v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->file:[B

    iget v2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    add-int/2addr v1, v0

    iput v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    .line 75
    return v0
.end method

.method public readFully([BI)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "buffer must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_0
    if-nez p2, :cond_1

    .line 83
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "cannot read 0 bytes ;-)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_1
    iget-object v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->file:[B

    array-length v1, v1

    iget v2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 86
    .local v0, "read":I
    iget-object v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->file:[B

    iget v2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    add-int/2addr v1, v0

    iput v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    .line 88
    return v0
.end method

.method public readFully([BII)V
    .locals 0
    .param p1, "tr"    # [B
    .param p2, "i"    # I
    .param p3, "j"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    return-void
.end method

.method public resetData()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public setPosition(J)V
    .locals 2
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->file:[B

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 56
    long-to-int v0, p1

    iput v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    .line 61
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public setSalt([B)V
    .locals 0
    .param p1, "salt"    # [B

    .prologue
    .line 96
    iput-object p1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->salt:[B

    .line 98
    return-void
.end method
