.class Lcom/kingsoft/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;
.super Lcom/kingsoft/exchange/utility/UriCodec;
.source "AttachmentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/adapter/AttachmentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttachmentNameEncoder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/kingsoft/exchange/utility/UriCodec;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/exchange/adapter/AttachmentLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/exchange/adapter/AttachmentLoader$1;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected isRetained(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 80
    const/16 v0, 0x5f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
