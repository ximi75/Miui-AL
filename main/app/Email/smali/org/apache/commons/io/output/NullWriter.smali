.class public Lorg/apache/commons/io/output/NullWriter;
.super Ljava/io/Writer;
.source "NullWriter.java"


# static fields
.field public static final NULL_WRITER:Lorg/apache/commons/io/output/NullWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lorg/apache/commons/io/output/NullWriter;

    invoke-direct {v0}, Lorg/apache/commons/io/output/NullWriter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/output/NullWriter;->NULL_WRITER:Lorg/apache/commons/io/output/NullWriter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public write(I)V
    .locals 0
    .param p1, "idx"    # I

    .prologue
    .line 49
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 78
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "st"    # I
    .param p3, "end"    # I

    .prologue
    .line 89
    return-void
.end method

.method public write([C)V
    .locals 0
    .param p1, "chr"    # [C

    .prologue
    .line 58
    return-void
.end method

.method public write([CII)V
    .locals 0
    .param p1, "chr"    # [C
    .param p2, "st"    # I
    .param p3, "end"    # I

    .prologue
    .line 69
    return-void
.end method
