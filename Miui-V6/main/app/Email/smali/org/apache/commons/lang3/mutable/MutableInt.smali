.class public Lorg/apache/commons/lang3/mutable/MutableInt;
.super Ljava/lang/Number;
.source "MutableInt.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/lang3/mutable/MutableInt;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x77401786b8L


# instance fields
.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 54
    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 65
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 78
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .param p1, "operand"    # I

    .prologue
    .line 138
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 139
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    .line 149
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 150
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableInt;->compareTo(Lorg/apache/commons/lang3/mutable/MutableInt;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableInt;)I
    .locals 2
    .param p1, "other"    # Lorg/apache/commons/lang3/mutable/MutableInt;

    .prologue
    .line 261
    iget v0, p1, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 262
    .local v0, "anotherVal":I
    iget v1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    if-ge v1, v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public decrement()V
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 128
    return-void
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 236
    instance-of v1, p1, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-eqz v1, :cond_0

    .line 237
    iget v1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 239
    :cond_0
    return v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableInt;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0
.end method

.method public increment()V
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 119
    return-void
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 97
    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 98
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 108
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 109
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableInt;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(I)V
    .locals 1
    .param p1, "operand"    # I

    .prologue
    .line 159
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 160
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    .line 170
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 171
    return-void
.end method

.method public toInteger()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
