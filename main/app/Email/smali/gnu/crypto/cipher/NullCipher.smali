.class public final Lgnu/crypto/cipher/NullCipher;
.super Lgnu/crypto/cipher/BaseCipher;
.source "NullCipher.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 72
    const-string/jumbo v0, "null"

    invoke-direct {p0, v0, v1, v1}, Lgnu/crypto/cipher/BaseCipher;-><init>(Ljava/lang/String;II)V

    .line 73
    return-void
.end method


# virtual methods
.method public final blockSizes()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "al":Ljava/util/ArrayList;
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lgnu/crypto/cipher/NullCipher;

    invoke-direct {v0}, Lgnu/crypto/cipher/NullCipher;-><init>()V

    .line 85
    .local v0, "result":Lgnu/crypto/cipher/NullCipher;
    iget v1, p0, Lgnu/crypto/cipher/NullCipher;->currentBlockSize:I

    iput v1, v0, Lgnu/crypto/cipher/NullCipher;->currentBlockSize:I

    .line 87
    return-object v0
.end method

.method public final decrypt([BI[BILjava/lang/Object;I)V
    .locals 0
    .param p1, "in"    # [B
    .param p2, "i"    # I
    .param p3, "out"    # [B
    .param p4, "j"    # I
    .param p5, "k"    # Ljava/lang/Object;
    .param p6, "bs"    # I

    .prologue
    .line 120
    invoke-static {p1, p2, p3, p4, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    return-void
.end method

.method public final encrypt([BI[BILjava/lang/Object;I)V
    .locals 0
    .param p1, "in"    # [B
    .param p2, "i"    # I
    .param p3, "out"    # [B
    .param p4, "j"    # I
    .param p5, "k"    # Ljava/lang/Object;
    .param p6, "bs"    # I

    .prologue
    .line 116
    invoke-static {p1, p2, p3, p4, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    return-void
.end method

.method public final keySizes()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "al":Ljava/util/ArrayList;
    const/16 v1, 0x8

    .local v1, "n":I
    :goto_0
    const/16 v2, 0x40

    if-lt v1, v2, :cond_0

    .line 108
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2

    .line 105
    :cond_0
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final makeKey([BI)Ljava/lang/Object;
    .locals 1
    .param p1, "uk"    # [B
    .param p2, "bs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method public final selfTest()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method
