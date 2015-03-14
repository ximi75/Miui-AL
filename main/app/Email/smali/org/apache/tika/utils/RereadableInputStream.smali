.class public Lorg/apache/tika/utils/RereadableInputStream;
.super Ljava/io/InputStream;
.source "RereadableInputStream.java"


# instance fields
.field private bufferIsInFile:Z

.field private byteBuffer:[B

.field private closeOriginalStreamOnClose:Z

.field private firstPass:Z

.field private inputStream:Ljava/io/InputStream;

.field private maxBytesInMemory:I

.field private originalInputStream:Ljava/io/InputStream;

.field private readToEndOfStreamOnFirstRewind:Z

.field private size:I

.field private storeFile:Ljava/io/File;

.field private storeOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IZZ)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "maxBytesInMemory"    # I
    .param p3, "readToEndOfStreamOnFirstRewind"    # Z
    .param p4, "closeOriginalStreamOnClose"    # Z

    .prologue
    const/4 v0, 0x1

    .line 144
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 61
    iput-boolean v0, p0, Lorg/apache/tika/utils/RereadableInputStream;->firstPass:Z

    .line 99
    iput-boolean v0, p0, Lorg/apache/tika/utils/RereadableInputStream;->readToEndOfStreamOnFirstRewind:Z

    .line 106
    iput-boolean v0, p0, Lorg/apache/tika/utils/RereadableInputStream;->closeOriginalStreamOnClose:Z

    .line 147
    iput-object p1, p0, Lorg/apache/tika/utils/RereadableInputStream;->inputStream:Ljava/io/InputStream;

    .line 148
    iput-object p1, p0, Lorg/apache/tika/utils/RereadableInputStream;->originalInputStream:Ljava/io/InputStream;

    .line 149
    iput p2, p0, Lorg/apache/tika/utils/RereadableInputStream;->maxBytesInMemory:I

    .line 150
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/apache/tika/utils/RereadableInputStream;->byteBuffer:[B

    .line 151
    iput-boolean p3, p0, Lorg/apache/tika/utils/RereadableInputStream;->readToEndOfStreamOnFirstRewind:Z

    .line 152
    iput-boolean p4, p0, Lorg/apache/tika/utils/RereadableInputStream;->closeOriginalStreamOnClose:Z

    .line 153
    return-void
.end method

.method private closeStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lorg/apache/tika/utils/RereadableInputStream;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lorg/apache/tika/utils/RereadableInputStream;->inputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/apache/tika/utils/RereadableInputStream;->originalInputStream:Ljava/io/InputStream;

    if-ne v0, v1, :cond_0

    .line 208
    iget-boolean v0, p0, Lorg/apache/tika/utils/RereadableInputStream;->closeOriginalStreamOnClose:Z

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/apache/tika/utils/RereadableInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tika/utils/RereadableInputStream;->inputStream:Ljava/io/InputStream;

    .line 212
    :cond_1
    return-void
.end method

.method private saveByte(I)V
    .locals 5
    .param p1, "inputByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    iget-boolean v3, p0, Lorg/apache/tika/utils/RereadableInputStream;->bufferIsInFile:Z

    if-nez v3, :cond_2

    .line 246
    iget v3, p0, Lorg/apache/tika/utils/RereadableInputStream;->size:I

    iget v4, p0, Lorg/apache/tika/utils/RereadableInputStream;->maxBytesInMemory:I

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 247
    .local v0, "switchToFile":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 248
    const-string/jumbo v3, "TIKA_streamstore_"

    const-string/jumbo v4, ".tmp"

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/tika/utils/RereadableInputStream;->storeFile:Ljava/io/File;

    .line 249
    iput-boolean v1, p0, Lorg/apache/tika/utils/RereadableInputStream;->bufferIsInFile:Z

    .line 250
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 251
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lorg/apache/tika/utils/RereadableInputStream;->storeFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 250
    iput-object v1, p0, Lorg/apache/tika/utils/RereadableInputStream;->storeOutputStream:Ljava/io/OutputStream;

    .line 252
    iget-object v1, p0, Lorg/apache/tika/utils/RereadableInputStream;->storeOutputStream:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/apache/tika/utils/RereadableInputStream;->byteBuffer:[B

    iget v4, p0, Lorg/apache/tika/utils/RereadableInputStream;->size:I

    invoke-virtual {v1, v3, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 253
    iget-object v1, p0, Lorg/apache/tika/utils/RereadableInputStream;->storeOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 254
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tika/utils/RereadableInputStream;->byteBuffer:[B

    .line 261
    .end local v0    # "switchToFile":Z
    :goto_1
    iget v1, p0, Lorg/apache/tika/utils/RereadableInputStream;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tika/utils/RereadableInputStream;->size:I

    .line 262
    return-void

    :cond_0
    move v0, v2

    .line 246
    goto :goto_0

    .line 256
    .restart local v0    # "switchToFile":Z
    :cond_1
    iget-object v1, p0, Lorg/apache/tika/utils/RereadableInputStream;->byteBuffer:[B

    iget v2, p0, Lorg/apache/tika/utils/RereadableInputStream;->size:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    goto :goto_1

    .line 259
    .end local v0    # "switchToFile":Z
    :cond_2
    iget-object v1, p0, Lorg/apache/tika/utils/RereadableInputStream;->storeOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-direct {p0}, Lorg/apache/tika/utils/RereadableInputStream;->closeStream()V

    .line 222
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 223
    iget-object v0, p0, Lorg/apache/tika/utils/RereadableInputStream;->storeFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lorg/apache/tika/utils/RereadableInputStream;->storeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 226
    :cond_0
    return-void
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lorg/apache/tika/utils/RereadableInputStream;->size:I

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v1, p0, Lorg/apache/tika/utils/RereadableInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 165
    .local v0, "inputByte":I
    iget-boolean v1, p0, Lorg/apache/tika/utils/RereadableInputStream;->firstPass:Z

    if-eqz v1, :cond_0

    .line 166
    invoke-direct {p0, v0}, Lorg/apache/tika/utils/RereadableInputStream;->saveByte(I)V

    .line 168
    :cond_0
    return v0
.end method

.method public rewind()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 177
    iget-boolean v1, p0, Lorg/apache/tika/utils/RereadableInputStream;->firstPass:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/tika/utils/RereadableInputStream;->readToEndOfStreamOnFirstRewind:Z

    if-eqz v1, :cond_1

    .line 180
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tika/utils/RereadableInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 185
    :cond_1
    invoke-direct {p0}, Lorg/apache/tika/utils/RereadableInputStream;->closeStream()V

    .line 186
    iget-object v1, p0, Lorg/apache/tika/utils/RereadableInputStream;->storeOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lorg/apache/tika/utils/RereadableInputStream;->storeOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 188
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tika/utils/RereadableInputStream;->storeOutputStream:Ljava/io/OutputStream;

    .line 190
    :cond_2
    iput-boolean v0, p0, Lorg/apache/tika/utils/RereadableInputStream;->firstPass:Z

    .line 191
    iget v1, p0, Lorg/apache/tika/utils/RereadableInputStream;->size:I

    iget v2, p0, Lorg/apache/tika/utils/RereadableInputStream;->maxBytesInMemory:I

    if-ge v1, v2, :cond_3

    const/4 v0, 0x1

    .line 192
    .local v0, "newStreamIsInMemory":Z
    :cond_3
    if-eqz v0, :cond_4

    .line 193
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/apache/tika/utils/RereadableInputStream;->byteBuffer:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 192
    :goto_0
    iput-object v1, p0, Lorg/apache/tika/utils/RereadableInputStream;->inputStream:Ljava/io/InputStream;

    .line 195
    return-void

    .line 194
    :cond_4
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lorg/apache/tika/utils/RereadableInputStream;->storeFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method
