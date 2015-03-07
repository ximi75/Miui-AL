.class Lcom/kingsoft/ex/photo/util/ImageUtils$DataInputStreamFactory;
.super Lcom/kingsoft/ex/photo/util/ImageUtils$BaseInputStreamFactory;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/photo/util/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataInputStreamFactory"
.end annotation


# instance fields
.field private mData:[B


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 250
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/ex/photo/util/ImageUtils$BaseInputStreamFactory;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 251
    return-void
.end method

.method private parseDataUri(Landroid/net/Uri;)[B
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 265
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "ssp":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "base64,"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 268
    const-string/jumbo v4, "base64,"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "base64":Ljava/lang/String;
    const/16 v4, 0x8

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 279
    .end local v0    # "base64":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 270
    :cond_1
    # getter for: Lcom/kingsoft/ex/photo/util/ImageUtils;->BASE64_IMAGE_URI_PATTERN:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/kingsoft/ex/photo/util/ImageUtils;->access$000()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 271
    const-string/jumbo v4, "base64,"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "base64,"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    .restart local v0    # "base64":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 277
    .end local v0    # "base64":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 278
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "ImageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Mailformed data URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/kingsoft/ex/photo/util/ImageUtils$DataInputStreamFactory;->mData:[B

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/kingsoft/ex/photo/util/ImageUtils$DataInputStreamFactory;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/kingsoft/ex/photo/util/ImageUtils$DataInputStreamFactory;->parseDataUri(Landroid/net/Uri;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/ex/photo/util/ImageUtils$DataInputStreamFactory;->mData:[B

    .line 257
    iget-object v0, p0, Lcom/kingsoft/ex/photo/util/ImageUtils$DataInputStreamFactory;->mData:[B

    if-nez v0, :cond_0

    .line 258
    invoke-super {p0}, Lcom/kingsoft/ex/photo/util/ImageUtils$BaseInputStreamFactory;->createInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/kingsoft/ex/photo/util/ImageUtils$DataInputStreamFactory;->mData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method
