.class public abstract Lcom/kingsoft/exchange/adapter/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/exchange/adapter/Parser$EasParserException;,
        Lcom/kingsoft/exchange/adapter/Parser$EodException;,
        Lcom/kingsoft/exchange/adapter/Parser$EmptyStreamException;,
        Lcom/kingsoft/exchange/adapter/Parser$EofException;
    }
.end annotation


# static fields
.field public static final DONE:I = 0x1

.field public static final END:I = 0x3

.field public static final END_DOCUMENT:I = 0x3

.field private static final EOF_BYTE:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Exchange"

.field private static final LOG_VERBOSE:Z = false

.field private static final NOT_ENDED:I = -0x80000000

.field private static final NOT_FETCHED:I = -0x80000000

.field public static final START:I = 0x2

.field public static final START_DOCUMENT:I = 0x0

.field private static final TAG_BASE:I = 0x5

.field public static final TEXT:I = 0x4

.field private static tagTables:[[Ljava/lang/String;


# instance fields
.field public bytes:[B

.field private capture:Z

.field private captureArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private depth:I

.field public endTag:I

.field private in:Ljava/io/InputStream;

.field private logging:Z

.field public name:Ljava/lang/String;

.field private nameArray:[Ljava/lang/String;

.field private nextId:I

.field public noContent:Z

.field public num:I

.field public page:I

.field public startTag:I

.field private startTagArray:[I

.field public tag:I

.field private tagTable:[Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/kingsoft/exchange/adapter/Tags;->pages:[[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    sput-object v0, Lcom/kingsoft/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/kingsoft/exchange/adapter/Parser;)V
    .locals 7
    .param p1, "parser"    # Lcom/kingsoft/exchange/adapter/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    const/high16 v5, -0x80000000

    const/4 v4, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->logging:Z

    .line 61
    iput-boolean v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->capture:Z

    .line 72
    iput v5, p0, Lcom/kingsoft/exchange/adapter/Parser;->nextId:I

    .line 81
    new-array v3, v6, [Ljava/lang/String;

    iput-object v3, p0, Lcom/kingsoft/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    .line 84
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/kingsoft/exchange/adapter/Parser;->startTagArray:[I

    .line 88
    iput v5, p0, Lcom/kingsoft/exchange/adapter/Parser;->endTag:I

    .line 160
    sget-object v2, Lcom/kingsoft/exchange/adapter/Tags;->pages:[[Ljava/lang/String;

    .line 161
    .local v2, "pages":[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 162
    aget-object v1, v2, v0

    .line 163
    .local v1, "page":[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 164
    sget-object v3, Lcom/kingsoft/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    aput-object v1, v3, v0

    .line 161
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v1    # "page":[Ljava/lang/String;
    :cond_1
    iget-object v3, p1, Lcom/kingsoft/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    invoke-virtual {p0, v3, v4}, Lcom/kingsoft/exchange/adapter/Parser;->setInput(Ljava/io/InputStream;Z)V

    .line 181
    sget-boolean v3, Lcom/kingsoft/exchange/Eas;->PARSER_LOG:Z

    iput-boolean v3, p0, Lcom/kingsoft/exchange/adapter/Parser;->logging:Z

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x20

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v3, p0, Lcom/kingsoft/exchange/adapter/Parser;->logging:Z

    .line 61
    iput-boolean v3, p0, Lcom/kingsoft/exchange/adapter/Parser;->capture:Z

    .line 72
    iput v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->nextId:I

    .line 81
    new-array v3, v5, [Ljava/lang/String;

    iput-object v3, p0, Lcom/kingsoft/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    .line 84
    new-array v3, v5, [I

    iput-object v3, p0, Lcom/kingsoft/exchange/adapter/Parser;->startTagArray:[I

    .line 88
    iput v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->endTag:I

    .line 160
    sget-object v2, Lcom/kingsoft/exchange/adapter/Tags;->pages:[[Ljava/lang/String;

    .line 161
    .local v2, "pages":[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 162
    aget-object v1, v2, v0

    .line 163
    .local v1, "page":[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 164
    sget-object v3, Lcom/kingsoft/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    aput-object v1, v3, v0

    .line 161
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "page":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/kingsoft/exchange/adapter/Parser;->setInput(Ljava/io/InputStream;Z)V

    .line 171
    sget-boolean v3, Lcom/kingsoft/exchange/Eas;->PARSER_LOG:Z

    iput-boolean v3, p0, Lcom/kingsoft/exchange/adapter/Parser;->logging:Z

    .line 172
    return-void
.end method

.method private final getNext(Z)I
    .locals 9
    .param p1, "asInt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/high16 v5, -0x80000000

    const/4 v7, 0x0

    .line 436
    iget-boolean v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->noContent:Z

    if-eqz v4, :cond_0

    .line 437
    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    iget v5, p0, Lcom/kingsoft/exchange/adapter/Parser;->depth:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/kingsoft/exchange/adapter/Parser;->depth:I

    aput-object v7, v4, v5

    .line 438
    iput v8, p0, Lcom/kingsoft/exchange/adapter/Parser;->type:I

    .line 439
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->noContent:Z

    .line 440
    iget v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->type:I

    .line 506
    :goto_0
    return v4

    .line 443
    :cond_0
    iput-object v7, p0, Lcom/kingsoft/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 444
    iput-object v7, p0, Lcom/kingsoft/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 446
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/Parser;->nextId()I

    move-result v1

    .line 447
    .local v1, "id":I
    :goto_1
    if-nez v1, :cond_1

    .line 448
    iput v5, p0, Lcom/kingsoft/exchange/adapter/Parser;->nextId:I

    .line 450
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/Parser;->readByte()I

    move-result v3

    .line 452
    .local v3, "pg":I
    shl-int/lit8 v4, v3, 0x6

    iput v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->page:I

    .line 457
    sget-object v4, Lcom/kingsoft/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    aget-object v4, v4, v3

    iput-object v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 458
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/Parser;->nextId()I

    move-result v1

    .line 459
    goto :goto_1

    .line 460
    .end local v3    # "pg":I
    :cond_1
    iput v5, p0, Lcom/kingsoft/exchange/adapter/Parser;->nextId:I

    .line 462
    sparse-switch v1, :sswitch_data_0

    .line 501
    const/4 v4, 0x2

    iput v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->type:I

    .line 502
    invoke-direct {p0, v1}, Lcom/kingsoft/exchange/adapter/Parser;->push(I)V

    .line 506
    :cond_2
    :goto_2
    iget v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->type:I

    goto :goto_0

    .line 465
    :sswitch_0
    const/4 v4, 0x1

    iput v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->type:I

    goto :goto_2

    .line 469
    :sswitch_1
    iput v8, p0, Lcom/kingsoft/exchange/adapter/Parser;->type:I

    .line 470
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/Parser;->pop()V

    goto :goto_2

    .line 475
    :sswitch_2
    const/4 v4, 0x4

    iput v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->type:I

    .line 476
    if-eqz p1, :cond_3

    .line 477
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/Parser;->readInlineInt()I

    move-result v4

    iput v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->num:I

    .line 481
    :goto_3
    iget-boolean v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->logging:Z

    if-eqz v4, :cond_2

    .line 482
    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v5, p0, Lcom/kingsoft/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v5, v5, -0x5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kingsoft/exchange/adapter/Parser;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_4

    iget v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->num:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/kingsoft/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 479
    :cond_3
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/Parser;->readInlineString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->text:Ljava/lang/String;

    goto :goto_3

    .line 483
    :cond_4
    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->text:Ljava/lang/String;

    goto :goto_4

    .line 489
    :sswitch_3
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/Parser;->readInt()I

    move-result v2

    .line 490
    .local v2, "length":I
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->bytes:[B

    .line 491
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v2, :cond_5

    .line 492
    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->bytes:[B

    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/Parser;->readByte()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 494
    :cond_5
    iget-boolean v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->logging:Z

    if-eqz v4, :cond_2

    .line 495
    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v5, p0, Lcom/kingsoft/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v5, v5, -0x5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/kingsoft/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 496
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kingsoft/exchange/adapter/Parser;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": (opaque:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/kingsoft/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 462
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0xc3 -> :sswitch_3
    .end sparse-switch
.end method

.method private nextId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    iget v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->nextId:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 530
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/Parser;->read()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->nextId:I

    .line 532
    :cond_0
    iget v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->nextId:I

    return v0
.end method

.method private pop()V
    .locals 2

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->logging:Z

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    iget v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->depth:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->startTagArray:[I

    iget v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->depth:I

    aget v0, v0, v1

    iput v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->endTag:I

    iput v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->startTag:I

    .line 408
    iget v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->depth:I

    .line 409
    return-void
.end method

.method private push(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 413
    and-int/lit8 v0, p1, 0x3f

    iput v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->startTag:I

    .line 415
    and-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->noContent:Z

    .line 416
    iget v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->depth:I

    .line 417
    iget-boolean v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->logging:Z

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v1, v1, -0x5

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    iget v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->depth:I

    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/Parser;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->noContent:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x2f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->startTagArray:[I

    iget v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->depth:I

    iget v2, p0, Lcom/kingsoft/exchange/adapter/Parser;->startTag:I

    aput v2, v0, v1

    .line 424
    return-void

    .line 415
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 420
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method private read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 519
    .local v0, "i":I
    iget-boolean v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->capture:Z

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->captureArray:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_0
    return v0
.end method

.method private readByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/Parser;->read()I

    move-result v0

    .line 537
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 538
    new-instance v1, Lcom/kingsoft/exchange/adapter/Parser$EofException;

    invoke-direct {v1, p0}, Lcom/kingsoft/exchange/adapter/Parser$EofException;-><init>(Lcom/kingsoft/exchange/adapter/Parser;)V

    throw v1

    .line 540
    :cond_0
    return v0
.end method

.method private readInlineInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    const/4 v1, 0x0

    .line 555
    .local v1, "result":I
    :goto_0
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/Parser;->readByte()I

    move-result v0

    .line 557
    .local v0, "i":I
    if-nez v0, :cond_0

    .line 558
    return v1

    .line 560
    :cond_0
    const/16 v2, 0x30

    if-lt v0, v2, :cond_1

    const/16 v2, 0x39

    if-gt v0, v2, :cond_1

    .line 561
    mul-int/lit8 v2, v1, 0xa

    add-int/lit8 v3, v0, -0x30

    add-int v1, v2, v3

    goto :goto_0

    .line 563
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Non integer"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readInlineString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x100

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 589
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/Parser;->read()I

    move-result v0

    .line 590
    .local v0, "i":I
    if-nez v0, :cond_0

    .line 597
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 598
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 600
    return-object v2

    .line 592
    .end local v2    # "res":Ljava/lang/String;
    :cond_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 593
    new-instance v3, Lcom/kingsoft/exchange/adapter/Parser$EofException;

    invoke-direct {v3, p0}, Lcom/kingsoft/exchange/adapter/Parser$EofException;-><init>(Lcom/kingsoft/exchange/adapter/Parser;)V

    throw v3

    .line 595
    :cond_1
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method private readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    const/4 v1, 0x0

    .line 573
    .local v1, "result":I
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/Parser;->readByte()I

    move-result v0

    .line 574
    .local v0, "i":I
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    .line 575
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_0

    .line 577
    return v1
.end method


# virtual methods
.method public captureOff(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 212
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 213
    .local v0, "out":Ljava/io/FileOutputStream;
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->captureArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 214
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v0    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v1

    goto :goto_0

    .line 215
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public captureOn()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->capture:Z

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->captureArray:Ljava/util/ArrayList;

    .line 205
    return-void
.end method

.method protected getInput()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 243
    invoke-direct {p0, v2}, Lcom/kingsoft/exchange/adapter/Parser;->getNext(Z)I

    .line 245
    iget v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->type:I

    if-ne v1, v3, :cond_2

    .line 246
    iget-boolean v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->logging:Z

    if-eqz v1, :cond_0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No value for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v3, p0, Lcom/kingsoft/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v3, v3, -0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    .line 249
    :cond_0
    const-string/jumbo v0, ""

    .line 259
    :cond_1
    return-object v0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 254
    .local v0, "val":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/kingsoft/exchange/adapter/Parser;->getNext(Z)I

    .line 256
    iget v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->type:I

    if-eq v1, v3, :cond_1

    .line 257
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "No END found!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValueBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->bytes:[B

    return-object v0
.end method

.method public getValueInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 271
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/kingsoft/exchange/adapter/Parser;->getNext(Z)I

    .line 272
    iget v2, p0, Lcom/kingsoft/exchange/adapter/Parser;->type:I

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 283
    :cond_0
    return v0

    .line 276
    :cond_1
    iget v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->num:I

    .line 278
    .local v0, "val":I
    invoke-direct {p0, v1}, Lcom/kingsoft/exchange/adapter/Parser;->getNext(Z)I

    .line 280
    iget v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->type:I

    if-eq v1, v3, :cond_0

    .line 281
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "No END found!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method log(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 385
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 386
    .local v0, "cr":I
    if-lez v0, :cond_0

    .line 387
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 389
    :cond_0
    const-string/jumbo v1, "Exchange"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 390
    sget-boolean v1, Lcom/kingsoft/exchange/Eas;->FILE_LOG:Z

    if-eqz v1, :cond_1

    .line 391
    const-string/jumbo v1, "Exchange"

    invoke-static {v1, p1}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_1
    return-void
.end method

.method public nextTag(I)I
    .locals 3
    .param p1, "endingTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x3

    .line 299
    and-int/lit8 p1, p1, 0x3f

    iput p1, p0, Lcom/kingsoft/exchange/adapter/Parser;->endTag:I

    .line 300
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/kingsoft/exchange/adapter/Parser;->getNext(Z)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 302
    iget v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 303
    iget v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->page:I

    iget v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->startTag:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->tag:I

    .line 304
    iget v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->tag:I

    .line 312
    :cond_1
    :goto_0
    return v0

    .line 306
    :cond_2
    iget v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->type:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->startTag:I

    iget v2, p0, Lcom/kingsoft/exchange/adapter/Parser;->endTag:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 311
    :cond_3
    iget v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->endTag:I

    if-eqz v1, :cond_1

    .line 317
    new-instance v0, Lcom/kingsoft/exchange/adapter/Parser$EodException;

    invoke-direct {v0, p0}, Lcom/kingsoft/exchange/adapter/Parser$EodException;-><init>(Lcom/kingsoft/exchange/adapter/Parser;)V

    throw v0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingsoft/exchange/adapter/Parser;->getNext(Z)I

    .line 347
    iget v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->type:I

    return v0
.end method

.method public parse()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/exchange/EasException;,
            Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method protected pushTag(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 396
    shr-int/lit8 v0, p1, 0x6

    iput v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->page:I

    .line 397
    sget-object v0, Lcom/kingsoft/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    iget v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->page:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 398
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/adapter/Parser;->push(I)V

    .line 399
    return-void
.end method

.method resetInput(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 376
    iput-object p1, p0, Lcom/kingsoft/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    .line 379
    :try_start_0
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/Parser;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/kingsoft/exchange/adapter/Parser;->logging:Z

    .line 192
    return-void
.end method

.method public setInput(Ljava/io/InputStream;Z)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "initialize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    iput-object p1, p0, Lcom/kingsoft/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    .line 360
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 363
    :try_start_0
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/Parser;->readByte()I
    :try_end_0
    .catch Lcom/kingsoft/exchange/adapter/Parser$EofException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/Parser;->readInt()I

    .line 368
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/Parser;->readInt()I

    .line 369
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/Parser;->readInt()I

    .line 371
    :cond_0
    sget-object v1, Lcom/kingsoft/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 372
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Lcom/kingsoft/exchange/adapter/Parser$EofException;
    new-instance v1, Lcom/kingsoft/exchange/adapter/Parser$EmptyStreamException;

    invoke-direct {v1, p0}, Lcom/kingsoft/exchange/adapter/Parser$EmptyStreamException;-><init>(Lcom/kingsoft/exchange/adapter/Parser;)V

    throw v1
.end method

.method public skipTag()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    iget v0, p0, Lcom/kingsoft/exchange/adapter/Parser;->startTag:I

    .line 329
    .local v0, "thisTag":I
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/kingsoft/exchange/adapter/Parser;->getNext(Z)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 330
    iget v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/kingsoft/exchange/adapter/Parser;->startTag:I

    if-ne v1, v0, :cond_0

    .line 331
    return-void

    .line 336
    :cond_1
    new-instance v1, Lcom/kingsoft/exchange/adapter/Parser$EofException;

    invoke-direct {v1, p0}, Lcom/kingsoft/exchange/adapter/Parser$EofException;-><init>(Lcom/kingsoft/exchange/adapter/Parser;)V

    throw v1
.end method
