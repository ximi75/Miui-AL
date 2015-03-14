.class final Lgnu/crypto/cipher/DES$Context;
.super Ljava/lang/Object;
.source "DES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/crypto/cipher/DES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Context"
.end annotation


# static fields
.field private static final EXPANDED_KEY_SIZE:I = 0x20


# instance fields
.field dk:[I

.field ek:[I

.field final this:Lgnu/crypto/cipher/DES;


# direct methods
.method constructor <init>(Lgnu/crypto/cipher/DES;)V
    .locals 2

    .prologue
    const/16 v1, 0x20

    iput-object p1, p0, Lgnu/crypto/cipher/DES$Context;->this:Lgnu/crypto/cipher/DES;

    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    new-array v0, v1, [I

    iput-object v0, p0, Lgnu/crypto/cipher/DES$Context;->ek:[I

    .line 692
    new-array v0, v1, [I

    iput-object v0, p0, Lgnu/crypto/cipher/DES$Context;->dk:[I

    .line 693
    return-void
.end method


# virtual methods
.method final getDecryptionKeyBytes()[B
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lgnu/crypto/cipher/DES$Context;->dk:[I

    invoke-virtual {p0, v0}, Lgnu/crypto/cipher/DES$Context;->toByteArray([I)[B

    move-result-object v0

    return-object v0
.end method

.method final getEncryptionKeyBytes()[B
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lgnu/crypto/cipher/DES$Context;->ek:[I

    invoke-virtual {p0, v0}, Lgnu/crypto/cipher/DES$Context;->toByteArray([I)[B

    move-result-object v0

    return-object v0
.end method

.method final toByteArray([I)[B
    .locals 5
    .param p1, "k"    # [I

    .prologue
    .line 710
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x4

    new-array v3, v4, [B

    .line 711
    .local v3, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v4, p1

    if-lt v0, v4, :cond_0

    .line 717
    return-object v3

    .line 712
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    aget v4, p1, v0

    ushr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 713
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    aget v4, p1, v0

    ushr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 714
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    aget v4, p1, v0

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 715
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    aget v4, p1, v0

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 711
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
