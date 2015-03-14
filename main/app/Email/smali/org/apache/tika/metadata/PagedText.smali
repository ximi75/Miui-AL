.class public interface abstract Lorg/apache/tika/metadata/PagedText;
.super Ljava/lang/Object;
.source "PagedText.java"


# static fields
.field public static final N_PAGES:Lorg/apache/tika/metadata/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "xmpTPg:NPages"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalInteger(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/metadata/PagedText;->N_PAGES:Lorg/apache/tika/metadata/Property;

    return-void
.end method
