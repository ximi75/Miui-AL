.class public Lde/innosystec/unrar/unpack/decode/LitDecode;
.super Lde/innosystec/unrar/unpack/decode/Decode;
.source "LitDecode.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/decode/Decode;-><init>()V

    .line 33
    const/16 v0, 0x12b

    new-array v0, v0, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/decode/LitDecode;->decodeNum:[I

    .line 34
    return-void
.end method