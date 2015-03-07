.class public abstract Lgnu/crypto/cipher/BaseCipher;
.super Ljava/lang/Object;
.source "BaseCipher.java"

# interfaces
.implements Lgnu/crypto/cipher/IBlockCipher;
.implements Lgnu/crypto/cipher/IBlockCipherSpi;


# instance fields
.field protected currentBlockSize:I

.field protected transient currentKey:Ljava/lang/Object;

.field protected defaultBlockSize:I

.field protected defaultKeySize:I

.field protected lock:Ljava/lang/Object;

.field protected name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultBlockSize"    # I
    .param p3, "defaultKeySize"    # I

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lgnu/crypto/cipher/BaseCipher;->this()V

    .line 95
    iput-object p1, p0, Lgnu/crypto/cipher/BaseCipher;->name:Ljava/lang/String;

    .line 96
    iput p2, p0, Lgnu/crypto/cipher/BaseCipher;->defaultBlockSize:I

    .line 97
    iput p3, p0, Lgnu/crypto/cipher/BaseCipher;->defaultKeySize:I

    .line 98
    return-void
.end method

.method private final testSymmetry(II)Z
    .locals 19
    .param p1, "ks"    # I
    .param p2, "bs"    # I

    .prologue
    .line 216
    :try_start_0
    move/from16 v0, p1

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 218
    .local v17, "kb":[B
    move/from16 v0, p2

    new-array v4, v0, [B

    .line 219
    .local v4, "pt":[B
    move/from16 v0, p2

    new-array v6, v0, [B

    .line 220
    .local v6, "ct":[B
    move/from16 v0, p2

    new-array v12, v0, [B

    .line 222
    .local v12, "cpt":[B
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, p1

    if-lt v0, v1, :cond_0

    .line 225
    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/crypto/cipher/BaseCipher;->makeKey([BI)Ljava/lang/Object;

    move-result-object v8

    .line 230
    .local v8, "k":Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move/from16 v9, p2

    invoke-virtual/range {v3 .. v9}, Lgnu/crypto/cipher/BaseCipher;->encrypt([BI[BILjava/lang/Object;I)V

    .line 231
    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    move-object v10, v6

    move-object v14, v8

    move/from16 v15, p2

    invoke-virtual/range {v9 .. v15}, Lgnu/crypto/cipher/BaseCipher;->decrypt([BI[BILjava/lang/Object;I)V

    .line 233
    invoke-static {v4, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    .line 237
    .end local v4    # "pt":[B
    .end local v6    # "ct":[B
    .end local v8    # "k":Ljava/lang/Object;
    .end local v12    # "cpt":[B
    .end local v16    # "i":I
    .end local v17    # "kb":[B
    :goto_2
    return v3

    .line 223
    .restart local v4    # "pt":[B
    .restart local v6    # "ct":[B
    .restart local v12    # "cpt":[B
    .restart local v16    # "i":I
    .restart local v17    # "kb":[B
    :cond_0
    move/from16 v0, v16

    int-to-byte v3, v0

    aput-byte v3, v17, v16

    .line 222
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 226
    :cond_1
    move/from16 v0, v16

    int-to-byte v3, v0

    aput-byte v3, v4, v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 235
    .end local v4    # "pt":[B
    .end local v6    # "ct":[B
    .end local v12    # "cpt":[B
    .end local v16    # "i":I
    .end local v17    # "kb":[B
    :catch_0
    move-exception v18

    .line 236
    .local v18, "x":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 237
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private final this()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgnu/crypto/cipher/BaseCipher;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method public currentBlockSize()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lgnu/crypto/cipher/BaseCipher;->currentKey:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 164
    :cond_0
    iget v0, p0, Lgnu/crypto/cipher/BaseCipher;->currentBlockSize:I

    return v0
.end method

.method public decryptBlock([BI[BI)V
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOffset"    # I
    .param p3, "out"    # [B
    .param p4, "outOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v7, p0, Lgnu/crypto/cipher/BaseCipher;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 188
    :try_start_0
    iget-object v0, p0, Lgnu/crypto/cipher/BaseCipher;->currentKey:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 192
    :cond_0
    :try_start_1
    iget-object v5, p0, Lgnu/crypto/cipher/BaseCipher;->currentKey:Ljava/lang/Object;

    iget v6, p0, Lgnu/crypto/cipher/BaseCipher;->currentBlockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lgnu/crypto/cipher/BaseCipher;->decrypt([BI[BILjava/lang/Object;I)V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    return-void
.end method

.method public defaultBlockSize()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lgnu/crypto/cipher/BaseCipher;->defaultBlockSize:I

    return v0
.end method

.method public defaultKeySize()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lgnu/crypto/cipher/BaseCipher;->defaultKeySize:I

    return v0
.end method

.method public encryptBlock([BI[BI)V
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOffset"    # I
    .param p3, "out"    # [B
    .param p4, "outOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v7, p0, Lgnu/crypto/cipher/BaseCipher;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 177
    :try_start_0
    iget-object v0, p0, Lgnu/crypto/cipher/BaseCipher;->currentKey:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 181
    :cond_0
    :try_start_1
    iget-object v5, p0, Lgnu/crypto/cipher/BaseCipher;->currentKey:Ljava/lang/Object;

    iget v6, p0, Lgnu/crypto/cipher/BaseCipher;->currentBlockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lgnu/crypto/cipher/BaseCipher;->encrypt([BI[BILjava/lang/Object;I)V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    return-void
.end method

.method public init(Ljava/util/Map;)V
    .locals 7
    .param p1, "attributes"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v5, p0, Lgnu/crypto/cipher/BaseCipher;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 130
    :try_start_0
    iget-object v4, p0, Lgnu/crypto/cipher/BaseCipher;->currentKey:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 131
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 129
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 134
    :cond_0
    :try_start_1
    const-string/jumbo v4, "gnu.crypto.cipher.block.size"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 135
    .local v0, "bs":Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 136
    iget v4, p0, Lgnu/crypto/cipher/BaseCipher;->currentBlockSize:I

    if-nez v4, :cond_1

    .line 137
    iget v4, p0, Lgnu/crypto/cipher/BaseCipher;->defaultBlockSize:I

    iput v4, p0, Lgnu/crypto/cipher/BaseCipher;->currentBlockSize:I

    .line 155
    :cond_1
    const-string/jumbo v4, "gnu.crypto.cipher.key.material"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 156
    .local v2, "k":[B
    iget v4, p0, Lgnu/crypto/cipher/BaseCipher;->currentBlockSize:I

    invoke-virtual {p0, v2, v4}, Lgnu/crypto/cipher/BaseCipher;->makeKey([BI)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lgnu/crypto/cipher/BaseCipher;->currentKey:Ljava/lang/Object;

    monitor-exit v5

    .line 158
    return-void

    .line 140
    .end local v2    # "k":[B
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lgnu/crypto/cipher/BaseCipher;->currentBlockSize:I

    .line 143
    const/4 v3, 0x0

    .line 144
    .local v3, "ok":Z
    invoke-virtual {p0}, Lgnu/crypto/cipher/BaseCipher;->blockSizes()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 150
    :goto_0
    if-nez v3, :cond_1

    .line 151
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "gnu.crypto.cipher.block.size"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    :cond_4
    const/4 v3, 0x0

    iget v6, p0, Lgnu/crypto/cipher/BaseCipher;->currentBlockSize:I

    .end local v3    # "ok":Z
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-ne v6, v4, :cond_5

    const/4 v3, 0x1

    .line 146
    .restart local v3    # "ok":Z
    :cond_5
    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lgnu/crypto/cipher/BaseCipher;->name:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 112
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgnu/crypto/cipher/BaseCipher;->currentKey:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 113
    iget v1, p0, Lgnu/crypto/cipher/BaseCipher;->defaultBlockSize:I

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 115
    :cond_0
    iget v1, p0, Lgnu/crypto/cipher/BaseCipher;->currentBlockSize:I

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 168
    iget-object v1, p0, Lgnu/crypto/cipher/BaseCipher;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lgnu/crypto/cipher/BaseCipher;->currentKey:Ljava/lang/Object;

    monitor-exit v1

    .line 172
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public selfTest()Z
    .locals 4

    .prologue
    .line 197
    invoke-virtual {p0}, Lgnu/crypto/cipher/BaseCipher;->keySizes()Ljava/util/Iterator;

    move-result-object v1

    .line 201
    .local v1, "kit":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 210
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 202
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 203
    .local v2, "ks":I
    invoke-virtual {p0}, Lgnu/crypto/cipher/BaseCipher;->blockSizes()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "bit":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lgnu/crypto/cipher/BaseCipher;->testSymmetry(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 205
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected testKat([B[B)Z
    .locals 1
    .param p1, "kb"    # [B
    .param p2, "ct"    # [B

    .prologue
    .line 242
    array-length v0, p2

    new-array v0, v0, [B

    invoke-virtual {p0, p1, p2, v0}, Lgnu/crypto/cipher/BaseCipher;->testKat([B[B[B)Z

    move-result v0

    return v0
.end method

.method protected testKat([B[B[B)Z
    .locals 9
    .param p1, "kb"    # [B
    .param p2, "ct"    # [B
    .param p3, "pt"    # [B

    .prologue
    const/4 v8, 0x0

    .line 246
    :try_start_0
    array-length v6, p3

    .line 248
    .local v6, "bs":I
    new-array v3, v6, [B

    .line 250
    .local v3, "t":[B
    invoke-virtual {p0, p1, v6}, Lgnu/crypto/cipher/BaseCipher;->makeKey([BI)Ljava/lang/Object;

    move-result-object v5

    .line 253
    .local v5, "k":Ljava/lang/Object;
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p3

    invoke-virtual/range {v0 .. v6}, Lgnu/crypto/cipher/BaseCipher;->encrypt([BI[BILjava/lang/Object;I)V

    .line 254
    invoke-static {v3, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    .line 263
    .end local v3    # "t":[B
    .end local v5    # "k":Ljava/lang/Object;
    .end local v6    # "bs":I
    :goto_0
    return v0

    .line 258
    .restart local v3    # "t":[B
    .restart local v5    # "k":Ljava/lang/Object;
    .restart local v6    # "bs":I
    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v3

    invoke-virtual/range {v0 .. v6}, Lgnu/crypto/cipher/BaseCipher;->decrypt([BI[BILjava/lang/Object;I)V

    .line 259
    invoke-static {v3, p3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 261
    .end local v3    # "t":[B
    .end local v5    # "k":Ljava/lang/Object;
    .end local v6    # "bs":I
    :catch_0
    move-exception v7

    .line 262
    .local v7, "x":Ljava/lang/Exception;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v7, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    move v0, v8

    .line 263
    goto :goto_0
.end method
