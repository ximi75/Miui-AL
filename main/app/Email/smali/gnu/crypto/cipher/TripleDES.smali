.class public Lgnu/crypto/cipher/TripleDES;
.super Lgnu/crypto/cipher/BaseCipher;
.source "TripleDES.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/crypto/cipher/TripleDES$Context;
    }
.end annotation


# static fields
.field public static final BLOCK_SIZE:I = 0x8

.field public static final KEY_SIZE:I = 0x18


# instance fields
.field private des:Lgnu/crypto/cipher/DES;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 102
    const-string/jumbo v0, "tripledes"

    const/16 v1, 0x8

    const/16 v2, 0x18

    invoke-direct {p0, v0, v1, v2}, Lgnu/crypto/cipher/BaseCipher;-><init>(Ljava/lang/String;II)V

    .line 103
    new-instance v0, Lgnu/crypto/cipher/DES;

    invoke-direct {v0}, Lgnu/crypto/cipher/DES;-><init>()V

    iput-object v0, p0, Lgnu/crypto/cipher/TripleDES;->des:Lgnu/crypto/cipher/DES;

    .line 104
    return-void
.end method

.method public static adjustParity([BI)V
    .locals 1
    .param p0, "kb"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 117
    invoke-static {p0, p1}, Lgnu/crypto/cipher/DES;->adjustParity([BI)V

    .line 118
    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0}, Lgnu/crypto/cipher/DES;->adjustParity([BI)V

    .line 119
    add-int/lit8 v0, p1, 0x10

    invoke-static {p0, v0}, Lgnu/crypto/cipher/DES;->adjustParity([BI)V

    .line 120
    return-void
.end method

.method public static isParityAdjusted([BI)Z
    .locals 2
    .param p0, "kb"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-static {p0, p1}, Lgnu/crypto/cipher/DES;->isParityAdjusted([BI)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p1, 0x8

    invoke-static {p0, v1}, Lgnu/crypto/cipher/DES;->isParityAdjusted([BI)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p1, 0x10

    invoke-static {p0, v1}, Lgnu/crypto/cipher/DES;->isParityAdjusted([BI)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public blockSizes()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lgnu/crypto/cipher/TripleDES;

    invoke-direct {v0}, Lgnu/crypto/cipher/TripleDES;-><init>()V

    return-object v0
.end method

.method public decrypt([BI[BILjava/lang/Object;I)V
    .locals 9
    .param p1, "in"    # [B
    .param p2, "i"    # I
    .param p3, "out"    # [B
    .param p4, "o"    # I
    .param p5, "K"    # Ljava/lang/Object;
    .param p6, "bs"    # I

    .prologue
    const/4 v4, 0x0

    .line 186
    const/16 v0, 0x8

    new-array v3, v0, [B

    .line 187
    .local v3, "temp":[B
    iget-object v0, p0, Lgnu/crypto/cipher/TripleDES;->des:Lgnu/crypto/cipher/DES;

    move-object v1, p5

    check-cast v1, Lgnu/crypto/cipher/TripleDES$Context;

    iget-object v5, v1, Lgnu/crypto/cipher/TripleDES$Context;->k3:Lgnu/crypto/cipher/DES$Context;

    move-object v1, p1

    move v2, p2

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lgnu/crypto/cipher/DES;->decrypt([BI[BILjava/lang/Object;I)V

    .line 188
    iget-object v2, p0, Lgnu/crypto/cipher/TripleDES;->des:Lgnu/crypto/cipher/DES;

    move-object v0, p5

    check-cast v0, Lgnu/crypto/cipher/TripleDES$Context;

    iget-object v7, v0, Lgnu/crypto/cipher/TripleDES$Context;->k2:Lgnu/crypto/cipher/DES$Context;

    move-object v5, v3

    move v6, v4

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lgnu/crypto/cipher/DES;->encrypt([BI[BILjava/lang/Object;I)V

    .line 189
    iget-object v2, p0, Lgnu/crypto/cipher/TripleDES;->des:Lgnu/crypto/cipher/DES;

    check-cast p5, Lgnu/crypto/cipher/TripleDES$Context;

    .end local p5    # "K":Ljava/lang/Object;
    iget-object v7, p5, Lgnu/crypto/cipher/TripleDES$Context;->k1:Lgnu/crypto/cipher/DES$Context;

    move-object v5, p3

    move v6, p4

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lgnu/crypto/cipher/DES;->decrypt([BI[BILjava/lang/Object;I)V

    .line 190
    return-void
.end method

.method public encrypt([BI[BILjava/lang/Object;I)V
    .locals 9
    .param p1, "in"    # [B
    .param p2, "i"    # I
    .param p3, "out"    # [B
    .param p4, "o"    # I
    .param p5, "K"    # Ljava/lang/Object;
    .param p6, "bs"    # I

    .prologue
    const/4 v4, 0x0

    .line 177
    const/16 v0, 0x8

    new-array v3, v0, [B

    .line 178
    .local v3, "temp":[B
    iget-object v0, p0, Lgnu/crypto/cipher/TripleDES;->des:Lgnu/crypto/cipher/DES;

    move-object v1, p5

    check-cast v1, Lgnu/crypto/cipher/TripleDES$Context;

    iget-object v5, v1, Lgnu/crypto/cipher/TripleDES$Context;->k1:Lgnu/crypto/cipher/DES$Context;

    move-object v1, p1

    move v2, p2

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lgnu/crypto/cipher/DES;->encrypt([BI[BILjava/lang/Object;I)V

    .line 179
    iget-object v2, p0, Lgnu/crypto/cipher/TripleDES;->des:Lgnu/crypto/cipher/DES;

    move-object v0, p5

    check-cast v0, Lgnu/crypto/cipher/TripleDES$Context;

    iget-object v7, v0, Lgnu/crypto/cipher/TripleDES$Context;->k2:Lgnu/crypto/cipher/DES$Context;

    move-object v5, v3

    move v6, v4

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lgnu/crypto/cipher/DES;->decrypt([BI[BILjava/lang/Object;I)V

    .line 180
    iget-object v2, p0, Lgnu/crypto/cipher/TripleDES;->des:Lgnu/crypto/cipher/DES;

    check-cast p5, Lgnu/crypto/cipher/TripleDES$Context;

    .end local p5    # "K":Ljava/lang/Object;
    iget-object v7, p5, Lgnu/crypto/cipher/TripleDES$Context;->k3:Lgnu/crypto/cipher/DES$Context;

    move-object v5, p3

    move v6, p4

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lgnu/crypto/cipher/DES;->encrypt([BI[BILjava/lang/Object;I)V

    .line 181
    return-void
.end method

.method public keySizes()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public makeKey([BI)Ljava/lang/Object;
    .locals 8
    .param p1, "kb"    # [B
    .param p2, "bs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 154
    array-length v4, p1

    const/16 v5, 0x18

    if-eq v4, v5, :cond_0

    .line 155
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string/jumbo v5, "TripleDES key must be 24 bytes"

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 157
    :cond_0
    invoke-static {p1, v7}, Lgnu/crypto/cipher/TripleDES;->isParityAdjusted([BI)Z

    move-result v4

    if-nez v4, :cond_1

    .line 158
    invoke-static {p1, v7}, Lgnu/crypto/cipher/TripleDES;->adjustParity([BI)V

    .line 160
    :cond_1
    new-array v1, v6, [B

    .local v1, "k1":[B
    new-array v2, v6, [B

    .local v2, "k2":[B
    new-array v3, v6, [B

    .line 162
    .local v3, "k3":[B
    invoke-static {p1, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    invoke-static {p1, v6, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    const/16 v4, 0x10

    invoke-static {p1, v4, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    new-instance v0, Lgnu/crypto/cipher/TripleDES$Context;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lgnu/crypto/cipher/TripleDES$Context;-><init>(Lgnu/crypto/cipher/TripleDES;Lgnu/crypto/cipher/TripleDES$1;)V

    .line 167
    .local v0, "ctx":Lgnu/crypto/cipher/TripleDES$Context;
    iget-object v4, p0, Lgnu/crypto/cipher/TripleDES;->des:Lgnu/crypto/cipher/DES;

    invoke-virtual {v4, v1, p2}, Lgnu/crypto/cipher/DES;->makeKey([BI)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/crypto/cipher/DES$Context;

    iput-object v4, v0, Lgnu/crypto/cipher/TripleDES$Context;->k1:Lgnu/crypto/cipher/DES$Context;

    .line 168
    iget-object v4, p0, Lgnu/crypto/cipher/TripleDES;->des:Lgnu/crypto/cipher/DES;

    invoke-virtual {v4, v2, p2}, Lgnu/crypto/cipher/DES;->makeKey([BI)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/crypto/cipher/DES$Context;

    iput-object v4, v0, Lgnu/crypto/cipher/TripleDES$Context;->k2:Lgnu/crypto/cipher/DES$Context;

    .line 169
    iget-object v4, p0, Lgnu/crypto/cipher/TripleDES;->des:Lgnu/crypto/cipher/DES;

    invoke-virtual {v4, v3, p2}, Lgnu/crypto/cipher/DES;->makeKey([BI)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/crypto/cipher/DES$Context;

    iput-object v4, v0, Lgnu/crypto/cipher/TripleDES$Context;->k3:Lgnu/crypto/cipher/DES$Context;

    .line 171
    return-object v0
.end method
