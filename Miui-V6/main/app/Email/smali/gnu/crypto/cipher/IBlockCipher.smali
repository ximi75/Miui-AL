.class public interface abstract Lgnu/crypto/cipher/IBlockCipher;
.super Ljava/lang/Object;
.source "IBlockCipher.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CIPHER_BLOCK_SIZE:Ljava/lang/String; = "gnu.crypto.cipher.block.size"

.field public static final KEY_MATERIAL:Ljava/lang/String; = "gnu.crypto.cipher.key.material"


# virtual methods
.method public abstract blockSizes()Ljava/util/Iterator;
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract currentBlockSize()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract decryptBlock([BI[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract defaultBlockSize()I
.end method

.method public abstract defaultKeySize()I
.end method

.method public abstract encryptBlock([BI[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract init(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract keySizes()Ljava/util/Iterator;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract reset()V
.end method

.method public abstract selfTest()Z
.end method
