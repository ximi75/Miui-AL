.class Lgnu/crypto/cipher/Blowfish$Context;
.super Ljava/lang/Object;
.source "Blowfish.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/crypto/cipher/Blowfish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Context"
.end annotation


# instance fields
.field p:[I

.field s0:[I

.field s1:[I

.field s2:[I

.field s3:[I

.field final this:Lgnu/crypto/cipher/Blowfish;


# direct methods
.method constructor <init>(Lgnu/crypto/cipher/Blowfish;)V
    .locals 2

    .prologue
    const/16 v1, 0x100

    iput-object p1, p0, Lgnu/crypto/cipher/Blowfish$Context;->this:Lgnu/crypto/cipher/Blowfish;

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    const/16 v0, 0x12

    new-array v0, v0, [I

    iput-object v0, p0, Lgnu/crypto/cipher/Blowfish$Context;->p:[I

    .line 556
    new-array v0, v1, [I

    iput-object v0, p0, Lgnu/crypto/cipher/Blowfish$Context;->s0:[I

    .line 557
    new-array v0, v1, [I

    iput-object v0, p0, Lgnu/crypto/cipher/Blowfish$Context;->s1:[I

    .line 558
    new-array v0, v1, [I

    iput-object v0, p0, Lgnu/crypto/cipher/Blowfish$Context;->s2:[I

    .line 559
    new-array v0, v1, [I

    iput-object v0, p0, Lgnu/crypto/cipher/Blowfish$Context;->s3:[I

    .line 560
    return-void
.end method

.method private constructor <init>(Lgnu/crypto/cipher/Blowfish;Lgnu/crypto/cipher/Blowfish$Context;)V
    .locals 1
    .param p2, "that"    # Lgnu/crypto/cipher/Blowfish$Context;

    .prologue
    iput-object p1, p0, Lgnu/crypto/cipher/Blowfish$Context;->this:Lgnu/crypto/cipher/Blowfish;

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iget-object v0, p2, Lgnu/crypto/cipher/Blowfish$Context;->p:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lgnu/crypto/cipher/Blowfish$Context;->p:[I

    .line 569
    iget-object v0, p2, Lgnu/crypto/cipher/Blowfish$Context;->s0:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lgnu/crypto/cipher/Blowfish$Context;->s0:[I

    .line 570
    iget-object v0, p2, Lgnu/crypto/cipher/Blowfish$Context;->s1:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lgnu/crypto/cipher/Blowfish$Context;->s1:[I

    .line 571
    iget-object v0, p2, Lgnu/crypto/cipher/Blowfish$Context;->s2:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lgnu/crypto/cipher/Blowfish$Context;->s2:[I

    .line 572
    iget-object v0, p2, Lgnu/crypto/cipher/Blowfish$Context;->s3:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lgnu/crypto/cipher/Blowfish$Context;->s3:[I

    .line 573
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 579
    new-instance v0, Lgnu/crypto/cipher/Blowfish$Context;

    iget-object v1, p0, Lgnu/crypto/cipher/Blowfish$Context;->this:Lgnu/crypto/cipher/Blowfish;

    invoke-direct {v0, v1, p0}, Lgnu/crypto/cipher/Blowfish$Context;-><init>(Lgnu/crypto/cipher/Blowfish;Lgnu/crypto/cipher/Blowfish$Context;)V

    return-object v0
.end method
