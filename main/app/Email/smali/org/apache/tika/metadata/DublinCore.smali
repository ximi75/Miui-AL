.class public interface abstract Lorg/apache/tika/metadata/DublinCore;
.super Ljava/lang/Object;
.source "DublinCore.java"


# static fields
.field public static final CONTRIBUTOR:Ljava/lang/String; = "contributor"

.field public static final COVERAGE:Ljava/lang/String; = "coverage"

.field public static final CREATOR:Ljava/lang/String; = "creator"

.field public static final DATE:Lorg/apache/tika/metadata/Property;

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final FORMAT:Ljava/lang/String; = "format"

.field public static final IDENTIFIER:Ljava/lang/String; = "identifier"

.field public static final LANGUAGE:Ljava/lang/String; = "language"

.field public static final MODIFIED:Ljava/lang/String; = "modified"

.field public static final PUBLISHER:Ljava/lang/String; = "publisher"

.field public static final RELATION:Ljava/lang/String; = "relation"

.field public static final RIGHTS:Ljava/lang/String; = "rights"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "date"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalDate(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/DublinCore;->DATE:Lorg/apache/tika/metadata/Property;

    .line 162
    return-void
.end method
