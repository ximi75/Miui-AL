.class public Lorg/apache/tika/io/NullOutputStream;
.super Ljava/io/OutputStream;
.source "NullOutputStream.java"


# static fields
.field public static final NULL_OUTPUT_STREAM:Lorg/apache/tika/io/NullOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/apache/tika/io/NullOutputStream;

    invoke-direct {v0}, Lorg/apache/tika/io/NullOutputStream;-><init>()V

    sput-object v0, Lorg/apache/tika/io/NullOutputStream;->NULL_OUTPUT_STREAM:Lorg/apache/tika/io/NullOutputStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .param p1, "b"    # I

    .prologue
    .line 56
    return-void
.end method

.method public write([B)V
    .locals 0
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    return-void
.end method

.method public write([BII)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 47
    return-void
.end method
