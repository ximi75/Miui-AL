.class public Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;
.super Ljava/lang/Object;
.source "ImageAttachmentRequest.java"

# interfaces
.implements Lcom/kingsoft/bitmap/DecodeTask$Request;


# instance fields
.field private final mContext:Landroid/content/Context;

.field public final mDestW:I

.field private final mLookupUri:Ljava/lang/String;

.field private final mRendition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Ljava/lang/String;
    .param p3, "rendition"    # I
    .param p4, "destW"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mLookupUri:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mRendition:I

    .line 33
    iput p4, p0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mDestW:I

    .line 34
    return-void
.end method


# virtual methods
.method public createFd()Landroid/content/res/AssetFileDescriptor;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v8, 0x0

    .line 82
    .local v8, "result":Landroid/content/res/AssetFileDescriptor;
    const/4 v7, 0x0

    .line 83
    .local v7, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 85
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mLookupUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 87
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v6, Lcom/kingsoft/mail/providers/Attachment;

    invoke-direct {v6, v7}, Lcom/kingsoft/mail/providers/Attachment;-><init>(Landroid/database/Cursor;)V

    .line 89
    .local v6, "a":Lcom/kingsoft/mail/providers/Attachment;
    iget v1, p0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mRendition:I

    invoke-virtual {v6, v1}, Lcom/kingsoft/mail/providers/Attachment;->getUriForRendition(I)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 92
    .end local v6    # "a":Lcom/kingsoft/mail/providers/Attachment;
    :cond_0
    if-eqz v7, :cond_1

    .line 93
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_1
    return-object v8

    .line 92
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_2

    .line 93
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public createInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 38
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    if-nez v2, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 41
    check-cast v0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    .line 42
    .local v0, "other":Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;
    iget-object v2, p0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mLookupUri:Ljava/lang/String;

    iget-object v3, v0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mLookupUri:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mRendition:I

    iget v3, v0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mRendition:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mDestW:I

    iget v3, v0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mDestW:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 48
    const/16 v0, 0x11

    .line 49
    .local v0, "hash":I
    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mLookupUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v1, v1, 0x20f

    add-int/2addr v0, v1

    .line 50
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mRendition:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 51
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mDestW:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 52
    return v0
.end method

.method public matches(Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;)Z
    .locals 2
    .param p1, "other"    # Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    .prologue
    .line 75
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mLookupUri:Ljava/lang/String;

    iget-object v1, p1, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mLookupUri:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mDestW:I

    iget v1, p1, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mDestW:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string/jumbo v1, " uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mLookupUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string/jumbo v1, " rendition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget v1, p0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mRendition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v1, " w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget v1, p0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mDestW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
