.class public interface abstract Lorg/apache/tika/metadata/Geographic;
.super Ljava/lang/Object;
.source "Geographic.java"


# static fields
.field public static final ALTITUDE:Lorg/apache/tika/metadata/Property;

.field public static final LATITUDE:Lorg/apache/tika/metadata/Property;

.field public static final LONGITUDE:Lorg/apache/tika/metadata/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "geo:lat"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalReal(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 33
    sput-object v0, Lorg/apache/tika/metadata/Geographic;->LATITUDE:Lorg/apache/tika/metadata/Property;

    .line 40
    const-string/jumbo v0, "geo:long"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalReal(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 39
    sput-object v0, Lorg/apache/tika/metadata/Geographic;->LONGITUDE:Lorg/apache/tika/metadata/Property;

    .line 46
    const-string/jumbo v0, "geo:alt"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalReal(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 45
    sput-object v0, Lorg/apache/tika/metadata/Geographic;->ALTITUDE:Lorg/apache/tika/metadata/Property;

    .line 46
    return-void
.end method
