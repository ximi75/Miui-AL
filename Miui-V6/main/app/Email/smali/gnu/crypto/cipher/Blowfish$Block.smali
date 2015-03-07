.class Lgnu/crypto/cipher/Blowfish$Block;
.super Ljava/lang/Object;
.source "Blowfish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/crypto/cipher/Blowfish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Block"
.end annotation


# instance fields
.field left:I

.field right:I

.field final this:Lgnu/crypto/cipher/Blowfish;


# direct methods
.method private constructor <init>(Lgnu/crypto/cipher/Blowfish;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lgnu/crypto/cipher/Blowfish$Block;->this:Lgnu/crypto/cipher/Blowfish;

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lgnu/crypto/cipher/Blowfish;Lgnu/crypto/cipher/Blowfish$1;)V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0, p1}, Lgnu/crypto/cipher/Blowfish$Block;-><init>(Lgnu/crypto/cipher/Blowfish;)V

    return-void
.end method
