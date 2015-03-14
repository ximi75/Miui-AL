.class public final Lorg/apache/tika/metadata/PropertyTypeException;
.super Ljava/lang/IllegalArgumentException;
.source "PropertyTypeException.java"


# direct methods
.method public constructor <init>(Lorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$PropertyType;)V
    .locals 2
    .param p1, "expected"    # Lorg/apache/tika/metadata/Property$PropertyType;
    .param p2, "found"    # Lorg/apache/tika/metadata/Property$PropertyType;

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Expected a property of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/metadata/Property$ValueType;Lorg/apache/tika/metadata/Property$ValueType;)V
    .locals 2
    .param p1, "expected"    # Lorg/apache/tika/metadata/Property$ValueType;
    .param p2, "found"    # Lorg/apache/tika/metadata/Property$ValueType;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Expected a property with a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " value, but received a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method
