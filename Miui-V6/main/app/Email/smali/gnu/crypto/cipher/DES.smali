.class public Lgnu/crypto/cipher/DES;
.super Lgnu/crypto/cipher/BaseCipher;
.source "DES.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/crypto/cipher/DES$Context;
    }
.end annotation


# static fields
.field public static final BLOCK_SIZE:I = 0x8

.field public static final KEY_SIZE:I = 0x8

.field private static final PARITY:[B

.field private static final PC1:[B

.field private static final PC2:[B

.field public static final POSSIBLE_WEAK_KEYS:[[B

.field private static final ROTARS:[B

.field public static final SEMIWEAK_KEYS:[[B

.field private static final SP1:[I

.field private static final SP2:[I

.field private static final SP3:[I

.field private static final SP4:[I

.field private static final SP5:[I

.field private static final SP6:[I

.field private static final SP7:[I

.field private static final SP8:[I

.field public static final WEAK_KEYS:[[B


# direct methods
.method private static final constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 87
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010400

    aput v2, v0, v1

    const/high16 v1, 0x10000

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0x1010404

    aput v2, v0, v1

    const v1, 0x1010004

    aput v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x10404

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v6, v0, v1

    const/4 v1, 0x7

    const/high16 v2, 0x10000

    aput v2, v0, v1

    const/16 v1, 0x400

    aput v1, v0, v3

    const/16 v1, 0x9

    const v2, 0x1010400

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x1010404

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x1000404

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x1010004

    aput v2, v0, v1

    const/16 v1, 0xe

    const/high16 v2, 0x1000000

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v6, v0, v1

    const/16 v1, 0x404

    aput v1, v0, v7

    const/16 v1, 0x11

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x10400

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x10400

    aput v2, v0, v1

    const/16 v1, 0x15

    const/high16 v2, 0x1010000

    aput v2, v0, v1

    const/16 v1, 0x16

    const/high16 v2, 0x1010000

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x1000404

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x10004

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x1000004

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x1000004

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x10004

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x404

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x10404

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/high16 v2, 0x1000000

    aput v2, v0, v1

    const/16 v1, 0x20

    const/high16 v2, 0x10000

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x1010404

    aput v2, v0, v1

    const/16 v1, 0x22

    aput v6, v0, v1

    const/16 v1, 0x23

    const/high16 v2, 0x1010000

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x1010400

    aput v2, v0, v1

    const/16 v1, 0x25

    const/high16 v2, 0x1000000

    aput v2, v0, v1

    const/16 v1, 0x26

    const/high16 v2, 0x1000000

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x1010004

    aput v2, v0, v1

    const/16 v1, 0x29

    const/high16 v2, 0x10000

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x10400

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x1000004

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x2d

    aput v6, v0, v1

    const/16 v1, 0x2e

    const v2, 0x1000404

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x10404

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x1010404

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x10004

    aput v2, v0, v1

    const/16 v1, 0x32

    const/high16 v2, 0x1010000

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x1000404

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x1000004

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x404

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x10404

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x1010400

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x404

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x10004

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x10400

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x1010004

    aput v2, v0, v1

    sput-object v0, Lgnu/crypto/cipher/DES;->SP1:[I

    .line 106
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0x7fef7fe0

    aput v2, v0, v1

    const v1, -0x7fff8000

    aput v1, v0, v4

    const v1, 0x8000

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0x108020

    aput v2, v0, v1

    const/high16 v1, 0x100000

    aput v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x20

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x7fefffe0

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x7fff7fe0

    aput v2, v0, v1

    const v1, -0x7fffffe0

    aput v1, v0, v3

    const/16 v1, 0x9

    const v2, -0x7fef7fe0

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x7fef8000

    aput v2, v0, v1

    const/16 v1, 0xb

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x7fff8000

    aput v2, v0, v1

    const/16 v1, 0xd

    const/high16 v2, 0x100000

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, -0x7fefffe0

    aput v2, v0, v1

    const v1, 0x108000

    aput v1, v0, v7

    const/16 v1, 0x11

    const v2, 0x100020

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0x7fff7fe0

    aput v2, v0, v1

    const/16 v1, 0x14

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x8000

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x108020

    aput v2, v0, v1

    const/16 v1, 0x17

    const/high16 v2, -0x7ff00000

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x100020

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, -0x7fffffe0

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x108000

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x8020

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, -0x7fef8000

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/high16 v2, -0x7ff00000

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x8020

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x108020

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, -0x7fefffe0

    aput v2, v0, v1

    const/16 v1, 0x23

    const/high16 v2, 0x100000

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, -0x7fff7fe0

    aput v2, v0, v1

    const/16 v1, 0x25

    const/high16 v2, -0x7ff00000

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, -0x7fef8000

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x8000

    aput v2, v0, v1

    const/16 v1, 0x28

    const/high16 v2, -0x7ff00000

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0x7fff8000

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, -0x7fef7fe0

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x108020

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x8000

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x8020

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, -0x7fef8000

    aput v2, v0, v1

    const/16 v1, 0x32

    const/high16 v2, 0x100000

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, -0x7fffffe0

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x100020

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, -0x7fff7fe0

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, -0x7fffffe0

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x100020

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x108000

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, -0x7fff8000

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x8020

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, -0x7fefffe0

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, -0x7fef7fe0

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x108000

    aput v2, v0, v1

    sput-object v0, Lgnu/crypto/cipher/DES;->SP2:[I

    .line 125
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x208

    aput v2, v0, v1

    const v1, 0x8020200

    aput v1, v0, v4

    const/4 v1, 0x3

    const v2, 0x8020008

    aput v2, v0, v1

    const v1, 0x8000200

    aput v1, v0, v6

    const/4 v1, 0x6

    const v2, 0x20208

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x8000200

    aput v2, v0, v1

    const v1, 0x20008

    aput v1, v0, v3

    const/16 v1, 0x9

    const v2, 0x8000008

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x8000008

    aput v2, v0, v1

    const/16 v1, 0xb

    const/high16 v2, 0x20000

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x8020208

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x20008

    aput v2, v0, v1

    const/16 v1, 0xe

    const/high16 v2, 0x8020000

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x208

    aput v2, v0, v1

    const/high16 v1, 0x8000000

    aput v1, v0, v7

    const/16 v1, 0x11

    aput v3, v0, v1

    const/16 v1, 0x12

    const v2, 0x8020200

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x20200

    aput v2, v0, v1

    const/16 v1, 0x15

    const/high16 v2, 0x8020000

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x8020008

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x20208

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x8000208

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x20200

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/high16 v2, 0x20000

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x8000208

    aput v2, v0, v1

    const/16 v1, 0x1c

    aput v3, v0, v1

    const/16 v1, 0x1d

    const v2, 0x8020208

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/high16 v2, 0x8000000

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x8020200

    aput v2, v0, v1

    const/16 v1, 0x21

    const/high16 v2, 0x8000000

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x20008

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x208

    aput v2, v0, v1

    const/16 v1, 0x24

    const/high16 v2, 0x20000

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x8020200

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x8000200

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x20008

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x8020208

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x8000200

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x8000008

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x8020008

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x8000208

    aput v2, v0, v1

    const/16 v1, 0x31

    const/high16 v2, 0x20000

    aput v2, v0, v1

    const/16 v1, 0x32

    const/high16 v2, 0x8000000

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x8020208

    aput v2, v0, v1

    const/16 v1, 0x34

    aput v3, v0, v1

    const/16 v1, 0x35

    const v2, 0x20208

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x20200

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x8000008

    aput v2, v0, v1

    const/16 v1, 0x38

    const/high16 v2, 0x8020000

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x8000208

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x208

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/high16 v2, 0x8020000

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x20208

    aput v2, v0, v1

    const/16 v1, 0x3d

    aput v3, v0, v1

    const/16 v1, 0x3e

    const v2, 0x8020008

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x20200

    aput v2, v0, v1

    sput-object v0, Lgnu/crypto/cipher/DES;->SP3:[I

    .line 144
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x802001

    aput v2, v0, v1

    const/16 v1, 0x2081

    aput v1, v0, v4

    const/16 v1, 0x2081

    aput v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x80

    aput v2, v0, v1

    const v1, 0x802080

    aput v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x800081

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x800001

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x2001

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x802000

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x802000

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x802081

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x800080

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x800001

    aput v2, v0, v1

    aput v4, v0, v7

    const/16 v1, 0x11

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x12

    const/high16 v2, 0x800000

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x802001

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x15

    const/high16 v2, 0x800000

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x2001

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x2080

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x800081

    aput v2, v0, v1

    const/16 v1, 0x19

    aput v4, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x2080

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x800080

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x802080

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x802081

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x800080

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x800001

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x802000

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x802081

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x802000

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x2080

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x800080

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x800081

    aput v2, v0, v1

    const/16 v1, 0x2b

    aput v4, v0, v1

    const/16 v1, 0x2c

    const v2, 0x802001

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x2081

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2081

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x802081

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0x32

    aput v4, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x800001

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x2001

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x802080

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x800081

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x2001

    aput v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x2080

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/high16 v2, 0x800000

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x802001

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x3d

    const/high16 v2, 0x800000

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x802080

    aput v2, v0, v1

    sput-object v0, Lgnu/crypto/cipher/DES;->SP4:[I

    .line 163
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x100

    aput v2, v0, v1

    const v1, 0x2080100

    aput v1, v0, v4

    const/high16 v1, 0x2080000

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0x42000100

    aput v2, v0, v1

    const/high16 v1, 0x80000

    aput v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x100

    aput v2, v0, v1

    const/4 v1, 0x6

    const/high16 v2, 0x40000000

    aput v2, v0, v1

    const/4 v1, 0x7

    const/high16 v2, 0x2080000

    aput v2, v0, v1

    const v1, 0x40080100

    aput v1, v0, v3

    const/16 v1, 0x9

    const/high16 v2, 0x80000

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x2000100

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x40080100

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x42000100

    aput v2, v0, v1

    const/16 v1, 0xd

    const/high16 v2, 0x42080000

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x80100

    aput v2, v0, v1

    const/16 v1, 0xf

    const/high16 v2, 0x40000000

    aput v2, v0, v1

    const/high16 v1, 0x2000000

    aput v1, v0, v7

    const/16 v1, 0x11

    const/high16 v2, 0x40080000

    aput v2, v0, v1

    const/16 v1, 0x12

    const/high16 v2, 0x40080000

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x40000100

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x42080100

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x42080100

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x2000100

    aput v2, v0, v1

    const/16 v1, 0x18

    const/high16 v2, 0x42080000

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x40000100

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/high16 v2, 0x42000000

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x2080100

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/high16 v2, 0x2000000

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/high16 v2, 0x42000000

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x80100

    aput v2, v0, v1

    const/16 v1, 0x20

    const/high16 v2, 0x80000

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x42000100

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x23

    const/high16 v2, 0x2000000

    aput v2, v0, v1

    const/16 v1, 0x24

    const/high16 v2, 0x40000000

    aput v2, v0, v1

    const/16 v1, 0x25

    const/high16 v2, 0x2080000

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x42000100

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x40080100

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x2000100

    aput v2, v0, v1

    const/16 v1, 0x29

    const/high16 v2, 0x40000000

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/high16 v2, 0x42080000

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x2080100

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x40080100

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/high16 v2, 0x2000000

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/high16 v2, 0x42080000

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x42080100

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x80100

    aput v2, v0, v1

    const/16 v1, 0x32

    const/high16 v2, 0x42000000

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x42080100

    aput v2, v0, v1

    const/16 v1, 0x34

    const/high16 v2, 0x2080000

    aput v2, v0, v1

    const/16 v1, 0x36

    const/high16 v2, 0x40080000

    aput v2, v0, v1

    const/16 v1, 0x37

    const/high16 v2, 0x42000000

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x80100

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x2000100

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x40000100

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/high16 v2, 0x80000

    aput v2, v0, v1

    const/16 v1, 0x3d

    const/high16 v2, 0x40080000

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x2080100

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x40000100

    aput v2, v0, v1

    sput-object v0, Lgnu/crypto/cipher/DES;->SP5:[I

    .line 182
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x20000010

    aput v2, v0, v1

    const/high16 v1, 0x20400000

    aput v1, v0, v4

    const/16 v1, 0x4000

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0x20404010

    aput v2, v0, v1

    const/high16 v1, 0x20400000

    aput v1, v0, v6

    const/4 v1, 0x5

    aput v7, v0, v1

    const/4 v1, 0x6

    const v2, 0x20404010

    aput v2, v0, v1

    const/4 v1, 0x7

    const/high16 v2, 0x400000

    aput v2, v0, v1

    const v1, 0x20004000

    aput v1, v0, v3

    const/16 v1, 0x9

    const v2, 0x404010

    aput v2, v0, v1

    const/16 v1, 0xa

    const/high16 v2, 0x400000

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x20000010

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x400010

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x20004000

    aput v2, v0, v1

    const/16 v1, 0xe

    const/high16 v2, 0x20000000

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x4010

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x400010

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x20004010

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x404000

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x20004010

    aput v2, v0, v1

    const/16 v1, 0x16

    aput v7, v0, v1

    const/16 v1, 0x17

    const v2, 0x20400010

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x20400010

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x404010

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x20404000

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x4010

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x404000

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x20404000

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/high16 v2, 0x20000000

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x20004000

    aput v2, v0, v1

    const/16 v1, 0x21

    aput v7, v0, v1

    const/16 v1, 0x22

    const v2, 0x20400010

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x404000

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x20404010

    aput v2, v0, v1

    const/16 v1, 0x25

    const/high16 v2, 0x400000

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x4010

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x20000010

    aput v2, v0, v1

    const/16 v1, 0x28

    const/high16 v2, 0x400000

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x20004000

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/high16 v2, 0x20000000

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x4010

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x20000010

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0x20404010

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x404000

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/high16 v2, 0x20400000

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x404010

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x20404000

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x20400010

    aput v2, v0, v1

    const/16 v1, 0x34

    aput v7, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x36

    const/high16 v2, 0x20400000

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x404010

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x400010

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x20004010

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x20404000

    aput v2, v0, v1

    const/16 v1, 0x3d

    const/high16 v2, 0x20000000

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x400010

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x20004010

    aput v2, v0, v1

    sput-object v0, Lgnu/crypto/cipher/DES;->SP6:[I

    .line 201
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x200000

    aput v2, v0, v1

    const v1, 0x4200002

    aput v1, v0, v4

    const v1, 0x4000802

    aput v1, v0, v5

    const/16 v1, 0x800

    aput v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x4000802

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x200802

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x4200800

    aput v2, v0, v1

    const v1, 0x4200802

    aput v1, v0, v3

    const/16 v1, 0x9

    const/high16 v2, 0x200000

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x4000002

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v5, v0, v1

    const/16 v1, 0xd

    const/high16 v2, 0x4000000

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x4200002

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x802

    aput v2, v0, v1

    const v1, 0x4000800

    aput v1, v0, v7

    const/16 v1, 0x11

    const v2, 0x200802

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x200002

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x4000800

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x4000002

    aput v2, v0, v1

    const/16 v1, 0x15

    const/high16 v2, 0x4200000

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x4200800

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x200002

    aput v2, v0, v1

    const/16 v1, 0x18

    const/high16 v2, 0x4200000

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x4200802

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x200800

    aput v2, v0, v1

    const/16 v1, 0x1d

    aput v5, v0, v1

    const/16 v1, 0x1e

    const/high16 v2, 0x4000000

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x200800

    aput v2, v0, v1

    const/16 v1, 0x20

    const/high16 v2, 0x4000000

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x200800

    aput v2, v0, v1

    const/16 v1, 0x22

    const/high16 v2, 0x200000

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x4000802

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x4000802

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x4200002

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x4200002

    aput v2, v0, v1

    const/16 v1, 0x27

    aput v5, v0, v1

    const/16 v1, 0x28

    const v2, 0x200002

    aput v2, v0, v1

    const/16 v1, 0x29

    const/high16 v2, 0x4000000

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x4000800

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/high16 v2, 0x200000

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x4200800

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x200802

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x4200800

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x4000002

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x4200802

    aput v2, v0, v1

    const/16 v1, 0x33

    const/high16 v2, 0x4200000

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x200800

    aput v2, v0, v1

    const/16 v1, 0x36

    aput v5, v0, v1

    const/16 v1, 0x37

    const v2, 0x4200802

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x200802

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/high16 v2, 0x4200000

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x4000002

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x4000800

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x200002

    aput v2, v0, v1

    sput-object v0, Lgnu/crypto/cipher/DES;->SP7:[I

    .line 220
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10001040

    aput v2, v0, v1

    const/16 v1, 0x1000

    aput v1, v0, v4

    const/high16 v1, 0x40000

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0x10041040

    aput v2, v0, v1

    const/high16 v1, 0x10000000

    aput v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x10001040

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x40

    aput v2, v0, v1

    const/4 v1, 0x7

    const/high16 v2, 0x10000000

    aput v2, v0, v1

    const v1, 0x40040

    aput v1, v0, v3

    const/16 v1, 0x9

    const/high16 v2, 0x10040000

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x10041040

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x41000

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x10041000

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x41040

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x40

    aput v2, v0, v1

    const/high16 v1, 0x10040000

    aput v1, v0, v7

    const/16 v1, 0x11

    const v2, 0x10000040

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x10001000

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x1040

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x41000

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x40040

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x10040040

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x10041000

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x1040

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x10040040

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x10000040

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x10001000

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x41040

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/high16 v2, 0x40000

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x41040

    aput v2, v0, v1

    const/16 v1, 0x21

    const/high16 v2, 0x40000

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x10041000

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x10040040

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x41040

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x10001000

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x10000040

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/high16 v2, 0x10040000

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x10040040

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/high16 v2, 0x10000000

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/high16 v2, 0x40000

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x10001040

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x10041040

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x40040

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x10000040

    aput v2, v0, v1

    const/16 v1, 0x34

    const/high16 v2, 0x10040000

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x10001000

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x10001040

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x10041040

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x41000

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x41000

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x1040

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x1040

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x40040

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/high16 v2, 0x10000000

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x10041000

    aput v2, v0, v1

    sput-object v0, Lgnu/crypto/cipher/DES;->SP8:[I

    .line 243
    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    aput-byte v4, v0, v4

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v3, v0, v1

    const/16 v1, 0xa

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xe

    aput-byte v5, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x30

    aput-byte v3, v0, v1

    const/16 v1, 0x33

    aput-byte v3, v0, v1

    const/16 v1, 0x35

    aput-byte v3, v0, v1

    const/16 v1, 0x36

    aput-byte v3, v0, v1

    const/16 v1, 0x39

    aput-byte v3, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x41

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    aput-byte v3, v0, v1

    const/16 v1, 0x44

    aput-byte v3, v0, v1

    const/16 v1, 0x47

    aput-byte v3, v0, v1

    const/16 v1, 0x48

    aput-byte v3, v0, v1

    const/16 v1, 0x4b

    aput-byte v3, v0, v1

    const/16 v1, 0x4d

    aput-byte v3, v0, v1

    const/16 v1, 0x4e

    aput-byte v3, v0, v1

    const/16 v1, 0x50

    aput-byte v3, v0, v1

    const/16 v1, 0x53

    aput-byte v3, v0, v1

    const/16 v1, 0x55

    aput-byte v3, v0, v1

    const/16 v1, 0x56

    aput-byte v3, v0, v1

    const/16 v1, 0x59

    aput-byte v3, v0, v1

    const/16 v1, 0x5a

    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    aput-byte v3, v0, v1

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x63

    aput-byte v3, v0, v1

    const/16 v1, 0x65

    aput-byte v3, v0, v1

    const/16 v1, 0x66

    aput-byte v3, v0, v1

    const/16 v1, 0x69

    aput-byte v3, v0, v1

    const/16 v1, 0x6a

    aput-byte v3, v0, v1

    const/16 v1, 0x6c

    aput-byte v3, v0, v1

    const/16 v1, 0x6f

    aput-byte v3, v0, v1

    const/16 v1, 0x71

    aput-byte v3, v0, v1

    const/16 v1, 0x72

    aput-byte v3, v0, v1

    const/16 v1, 0x74

    aput-byte v3, v0, v1

    const/16 v1, 0x77

    aput-byte v3, v0, v1

    const/16 v1, 0x78

    aput-byte v3, v0, v1

    const/16 v1, 0x7b

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    const/16 v1, 0x81

    aput-byte v3, v0, v1

    const/16 v1, 0x82

    aput-byte v3, v0, v1

    const/16 v1, 0x84

    aput-byte v3, v0, v1

    const/16 v1, 0x87

    aput-byte v3, v0, v1

    const/16 v1, 0x88

    aput-byte v3, v0, v1

    const/16 v1, 0x8b

    aput-byte v3, v0, v1

    const/16 v1, 0x8d

    aput-byte v3, v0, v1

    const/16 v1, 0x8e

    aput-byte v3, v0, v1

    const/16 v1, 0x90

    aput-byte v3, v0, v1

    const/16 v1, 0x93

    aput-byte v3, v0, v1

    const/16 v1, 0x95

    aput-byte v3, v0, v1

    const/16 v1, 0x96

    aput-byte v3, v0, v1

    const/16 v1, 0x99

    aput-byte v3, v0, v1

    const/16 v1, 0x9a

    aput-byte v3, v0, v1

    const/16 v1, 0x9c

    aput-byte v3, v0, v1

    const/16 v1, 0x9f

    aput-byte v3, v0, v1

    const/16 v1, 0xa0

    aput-byte v3, v0, v1

    const/16 v1, 0xa3

    aput-byte v3, v0, v1

    const/16 v1, 0xa5

    aput-byte v3, v0, v1

    const/16 v1, 0xa6

    aput-byte v3, v0, v1

    const/16 v1, 0xa9

    aput-byte v3, v0, v1

    const/16 v1, 0xaa

    aput-byte v3, v0, v1

    const/16 v1, 0xac

    aput-byte v3, v0, v1

    const/16 v1, 0xaf

    aput-byte v3, v0, v1

    const/16 v1, 0xb1

    aput-byte v3, v0, v1

    const/16 v1, 0xb2

    aput-byte v3, v0, v1

    const/16 v1, 0xb4

    aput-byte v3, v0, v1

    const/16 v1, 0xb7

    aput-byte v3, v0, v1

    const/16 v1, 0xb8

    aput-byte v3, v0, v1

    const/16 v1, 0xbb

    aput-byte v3, v0, v1

    const/16 v1, 0xbd

    aput-byte v3, v0, v1

    const/16 v1, 0xbe

    aput-byte v3, v0, v1

    const/16 v1, 0xc0

    aput-byte v3, v0, v1

    const/16 v1, 0xc3

    aput-byte v3, v0, v1

    const/16 v1, 0xc5

    aput-byte v3, v0, v1

    const/16 v1, 0xc6

    aput-byte v3, v0, v1

    const/16 v1, 0xc9

    aput-byte v3, v0, v1

    const/16 v1, 0xca

    aput-byte v3, v0, v1

    const/16 v1, 0xcc

    aput-byte v3, v0, v1

    const/16 v1, 0xcf

    aput-byte v3, v0, v1

    const/16 v1, 0xd1

    aput-byte v3, v0, v1

    const/16 v1, 0xd2

    aput-byte v3, v0, v1

    const/16 v1, 0xd4

    aput-byte v3, v0, v1

    const/16 v1, 0xd7

    aput-byte v3, v0, v1

    const/16 v1, 0xd8

    aput-byte v3, v0, v1

    const/16 v1, 0xdb

    aput-byte v3, v0, v1

    const/16 v1, 0xdd

    aput-byte v3, v0, v1

    const/16 v1, 0xde

    aput-byte v3, v0, v1

    const/16 v1, 0xe0

    aput-byte v6, v0, v1

    const/16 v1, 0xe1

    aput-byte v3, v0, v1

    const/16 v1, 0xe2

    aput-byte v3, v0, v1

    const/16 v1, 0xe4

    aput-byte v3, v0, v1

    const/16 v1, 0xe7

    aput-byte v3, v0, v1

    const/16 v1, 0xe8

    aput-byte v3, v0, v1

    const/16 v1, 0xeb

    aput-byte v3, v0, v1

    const/16 v1, 0xed

    aput-byte v3, v0, v1

    const/16 v1, 0xee

    aput-byte v3, v0, v1

    const/16 v1, 0xf0

    aput-byte v3, v0, v1

    const/16 v1, 0xf1

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xf3

    aput-byte v3, v0, v1

    const/16 v1, 0xf5

    aput-byte v3, v0, v1

    const/16 v1, 0xf6

    aput-byte v3, v0, v1

    const/16 v1, 0xf9

    aput-byte v3, v0, v1

    const/16 v1, 0xfa

    aput-byte v3, v0, v1

    const/16 v1, 0xfc

    aput-byte v3, v0, v1

    const/16 v1, 0xfe

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xff

    aput-byte v3, v0, v1

    sput-object v0, Lgnu/crypto/cipher/DES;->PARITY:[B

    .line 256
    new-array v0, v7, [B

    fill-array-data v0, :array_0

    sput-object v0, Lgnu/crypto/cipher/DES;->ROTARS:[B

    .line 260
    const/16 v0, 0x38

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    aput-byte v1, v0, v4

    const/16 v1, 0x28

    aput-byte v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v1, v0, v6

    const/4 v1, 0x5

    aput-byte v7, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/16 v1, 0x39

    aput-byte v1, v0, v3

    const/16 v1, 0x9

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v4, v0, v1

    const/16 v1, 0x3a

    aput-byte v1, v0, v7

    const/16 v1, 0x11

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    aput-byte v5, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    aput-byte v6, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    sput-object v0, Lgnu/crypto/cipher/DES;->PC1:[B

    .line 267
    const/16 v0, 0x30

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    aput-byte v7, v0, v4

    const/16 v1, 0xa

    aput-byte v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aput-byte v6, v0, v1

    const/4 v1, 0x6

    aput-byte v5, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    aput-byte v1, v0, v3

    const/16 v1, 0x9

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    aput-byte v1, v0, v7

    const/16 v1, 0x11

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    aput-byte v4, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    sput-object v0, Lgnu/crypto/cipher/DES;->PC2:[B

    .line 279
    new-array v0, v6, [[B

    const/4 v1, 0x0

    const-string/jumbo v2, "0101010101010101"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "01010101FEFEFEFE"

    invoke-static {v1}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "FEFEFEFE01010101"

    invoke-static {v1}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "FEFEFEFEFEFEFEFE"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lgnu/crypto/cipher/DES;->WEAK_KEYS:[[B

    .line 293
    const/16 v0, 0xc

    new-array v0, v0, [[B

    const/4 v1, 0x0

    const-string/jumbo v2, "01FE01FE01FE01FE"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "FE01FE01FE01FE01"

    invoke-static {v1}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "1FE01FE00EF10EF1"

    invoke-static {v1}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "E01FE01FF10EF10E"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "01E001E001F101F1"

    invoke-static {v1}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "E001E001F101F101"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "1FFE1FFE0EFE0EFE"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "FE1FFE1FFE0EFE0E"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "011F011F010E010E"

    invoke-static {v1}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const-string/jumbo v2, "1F011F010E010E01"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "E0FEE0FEF1FEF1FE"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "FEE0FEE0FEF1FEF1"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lgnu/crypto/cipher/DES;->SEMIWEAK_KEYS:[[B

    .line 303
    const/16 v0, 0x30

    new-array v0, v0, [[B

    const/4 v1, 0x0

    const-string/jumbo v2, "1F1F01010E0E0101"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "011F1F01010E0E01"

    invoke-static {v1}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "1F01011F0E01010E"

    invoke-static {v1}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "01011F1F01010E0E"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "E0E00101F1F10101"

    invoke-static {v1}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "FEFE0101FEFE0101"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "FEE01F01FEF10E01"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "E0FE1F01F1FE0E01"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "FEE0011FFEF1010E"

    invoke-static {v1}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const-string/jumbo v2, "E0FE011FF1FE010E"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "E0E01F1FF1F10E0E"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "FEFE1F1FFEFE0E0E"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "1F1F01010E0E0101"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "011F1F01010E0E01"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "1F01011F0E01010E"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "01011F1F01010E0E"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "01E0E00101F1F101"

    invoke-static {v1}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v7

    const/16 v1, 0x11

    const-string/jumbo v2, "1FFEE0010EFEF001"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "1FE0FE010EF1FE01"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "01FEFE0101FEFE01"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "1FE0E01F0EF1F10E"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "01FEE01F01FEF10E"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "01E0FE1F01F1FE0E"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "1FFEFE1F0EFEFE0E"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "E00101E0F10101F1"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "FE1F01E0FE0E0EF1"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "FE011FE0FE010EF1"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "E01F1FE0F10E0EF1"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "FE0101FEFE0101FE"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "E01F01FEF10E01FE"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "E0011FFEF1010EFE"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "FE1F1FFEFE0E0EFE"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "1FFE01E00EFE01F1"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "01FE1FE001FE0EF1"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "1FE001FE0EF101FE"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "01E01FFE01F10EFE"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "0101E0E00101F1F1"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "1F1FE0E00E0EF1F1"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "1F01FEE00E01FEF1"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "011FFEE0010EFEF1"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "1F01E0FE0E01F1FE"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "011FE0FE010EF1FE"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "0101FEFE0001FEFE"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "1F1FFEFE0E0EFEFE"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "FEFEE0E0FEFEF1F1"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "E0FEFEE0F1FEFEF1"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "FEE0E0FEFEF1F1FE"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "E0E0FEFEF1F1FEFE"

    invoke-static {v2}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lgnu/crypto/cipher/DES;->POSSIBLE_WEAK_KEYS:[[B

    return-void

    .line 256
    :array_0
    .array-data 1
        0x1t
        0x2t
        0x4t
        0x6t
        0x8t
        0xat
        0xct
        0xet
        0xft
        0x11t
        0x13t
        0x15t
        0x17t
        0x19t
        0x1bt
        0x1ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 360
    const-string/jumbo v0, "des"

    invoke-direct {p0, v0, v1, v1}, Lgnu/crypto/cipher/BaseCipher;-><init>(Ljava/lang/String;II)V

    .line 361
    return-void
.end method

.method public static adjustParity([BI)V
    .locals 6
    .param p0, "kb"    # [B
    .param p1, "offset"    # I

    .prologue
    const/16 v5, 0x8

    .line 375
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 378
    return-void

    .line 376
    :cond_0
    aget-byte v2, p0, v0

    const/4 v1, 0x0

    sget-object v3, Lgnu/crypto/cipher/DES;->PARITY:[B

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    if-ne v3, v5, :cond_1

    const/4 v1, 0x1

    :cond_1
    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static final desFunc([BI[BI[I)V
    .locals 11
    .param p0, "in"    # [B
    .param p1, "i"    # I
    .param p2, "out"    # [B
    .param p3, "o"    # I
    .param p4, "key"    # [I

    .prologue
    .line 475
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "i":I
    .local v0, "i":I
    aget-byte v9, p0, p1

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "i":I
    .restart local p1    # "i":I
    aget-byte v10, p0, v0

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "i":I
    .restart local v0    # "i":I
    aget-byte v10, p0, p1

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "i":I
    .restart local p1    # "i":I
    aget-byte v10, p0, v0

    and-int/lit16 v10, v10, 0xff

    or-int v3, v9, v10

    .line 480
    .local v3, "left":I
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "i":I
    .restart local v0    # "i":I
    aget-byte v9, p0, p1

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "i":I
    .restart local p1    # "i":I
    aget-byte v10, p0, v0

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "i":I
    .restart local v0    # "i":I
    aget-byte v10, p0, p1

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    aget-byte v10, p0, v0

    and-int/lit16 v10, v10, 0xff

    or-int v5, v9, v10

    .line 484
    .local v5, "right":I
    ushr-int/lit8 v9, v3, 0x4

    xor-int/2addr v9, v5

    const v10, 0xf0f0f0f

    and-int v8, v9, v10

    .line 485
    .local v8, "work":I
    shl-int/lit8 v9, v8, 0x4

    xor-int/2addr v3, v9

    .line 486
    xor-int/2addr v5, v8

    .line 488
    ushr-int/lit8 v9, v3, 0x10

    xor-int/2addr v9, v5

    const/4 v10, -0x1

    int-to-char v10, v10

    and-int v8, v9, v10

    .line 489
    shl-int/lit8 v9, v8, 0x10

    xor-int/2addr v3, v9

    .line 490
    xor-int/2addr v5, v8

    .line 492
    ushr-int/lit8 v9, v5, 0x2

    xor-int/2addr v9, v3

    const v10, 0x33333333

    and-int v8, v9, v10

    .line 493
    shl-int/lit8 v9, v8, 0x2

    xor-int/2addr v5, v9

    .line 494
    xor-int/2addr v3, v8

    .line 496
    ushr-int/lit8 v9, v5, 0x8

    xor-int/2addr v9, v3

    const v10, 0xff00ff

    and-int v8, v9, v10

    .line 497
    shl-int/lit8 v9, v8, 0x8

    xor-int/2addr v5, v9

    .line 498
    xor-int/2addr v3, v8

    .line 500
    shl-int/lit8 v9, v5, 0x1

    ushr-int/lit8 v10, v5, 0x1f

    and-int/lit8 v10, v10, 0x1

    or-int/2addr v9, v10

    and-int/lit8 v5, v9, -0x1

    .line 501
    xor-int v9, v3, v5

    const v10, -0x55555556

    and-int v8, v9, v10

    .line 502
    xor-int/2addr v3, v8

    .line 503
    xor-int/2addr v5, v8

    .line 504
    shl-int/lit8 v9, v3, 0x1

    ushr-int/lit8 v10, v3, 0x1f

    and-int/lit8 v10, v10, 0x1

    or-int/2addr v9, v10

    and-int/lit8 v3, v9, -0x1

    .line 506
    const/4 v1, 0x0

    .line 507
    .local v1, "k":I
    const/4 v6, 0x0

    .local v6, "round":I
    move v2, v1

    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    const/16 v9, 0x8

    if-lt v6, v9, :cond_0

    .line 536
    shl-int/lit8 v9, v5, 0x1f

    ushr-int/lit8 v10, v5, 0x1

    or-int v5, v9, v10

    .line 537
    xor-int v9, v3, v5

    const v10, -0x55555556

    and-int v8, v9, v10

    .line 538
    xor-int/2addr v3, v8

    .line 539
    xor-int/2addr v5, v8

    .line 540
    shl-int/lit8 v9, v3, 0x1f

    ushr-int/lit8 v10, v3, 0x1

    or-int v3, v9, v10

    .line 542
    ushr-int/lit8 v9, v3, 0x8

    xor-int/2addr v9, v5

    const v10, 0xff00ff

    and-int v8, v9, v10

    .line 543
    shl-int/lit8 v9, v8, 0x8

    xor-int/2addr v3, v9

    .line 544
    xor-int/2addr v5, v8

    .line 546
    ushr-int/lit8 v9, v3, 0x2

    xor-int/2addr v9, v5

    const v10, 0x33333333

    and-int v8, v9, v10

    .line 547
    shl-int/lit8 v9, v8, 0x2

    xor-int/2addr v3, v9

    .line 548
    xor-int/2addr v5, v8

    .line 550
    ushr-int/lit8 v9, v5, 0x10

    xor-int/2addr v9, v3

    const/4 v10, -0x1

    int-to-char v10, v10

    and-int v8, v9, v10

    .line 551
    shl-int/lit8 v9, v8, 0x10

    xor-int/2addr v5, v9

    .line 552
    xor-int/2addr v3, v8

    .line 554
    ushr-int/lit8 v9, v5, 0x4

    xor-int/2addr v9, v3

    const v10, 0xf0f0f0f

    and-int v8, v9, v10

    .line 555
    shl-int/lit8 v9, v8, 0x4

    xor-int/2addr v5, v9

    .line 556
    xor-int/2addr v3, v8

    .line 558
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "o":I
    .local v4, "o":I
    ushr-int/lit8 v9, v5, 0x18

    int-to-byte v9, v9

    aput-byte v9, p2, p3

    .line 559
    add-int/lit8 p3, v4, 0x1

    .end local v4    # "o":I
    .restart local p3    # "o":I
    ushr-int/lit8 v9, v5, 0x10

    int-to-byte v9, v9

    aput-byte v9, p2, v4

    .line 560
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "o":I
    .restart local v4    # "o":I
    ushr-int/lit8 v9, v5, 0x8

    int-to-byte v9, v9

    aput-byte v9, p2, p3

    .line 561
    add-int/lit8 p3, v4, 0x1

    .end local v4    # "o":I
    .restart local p3    # "o":I
    int-to-byte v9, v5

    aput-byte v9, p2, v4

    .line 562
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "o":I
    .restart local v4    # "o":I
    ushr-int/lit8 v9, v3, 0x18

    int-to-byte v9, v9

    aput-byte v9, p2, p3

    .line 563
    add-int/lit8 p3, v4, 0x1

    .end local v4    # "o":I
    .restart local p3    # "o":I
    ushr-int/lit8 v9, v3, 0x10

    int-to-byte v9, v9

    aput-byte v9, p2, v4

    .line 564
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "o":I
    .restart local v4    # "o":I
    ushr-int/lit8 v9, v3, 0x8

    int-to-byte v9, v9

    aput-byte v9, p2, p3

    .line 565
    int-to-byte v9, v3

    aput-byte v9, p2, v4

    .line 566
    return-void

    .line 508
    .end local v4    # "o":I
    .restart local p3    # "o":I
    :cond_0
    ushr-int/lit8 v9, v5, 0x4

    shl-int/lit8 v10, v5, 0x1c

    or-int v8, v9, v10

    .line 509
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    aget v9, p4, v2

    xor-int/2addr v8, v9

    .line 510
    sget-object v9, Lgnu/crypto/cipher/DES;->SP7:[I

    and-int/lit8 v10, v8, 0x3f

    aget v7, v9, v10

    .local v7, "t":I
    ushr-int/lit8 v8, v8, 0x8

    .line 511
    sget-object v9, Lgnu/crypto/cipher/DES;->SP5:[I

    and-int/lit8 v10, v8, 0x3f

    aget v9, v9, v10

    or-int/2addr v7, v9

    ushr-int/lit8 v8, v8, 0x8

    .line 512
    sget-object v9, Lgnu/crypto/cipher/DES;->SP3:[I

    and-int/lit8 v10, v8, 0x3f

    aget v9, v9, v10

    or-int/2addr v7, v9

    ushr-int/lit8 v8, v8, 0x8

    .line 513
    sget-object v9, Lgnu/crypto/cipher/DES;->SP1:[I

    and-int/lit8 v10, v8, 0x3f

    aget v9, v9, v10

    or-int/2addr v7, v9

    .line 514
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    aget v9, p4, v1

    xor-int v8, v5, v9

    .line 515
    sget-object v9, Lgnu/crypto/cipher/DES;->SP8:[I

    and-int/lit8 v10, v8, 0x3f

    aget v9, v9, v10

    or-int/2addr v7, v9

    ushr-int/lit8 v8, v8, 0x8

    .line 516
    sget-object v9, Lgnu/crypto/cipher/DES;->SP6:[I

    and-int/lit8 v10, v8, 0x3f

    aget v9, v9, v10

    or-int/2addr v7, v9

    ushr-int/lit8 v8, v8, 0x8

    .line 517
    sget-object v9, Lgnu/crypto/cipher/DES;->SP4:[I

    and-int/lit8 v10, v8, 0x3f

    aget v9, v9, v10

    or-int/2addr v7, v9

    ushr-int/lit8 v8, v8, 0x8

    .line 518
    sget-object v9, Lgnu/crypto/cipher/DES;->SP2:[I

    and-int/lit8 v10, v8, 0x3f

    aget v9, v9, v10

    or-int/2addr v7, v9

    .line 519
    xor-int/2addr v3, v7

    .line 521
    ushr-int/lit8 v9, v3, 0x4

    shl-int/lit8 v10, v3, 0x1c

    or-int v8, v9, v10

    .line 522
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    aget v9, p4, v2

    xor-int/2addr v8, v9

    .line 523
    sget-object v9, Lgnu/crypto/cipher/DES;->SP7:[I

    and-int/lit8 v10, v8, 0x3f

    aget v7, v9, v10

    ushr-int/lit8 v8, v8, 0x8

    .line 524
    sget-object v9, Lgnu/crypto/cipher/DES;->SP5:[I

    and-int/lit8 v10, v8, 0x3f

    aget v9, v9, v10

    or-int/2addr v7, v9

    ushr-int/lit8 v8, v8, 0x8

    .line 525
    sget-object v9, Lgnu/crypto/cipher/DES;->SP3:[I

    and-int/lit8 v10, v8, 0x3f

    aget v9, v9, v10

    or-int/2addr v7, v9

    ushr-int/lit8 v8, v8, 0x8

    .line 526
    sget-object v9, Lgnu/crypto/cipher/DES;->SP1:[I

    and-int/lit8 v10, v8, 0x3f

    aget v9, v9, v10

    or-int/2addr v7, v9

    .line 527
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    aget v9, p4, v1

    xor-int v8, v3, v9

    .line 528
    sget-object v9, Lgnu/crypto/cipher/DES;->SP8:[I

    and-int/lit8 v10, v8, 0x3f

    aget v9, v9, v10

    or-int/2addr v7, v9

    ushr-int/lit8 v8, v8, 0x8

    .line 529
    sget-object v9, Lgnu/crypto/cipher/DES;->SP6:[I

    and-int/lit8 v10, v8, 0x3f

    aget v9, v9, v10

    or-int/2addr v7, v9

    ushr-int/lit8 v8, v8, 0x8

    .line 530
    sget-object v9, Lgnu/crypto/cipher/DES;->SP4:[I

    and-int/lit8 v10, v8, 0x3f

    aget v9, v9, v10

    or-int/2addr v7, v9

    ushr-int/lit8 v8, v8, 0x8

    .line 531
    sget-object v9, Lgnu/crypto/cipher/DES;->SP2:[I

    and-int/lit8 v10, v8, 0x3f

    aget v9, v9, v10

    or-int/2addr v7, v9

    .line 532
    xor-int/2addr v5, v7

    .line 507
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method public static isParityAdjusted([BI)Z
    .locals 4
    .param p0, "kb"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 390
    const v1, -0x77777778

    .line 391
    .local v1, "w":I
    sget-object v2, Lgnu/crypto/cipher/DES;->PARITY:[B

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    aget-byte v0, v2, v3

    .local v0, "n":I
    shl-int/lit8 v0, v0, 0x4

    .line 392
    sget-object v2, Lgnu/crypto/cipher/DES;->PARITY:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    or-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x4

    .line 393
    sget-object v2, Lgnu/crypto/cipher/DES;->PARITY:[B

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    or-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x4

    .line 394
    sget-object v2, Lgnu/crypto/cipher/DES;->PARITY:[B

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    or-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x4

    .line 395
    sget-object v2, Lgnu/crypto/cipher/DES;->PARITY:[B

    add-int/lit8 v3, p1, 0x4

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    or-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x4

    .line 396
    sget-object v2, Lgnu/crypto/cipher/DES;->PARITY:[B

    add-int/lit8 v3, p1, 0x5

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    or-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x4

    .line 397
    sget-object v2, Lgnu/crypto/cipher/DES;->PARITY:[B

    add-int/lit8 v3, p1, 0x6

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    or-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x4

    .line 398
    sget-object v2, Lgnu/crypto/cipher/DES;->PARITY:[B

    add-int/lit8 v3, p1, 0x7

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    or-int/2addr v0, v2

    .line 399
    const/4 v2, 0x0

    and-int v3, v0, v1

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isPossibleWeak([B)Z
    .locals 2
    .param p0, "kb"    # [B

    .prologue
    .line 456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lgnu/crypto/cipher/DES;->POSSIBLE_WEAK_KEYS:[[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 461
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 457
    :cond_0
    sget-object v1, Lgnu/crypto/cipher/DES;->POSSIBLE_WEAK_KEYS:[[B

    aget-object v1, v1, v0

    invoke-static {v1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    const/4 v1, 0x1

    goto :goto_1

    .line 456
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isSemiWeak([B)Z
    .locals 2
    .param p0, "kb"    # [B

    .prologue
    .line 440
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lgnu/crypto/cipher/DES;->SEMIWEAK_KEYS:[[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 445
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 441
    :cond_0
    sget-object v1, Lgnu/crypto/cipher/DES;->SEMIWEAK_KEYS:[[B

    aget-object v1, v1, v0

    invoke-static {v1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    const/4 v1, 0x1

    goto :goto_1

    .line 440
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isWeak([B)Z
    .locals 2
    .param p0, "kb"    # [B

    .prologue
    .line 413
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lgnu/crypto/cipher/DES;->WEAK_KEYS:[[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 418
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 414
    :cond_0
    sget-object v1, Lgnu/crypto/cipher/DES;->WEAK_KEYS:[[B

    aget-object v1, v1, v0

    invoke-static {v1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    const/4 v1, 0x1

    goto :goto_1

    .line 413
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public blockSizes()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 576
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 572
    new-instance v0, Lgnu/crypto/cipher/DES;

    invoke-direct {v0}, Lgnu/crypto/cipher/DES;-><init>()V

    return-object v0
.end method

.method public decrypt([BI[BILjava/lang/Object;I)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "i"    # I
    .param p3, "out"    # [B
    .param p4, "o"    # I
    .param p5, "K"    # Ljava/lang/Object;
    .param p6, "bs"    # I

    .prologue
    .line 663
    check-cast p5, Lgnu/crypto/cipher/DES$Context;

    .end local p5    # "K":Ljava/lang/Object;
    iget-object v0, p5, Lgnu/crypto/cipher/DES$Context;->dk:[I

    invoke-static {p1, p2, p3, p4, v0}, Lgnu/crypto/cipher/DES;->desFunc([BI[BI[I)V

    .line 664
    return-void
.end method

.method public encrypt([BI[BILjava/lang/Object;I)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "i"    # I
    .param p3, "out"    # [B
    .param p4, "o"    # I
    .param p5, "K"    # Ljava/lang/Object;
    .param p6, "bs"    # I

    .prologue
    .line 659
    check-cast p5, Lgnu/crypto/cipher/DES$Context;

    .end local p5    # "K":Ljava/lang/Object;
    iget-object v0, p5, Lgnu/crypto/cipher/DES$Context;->ek:[I

    invoke-static {p1, p2, p3, p4, v0}, Lgnu/crypto/cipher/DES;->desFunc([BI[BI[I)V

    .line 660
    return-void
.end method

.method public keySizes()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 580
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public makeKey([BI)Ljava/lang/Object;
    .locals 17
    .param p1, "kb"    # [B
    .param p2, "bs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 584
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v13, v0

    const/16 v14, 0x8

    if-eq v13, v14, :cond_1

    .line 585
    :cond_0
    new-instance v13, Ljava/security/InvalidKeyException;

    const-string/jumbo v14, "DES keys must be 8 bytes long"

    invoke-direct {v13, v14}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 587
    :cond_1
    invoke-static {}, Lgnu/crypto/Properties;->checkForWeakKeys()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-static/range {p1 .. p1}, Lgnu/crypto/cipher/DES;->isWeak([B)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static/range {p1 .. p1}, Lgnu/crypto/cipher/DES;->isSemiWeak([B)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static/range {p1 .. p1}, Lgnu/crypto/cipher/DES;->isPossibleWeak([B)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 589
    :cond_2
    new-instance v13, Lgnu/crypto/cipher/WeakKeyException;

    invoke-direct {v13}, Lgnu/crypto/cipher/WeakKeyException;-><init>()V

    throw v13

    .line 593
    :cond_3
    const-wide/16 v7, 0x0

    .local v7, "pc1m":J
    const-wide/16 v9, 0x0

    .line 595
    .local v9, "pcr":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v13, 0x38

    if-lt v2, v13, :cond_4

    .line 601
    new-instance v1, Lgnu/crypto/cipher/DES$Context;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lgnu/crypto/cipher/DES$Context;-><init>(Lgnu/crypto/cipher/DES;)V

    .line 604
    .local v1, "ctx":Lgnu/crypto/cipher/DES$Context;
    const/4 v2, 0x0

    :goto_1
    const/16 v13, 0x10

    if-lt v2, v13, :cond_6

    .line 629
    const/4 v2, 0x0

    :goto_2
    const/16 v13, 0x20

    if-lt v2, v13, :cond_12

    .line 635
    const/4 v2, 0x0

    :goto_3
    const/16 v13, 0x20

    if-lt v2, v13, :cond_13

    .line 655
    return-object v1

    .line 596
    .end local v1    # "ctx":Lgnu/crypto/cipher/DES$Context;
    :cond_4
    sget-object v13, Lgnu/crypto/cipher/DES;->PC1:[B

    aget-byte v4, v13, v2

    .line 597
    .local v4, "l":I
    ushr-int/lit8 v13, v4, 0x3

    aget-byte v13, p1, v13

    const/16 v14, 0x80

    and-int/lit8 v15, v4, 0x7

    ushr-int/2addr v14, v15

    and-int/2addr v13, v14

    if-eqz v13, :cond_5

    const-wide/16 v13, 0x1

    rsub-int/lit8 v15, v2, 0x37

    shl-long/2addr v13, v15

    :goto_4
    or-long/2addr v7, v13

    .line 595
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 597
    :cond_5
    const-wide/16 v13, 0x0

    goto :goto_4

    .line 605
    .end local v4    # "l":I
    .restart local v1    # "ctx":Lgnu/crypto/cipher/DES$Context;
    :cond_6
    const-wide/16 v9, 0x0

    .line 606
    shl-int/lit8 v5, v2, 0x1

    .line 607
    .local v5, "m":I
    add-int/lit8 v6, v5, 0x1

    .line 608
    .local v6, "n":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_5
    const/16 v13, 0x1c

    if-lt v3, v13, :cond_7

    .line 615
    const/16 v3, 0x1c

    :goto_6
    const/16 v13, 0x38

    if-lt v3, v13, :cond_b

    .line 622
    const/4 v3, 0x0

    :goto_7
    const/16 v13, 0x18

    if-lt v3, v13, :cond_f

    .line 604
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 609
    :cond_7
    sget-object v13, Lgnu/crypto/cipher/DES;->ROTARS:[B

    aget-byte v13, v13, v2

    add-int v4, v3, v13

    .line 610
    .restart local v4    # "l":I
    const/16 v13, 0x1c

    if-ge v4, v13, :cond_9

    const-wide/16 v13, 0x1

    rsub-int/lit8 v15, v4, 0x37

    shl-long/2addr v13, v15

    and-long/2addr v13, v7

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_8

    const-wide/16 v13, 0x1

    rsub-int/lit8 v15, v3, 0x37

    shl-long/2addr v13, v15

    :goto_8
    or-long/2addr v9, v13

    .line 608
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 610
    :cond_8
    const-wide/16 v13, 0x0

    goto :goto_8

    .line 612
    :cond_9
    const-wide/16 v13, 0x1

    add-int/lit8 v15, v4, -0x1c

    rsub-int/lit8 v15, v15, 0x37

    shl-long/2addr v13, v15

    and-long/2addr v13, v7

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_a

    const-wide/16 v13, 0x1

    rsub-int/lit8 v15, v3, 0x37

    shl-long/2addr v13, v15

    :goto_a
    or-long/2addr v9, v13

    goto :goto_9

    :cond_a
    const-wide/16 v13, 0x0

    goto :goto_a

    .line 616
    .end local v4    # "l":I
    :cond_b
    sget-object v13, Lgnu/crypto/cipher/DES;->ROTARS:[B

    aget-byte v13, v13, v2

    add-int v4, v3, v13

    .line 617
    .restart local v4    # "l":I
    const/16 v13, 0x38

    if-ge v4, v13, :cond_d

    const-wide/16 v13, 0x1

    rsub-int/lit8 v15, v4, 0x37

    shl-long/2addr v13, v15

    and-long/2addr v13, v7

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_c

    const-wide/16 v13, 0x1

    rsub-int/lit8 v15, v3, 0x37

    shl-long/2addr v13, v15

    :goto_b
    or-long/2addr v9, v13

    .line 615
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 617
    :cond_c
    const-wide/16 v13, 0x0

    goto :goto_b

    .line 619
    :cond_d
    const-wide/16 v13, 0x1

    add-int/lit8 v15, v4, -0x1c

    rsub-int/lit8 v15, v15, 0x37

    shl-long/2addr v13, v15

    and-long/2addr v13, v7

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_e

    const-wide/16 v13, 0x1

    rsub-int/lit8 v15, v3, 0x37

    shl-long/2addr v13, v15

    :goto_d
    or-long/2addr v9, v13

    goto :goto_c

    :cond_e
    const-wide/16 v13, 0x0

    goto :goto_d

    .line 623
    .end local v4    # "l":I
    :cond_f
    const-wide/16 v13, 0x1

    sget-object v15, Lgnu/crypto/cipher/DES;->PC2:[B

    aget-byte v15, v15, v3

    rsub-int/lit8 v15, v15, 0x37

    shl-long/2addr v13, v15

    and-long/2addr v13, v9

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_10

    iget-object v13, v1, Lgnu/crypto/cipher/DES$Context;->ek:[I

    aget v14, v13, v5

    const/4 v15, 0x1

    rsub-int/lit8 v16, v3, 0x17

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    aput v14, v13, v5

    .line 624
    :cond_10
    const-wide/16 v13, 0x1

    sget-object v15, Lgnu/crypto/cipher/DES;->PC2:[B

    add-int/lit8 v16, v3, 0x18

    aget-byte v15, v15, v16

    rsub-int/lit8 v15, v15, 0x37

    shl-long/2addr v13, v15

    and-long/2addr v13, v9

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_11

    iget-object v13, v1, Lgnu/crypto/cipher/DES$Context;->ek:[I

    aget v14, v13, v6

    const/4 v15, 0x1

    rsub-int/lit8 v16, v3, 0x17

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    aput v14, v13, v6

    .line 622
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 630
    .end local v3    # "j":I
    .end local v5    # "m":I
    .end local v6    # "n":I
    :cond_12
    iget-object v13, v1, Lgnu/crypto/cipher/DES$Context;->dk:[I

    rsub-int/lit8 v14, v2, 0x1e

    iget-object v15, v1, Lgnu/crypto/cipher/DES$Context;->ek:[I

    aget v15, v15, v2

    aput v15, v13, v14

    .line 631
    iget-object v13, v1, Lgnu/crypto/cipher/DES$Context;->dk:[I

    rsub-int/lit8 v14, v2, 0x1f

    iget-object v15, v1, Lgnu/crypto/cipher/DES$Context;->ek:[I

    add-int/lit8 v16, v2, 0x1

    aget v15, v15, v16

    aput v15, v13, v14

    .line 629
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_2

    .line 638
    :cond_13
    iget-object v13, v1, Lgnu/crypto/cipher/DES$Context;->ek:[I

    aget v11, v13, v2

    .line 639
    .local v11, "x":I
    iget-object v13, v1, Lgnu/crypto/cipher/DES$Context;->ek:[I

    add-int/lit8 v14, v2, 0x1

    aget v12, v13, v14

    .line 641
    .local v12, "y":I
    iget-object v13, v1, Lgnu/crypto/cipher/DES$Context;->ek:[I

    const/high16 v14, 0xfc0000

    and-int/2addr v14, v11

    shl-int/lit8 v14, v14, 0x6

    and-int/lit16 v15, v11, 0xfc0

    shl-int/lit8 v15, v15, 0xa

    or-int/2addr v14, v15

    const/high16 v15, 0xfc0000

    and-int/2addr v15, v12

    ushr-int/lit8 v15, v15, 0xa

    or-int/2addr v14, v15

    and-int/lit16 v15, v12, 0xfc0

    ushr-int/lit8 v15, v15, 0x6

    or-int/2addr v14, v15

    aput v14, v13, v2

    .line 643
    iget-object v13, v1, Lgnu/crypto/cipher/DES$Context;->ek:[I

    add-int/lit8 v14, v2, 0x1

    const v15, 0x3f000

    and-int/2addr v15, v11

    shl-int/lit8 v15, v15, 0xc

    and-int/lit8 v16, v11, 0x3f

    shl-int/lit8 v16, v16, 0x10

    or-int v15, v15, v16

    const v16, 0x3f000

    and-int v16, v16, v12

    ushr-int/lit8 v16, v16, 0x4

    or-int v15, v15, v16

    and-int/lit8 v16, v12, 0x3f

    or-int v15, v15, v16

    aput v15, v13, v14

    .line 646
    iget-object v13, v1, Lgnu/crypto/cipher/DES$Context;->dk:[I

    aget v11, v13, v2

    .line 647
    iget-object v13, v1, Lgnu/crypto/cipher/DES$Context;->dk:[I

    add-int/lit8 v14, v2, 0x1

    aget v12, v13, v14

    .line 649
    iget-object v13, v1, Lgnu/crypto/cipher/DES$Context;->dk:[I

    const/high16 v14, 0xfc0000

    and-int/2addr v14, v11

    shl-int/lit8 v14, v14, 0x6

    and-int/lit16 v15, v11, 0xfc0

    shl-int/lit8 v15, v15, 0xa

    or-int/2addr v14, v15

    const/high16 v15, 0xfc0000

    and-int/2addr v15, v12

    ushr-int/lit8 v15, v15, 0xa

    or-int/2addr v14, v15

    and-int/lit16 v15, v12, 0xfc0

    ushr-int/lit8 v15, v15, 0x6

    or-int/2addr v14, v15

    aput v14, v13, v2

    .line 651
    iget-object v13, v1, Lgnu/crypto/cipher/DES$Context;->dk:[I

    add-int/lit8 v14, v2, 0x1

    const v15, 0x3f000

    and-int/2addr v15, v11

    shl-int/lit8 v15, v15, 0xc

    and-int/lit8 v16, v11, 0x3f

    shl-int/lit8 v16, v16, 0x10

    or-int v15, v15, v16

    const v16, 0x3f000

    and-int v16, v16, v12

    ushr-int/lit8 v16, v16, 0x4

    or-int v15, v15, v16

    and-int/lit8 v16, v12, 0x3f

    or-int v15, v15, v16

    aput v15, v13, v14

    .line 635
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_3
.end method
