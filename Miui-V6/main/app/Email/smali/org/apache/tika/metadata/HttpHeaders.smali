.class public interface abstract Lorg/apache/tika/metadata/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# static fields
.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final CONTENT_LANGUAGE:Ljava/lang/String; = "Content-Language"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final CONTENT_LOCATION:Ljava/lang/String; = "Content-Location"

.field public static final CONTENT_MD5:Ljava/lang/String; = "Content-MD5"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final LAST_MODIFIED:Lorg/apache/tika/metadata/Property;

.field public static final LOCATION:Ljava/lang/String; = "Location"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "Last-Modified"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalDate(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 41
    sput-object v0, Lorg/apache/tika/metadata/HttpHeaders;->LAST_MODIFIED:Lorg/apache/tika/metadata/Property;

    .line 44
    return-void
.end method
