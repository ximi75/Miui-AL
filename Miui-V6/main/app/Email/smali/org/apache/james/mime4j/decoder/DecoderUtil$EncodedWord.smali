.class Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;
.super Ljava/lang/Object;
.source "DecoderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/decoder/DecoderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncodedWord"
.end annotation


# instance fields
.field public charset:Ljava/lang/String;

.field public encodedText:Ljava/lang/String;

.field public encoding:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/james/mime4j/decoder/DecoderUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/james/mime4j/decoder/DecoderUtil$1;

    .prologue
    .line 149
    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;-><init>()V

    return-void
.end method
