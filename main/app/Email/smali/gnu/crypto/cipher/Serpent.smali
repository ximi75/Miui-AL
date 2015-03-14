.class public Lgnu/crypto/cipher/Serpent;
.super Lgnu/crypto/cipher/BaseCipher;
.source "Serpent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/crypto/cipher/Serpent$Key;
    }
.end annotation


# static fields
.field private static final DEFAULT_BLOCK_SIZE:I = 0x10

.field private static final DEFAULT_KEY_SIZE:I = 0x10

.field private static final KAT_CT:[B

.field private static final KAT_KEY:[B

.field private static final PHI:I = -0x61c88647

.field private static final ROUNDS:I = 0x20

.field private static valid:Ljava/lang/Boolean;


# instance fields
.field private x0:I

.field private x1:I

.field private x2:I

.field private x3:I

.field private x4:I


# direct methods
.method private static final constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-string/jumbo v0, "008000000000000000000000000000000000000000000000"

    invoke-static {v0}, Lgnu/crypto/util/Util;->toReversedBytesFromString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lgnu/crypto/cipher/Serpent;->KAT_KEY:[B

    .line 102
    const-string/jumbo v0, "5587B5BCB9EE5A28BA2BACC418005240"

    invoke-static {v0}, Lgnu/crypto/util/Util;->toReversedBytesFromString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lgnu/crypto/cipher/Serpent;->KAT_CT:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 115
    const-string/jumbo v0, "serpent"

    invoke-direct {p0, v0, v1, v1}, Lgnu/crypto/cipher/BaseCipher;-><init>(Ljava/lang/String;II)V

    .line 116
    return-void
.end method

.method private final sbox0()V
    .locals 2

    .prologue
    .line 416
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 417
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 418
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 419
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 420
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 421
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 422
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 423
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 424
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 425
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 426
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 427
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 428
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 429
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 430
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 431
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 432
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 433
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 435
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v0, v0, 0xd

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v1, v1, 0x13

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 436
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 437
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 438
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v0, v0, 0x3

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v1, v1, 0x1d

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 439
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 440
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 441
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 442
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 443
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v0, v0, 0x7

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v1, v1, 0x19

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 444
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 445
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 446
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v0, v0, 0x7

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 447
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 448
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 449
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 450
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v0, v0, 0x5

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 451
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v0, v0, 0x16

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 452
    return-void
.end method

.method private final sbox0(IIII)V
    .locals 2
    .param p1, "r0"    # I
    .param p2, "r1"    # I
    .param p3, "r2"    # I
    .param p4, "r3"    # I

    .prologue
    .line 1094
    xor-int v0, p2, p3

    .line 1095
    .local v0, "r4":I
    xor-int/2addr p4, p1

    .line 1096
    and-int v1, p2, p4

    xor-int p2, v1, p1

    .line 1097
    or-int v1, p1, p4

    xor-int p1, v1, v0

    .line 1098
    xor-int/2addr v0, p4

    .line 1099
    xor-int/2addr p4, p3

    .line 1100
    or-int v1, p3, p2

    xor-int p3, v1, v0

    .line 1101
    xor-int/lit8 v1, v0, -0x1

    or-int v0, v1, p2

    .line 1102
    xor-int v1, p4, v0

    xor-int/2addr p2, v1

    .line 1103
    or-int/2addr p4, p1

    .line 1104
    xor-int v1, p2, p4

    iput v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1105
    xor-int v1, v0, p4

    iput v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1106
    iput p3, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1107
    iput p1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1108
    return-void
.end method

.method private final sbox1()V
    .locals 2

    .prologue
    .line 455
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 456
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 457
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 458
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 459
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 460
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 461
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 462
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 463
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 464
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 465
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 466
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 467
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 468
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 469
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 470
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 471
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 472
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 473
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 474
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 475
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 476
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 477
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 479
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v0, v0, 0xd

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v1, v1, 0x13

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 480
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 481
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 482
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v0, v0, 0x3

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v1, v1, 0x1d

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 483
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 484
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 485
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 486
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 487
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v0, v0, 0x7

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v1, v1, 0x19

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 488
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 489
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 490
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v0, v0, 0x7

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 491
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 492
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 493
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 494
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v0, v0, 0x5

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 495
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v0, v0, 0x16

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 496
    return-void
.end method

.method private final sbox1(IIII)V
    .locals 2
    .param p1, "r0"    # I
    .param p2, "r1"    # I
    .param p3, "r2"    # I
    .param p4, "r3"    # I

    .prologue
    .line 1112
    xor-int/lit8 p1, p1, -0x1

    .line 1113
    move v0, p1

    .line 1114
    .local v0, "r4":I
    xor-int/lit8 p3, p3, -0x1

    .line 1115
    and-int/2addr p1, p2

    .line 1116
    xor-int/2addr p3, p1

    .line 1117
    or-int/2addr p1, p4

    .line 1118
    xor-int/2addr p4, p3

    .line 1119
    xor-int/2addr p2, p1

    .line 1120
    xor-int/2addr p1, v0

    .line 1121
    or-int/2addr v0, p2

    .line 1122
    xor-int/2addr p2, p4

    .line 1123
    or-int v1, p3, p1

    and-int p3, v1, v0

    .line 1124
    xor-int/2addr p1, p2

    .line 1125
    iput p3, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1126
    and-int v1, p1, p3

    xor-int/2addr v1, v0

    iput v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1127
    iput p4, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1128
    and-int v1, p2, p3

    xor-int/2addr v1, p1

    iput v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1129
    return-void
.end method

.method private final sbox2()V
    .locals 2

    .prologue
    .line 499
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 500
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 501
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 502
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 503
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 504
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 505
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 506
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 507
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 508
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 509
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 510
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 511
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 512
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 513
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 514
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 516
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v0, v0, 0xd

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v1, v1, 0x13

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 517
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 518
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 519
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v0, v0, 0x3

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v1, v1, 0x1d

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 520
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 521
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 522
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 523
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 524
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v0, v0, 0x7

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    ushr-int/lit8 v1, v1, 0x19

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 525
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 526
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 527
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v0, v0, 0x7

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 528
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 529
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 530
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 531
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v0, v0, 0x5

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 532
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v0, v0, 0x16

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 533
    return-void
.end method

.method private final sbox2(IIII)V
    .locals 2
    .param p1, "r0"    # I
    .param p2, "r1"    # I
    .param p3, "r2"    # I
    .param p4, "r3"    # I

    .prologue
    .line 1133
    move v0, p1

    .line 1134
    .local v0, "r4":I
    and-int v1, p1, p3

    xor-int p1, v1, p4

    .line 1135
    xor-int v1, p3, p2

    xor-int p3, v1, p1

    .line 1136
    or-int v1, p4, v0

    xor-int p4, v1, p2

    .line 1137
    xor-int/2addr v0, p3

    .line 1138
    move p2, p4

    .line 1139
    or-int v1, p4, v0

    xor-int p4, v1, p1

    .line 1140
    and-int/2addr p1, p2

    .line 1141
    xor-int/2addr v0, p1

    .line 1142
    iput p3, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1143
    iput p4, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1144
    xor-int v1, p2, p4

    xor-int/2addr v1, v0

    iput v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1145
    xor-int/lit8 v1, v0, -0x1

    iput v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1146
    return-void
.end method

.method private final sbox3()V
    .locals 2

    .prologue
    .line 536
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 537
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 538
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 539
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 540
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 541
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 542
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 543
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 544
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 545
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 546
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 547
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 548
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 549
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 550
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 551
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 552
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 553
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 554
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 556
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v0, v0, 0xd

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v1, v1, 0x13

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 557
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 558
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 559
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v0, v0, 0x3

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    ushr-int/lit8 v1, v1, 0x1d

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 560
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 561
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 562
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 563
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 564
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v0, v0, 0x7

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v1, v1, 0x19

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 565
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 566
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 567
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v0, v0, 0x7

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 568
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 569
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 570
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 571
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v0, v0, 0x5

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 572
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v0, v0, 0x16

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    ushr-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 573
    return-void
.end method

.method private final sbox3(IIII)V
    .locals 2
    .param p1, "r0"    # I
    .param p2, "r1"    # I
    .param p3, "r2"    # I
    .param p4, "r3"    # I

    .prologue
    .line 1150
    move v0, p1

    .line 1151
    .local v0, "r4":I
    or-int/2addr p1, p4

    .line 1152
    xor-int/2addr p4, p2

    .line 1153
    and-int/2addr p2, v0

    .line 1154
    xor-int v1, v0, p3

    or-int v0, v1, p2

    .line 1155
    xor-int/2addr p3, p4

    .line 1156
    and-int v1, p4, p1

    xor-int p4, v1, v0

    .line 1157
    xor-int/2addr p1, p2

    .line 1158
    and-int v1, v0, p1

    xor-int v0, v1, p3

    .line 1159
    xor-int v1, p2, p4

    or-int/2addr v1, p1

    xor-int p2, v1, p3

    .line 1160
    xor-int/2addr p1, p4

    .line 1161
    or-int v1, p2, p4

    xor-int/2addr v1, p1

    iput v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1162
    iput p2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1163
    iput p4, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1164
    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1165
    return-void
.end method

.method private final sbox4()V
    .locals 2

    .prologue
    .line 576
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 577
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 578
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 579
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 580
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 581
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 582
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 583
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 584
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 585
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 586
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 587
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 588
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 589
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 590
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 591
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 592
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 593
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 594
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 595
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 597
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v0, v0, 0xd

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v1, v1, 0x13

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 598
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 599
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 600
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v0, v0, 0x3

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v1, v1, 0x1d

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 601
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 602
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 603
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 604
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 605
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v0, v0, 0x7

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v1, v1, 0x19

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 606
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 607
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 608
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v0, v0, 0x7

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 609
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 610
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 611
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 612
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v0, v0, 0x5

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 613
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v0, v0, 0x16

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 614
    return-void
.end method

.method private final sbox4(IIII)V
    .locals 2
    .param p1, "r0"    # I
    .param p2, "r1"    # I
    .param p3, "r2"    # I
    .param p4, "r3"    # I

    .prologue
    .line 1169
    xor-int/2addr p2, p4

    .line 1170
    move v0, p2

    .line 1171
    .local v0, "r4":I
    xor-int/lit8 p4, p4, -0x1

    .line 1172
    xor-int/2addr p3, p4

    .line 1173
    xor-int/2addr p4, p1

    .line 1174
    and-int v1, p2, p4

    xor-int p2, v1, p3

    .line 1175
    xor-int/2addr v0, p4

    .line 1176
    xor-int/2addr p1, v0

    .line 1177
    and-int v1, p3, v0

    xor-int p3, v1, p1

    .line 1178
    and-int/2addr p1, p2

    .line 1179
    xor-int/2addr p4, p1

    .line 1180
    or-int v1, v0, p2

    xor-int v0, v1, p1

    .line 1181
    iput p2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1182
    and-int v1, p3, p4

    xor-int/2addr v1, v0

    iput v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1183
    or-int v1, p1, p4

    xor-int/2addr v1, p3

    xor-int/lit8 v1, v1, -0x1

    iput v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1184
    iput p4, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1185
    return-void
.end method

.method private final sbox5()V
    .locals 2

    .prologue
    .line 617
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 618
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 619
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 620
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 621
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 622
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 623
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 624
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 625
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 626
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 627
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 628
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 629
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 630
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 631
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 632
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 633
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 634
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 635
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 637
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v0, v0, 0xd

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v1, v1, 0x13

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 638
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 639
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 640
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v0, v0, 0x3

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v1, v1, 0x1d

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 641
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 642
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 643
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 644
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 645
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v0, v0, 0x7

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v1, v1, 0x19

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 646
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 647
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 648
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v0, v0, 0x7

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 649
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 650
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 651
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 652
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v0, v0, 0x5

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 653
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v0, v0, 0x16

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 654
    return-void
.end method

.method private final sbox5(IIII)V
    .locals 3
    .param p1, "r0"    # I
    .param p2, "r1"    # I
    .param p3, "r2"    # I
    .param p4, "r3"    # I

    .prologue
    .line 1189
    xor-int/2addr p1, p2

    .line 1190
    xor-int/2addr p2, p4

    .line 1191
    move v0, p2

    .line 1192
    .local v0, "r4":I
    xor-int/lit8 p4, p4, -0x1

    .line 1193
    and-int/2addr p2, p1

    .line 1194
    xor-int/2addr p3, p4

    .line 1195
    xor-int/2addr p2, p3

    .line 1196
    or-int/2addr p3, v0

    .line 1197
    xor-int/2addr v0, p4

    .line 1198
    and-int v1, p4, p2

    xor-int p4, v1, p1

    .line 1199
    xor-int v1, v0, p2

    xor-int v0, v1, p3

    .line 1200
    iput p2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1201
    iput p4, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1202
    and-int v1, p1, p4

    xor-int/2addr v1, v0

    iput v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1203
    xor-int v1, p3, p1

    xor-int/lit8 v1, v1, -0x1

    or-int v2, v0, p4

    xor-int/2addr v1, v2

    iput v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1204
    return-void
.end method

.method private final sbox6()V
    .locals 2

    .prologue
    .line 657
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 658
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 659
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 660
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 661
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 662
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 663
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 664
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 665
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 666
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 667
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 668
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 669
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 670
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 671
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 672
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 673
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 674
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 675
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v0, v0, 0xd

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v1, v1, 0x13

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 676
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 677
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 678
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v0, v0, 0x3

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    ushr-int/lit8 v1, v1, 0x1d

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 679
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 680
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 681
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 682
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 683
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v0, v0, 0x7

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v1, v1, 0x19

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 684
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 685
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 686
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v0, v0, 0x7

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 687
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 688
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 689
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 690
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v0, v0, 0x5

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 691
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v0, v0, 0x16

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    ushr-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 692
    return-void
.end method

.method private final sbox6(IIII)V
    .locals 3
    .param p1, "r0"    # I
    .param p2, "r1"    # I
    .param p3, "r2"    # I
    .param p4, "r3"    # I

    .prologue
    .line 1208
    move v0, p4

    .line 1209
    .local v0, "r4":I
    xor-int/lit8 p3, p3, -0x1

    .line 1210
    and-int v1, p4, p1

    xor-int p4, v1, p3

    .line 1211
    xor-int/2addr p1, v0

    .line 1212
    or-int v1, p3, v0

    xor-int p3, v1, p1

    .line 1213
    xor-int/2addr p2, p4

    .line 1214
    or-int/2addr p1, p2

    .line 1215
    xor-int/2addr p3, p2

    .line 1216
    xor-int/2addr v0, p1

    .line 1217
    or-int v1, p1, p4

    xor-int p1, v1, p3

    .line 1218
    xor-int v1, v0, p4

    xor-int v0, v1, p1

    .line 1219
    iput p1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1220
    iput p2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1221
    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1222
    and-int v1, p3, v0

    xor-int/lit8 v2, p4, -0x1

    xor-int/2addr v1, v2

    iput v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1223
    return-void
.end method

.method private final sbox7()V
    .locals 2

    .prologue
    .line 695
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 696
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 697
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 698
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 699
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 700
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 701
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 702
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 703
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 704
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 705
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 706
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 707
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 708
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 709
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 710
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 711
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 712
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 713
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 714
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 715
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v0, v0, 0xd

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    ushr-int/lit8 v1, v1, 0x13

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 716
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 717
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 718
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v0, v0, 0x3

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v1, v1, 0x1d

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 719
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 720
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 721
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 722
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 723
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v0, v0, 0x7

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v1, v1, 0x19

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 724
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 725
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 726
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v0, v0, 0x7

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 727
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 728
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 729
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 730
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v0, v0, 0x5

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 731
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v0, v0, 0x16

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 732
    return-void
.end method

.method private final sbox7(IIII)V
    .locals 2
    .param p1, "r0"    # I
    .param p2, "r1"    # I
    .param p3, "r2"    # I
    .param p4, "r3"    # I

    .prologue
    .line 1227
    move v0, p2

    .line 1228
    .local v0, "r4":I
    or-int v1, p2, p3

    xor-int p2, v1, p4

    .line 1229
    xor-int/2addr v0, p3

    .line 1230
    xor-int/2addr p3, p2

    .line 1231
    or-int v1, p4, v0

    and-int p4, v1, p1

    .line 1232
    xor-int/2addr v0, p3

    .line 1233
    xor-int/2addr p4, p2

    .line 1234
    or-int v1, p2, v0

    xor-int p2, v1, p1

    .line 1235
    or-int v1, p1, v0

    xor-int p1, v1, p3

    .line 1236
    xor-int/2addr p2, v0

    .line 1237
    xor-int/2addr p3, p2

    .line 1238
    xor-int/lit8 v1, p3, -0x1

    or-int/2addr v1, p1

    xor-int/2addr v1, v0

    iput v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1239
    iput p4, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1240
    and-int v1, p2, p1

    xor-int/2addr v1, v0

    iput v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1241
    iput p1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1242
    return-void
.end method

.method private final sbox7noLT()V
    .locals 2

    .prologue
    .line 736
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 737
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 738
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 739
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 740
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 741
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 742
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 743
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 744
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 745
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 746
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 747
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 748
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 749
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 750
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 751
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 752
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 753
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 754
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 755
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 756
    return-void
.end method

.method private final sboxI0()V
    .locals 2

    .prologue
    .line 1013
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v0, v0, 0x16

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1014
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v0, v0, 0x5

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v1, v1, 0x1b

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1015
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1016
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1017
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v0, v0, 0x7

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1018
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1019
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1020
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1021
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v0, v0, 0x7

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v1, v1, 0x19

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 1022
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1023
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1024
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1025
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 1026
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v0, v0, 0xd

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v1, v1, 0x13

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1027
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1028
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 1029
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v1, v1, 0x1d

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1030
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1031
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1032
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1033
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1034
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1035
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1036
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1037
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1038
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1039
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1040
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1041
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1042
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1043
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 1044
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1045
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 1046
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 1047
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1048
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1049
    return-void
.end method

.method private final sboxI1()V
    .locals 2

    .prologue
    .line 974
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v0, v0, 0x16

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 975
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v0, v0, 0x5

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v1, v1, 0x1b

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 976
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 977
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 978
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v0, v0, 0x7

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 979
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 980
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 981
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 982
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v0, v0, 0x7

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v1, v1, 0x19

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 983
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    ushr-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 984
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 985
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 986
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 987
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v0, v0, 0xd

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v1, v1, 0x13

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 988
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 989
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 990
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v1, v1, 0x1d

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 991
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 992
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 993
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 994
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 995
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 996
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 997
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 998
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 999
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1000
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1001
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1002
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1003
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1004
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1005
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1006
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1007
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1008
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1009
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1010
    return-void
.end method

.method private final sboxI2()V
    .locals 2

    .prologue
    .line 935
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v0, v0, 0x16

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 936
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v0, v0, 0x5

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v1, v1, 0x1b

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 937
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 938
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 939
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v0, v0, 0x7

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 940
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 941
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 942
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 943
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v0, v0, 0x7

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v1, v1, 0x19

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 944
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 945
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 946
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 947
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 948
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v0, v0, 0xd

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v1, v1, 0x13

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 949
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 950
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 951
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v1, v1, 0x1d

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 952
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 953
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 954
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 955
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 956
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 957
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 958
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 959
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 960
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 961
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 962
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 963
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 964
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 965
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 966
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 967
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 968
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 969
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 970
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 971
    return-void
.end method

.method private final sboxI3()V
    .locals 2

    .prologue
    .line 897
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v0, v0, 0x16

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 898
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v0, v0, 0x5

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v1, v1, 0x1b

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 899
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 900
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 901
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v0, v0, 0x7

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 902
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 903
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 904
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 905
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v0, v0, 0x7

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v1, v1, 0x19

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 906
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 907
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 908
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 909
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 910
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v0, v0, 0xd

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v1, v1, 0x13

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 911
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 912
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 913
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v1, v1, 0x1d

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 914
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 915
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 916
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 917
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 918
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 919
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 920
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 921
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 922
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 923
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 924
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 925
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 926
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 927
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 928
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 929
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 930
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 931
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 932
    return-void
.end method

.method private final sboxI4()V
    .locals 2

    .prologue
    .line 857
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v0, v0, 0x16

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 858
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v0, v0, 0x5

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v1, v1, 0x1b

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 859
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 860
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 861
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v0, v0, 0x7

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 862
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 863
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 864
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 865
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v0, v0, 0x7

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v1, v1, 0x19

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 866
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    ushr-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 867
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 868
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 869
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 870
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v0, v0, 0xd

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v1, v1, 0x13

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 871
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 872
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 873
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v1, v1, 0x1d

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 874
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 875
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 876
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 877
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 878
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 879
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 880
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 881
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 882
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 883
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 884
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 885
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 886
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 887
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 888
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 889
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 890
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 891
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 892
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 893
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 894
    return-void
.end method

.method private final sboxI5()V
    .locals 2

    .prologue
    .line 818
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v0, v0, 0x16

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 819
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v0, v0, 0x5

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v1, v1, 0x1b

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 820
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 821
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 822
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v0, v0, 0x7

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 823
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 824
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 825
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 826
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v0, v0, 0x7

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v1, v1, 0x19

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 827
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 828
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 829
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 830
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 831
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v0, v0, 0xd

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v1, v1, 0x13

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 832
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 833
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 834
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v1, v1, 0x1d

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 835
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 836
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 837
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 838
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 839
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 840
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 841
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 842
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 843
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 844
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 845
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 846
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 847
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 848
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 849
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 850
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 851
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 852
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 853
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 854
    return-void
.end method

.method private final sboxI6()V
    .locals 2

    .prologue
    .line 781
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v0, v0, 0x16

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 782
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    ushr-int/lit8 v0, v0, 0x5

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v1, v1, 0x1b

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 783
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 784
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 785
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v0, v0, 0x7

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 786
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 787
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 788
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 789
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v0, v0, 0x7

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v1, v1, 0x19

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 790
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 791
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 792
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 793
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 794
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    ushr-int/lit8 v0, v0, 0xd

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v1, v1, 0x13

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 795
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 796
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 797
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v1, v1, 0x1d

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 798
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 799
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 800
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 801
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 802
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 803
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 804
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 805
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 806
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 807
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 808
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 809
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 810
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 811
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 812
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 813
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 814
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 815
    return-void
.end method

.method private final sboxI7()V
    .locals 2

    .prologue
    .line 1052
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v0, v0, 0x16

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1053
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v0, v0, 0x5

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v1, v1, 0x1b

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1054
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1055
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1056
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    shl-int/lit8 v0, v0, 0x7

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1057
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1058
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1059
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1060
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    ushr-int/lit8 v0, v0, 0x7

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    shl-int/lit8 v1, v1, 0x19

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 1061
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    ushr-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    shl-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1062
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1063
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1064
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 1065
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v0, v0, 0xd

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    shl-int/lit8 v1, v1, 0x13

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1066
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1067
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 1068
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    shl-int/lit8 v1, v1, 0x1d

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1069
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1070
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1071
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1072
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1073
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1074
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 1075
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1076
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1077
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1078
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 1079
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 1080
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1081
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 1082
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 1083
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1084
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 1085
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1086
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 1087
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 1088
    return-void
.end method

.method private final sboxI7noLT()V
    .locals 2

    .prologue
    .line 759
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 760
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 761
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 762
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 763
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 764
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 765
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 766
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 767
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 768
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 769
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 770
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 771
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 772
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 773
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 774
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 775
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 776
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 777
    iget v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v1, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 778
    return-void
.end method


# virtual methods
.method public blockSizes()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lgnu/crypto/cipher/Serpent;

    invoke-direct {v0}, Lgnu/crypto/cipher/Serpent;-><init>()V

    .line 129
    .local v0, "result":Lgnu/crypto/cipher/Serpent;
    iget v1, p0, Lgnu/crypto/cipher/Serpent;->currentBlockSize:I

    iput v1, v0, Lgnu/crypto/cipher/Serpent;->currentBlockSize:I

    .line 130
    return-object v0
.end method

.method public declared-synchronized decrypt([BI[BILjava/lang/Object;I)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "i"    # I
    .param p3, "out"    # [B
    .param p4, "o"    # I
    .param p5, "K"    # Ljava/lang/Object;
    .param p6, "bs"    # I

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    move-object v0, p5

    check-cast v0, Lgnu/crypto/cipher/Serpent$Key;

    move-object v1, v0

    .line 330
    .local v1, "key":Lgnu/crypto/cipher/Serpent$Key;
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 332
    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x7

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 334
    add-int/lit8 v2, p2, 0x8

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x9

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xa

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xb

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 336
    add-int/lit8 v2, p2, 0xc

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0xd

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xe

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xf

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 339
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k128:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k129:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k130:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k131:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI7noLT()V

    .line 340
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k124:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k125:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k126:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k127:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI6()V

    .line 341
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k120:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k121:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k122:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k123:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI5()V

    .line 342
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k116:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k117:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k118:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k119:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI4()V

    .line 343
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k112:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k113:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k114:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k115:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI3()V

    .line 344
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k108:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k109:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k110:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k111:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI2()V

    .line 345
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k104:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k105:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k106:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k107:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI1()V

    .line 346
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k100:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k101:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k102:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k103:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI0()V

    .line 347
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k96:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k97:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k98:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k99:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI7()V

    .line 348
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 350
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k92:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k93:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k94:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k95:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI6()V

    .line 351
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k88:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k89:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k90:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k91:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI5()V

    .line 352
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k84:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k85:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k86:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k87:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI4()V

    .line 353
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k80:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k81:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k82:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k83:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI3()V

    .line 354
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k76:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k77:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k78:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k79:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI2()V

    .line 355
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k72:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k73:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k74:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k75:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI1()V

    .line 356
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k68:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k69:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k70:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k71:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI0()V

    .line 357
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k64:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k65:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k66:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k67:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI7()V

    .line 358
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 360
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k60:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k61:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k62:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k63:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI6()V

    .line 361
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k56:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k57:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k58:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k59:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI5()V

    .line 362
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k52:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k53:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k54:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k55:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI4()V

    .line 363
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k48:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k49:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k50:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k51:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI3()V

    .line 364
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k44:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k45:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k46:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k47:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI2()V

    .line 365
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k40:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k41:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k42:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k43:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI1()V

    .line 366
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k36:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k37:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k38:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k39:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI0()V

    .line 367
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k32:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k33:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k34:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k35:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI7()V

    .line 368
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    .line 370
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k28:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k29:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k30:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k31:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI6()V

    .line 371
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k24:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k25:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k26:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k27:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI5()V

    .line 372
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k20:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k21:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k22:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k23:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI4()V

    .line 373
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k16:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k17:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k18:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k19:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI3()V

    .line 374
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k12:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k13:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k14:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k15:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI2()V

    .line 375
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k8:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k9:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k10:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k11:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI1()V

    .line 376
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k4:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k5:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k6:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k7:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sboxI0()V

    .line 377
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 379
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k0:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k1:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k2:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k3:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 381
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    int-to-byte v2, v2

    aput-byte v2, p3, p4

    .line 382
    add-int/lit8 v2, p4, 0x1

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 383
    add-int/lit8 v2, p4, 0x2

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 384
    add-int/lit8 v2, p4, 0x3

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 385
    add-int/lit8 v2, p4, 0x4

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 386
    add-int/lit8 v2, p4, 0x5

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 387
    add-int/lit8 v2, p4, 0x6

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 388
    add-int/lit8 v2, p4, 0x7

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 389
    add-int/lit8 v2, p4, 0x8

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 390
    add-int/lit8 v2, p4, 0x9

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 391
    add-int/lit8 v2, p4, 0xa

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 392
    add-int/lit8 v2, p4, 0xb

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 393
    add-int/lit8 v2, p4, 0xc

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 394
    add-int/lit8 v2, p4, 0xd

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 395
    add-int/lit8 v2, p4, 0xe

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    ushr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 396
    add-int/lit8 v2, p4, 0xf

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, p3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    monitor-exit p0

    return-void

    .line 328
    .end local v1    # "key":Lgnu/crypto/cipher/Serpent$Key;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized encrypt([BI[BILjava/lang/Object;I)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "i"    # I
    .param p3, "out"    # [B
    .param p4, "o"    # I
    .param p5, "K"    # Ljava/lang/Object;
    .param p6, "bs"    # I

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    move-object v0, p5

    check-cast v0, Lgnu/crypto/cipher/Serpent$Key;

    move-object v1, v0

    .line 258
    .local v1, "key":Lgnu/crypto/cipher/Serpent$Key;
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    .line 260
    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x7

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    .line 262
    add-int/lit8 v2, p2, 0x8

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x9

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xa

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xb

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 264
    add-int/lit8 v2, p2, 0xc

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0xd

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xe

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xf

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 267
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k0:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k1:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k2:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k3:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox0()V

    .line 268
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k4:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k5:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k6:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k7:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox1()V

    .line 269
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k8:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k9:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k10:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k11:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox2()V

    .line 270
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k12:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k13:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k14:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k15:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox3()V

    .line 271
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k16:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k17:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k18:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k19:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox4()V

    .line 272
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k20:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k21:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k22:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k23:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox5()V

    .line 273
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k24:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k25:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k26:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k27:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox6()V

    .line 274
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k28:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k29:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k30:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k31:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox7()V

    .line 275
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 277
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k32:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k33:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k34:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k35:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox0()V

    .line 278
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k36:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k37:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k38:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k39:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox1()V

    .line 279
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k40:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k41:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k42:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k43:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox2()V

    .line 280
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k44:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k45:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k46:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k47:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox3()V

    .line 281
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k48:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k49:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k50:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k51:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox4()V

    .line 282
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k52:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k53:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k54:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k55:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox5()V

    .line 283
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k56:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k57:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k58:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k59:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox6()V

    .line 284
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k60:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k61:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k62:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k63:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox7()V

    .line 285
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 287
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k64:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k65:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k66:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k67:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox0()V

    .line 288
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k68:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k69:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k70:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k71:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox1()V

    .line 289
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k72:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k73:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k74:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k75:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox2()V

    .line 290
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k76:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k77:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k78:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k79:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox3()V

    .line 291
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k80:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k81:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k82:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k83:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox4()V

    .line 292
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k84:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k85:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k86:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k87:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox5()V

    .line 293
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k88:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k89:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k90:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k91:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox6()V

    .line 294
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k92:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k93:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k94:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k95:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox7()V

    .line 295
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 297
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k96:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k97:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k98:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k99:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox0()V

    .line 298
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k100:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k101:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k102:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k103:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox1()V

    .line 299
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k104:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k105:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k106:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k107:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox2()V

    .line 300
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k108:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k109:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k110:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k111:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox3()V

    .line 301
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k112:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k113:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k114:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k115:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox4()V

    .line 302
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k116:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k117:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k118:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k119:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox5()V

    .line 303
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k120:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k121:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k122:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k123:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox6()V

    .line 304
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k124:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k125:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k126:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k127:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    invoke-direct {p0}, Lgnu/crypto/cipher/Serpent;->sbox7noLT()V

    .line 305
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x4:I

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    .line 306
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k128:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k129:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k130:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iget v3, v1, Lgnu/crypto/cipher/Serpent$Key;->k131:I

    xor-int/2addr v2, v3

    iput v2, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    .line 308
    iget v2, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    int-to-byte v2, v2

    aput-byte v2, p3, p4

    .line 309
    add-int/lit8 v2, p4, 0x1

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 310
    add-int/lit8 v2, p4, 0x2

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 311
    add-int/lit8 v2, p4, 0x3

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 312
    add-int/lit8 v2, p4, 0x4

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 313
    add-int/lit8 v2, p4, 0x5

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 314
    add-int/lit8 v2, p4, 0x6

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 315
    add-int/lit8 v2, p4, 0x7

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 316
    add-int/lit8 v2, p4, 0x8

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 317
    add-int/lit8 v2, p4, 0x9

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 318
    add-int/lit8 v2, p4, 0xa

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 319
    add-int/lit8 v2, p4, 0xb

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 320
    add-int/lit8 v2, p4, 0xc

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 321
    add-int/lit8 v2, p4, 0xd

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 322
    add-int/lit8 v2, p4, 0xe

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    ushr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 323
    add-int/lit8 v2, p4, 0xf

    iget v3, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, p3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    .line 256
    .end local v1    # "key":Lgnu/crypto/cipher/Serpent$Key;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public keySizes()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v0, "keySizes":Ljava/util/ArrayList;
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public makeKey([BI)Ljava/lang/Object;
    .locals 13
    .param p1, "kb"    # [B
    .param p2, "blockSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x18

    const/4 v9, 0x1

    const v8, -0x61c88647

    const/16 v11, 0x10

    const/16 v10, 0x8

    .line 151
    array-length v6, p1

    if-eq v6, v11, :cond_0

    array-length v6, p1

    if-eq v6, v12, :cond_0

    array-length v6, p1

    const/16 v7, 0x20

    if-eq v6, v7, :cond_0

    .line 152
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string/jumbo v7, "Key length is not 16, 24, or 32 bytes"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 154
    :cond_0
    new-instance v3, Lgnu/crypto/cipher/Serpent$Key;

    invoke-direct {v3, p0}, Lgnu/crypto/cipher/Serpent$Key;-><init>(Lgnu/crypto/cipher/Serpent;)V

    .line 157
    .local v3, "key":Lgnu/crypto/cipher/Serpent$Key;
    const/16 v6, 0x84

    new-array v5, v6, [I

    .line 159
    .local v5, "w":[I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-ge v0, v10, :cond_1

    array-length v6, p1

    if-lt v2, v6, :cond_3

    .line 164
    :cond_1
    if-eq v0, v10, :cond_2

    .line 165
    aput v9, v5, v0

    .line 168
    :cond_2
    const/16 v0, 0x8

    const/4 v1, 0x0

    .end local v2    # "j":I
    .restart local v1    # "j":I
    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    :goto_1
    if-lt v0, v11, :cond_4

    .line 173
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v10, :cond_5

    .line 177
    :goto_3
    array-length v6, v5

    if-lt v0, v6, :cond_6

    .line 184
    const/4 v6, 0x0

    aget v6, v5, v6

    aget v7, v5, v9

    const/4 v8, 0x2

    aget v8, v5, v8

    const/4 v9, 0x3

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox3(IIII)V

    .line 185
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k0:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k1:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k2:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k3:I

    .line 186
    const/4 v6, 0x4

    aget v6, v5, v6

    const/4 v7, 0x5

    aget v7, v5, v7

    const/4 v8, 0x6

    aget v8, v5, v8

    const/4 v9, 0x7

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox2(IIII)V

    .line 187
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k4:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k5:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k6:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k7:I

    .line 188
    aget v6, v5, v10

    const/16 v7, 0x9

    aget v7, v5, v7

    const/16 v8, 0xa

    aget v8, v5, v8

    const/16 v9, 0xb

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox1(IIII)V

    .line 189
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k8:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k9:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k10:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k11:I

    .line 190
    const/16 v6, 0xc

    aget v6, v5, v6

    const/16 v7, 0xd

    aget v7, v5, v7

    const/16 v8, 0xe

    aget v8, v5, v8

    const/16 v9, 0xf

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox0(IIII)V

    .line 191
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k12:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k13:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k14:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k15:I

    .line 192
    aget v6, v5, v11

    const/16 v7, 0x11

    aget v7, v5, v7

    const/16 v8, 0x12

    aget v8, v5, v8

    const/16 v9, 0x13

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox7(IIII)V

    .line 193
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k16:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k17:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k18:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k19:I

    .line 194
    const/16 v6, 0x14

    aget v6, v5, v6

    const/16 v7, 0x15

    aget v7, v5, v7

    const/16 v8, 0x16

    aget v8, v5, v8

    const/16 v9, 0x17

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox6(IIII)V

    .line 195
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k20:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k21:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k22:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k23:I

    .line 196
    aget v6, v5, v12

    const/16 v7, 0x19

    aget v7, v5, v7

    const/16 v8, 0x1a

    aget v8, v5, v8

    const/16 v9, 0x1b

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox5(IIII)V

    .line 197
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k24:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k25:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k26:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k27:I

    .line 198
    const/16 v6, 0x1c

    aget v6, v5, v6

    const/16 v7, 0x1d

    aget v7, v5, v7

    const/16 v8, 0x1e

    aget v8, v5, v8

    const/16 v9, 0x1f

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox4(IIII)V

    .line 199
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k28:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k29:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k30:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k31:I

    .line 200
    const/16 v6, 0x20

    aget v6, v5, v6

    const/16 v7, 0x21

    aget v7, v5, v7

    const/16 v8, 0x22

    aget v8, v5, v8

    const/16 v9, 0x23

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox3(IIII)V

    .line 201
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k32:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k33:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k34:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k35:I

    .line 202
    const/16 v6, 0x24

    aget v6, v5, v6

    const/16 v7, 0x25

    aget v7, v5, v7

    const/16 v8, 0x26

    aget v8, v5, v8

    const/16 v9, 0x27

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox2(IIII)V

    .line 203
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k36:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k37:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k38:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k39:I

    .line 204
    const/16 v6, 0x28

    aget v6, v5, v6

    const/16 v7, 0x29

    aget v7, v5, v7

    const/16 v8, 0x2a

    aget v8, v5, v8

    const/16 v9, 0x2b

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox1(IIII)V

    .line 205
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k40:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k41:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k42:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k43:I

    .line 206
    const/16 v6, 0x2c

    aget v6, v5, v6

    const/16 v7, 0x2d

    aget v7, v5, v7

    const/16 v8, 0x2e

    aget v8, v5, v8

    const/16 v9, 0x2f

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox0(IIII)V

    .line 207
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k44:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k45:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k46:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k47:I

    .line 208
    const/16 v6, 0x30

    aget v6, v5, v6

    const/16 v7, 0x31

    aget v7, v5, v7

    const/16 v8, 0x32

    aget v8, v5, v8

    const/16 v9, 0x33

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox7(IIII)V

    .line 209
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k48:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k49:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k50:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k51:I

    .line 210
    const/16 v6, 0x34

    aget v6, v5, v6

    const/16 v7, 0x35

    aget v7, v5, v7

    const/16 v8, 0x36

    aget v8, v5, v8

    const/16 v9, 0x37

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox6(IIII)V

    .line 211
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k52:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k53:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k54:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k55:I

    .line 212
    const/16 v6, 0x38

    aget v6, v5, v6

    const/16 v7, 0x39

    aget v7, v5, v7

    const/16 v8, 0x3a

    aget v8, v5, v8

    const/16 v9, 0x3b

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox5(IIII)V

    .line 213
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k56:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k57:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k58:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k59:I

    .line 214
    const/16 v6, 0x3c

    aget v6, v5, v6

    const/16 v7, 0x3d

    aget v7, v5, v7

    const/16 v8, 0x3e

    aget v8, v5, v8

    const/16 v9, 0x3f

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox4(IIII)V

    .line 215
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k60:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k61:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k62:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k63:I

    .line 216
    const/16 v6, 0x40

    aget v6, v5, v6

    const/16 v7, 0x41

    aget v7, v5, v7

    const/16 v8, 0x42

    aget v8, v5, v8

    const/16 v9, 0x43

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox3(IIII)V

    .line 217
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k64:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k65:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k66:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k67:I

    .line 218
    const/16 v6, 0x44

    aget v6, v5, v6

    const/16 v7, 0x45

    aget v7, v5, v7

    const/16 v8, 0x46

    aget v8, v5, v8

    const/16 v9, 0x47

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox2(IIII)V

    .line 219
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k68:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k69:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k70:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k71:I

    .line 220
    const/16 v6, 0x48

    aget v6, v5, v6

    const/16 v7, 0x49

    aget v7, v5, v7

    const/16 v8, 0x4a

    aget v8, v5, v8

    const/16 v9, 0x4b

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox1(IIII)V

    .line 221
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k72:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k73:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k74:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k75:I

    .line 222
    const/16 v6, 0x4c

    aget v6, v5, v6

    const/16 v7, 0x4d

    aget v7, v5, v7

    const/16 v8, 0x4e

    aget v8, v5, v8

    const/16 v9, 0x4f

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox0(IIII)V

    .line 223
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k76:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k77:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k78:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k79:I

    .line 224
    const/16 v6, 0x50

    aget v6, v5, v6

    const/16 v7, 0x51

    aget v7, v5, v7

    const/16 v8, 0x52

    aget v8, v5, v8

    const/16 v9, 0x53

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox7(IIII)V

    .line 225
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k80:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k81:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k82:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k83:I

    .line 226
    const/16 v6, 0x54

    aget v6, v5, v6

    const/16 v7, 0x55

    aget v7, v5, v7

    const/16 v8, 0x56

    aget v8, v5, v8

    const/16 v9, 0x57

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox6(IIII)V

    .line 227
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k84:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k85:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k86:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k87:I

    .line 228
    const/16 v6, 0x58

    aget v6, v5, v6

    const/16 v7, 0x59

    aget v7, v5, v7

    const/16 v8, 0x5a

    aget v8, v5, v8

    const/16 v9, 0x5b

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox5(IIII)V

    .line 229
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k88:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k89:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k90:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k91:I

    .line 230
    const/16 v6, 0x5c

    aget v6, v5, v6

    const/16 v7, 0x5d

    aget v7, v5, v7

    const/16 v8, 0x5e

    aget v8, v5, v8

    const/16 v9, 0x5f

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox4(IIII)V

    .line 231
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k92:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k93:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k94:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k95:I

    .line 232
    const/16 v6, 0x60

    aget v6, v5, v6

    const/16 v7, 0x61

    aget v7, v5, v7

    const/16 v8, 0x62

    aget v8, v5, v8

    const/16 v9, 0x63

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox3(IIII)V

    .line 233
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k96:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k97:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k98:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k99:I

    .line 234
    const/16 v6, 0x64

    aget v6, v5, v6

    const/16 v7, 0x65

    aget v7, v5, v7

    const/16 v8, 0x66

    aget v8, v5, v8

    const/16 v9, 0x67

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox2(IIII)V

    .line 235
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k100:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k101:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k102:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k103:I

    .line 236
    const/16 v6, 0x68

    aget v6, v5, v6

    const/16 v7, 0x69

    aget v7, v5, v7

    const/16 v8, 0x6a

    aget v8, v5, v8

    const/16 v9, 0x6b

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox1(IIII)V

    .line 237
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k104:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k105:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k106:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k107:I

    .line 238
    const/16 v6, 0x6c

    aget v6, v5, v6

    const/16 v7, 0x6d

    aget v7, v5, v7

    const/16 v8, 0x6e

    aget v8, v5, v8

    const/16 v9, 0x6f

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox0(IIII)V

    .line 239
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k108:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k109:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k110:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k111:I

    .line 240
    const/16 v6, 0x70

    aget v6, v5, v6

    const/16 v7, 0x71

    aget v7, v5, v7

    const/16 v8, 0x72

    aget v8, v5, v8

    const/16 v9, 0x73

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox7(IIII)V

    .line 241
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k112:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k113:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k114:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k115:I

    .line 242
    const/16 v6, 0x74

    aget v6, v5, v6

    const/16 v7, 0x75

    aget v7, v5, v7

    const/16 v8, 0x76

    aget v8, v5, v8

    const/16 v9, 0x77

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox6(IIII)V

    .line 243
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k116:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k117:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k118:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k119:I

    .line 244
    const/16 v6, 0x78

    aget v6, v5, v6

    const/16 v7, 0x79

    aget v7, v5, v7

    const/16 v8, 0x7a

    aget v8, v5, v8

    const/16 v9, 0x7b

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox5(IIII)V

    .line 245
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k120:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k121:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k122:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k123:I

    .line 246
    const/16 v6, 0x7c

    aget v6, v5, v6

    const/16 v7, 0x7d

    aget v7, v5, v7

    const/16 v8, 0x7e

    aget v8, v5, v8

    const/16 v9, 0x7f

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox4(IIII)V

    .line 247
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k124:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k125:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k126:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k127:I

    .line 248
    const/16 v6, 0x80

    aget v6, v5, v6

    const/16 v7, 0x81

    aget v7, v5, v7

    const/16 v8, 0x82

    aget v8, v5, v8

    const/16 v9, 0x83

    aget v9, v5, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lgnu/crypto/cipher/Serpent;->sbox3(IIII)V

    .line 249
    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x0:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k128:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x1:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k129:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x2:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k130:I

    iget v6, p0, Lgnu/crypto/cipher/Serpent;->x3:I

    iput v6, v3, Lgnu/crypto/cipher/Serpent$Key;->k131:I

    .line 251
    return-object v3

    .line 160
    :cond_3
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    aget-byte v6, p1, v2

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    aget-byte v7, p1, v1

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    aget-byte v7, p1, v2

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    aget-byte v7, p1, v1

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 169
    :cond_4
    aget v6, v5, v2

    add-int/lit8 v7, v0, -0x5

    aget v7, v5, v7

    xor-int/2addr v6, v7

    add-int/lit8 v7, v0, -0x3

    aget v7, v5, v7

    xor-int/2addr v6, v7

    add-int/lit8 v7, v0, -0x1

    aget v7, v5, v7

    xor-int/2addr v6, v7

    xor-int/2addr v6, v8

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    xor-int v4, v6, v2

    .line 170
    .local v4, "t":I
    shl-int/lit8 v6, v4, 0xb

    ushr-int/lit8 v7, v4, 0x15

    or-int/2addr v6, v7

    aput v6, v5, v0

    .line 168
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto/16 :goto_1

    .line 174
    .end local v4    # "t":I
    :cond_5
    add-int/lit8 v6, v0, 0x8

    aget v6, v5, v6

    aput v6, v5, v0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 178
    :cond_6
    add-int/lit8 v6, v0, -0x8

    aget v6, v5, v6

    add-int/lit8 v7, v0, -0x5

    aget v7, v5, v7

    xor-int/2addr v6, v7

    add-int/lit8 v7, v0, -0x3

    aget v7, v5, v7

    xor-int/2addr v6, v7

    add-int/lit8 v7, v0, -0x1

    aget v7, v5, v7

    xor-int/2addr v6, v7

    xor-int/2addr v6, v8

    xor-int v4, v6, v0

    .line 179
    .restart local v4    # "t":I
    shl-int/lit8 v6, v4, 0xb

    ushr-int/lit8 v7, v4, 0x15

    or-int/2addr v6, v7

    aput v6, v5, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method public selfTest()Z
    .locals 3

    .prologue
    .line 400
    sget-object v1, Lgnu/crypto/cipher/Serpent;->valid:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 401
    invoke-super {p0}, Lgnu/crypto/cipher/BaseCipher;->selfTest()Z

    move-result v0

    .line 402
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 403
    sget-object v1, Lgnu/crypto/cipher/Serpent;->KAT_KEY:[B

    sget-object v2, Lgnu/crypto/cipher/Serpent;->KAT_CT:[B

    invoke-virtual {p0, v1, v2}, Lgnu/crypto/cipher/Serpent;->testKat([B[B)Z

    move-result v0

    .line 405
    :cond_0
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v1, Lgnu/crypto/cipher/Serpent;->valid:Ljava/lang/Boolean;

    .line 407
    .end local v0    # "result":Z
    :cond_1
    sget-object v1, Lgnu/crypto/cipher/Serpent;->valid:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
