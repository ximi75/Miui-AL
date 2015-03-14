.class public Lde/innosystec/unrar/io/ReadOnlyAccessFile;
.super Ljava/io/RandomAccessFile;
.source "ReadOnlyAccessFile.java"

# interfaces
.implements Lde/innosystec/unrar/io/IReadOnlyAccess;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private AESInit:[B

.field private AESKey:[B

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

.field private password:Ljava/lang/String;

.field private rin:Lgnu/crypto/cipher/Rijndael;

.field private salt:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x10

    .line 62
    const-string/jumbo v0, "r"

    invoke-direct {p0, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->data:Ljava/util/Queue;

    .line 52
    new-array v0, v1, [B

    iput-object v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->AESKey:[B

    .line 53
    new-array v0, v1, [B

    iput-object v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->AESInit:[B

    .line 63
    iput-object p2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->password:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public getPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public initAES(Lgnu/crypto/cipher/Rijndael;[B[B[B)V
    .locals 18
    .param p1, "rin"    # Lgnu/crypto/cipher/Rijndael;
    .param p2, "salt"    # [B
    .param p3, "AESInit"    # [B
    .param p4, "AESKey"    # [B

    .prologue
    .line 136
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->password:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    mul-int/lit8 v10, v14, 0x2

    .line 137
    .local v10, "rawLength":I
    add-int/lit8 v14, v10, 0x8

    new-array v11, v14, [B

    .line 138
    .local v11, "rawpsw":[B
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->password:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 139
    .local v9, "pwd":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->password:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lt v5, v14, :cond_0

    .line 143
    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p2

    array-length v14, v0

    if-lt v5, v14, :cond_1

    .line 151
    :try_start_0
    const-string/jumbo v14, "sha-1"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v12

    .line 153
    .local v12, "sha":Ljava/security/MessageDigest;
    const/high16 v1, 0x40000

    .line 154
    .local v1, "HashRounds":I
    const/16 v13, 0x4000

    .line 156
    .local v13, "xh":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 158
    .local v2, "bout":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 161
    .local v3, "digest":[B
    const/4 v5, 0x0

    :goto_2
    const/high16 v14, 0x40000

    if-lt v5, v14, :cond_2

    .line 197
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/security/MessageDigest;->update([B)V

    .line 198
    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 200
    const/4 v5, 0x0

    :goto_3
    const/4 v14, 0x4

    if-lt v5, v14, :cond_4

    .line 210
    .end local v1    # "HashRounds":I
    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "digest":[B
    .end local v12    # "sha":Ljava/security/MessageDigest;
    .end local v13    # "xh":I
    :goto_4
    :try_start_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 211
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string/jumbo v14, "gnu.crypto.cipher.key.material"

    move-object/from16 v0, p4

    invoke-interface {v8, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string/jumbo v14, "gnu.crypto.cipher.block.size"

    new-instance v15, Ljava/lang/Integer;

    const/16 v16, 0x10

    invoke-direct/range {v15 .. v16}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v8, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lgnu/crypto/cipher/Rijndael;->init(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_5
    return-void

    .line 140
    :cond_0
    mul-int/lit8 v14, v5, 0x2

    aget-byte v15, v9, v5

    aput-byte v15, v11, v14

    .line 141
    mul-int/lit8 v14, v5, 0x2

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x0

    aput-byte v15, v11, v14

    .line 139
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 144
    :cond_1
    add-int v14, v5, v10

    aget-byte v15, p2, v5

    aput-byte v15, v11, v14

    .line 143
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 162
    .restart local v1    # "HashRounds":I
    .restart local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "digest":[B
    .restart local v12    # "sha":Ljava/security/MessageDigest;
    .restart local v13    # "xh":I
    :cond_2
    :try_start_2
    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 169
    const/4 v14, 0x3

    new-array v14, v14, [B

    const/4 v15, 0x0

    int-to-byte v0, v5

    move/from16 v16, v0

    aput-byte v16, v14, v15

    const/4 v15, 0x1

    shr-int/lit8 v16, v5, 0x8

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v14, v15

    const/4 v15, 0x2

    shr-int/lit8 v16, v5, 0x10

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v14, v15

    invoke-virtual {v2, v14}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 171
    rem-int/lit16 v14, v5, 0x4000

    if-nez v14, :cond_3

    .line 179
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 182
    .local v6, "input":[B
    invoke-virtual {v12, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 185
    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 187
    div-int/lit16 v14, v5, 0x4000

    const/16 v15, 0x13

    aget-byte v15, v3, v15

    aput-byte v15, p3, v14

    .line 161
    .end local v6    # "input":[B
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 201
    :cond_4
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_6
    const/4 v14, 0x4

    if-lt v7, v14, :cond_5

    .line 200
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 202
    :cond_5
    mul-int/lit8 v14, v5, 0x4

    add-int/2addr v14, v7

    mul-int/lit8 v15, v5, 0x4

    aget-byte v15, v3, v15

    const/high16 v16, 0x1000000

    mul-int v15, v15, v16

    const/high16 v16, -0x1000000

    and-int v15, v15, v16

    mul-int/lit8 v16, v5, 0x4

    add-int/lit8 v16, v16, 0x1

    aget-byte v16, v3, v16

    const/high16 v17, 0x10000

    mul-int v16, v16, v17

    const/high16 v17, 0xff0000

    and-int v16, v16, v17

    or-int v15, v15, v16

    mul-int/lit8 v16, v5, 0x4

    add-int/lit8 v16, v16, 0x2

    aget-byte v16, v3, v16

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x100

    move/from16 v16, v0

    const v17, 0xff00

    and-int v16, v16, v17

    or-int v15, v15, v16

    mul-int/lit8 v16, v5, 0x4

    add-int/lit8 v16, v16, 0x3

    aget-byte v16, v3, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    or-int v15, v15, v16

    mul-int/lit8 v16, v7, 0x8

    shr-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, p4, v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 201
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 205
    .end local v1    # "HashRounds":I
    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "digest":[B
    .end local v7    # "j":I
    .end local v12    # "sha":Ljava/security/MessageDigest;
    .end local v13    # "xh":I
    :catch_0
    move-exception v4

    .line 206
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 214
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 215
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5
.end method

.method public paddedSize()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->data:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public readFully([BI)I
    .locals 13
    .param p1, "buffer"    # [B
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x10

    const/4 v11, 0x0

    .line 67
    sget-boolean v7, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-gtz p2, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, p2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v7

    .line 70
    :cond_0
    iget-object v7, p0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->salt:[B

    if-eqz v7, :cond_6

    .line 73
    iget-object v7, p0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->data:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v1

    .line 74
    .local v1, "cs":I
    sub-int v5, p2, v1

    .line 76
    .local v5, "sizeToRead":I
    if-lez v5, :cond_1

    .line 77
    xor-int/lit8 v7, v5, -0x1

    add-int/lit8 v7, v7, 0x1

    and-int/lit8 v7, v7, 0xf

    add-int v0, v5, v7

    .line 78
    .local v0, "alignedSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    div-int/lit8 v7, v0, 0x10

    if-lt v2, v7, :cond_2

    .line 101
    .end local v0    # "alignedSize":I
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-lt v2, p2, :cond_5

    .line 109
    .end local v1    # "cs":I
    .end local v2    # "i":I
    .end local v5    # "sizeToRead":I
    :goto_2
    return p2

    .line 80
    .restart local v0    # "alignedSize":I
    .restart local v1    # "cs":I
    .restart local v2    # "i":I
    .restart local v5    # "sizeToRead":I
    :cond_2
    new-array v6, v12, [B

    .line 81
    .local v6, "tr":[B
    invoke-virtual {p0, v6, v11, v12}, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->readFully([BII)V

    .line 87
    new-array v4, v12, [B

    .line 88
    .local v4, "out":[B
    iget-object v7, p0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->rin:Lgnu/crypto/cipher/Rijndael;

    invoke-virtual {v7, v6, v11, v4, v11}, Lgnu/crypto/cipher/Rijndael;->decryptBlock([BI[BI)V

    .line 89
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    array-length v7, v4

    if-lt v3, v7, :cond_3

    .line 93
    const/4 v3, 0x0

    :goto_4
    iget-object v7, p0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->AESInit:[B

    array-length v7, v7

    if-lt v3, v7, :cond_4

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_3
    iget-object v7, p0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->data:Ljava/util/Queue;

    aget-byte v8, v4, v3

    iget-object v9, p0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->AESInit:[B

    rem-int/lit8 v10, v3, 0x10

    aget-byte v9, v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 94
    :cond_4
    iget-object v7, p0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->AESInit:[B

    aget-byte v8, v6, v3

    aput-byte v8, v7, v3

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 102
    .end local v0    # "alignedSize":I
    .end local v3    # "j":I
    .end local v4    # "out":[B
    .end local v6    # "tr":[B
    :cond_5
    iget-object v7, p0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->data:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    aput-byte v7, p1, v2

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 106
    .end local v1    # "cs":I
    .end local v2    # "i":I
    .end local v5    # "sizeToRead":I
    :cond_6
    invoke-virtual {p0, p1, v11, p2}, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->readFully([BII)V

    goto :goto_2
.end method

.method public resetData()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->data:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 221
    return-void
.end method

.method public setPosition(J)V
    .locals 0
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0, p1, p2}, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->seek(J)V

    .line 118
    return-void
.end method

.method public setSalt([B)V
    .locals 3
    .param p1, "salt"    # [B

    .prologue
    .line 121
    iput-object p1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->salt:[B

    .line 123
    if-eqz p1, :cond_0

    .line 126
    new-instance v0, Lgnu/crypto/cipher/Rijndael;

    invoke-direct {v0}, Lgnu/crypto/cipher/Rijndael;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->rin:Lgnu/crypto/cipher/Rijndael;

    .line 127
    iget-object v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->rin:Lgnu/crypto/cipher/Rijndael;

    iget-object v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->AESInit:[B

    iget-object v2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->AESKey:[B

    invoke-virtual {p0, v0, p1, v1, v2}, Lde/innosystec/unrar/io/ReadOnlyAccessFile;->initAES(Lgnu/crypto/cipher/Rijndael;[B[B[B)V

    .line 133
    :cond_0
    return-void
.end method
