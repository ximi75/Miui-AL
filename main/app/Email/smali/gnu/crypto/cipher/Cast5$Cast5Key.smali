.class Lgnu/crypto/cipher/Cast5$Cast5Key;
.super Ljava/lang/Object;
.source "Cast5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/crypto/cipher/Cast5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cast5Key"
.end annotation


# instance fields
.field Km0:I

.field Km1:I

.field Km10:I

.field Km11:I

.field Km12:I

.field Km13:I

.field Km14:I

.field Km15:I

.field Km2:I

.field Km3:I

.field Km4:I

.field Km5:I

.field Km6:I

.field Km7:I

.field Km8:I

.field Km9:I

.field Kr0:I

.field Kr1:I

.field Kr10:I

.field Kr11:I

.field Kr12:I

.field Kr13:I

.field Kr14:I

.field Kr15:I

.field Kr2:I

.field Kr3:I

.field Kr4:I

.field Kr5:I

.field Kr6:I

.field Kr7:I

.field Kr8:I

.field Kr9:I

.field rounds:I

.field final this:Lgnu/crypto/cipher/Cast5;


# direct methods
.method private constructor <init>(Lgnu/crypto/cipher/Cast5;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lgnu/crypto/cipher/Cast5$Cast5Key;->this:Lgnu/crypto/cipher/Cast5;

    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lgnu/crypto/cipher/Cast5;Lgnu/crypto/cipher/Cast5$1;)V
    .locals 0

    .prologue
    .line 762
    invoke-direct {p0, p1}, Lgnu/crypto/cipher/Cast5$Cast5Key;-><init>(Lgnu/crypto/cipher/Cast5;)V

    return-void
.end method
