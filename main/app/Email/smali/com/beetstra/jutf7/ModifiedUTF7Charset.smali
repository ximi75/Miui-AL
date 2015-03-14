.class Lcom/beetstra/jutf7/ModifiedUTF7Charset;
.super Lcom/beetstra/jutf7/UTF7StyleCharset;
.source "ModifiedUTF7Charset.java"


# static fields
.field private static final MODIFIED_BASE64_ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+,"


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "aliases"    # [Ljava/lang/String;

    .prologue
    .line 41
    const-string/jumbo v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+,"

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/beetstra/jutf7/UTF7StyleCharset;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    return-void
.end method


# virtual methods
.method canEncodeDirectly(C)Z
    .locals 2
    .param p1, "ch"    # C

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/beetstra/jutf7/ModifiedUTF7Charset;->shift()B

    move-result v1

    if-ne p1, v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x20

    if-lt p1, v1, :cond_0

    const/16 v1, 0x7e

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method shift()B
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x26

    return v0
.end method

.method unshift()B
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x2d

    return v0
.end method
