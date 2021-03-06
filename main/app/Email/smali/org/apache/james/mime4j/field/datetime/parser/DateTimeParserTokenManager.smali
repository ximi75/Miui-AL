.class public Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;
.super Ljava/lang/Object;
.source "DateTimeParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserConstants;


# static fields
.field static commentNest:I

.field static final jjbitVec0:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field image:Ljava/lang/StringBuffer;

.field protected input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

.field jjimageLen:I

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I

.field lengthOfMatch:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 420
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    .line 633
    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    .line 635
    const/16 v0, 0x31

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v4

    const-string/jumbo v1, "\r"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\n"

    aput-object v1, v0, v6

    const-string/jumbo v1, ","

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "Mon"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "Tue"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Wed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Thu"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "Fri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "Sat"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "Sun"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "Jan"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "Feb"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "Mar"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "Apr"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "May"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "Jun"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "Jul"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "Dec"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "UT"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "GMT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "EST"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "EDT"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "CST"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "CDT"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "MST"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "MDT"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "PST"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "PDT"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    aput-object v3, v0, v1

    const/16 v1, 0x24

    aput-object v3, v0, v1

    const/16 v1, 0x25

    aput-object v3, v0, v1

    const/16 v1, 0x26

    aput-object v3, v0, v1

    const/16 v1, 0x27

    aput-object v3, v0, v1

    const/16 v1, 0x28

    aput-object v3, v0, v1

    const/16 v1, 0x29

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    aput-object v3, v0, v1

    const/16 v1, 0x30

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 644
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string/jumbo v1, "INCOMMENT"

    aput-object v1, v0, v5

    const-string/jumbo v1, "NESTED_COMMENT"

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 649
    const/16 v0, 0x31

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    .line 653
    new-array v0, v5, [J

    const-wide v1, 0x400fffffffffL

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoToken:[J

    .line 656
    new-array v0, v5, [J

    const-wide v1, 0x5000000000L

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSkip:[J

    .line 659
    new-array v0, v5, [J

    const-wide v1, 0x1000000000L

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSpecial:[J

    .line 662
    new-array v0, v5, [J

    const-wide v1, 0x3fa000000000L

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoMore:[J

    return-void

    .line 420
    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    .line 649
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        -0x1
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V
    .locals 2
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    .prologue
    const/4 v1, 0x0

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 666
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    .line 667
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    .line 721
    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 722
    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->defaultLexState:I

    .line 675
    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    .line 676
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;I)V
    .locals 0
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
    .param p2, "lexState"    # I

    .prologue
    .line 678
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    .line 679
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->SwitchTo(I)V

    .line 680
    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    .prologue
    .line 691
    const v2, -0x7fffffff

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    .line 692
    const/4 v0, 0x4

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 693
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x80000000

    aput v3, v2, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 694
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-void
.end method

.method private final jjAddStates(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 275
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    sget-object v3, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    aget v3, v3, p1

    aput v3, v1, v2

    .line 276
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "start":I
    .local v0, "start":I
    if-ne p1, p2, :cond_0

    .line 277
    return-void

    :cond_0
    move p1, v0

    .end local v0    # "start":I
    .restart local p1    # "start":I
    goto :goto_0
.end method

.method private final jjCheckNAdd(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 269
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    aput v1, v0, p1

    .line 271
    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2
    .param p1, "start"    # I

    .prologue
    .line 291
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    .line 292
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    .line 293
    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 286
    :goto_0
    sget-object v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    .line 287
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "start":I
    .local v0, "start":I
    if-ne p1, p2, :cond_0

    .line 288
    return-void

    :cond_0
    move p1, v0

    .end local v0    # "start":I
    .restart local p1    # "start":I
    goto :goto_0
.end method

.method private final jjCheckNAddTwoStates(II)V
    .locals 0
    .param p1, "state1"    # I
    .param p2, "state2"    # I

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    .line 281
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    .line 282
    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 13
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 297
    const/4 v8, 0x0

    .line 298
    .local v8, "startsAt":I
    const/4 v9, 0x4

    iput v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 299
    const/4 v1, 0x1

    .line 300
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 301
    const v3, 0x7fffffff

    .line 304
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 305
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    .line 306
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_8

    .line 308
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 311
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 346
    :cond_2
    :goto_1
    :pswitch_0
    if-ne v1, v8, :cond_1

    .line 375
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 377
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 378
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 379
    const v3, 0x7fffffff

    .line 381
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 382
    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x4

    if-ne v1, v8, :cond_d

    .line 385
    :goto_3
    return p2

    .line 314
    .restart local v4    # "l":J
    :pswitch_1
    const-wide/high16 v9, 0x3ff000000000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 316
    const/16 v9, 0x2e

    if-le v3, v9, :cond_4

    .line 317
    const/16 v3, 0x2e

    .line 318
    :cond_4
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 320
    :cond_5
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 322
    const/16 v9, 0x24

    if-le v3, v9, :cond_6

    .line 323
    const/16 v3, 0x24

    .line 324
    :cond_6
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 326
    :cond_7
    const-wide v9, 0x280000000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 328
    const/16 v9, 0x18

    if-le v3, v9, :cond_2

    .line 329
    const/16 v3, 0x18

    goto :goto_1

    .line 333
    :pswitch_2
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 335
    const/16 v3, 0x24

    .line 336
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 339
    :pswitch_3
    const-wide/high16 v9, 0x3ff000000000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 341
    const/16 v3, 0x2e

    .line 342
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 348
    .end local v4    # "l":J
    :cond_8
    iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_b

    .line 350
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 353
    .restart local v4    # "l":J
    :cond_9
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 361
    :cond_a
    :goto_4
    if-ne v1, v8, :cond_9

    goto/16 :goto_2

    .line 356
    :pswitch_4
    const-wide v9, 0x7fffbfe07fffbfeL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    .line 357
    const/16 v3, 0x23

    goto :goto_4

    .line 365
    .end local v4    # "l":J
    :cond_b
    iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 366
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 369
    .local v6, "l2":J
    :cond_c
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    .line 373
    if-ne v1, v8, :cond_c

    goto/16 :goto_2

    .line 384
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_d
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 385
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 353
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .locals 13
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 426
    const/4 v8, 0x0

    .line 427
    .local v8, "startsAt":I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 428
    const/4 v1, 0x1

    .line 429
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 430
    const v3, 0x7fffffff

    .line 433
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 434
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    .line 435
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 437
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 440
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 452
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 499
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 501
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 502
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 503
    const v3, 0x7fffffff

    .line 505
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 506
    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 509
    :goto_3
    return p2

    .line 443
    .restart local v4    # "l":J
    :pswitch_0
    const/16 v9, 0x29

    if-le v3, v9, :cond_2

    .line 444
    const/16 v3, 0x29

    goto :goto_1

    .line 447
    :pswitch_1
    const/16 v9, 0x27

    if-le v3, v9, :cond_2

    .line 448
    const/16 v3, 0x27

    goto :goto_1

    .line 454
    .end local v4    # "l":J
    :cond_4
    iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 456
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 459
    .restart local v4    # "l":J
    :cond_5
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 477
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 462
    :pswitch_2
    const/16 v9, 0x29

    if-le v3, v9, :cond_7

    .line 463
    const/16 v3, 0x29

    .line 464
    :cond_7
    iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 465
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 468
    :pswitch_3
    const/16 v9, 0x27

    if-le v3, v9, :cond_6

    .line 469
    const/16 v3, 0x27

    goto :goto_4

    .line 472
    :pswitch_4
    const/16 v9, 0x29

    if-le v3, v9, :cond_6

    .line 473
    const/16 v3, 0x29

    goto :goto_4

    .line 481
    .end local v4    # "l":J
    :cond_8
    iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 482
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 485
    .local v6, "l2":J
    :cond_9
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 497
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 488
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x29

    if-le v3, v9, :cond_a

    .line 489
    const/16 v3, 0x29

    goto :goto_5

    .line 492
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x27

    if-le v3, v9, :cond_a

    .line 493
    const/16 v3, 0x27

    goto :goto_5

    .line 508
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 509
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 440
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 459
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 485
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_2(II)I
    .locals 13
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 547
    const/4 v8, 0x0

    .line 548
    .local v8, "startsAt":I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 549
    const/4 v1, 0x1

    .line 550
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 551
    const v3, 0x7fffffff

    .line 554
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 555
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    .line 556
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 558
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 561
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 573
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 620
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 622
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 623
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 624
    const v3, 0x7fffffff

    .line 626
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 627
    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 630
    :goto_3
    return p2

    .line 564
    .restart local v4    # "l":J
    :pswitch_0
    const/16 v9, 0x2d

    if-le v3, v9, :cond_2

    .line 565
    const/16 v3, 0x2d

    goto :goto_1

    .line 568
    :pswitch_1
    const/16 v9, 0x2a

    if-le v3, v9, :cond_2

    .line 569
    const/16 v3, 0x2a

    goto :goto_1

    .line 575
    .end local v4    # "l":J
    :cond_4
    iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 577
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 580
    .restart local v4    # "l":J
    :cond_5
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 598
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 583
    :pswitch_2
    const/16 v9, 0x2d

    if-le v3, v9, :cond_7

    .line 584
    const/16 v3, 0x2d

    .line 585
    :cond_7
    iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 586
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 589
    :pswitch_3
    const/16 v9, 0x2a

    if-le v3, v9, :cond_6

    .line 590
    const/16 v3, 0x2a

    goto :goto_4

    .line 593
    :pswitch_4
    const/16 v9, 0x2d

    if-le v3, v9, :cond_6

    .line 594
    const/16 v3, 0x2d

    goto :goto_4

    .line 602
    .end local v4    # "l":J
    :cond_8
    iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 603
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 606
    .local v6, "l2":J
    :cond_9
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 618
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 609
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x2d

    if-le v3, v9, :cond_a

    .line 610
    const/16 v3, 0x2d

    goto :goto_5

    .line 613
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x2a

    if-le v3, v9, :cond_a

    .line 614
    const/16 v3, 0x2a

    goto :goto_5

    .line 629
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 630
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 561
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 580
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 606
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    .line 119
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    .line 79
    :sswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 81
    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 83
    :sswitch_2
    const/16 v0, 0x25

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 85
    :sswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 87
    :sswitch_4
    const/16 v0, 0x17

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 89
    :sswitch_5
    const-wide/32 v0, 0x44000

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 91
    :sswitch_6
    const-wide/32 v0, 0x60000000

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 93
    :sswitch_7
    const-wide/32 v0, 0x400000

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 95
    :sswitch_8
    const-wide/32 v0, 0x18000000

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 97
    :sswitch_9
    const-wide/16 v0, 0x1100

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 99
    :sswitch_a
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 101
    :sswitch_b
    const-wide/32 v0, 0x30800

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 103
    :sswitch_c
    const-wide v0, 0x18000a010L

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 105
    :sswitch_d
    const-wide/32 v0, 0x200000

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 107
    :sswitch_e
    const-wide/32 v0, 0x100000

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 109
    :sswitch_f
    const-wide v0, 0x600000000L

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 111
    :sswitch_10
    const-wide/32 v0, 0x80600

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto/16 :goto_0

    .line 113
    :sswitch_11
    const-wide/16 v0, 0xa0

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto/16 :goto_0

    .line 115
    :sswitch_12
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto/16 :goto_0

    .line 117
    :sswitch_13
    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto/16 :goto_0

    .line 76
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x28 -> :sswitch_2
        0x2c -> :sswitch_3
        0x3a -> :sswitch_4
        0x41 -> :sswitch_5
        0x43 -> :sswitch_6
        0x44 -> :sswitch_7
        0x45 -> :sswitch_8
        0x46 -> :sswitch_9
        0x47 -> :sswitch_a
        0x4a -> :sswitch_b
        0x4d -> :sswitch_c
        0x4e -> :sswitch_d
        0x4f -> :sswitch_e
        0x50 -> :sswitch_f
        0x53 -> :sswitch_10
        0x54 -> :sswitch_11
        0x55 -> :sswitch_12
        0x57 -> :sswitch_13
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 410
    iget-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 417
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    .line 413
    :pswitch_0
    const/16 v0, 0x28

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 415
    :pswitch_1
    const/16 v0, 0x26

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_2()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 534
    iget-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 541
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    .line 537
    :pswitch_0
    const/16 v0, 0x2b

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 539
    :pswitch_1
    const/16 v0, 0x2c

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa1_0(J)I
    .locals 7
    .param p1, "active0"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 124
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    iget-char v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    .line 160
    :cond_0
    invoke-direct {p0, v6, p1, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    :goto_0
    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v6, p1, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    :sswitch_0
    const-wide v1, 0x550000000L

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 134
    :sswitch_1
    const-wide/32 v1, 0x4000000

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 136
    :sswitch_2
    const-wide v1, 0x2a8000000L

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 138
    :sswitch_3
    const-wide/32 v2, 0x2000000

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 139
    const/16 v2, 0x19

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 142
    :sswitch_4
    const-wide/32 v1, 0xaa00

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 144
    :sswitch_5
    const-wide/32 v1, 0x100000

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 146
    :sswitch_6
    const-wide/32 v1, 0x481040

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 148
    :sswitch_7
    const-wide/16 v1, 0x80

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 150
    :sswitch_8
    const-wide/32 v1, 0x200010

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 152
    :sswitch_9
    const-wide/16 v1, 0x4000

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 154
    :sswitch_a
    const-wide/16 v1, 0x100

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 156
    :sswitch_b
    const-wide/32 v1, 0x70420

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 129
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x4d -> :sswitch_1
        0x53 -> :sswitch_2
        0x54 -> :sswitch_3
        0x61 -> :sswitch_4
        0x63 -> :sswitch_5
        0x65 -> :sswitch_6
        0x68 -> :sswitch_7
        0x6f -> :sswitch_8
        0x70 -> :sswitch_9
        0x72 -> :sswitch_a
        0x75 -> :sswitch_b
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa2_0(JJ)I
    .locals 7
    .param p1, "old0"    # J
    .param p3, "active0"    # J

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x2

    .line 164
    and-long/2addr p3, p1

    cmp-long v2, p3, v4

    if-nez v2, :cond_0

    .line 165
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 262
    :goto_0
    return v1

    .line 166
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    iget-char v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    .line 262
    :cond_1
    invoke-direct {p0, v6, p3, p4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v6, p3, p4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 174
    .end local v0    # "e":Ljava/io/IOException;
    :sswitch_0
    const-wide/32 v2, 0x4000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 175
    const/16 v2, 0x1a

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 176
    :cond_2
    const-wide/32 v2, 0x8000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 177
    const/16 v2, 0x1b

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 178
    :cond_3
    const-wide/32 v2, 0x10000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 179
    const/16 v2, 0x1c

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 180
    :cond_4
    const-wide/32 v2, 0x20000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 181
    const/16 v2, 0x1d

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 182
    :cond_5
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 183
    const/16 v2, 0x1e

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 184
    :cond_6
    const-wide v2, 0x80000000L

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    .line 185
    const/16 v2, 0x1f

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 186
    :cond_7
    const-wide v2, 0x100000000L

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    .line 187
    const/16 v2, 0x20

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 188
    :cond_8
    const-wide v2, 0x200000000L

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 189
    const/16 v2, 0x21

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 190
    :cond_9
    const-wide v2, 0x400000000L

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 191
    const/16 v2, 0x22

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 194
    :sswitch_1
    const-wide/16 v2, 0x1000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 195
    const/16 v2, 0xc

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 198
    :sswitch_2
    const-wide/32 v2, 0x400000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 199
    const/16 v2, 0x16

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 202
    :sswitch_3
    const-wide/16 v2, 0x40

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 203
    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 206
    :sswitch_4
    const-wide/16 v2, 0x20

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 207
    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 210
    :sswitch_5
    const-wide/32 v2, 0x40000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 211
    const/16 v2, 0x12

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 214
    :sswitch_6
    const-wide/16 v2, 0x100

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 215
    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 218
    :sswitch_7
    const-wide/32 v2, 0x20000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 219
    const/16 v2, 0x11

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 222
    :sswitch_8
    const-wide/16 v2, 0x10

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    .line 223
    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 224
    :cond_a
    const-wide/16 v2, 0x400

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    .line 225
    const/16 v2, 0xa

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 226
    :cond_b
    const-wide/16 v2, 0x800

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    .line 227
    const/16 v2, 0xb

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 228
    :cond_c
    const-wide/32 v2, 0x10000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 229
    const/16 v2, 0x10

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 232
    :sswitch_9
    const-wide/32 v2, 0x80000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 233
    const/16 v2, 0x13

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 236
    :sswitch_a
    const-wide/16 v2, 0x2000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d

    .line 237
    const/16 v2, 0xd

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 238
    :cond_d
    const-wide/16 v2, 0x4000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 239
    const/16 v2, 0xe

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 242
    :sswitch_b
    const-wide/16 v2, 0x200

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 243
    const/16 v2, 0x9

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 244
    :cond_e
    const-wide/32 v2, 0x100000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 245
    const/16 v2, 0x14

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 248
    :sswitch_c
    const-wide/16 v2, 0x80

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 249
    const/4 v2, 0x7

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 252
    :sswitch_d
    const-wide/32 v2, 0x200000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 253
    const/16 v2, 0x15

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 256
    :sswitch_e
    const-wide/32 v2, 0x8000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 257
    const/16 v2, 0xf

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 171
    nop

    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_0
        0x62 -> :sswitch_1
        0x63 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_4
        0x67 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6c -> :sswitch_7
        0x6e -> :sswitch_8
        0x70 -> :sswitch_9
        0x72 -> :sswitch_a
        0x74 -> :sswitch_b
        0x75 -> :sswitch_c
        0x76 -> :sswitch_d
        0x79 -> :sswitch_e
    .end sparse-switch
.end method

.method private final jjStartNfaWithStates_0(III)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "kind"    # I
    .param p3, "state"    # I

    .prologue
    .line 68
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 69
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 70
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v1

    :goto_0
    return v1

    .line 71
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_1(III)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "kind"    # I
    .param p3, "state"    # I

    .prologue
    .line 402
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 403
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 404
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v1

    :goto_0
    return v1

    .line 405
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_2(III)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "kind"    # I
    .param p3, "state"    # I

    .prologue
    .line 526
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 527
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 528
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v1

    :goto_0
    return v1

    .line 529
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfa_0(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 398
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 522
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "kind"    # I

    .prologue
    .line 62
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 63
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 64
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 6
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    const-wide v0, 0x7fe7cf7f0L

    const-wide/16 v4, 0x0

    const/16 v3, 0x23

    const/4 v2, -0x1

    .line 32
    packed-switch p1, :pswitch_data_0

    .line 53
    :cond_0
    :goto_0
    return v2

    .line 35
    :pswitch_0
    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 37
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    goto :goto_0

    .line 42
    :pswitch_1
    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 44
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    if-nez v0, :cond_0

    .line 46
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjStopStringLiteralDfa_1(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 390
    .line 393
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 514
    .line 517
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 838
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 839
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 879
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 842
    :pswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 843
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 844
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 845
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 846
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 849
    :pswitch_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    .line 850
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 851
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 852
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 853
    sput v4, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    goto :goto_0

    .line 856
    :pswitch_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    .line 857
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 858
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 859
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 860
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 863
    :pswitch_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    .line 864
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 865
    :cond_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 866
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 867
    sget v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    goto/16 :goto_0

    .line 870
    :pswitch_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    .line 871
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 872
    :cond_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 873
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 874
    sget v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    sget v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    .line 839
    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V
    .locals 1
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    .prologue
    .line 683
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 684
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 685
    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    .line 686
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    .line 687
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;I)V
    .locals 0
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
    .param p2, "lexState"    # I

    .prologue
    .line 697
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    .line 698
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->SwitchTo(I)V

    .line 699
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3
    .param p1, "lexState"    # I

    .prologue
    .line 702
    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 703
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 705
    :cond_1
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 706
    return-void
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .locals 17

    .prologue
    .line 731
    const/4 v14, 0x0

    .line 733
    .local v14, "specialToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    const/4 v9, 0x0

    .line 740
    .local v9, "curPos":I
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->BeginToken()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 750
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 754
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    packed-switch v1, :pswitch_data_0

    .line 772
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_8

    .line 774
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v9, :cond_1

    .line 775
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    sub-int v3, v9, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V

    .line 776
    :cond_1
    sget-object v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoToken:[J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_3

    .line 778
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v12

    .line 779
    .local v12, "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    iput-object v14, v12, Lorg/apache/james/mime4j/field/datetime/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 780
    sget-object v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 781
    sget-object v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    :cond_2
    move-object v13, v12

    .line 782
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .local v13, "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :goto_3
    return-object v13

    .line 742
    .end local v13    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :catch_0
    move-exception v10

    .line 744
    .local v10, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 745
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v12

    .line 746
    .restart local v12    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    iput-object v14, v12, Lorg/apache/james/mime4j/field/datetime/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-object v13, v12

    .line 747
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .restart local v13    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    goto :goto_3

    .line 757
    .end local v10    # "e":Ljava/io/IOException;
    .end local v13    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :pswitch_0
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 758
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 759
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v9

    .line 760
    goto :goto_2

    .line 762
    :pswitch_1
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 763
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 764
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v9

    .line 765
    goto/16 :goto_2

    .line 767
    :pswitch_2
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 768
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 769
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v9

    goto/16 :goto_2

    .line 784
    :cond_3
    sget-object v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSkip:[J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_6

    .line 786
    sget-object v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSpecial:[J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_4

    .line 788
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v12

    .line 789
    .restart local v12    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    if-nez v14, :cond_5

    .line 790
    move-object v14, v12

    .line 797
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :cond_4
    :goto_4
    sget-object v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 798
    sget-object v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 793
    .restart local v12    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :cond_5
    iput-object v14, v12, Lorg/apache/james/mime4j/field/datetime/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 794
    iput-object v12, v14, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-object v14, v12

    goto :goto_4

    .line 801
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->MoreLexicalActions()V

    .line 802
    sget-object v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    .line 803
    sget-object v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 804
    :cond_7
    const/4 v9, 0x0

    .line 805
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 807
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 810
    :catch_1
    move-exception v1

    .line 812
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 813
    .local v4, "error_line":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndColumn()I

    move-result v5

    .line 814
    .local v5, "error_column":I
    const/4 v6, 0x0

    .line 815
    .local v6, "error_after":Ljava/lang/String;
    const/4 v2, 0x0

    .line 816
    .local v2, "EOFSeen":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 827
    :goto_5
    if-nez v2, :cond_9

    .line 828
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V

    .line 829
    const/4 v1, 0x1

    if-gt v9, v1, :cond_d

    const-string/jumbo v6, ""

    .line 831
    :cond_9
    :goto_6
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    move-object/from16 v0, p0

    iget-char v7, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    .line 817
    :catch_2
    move-exception v11

    .line 818
    .local v11, "e1":Ljava/io/IOException;
    const/4 v2, 0x1

    .line 819
    const/4 v1, 0x1

    if-gt v9, v1, :cond_b

    const-string/jumbo v6, ""

    .line 820
    :goto_7
    move-object/from16 v0, p0

    iget-char v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-eq v1, v3, :cond_a

    move-object/from16 v0, p0

    iget-char v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v1, v3, :cond_c

    .line 821
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 822
    const/4 v5, 0x0

    goto :goto_5

    .line 819
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 825
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 829
    .end local v11    # "e1":Ljava/io/IOException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 754
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .locals 4

    .prologue
    .line 710
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    invoke-static {v2}, Lorg/apache/james/mime4j/field/datetime/parser/Token;->newToken(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    .line 711
    .local v1, "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput v2, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    .line 712
    sget-object v2, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget-object v0, v2, v3

    .line 713
    .local v0, "im":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "im":Ljava/lang/String;
    :cond_0
    iput-object v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    .line 714
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getBeginLine()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->beginLine:I

    .line 715
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->beginColumn:I

    .line 716
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndLine()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->endLine:I

    .line 717
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndColumn()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->endColumn:I

    .line 718
    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "ds"    # Ljava/io/PrintStream;

    .prologue
    .line 29
    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
