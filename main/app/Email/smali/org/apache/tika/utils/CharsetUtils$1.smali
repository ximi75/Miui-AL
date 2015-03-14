.class Lorg/apache/tika/utils/CharsetUtils$1;
.super Ljava/util/HashMap;
.source "CharsetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tika/utils/CharsetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 36
    const-string/jumbo v0, "none"

    invoke-virtual {p0, v0, v1}, Lorg/apache/tika/utils/CharsetUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string/jumbo v0, "no"

    invoke-virtual {p0, v0, v1}, Lorg/apache/tika/utils/CharsetUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v0, "iso-8851-1"

    const-string/jumbo v1, "iso-8859-1"

    invoke-virtual {p0, v0, v1}, Lorg/apache/tika/utils/CharsetUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string/jumbo v0, "windows"

    const-string/jumbo v1, "windows-1252"

    invoke-virtual {p0, v0, v1}, Lorg/apache/tika/utils/CharsetUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v0, "koi8r"

    const-string/jumbo v1, "KOI8-R"

    invoke-virtual {p0, v0, v1}, Lorg/apache/tika/utils/CharsetUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
