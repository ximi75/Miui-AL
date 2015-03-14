.class Lorg/apache/tika/parser/ParserDecorator$1;
.super Lorg/apache/tika/parser/ParserDecorator;
.source "ParserDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tika/parser/ParserDecorator;->withTypes(Lorg/apache/tika/parser/Parser;Ljava/util/Set;)Lorg/apache/tika/parser/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x65eedd70f8a2792bL


# instance fields
.field private final synthetic val$types:Ljava/util/Set;


# direct methods
.method constructor <init>(Lorg/apache/tika/parser/Parser;Ljava/util/Set;)V
    .locals 0
    .param p1, "$anonymous0"    # Lorg/apache/tika/parser/Parser;

    .prologue
    .line 1
    iput-object p2, p0, Lorg/apache/tika/parser/ParserDecorator$1;->val$types:Ljava/util/Set;

    .line 50
    invoke-direct {p0, p1}, Lorg/apache/tika/parser/ParserDecorator;-><init>(Lorg/apache/tika/parser/Parser;)V

    return-void
.end method


# virtual methods
.method public getSupportedTypes(Lorg/apache/tika/parser/ParseContext;)Ljava/util/Set;
    .locals 1
    .param p1, "context"    # Lorg/apache/tika/parser/ParseContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tika/parser/ParseContext;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/tika/mime/MediaType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/tika/parser/ParserDecorator$1;->val$types:Ljava/util/Set;

    return-object v0
.end method
