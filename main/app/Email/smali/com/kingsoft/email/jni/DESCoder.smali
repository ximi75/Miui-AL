.class public abstract Lcom/kingsoft/email/jni/DESCoder;
.super Ljava/lang/Object;
.source "DESCoder.java"


# static fields
.field public static final ALGORITHM:Ljava/lang/String; = "DES"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt([BLjava/lang/String;)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p1}, Lcom/kingsoft/email/jni/DESCoder;->decryptBASE64(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/email/jni/DESCoder;->toKey([B)Ljava/security/Key;

    move-result-object v1

    .line 48
    .local v1, "k":Ljava/security/Key;
    const-string/jumbo v2, "DES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 49
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 51
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    return-object v2
.end method

.method public static decryptBASE64(Ljava/lang/String;)[B
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, LDecoder/BASE64Decoder;

    invoke-direct {v0}, LDecoder/BASE64Decoder;-><init>()V

    invoke-virtual {v0, p0}, LDecoder/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt([BLjava/lang/String;)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {p1}, Lcom/kingsoft/email/jni/DESCoder;->decryptBASE64(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/email/jni/DESCoder;->toKey([B)Ljava/security/Key;

    move-result-object v1

    .line 64
    .local v1, "k":Ljava/security/Key;
    const-string/jumbo v2, "DES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 65
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 67
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    return-object v2
.end method

.method public static encryptBASE64([B)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, LDecoder/BASE64Encoder;

    invoke-direct {v0}, LDecoder/BASE64Encoder;-><init>()V

    invoke-virtual {v0, p0}, LDecoder/BASE64Encoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initKey()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kingsoft/email/jni/DESCoder;->initKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "seed"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v2, 0x0

    .line 90
    .local v2, "secureRandom":Ljava/security/SecureRandom;
    if-eqz p0, :cond_0

    .line 91
    new-instance v2, Ljava/security/SecureRandom;

    .end local v2    # "secureRandom":Ljava/security/SecureRandom;
    invoke-static {p0}, Lcom/kingsoft/email/jni/DESCoder;->decryptBASE64(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SecureRandom;-><init>([B)V

    .line 96
    .restart local v2    # "secureRandom":Ljava/security/SecureRandom;
    :goto_0
    const-string/jumbo v3, "DES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 97
    .local v0, "kg":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v0, v2}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 99
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 100
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/email/jni/DESCoder;->encryptBASE64([B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 93
    .end local v0    # "kg":Ljavax/crypto/KeyGenerator;
    .end local v1    # "secretKey":Ljavax/crypto/SecretKey;
    :cond_0
    new-instance v2, Ljava/security/SecureRandom;

    .end local v2    # "secureRandom":Ljava/security/SecureRandom;
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .restart local v2    # "secureRandom":Ljava/security/SecureRandom;
    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 126
    const-string/jumbo v1, "xxxxxx"

    .line 127
    .local v1, "info":Ljava/lang/String;
    const-string/jumbo v3, "8hM32ldAJQQ="

    .line 128
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 131
    .local v2, "inputData":[B
    :try_start_0
    invoke-static {v2, v3}, Lcom/kingsoft/email/jni/DESCoder;->encrypt([BLjava/lang/String;)[B

    move-result-object v2

    .line 132
    invoke-static {v2}, Lcom/kingsoft/email/jni/DESCoder;->encryptBASE64([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static toKey([B)Ljava/security/Key;
    .locals 4
    .param p0, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v0, p0}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 28
    .local v0, "dks":Ljavax/crypto/spec/DESKeySpec;
    const-string/jumbo v3, "DES"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 29
    .local v1, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 34
    .local v2, "secretKey":Ljavax/crypto/SecretKey;
    return-object v2
.end method
