.class final Lgnu/crypto/cipher/TripleDES$Context;
.super Ljava/lang/Object;
.source "TripleDES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/crypto/cipher/TripleDES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Context"
.end annotation


# instance fields
.field k1:Lgnu/crypto/cipher/DES$Context;

.field k2:Lgnu/crypto/cipher/DES$Context;

.field k3:Lgnu/crypto/cipher/DES$Context;

.field final this:Lgnu/crypto/cipher/TripleDES;


# direct methods
.method private constructor <init>(Lgnu/crypto/cipher/TripleDES;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lgnu/crypto/cipher/TripleDES$Context;->this:Lgnu/crypto/cipher/TripleDES;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lgnu/crypto/cipher/TripleDES;Lgnu/crypto/cipher/TripleDES$1;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lgnu/crypto/cipher/TripleDES$Context;-><init>(Lgnu/crypto/cipher/TripleDES;)V

    return-void
.end method
