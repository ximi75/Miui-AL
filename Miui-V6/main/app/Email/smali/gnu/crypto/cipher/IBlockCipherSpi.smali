.class interface abstract Lgnu/crypto/cipher/IBlockCipherSpi;
.super Ljava/lang/Object;
.source "IBlockCipherSpi.java"

# interfaces
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract blockSizes()Ljava/util/Iterator;
.end method

.method public abstract decrypt([BI[BILjava/lang/Object;I)V
.end method

.method public abstract encrypt([BI[BILjava/lang/Object;I)V
.end method

.method public abstract keySizes()Ljava/util/Iterator;
.end method

.method public abstract makeKey([BI)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract selfTest()Z
.end method
