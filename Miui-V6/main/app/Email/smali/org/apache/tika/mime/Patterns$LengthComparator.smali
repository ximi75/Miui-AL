.class final Lorg/apache/tika/mime/Patterns$LengthComparator;
.super Ljava/lang/Object;
.source "Patterns.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tika/mime/Patterns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LengthComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7585689e2d60e647L


# instance fields
.field final synthetic this$0:Lorg/apache/tika/mime/Patterns;


# direct methods
.method private constructor <init>(Lorg/apache/tika/mime/Patterns;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lorg/apache/tika/mime/Patterns$LengthComparator;->this$0:Lorg/apache/tika/mime/Patterns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tika/mime/Patterns;Lorg/apache/tika/mime/Patterns$LengthComparator;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/apache/tika/mime/Patterns$LengthComparator;-><init>(Lorg/apache/tika/mime/Patterns;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/tika/mime/Patterns$LengthComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 69
    .local v0, "diff":I
    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 72
    :cond_0
    return v0
.end method
