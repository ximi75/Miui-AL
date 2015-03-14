.class public Lcom/kingsoft/mail/providers/Attachment;
.super Ljava/lang/Object;
.source "Attachment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingsoft/mail/providers/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_PART_ID:Ljava/lang/String; = "empty"

.field public static final FLAG_DUMMY_ATTACHMENT:I = 0x400

.field private static final LOCAL_FILE:Ljava/lang/String; = "LOCAL_FILE"

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final MAX_ATTACHMENT_PREVIEWS:I = 0x2

.field private static final SERVER_ATTACHMENT:Ljava/lang/String; = "SERVER_ATTACHMENT"


# instance fields
.field public contentId:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field public contentUri:Landroid/net/Uri;

.field public destination:I

.field public downloadedSize:I

.field public flags:I

.field public iDownloadFailureReason:Ljava/lang/Integer;

.field private inferredContentType:Ljava/lang/String;

.field private transient mIdentifierUri:Landroid/net/Uri;

.field private name:Ljava/lang/String;

.field public partId:Ljava/lang/String;

.field public previewIntentUri:Landroid/net/Uri;

.field public providerData:Ljava/lang/String;

.field public size:I

.field public state:I

.field private supportsDownloadAgain:Z

.field public thumbnailUri:Landroid/net/Uri;

.field public type:I

.field public uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/Attachment;->LOG_TAG:Ljava/lang/String;

    .line 757
    new-instance v0, Lcom/kingsoft/mail/providers/Attachment$1;

    invoke-direct {v0}, Lcom/kingsoft/mail/providers/Attachment$1;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/providers/Attachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    const-string/jumbo v0, "_display_name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 321
    const-string/jumbo v0, "_size"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    .line 322
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Attachment;->parseOptionalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 323
    const-string/jumbo v0, "contentType"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentType:Ljava/lang/String;

    .line 324
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    .line 325
    const-string/jumbo v0, "destination"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    .line 326
    const-string/jumbo v0, "downloadedSize"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    .line 327
    const-string/jumbo v0, "contentUri"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Attachment;->parseOptionalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    .line 328
    const-string/jumbo v0, "thumbnailUri"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Attachment;->parseOptionalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    .line 329
    const-string/jumbo v0, "previewIntentUri"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Attachment;->parseOptionalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    .line 331
    const-string/jumbo v0, "providerData"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->providerData:Ljava/lang/String;

    .line 332
    const-string/jumbo v0, "supportsDownloadAgain"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Attachment;->supportsDownloadAgain:Z

    .line 333
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->type:I

    .line 334
    const-string/jumbo v0, "flags"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->flags:I

    .line 336
    const-string/jumbo v0, "contentId"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    .line 338
    const-string/jumbo v0, "downloadFailureReason"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->iDownloadFailureReason:Ljava/lang/Integer;

    .line 339
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/Part;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "part"    # Lcom/kingsoft/emailcommon/mail/Part;
    .param p3, "emlFileUri"    # Landroid/net/Uri;
    .param p4, "messageId"    # Ljava/lang/String;
    .param p5, "partId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    :try_start_0
    invoke-interface {p2}, Lcom/kingsoft/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "contentTypeHeader":Ljava/lang/String;
    const-string/jumbo v6, "name"

    invoke-static {v1, v6}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 265
    iget-object v6, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 266
    invoke-interface {p2}, Lcom/kingsoft/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "contentDisposition":Ljava/lang/String;
    const-string/jumbo v6, "filename"

    invoke-static {v0, v6}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 270
    iget-object v6, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getFileNameUnknown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 273
    .end local v0    # "contentDisposition":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    invoke-interface {p2}, Lcom/kingsoft/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kingsoft/mail/utils/MimeType;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/mail/providers/Attachment;->contentType:Ljava/lang/String;

    .line 274
    invoke-static {p3, p4, p5}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->getAttachmentUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 275
    iget-object v6, p0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    iput-object v6, p0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    .line 276
    iget-object v6, p0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    iput-object v6, p0, Lcom/kingsoft/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    .line 277
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/kingsoft/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    .line 278
    const/4 v6, 0x3

    iput v6, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    .line 279
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/kingsoft/mail/providers/Attachment;->providerData:Ljava/lang/String;

    .line 280
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/kingsoft/mail/providers/Attachment;->supportsDownloadAgain:Z

    .line 281
    const/4 v6, 0x0

    iput v6, p0, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    .line 282
    const/4 v6, 0x0

    iput v6, p0, Lcom/kingsoft/mail/providers/Attachment;->type:I

    .line 283
    const/4 v6, 0x0

    iput v6, p0, Lcom/kingsoft/mail/providers/Attachment;->flags:I

    .line 286
    invoke-interface {p2}, Lcom/kingsoft/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    .line 289
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/mail/providers/Attachment;->iDownloadFailureReason:Ljava/lang/Integer;

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 293
    .local v5, "resolver":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    :try_start_1
    invoke-interface {p2}, Lcom/kingsoft/emailcommon/mail/Part;->getBody()Lcom/kingsoft/emailcommon/mail/Body;

    move-result-object v6

    invoke-interface {v6}, Lcom/kingsoft/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 298
    .local v3, "in":Ljava/io/InputStream;
    iget-object v6, p0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    const-string/jumbo v7, "rwt"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v4

    .line 299
    .local v4, "out":Ljava/io/OutputStream;
    invoke-static {v3, v4}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v6

    iput v6, p0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    .line 300
    iget v6, p0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    iput v6, p0, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    .line 301
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 302
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 309
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "out":Ljava/io/OutputStream;
    :goto_0
    :try_start_2
    iget-object v6, p0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 313
    .end local v1    # "contentTypeHeader":Ljava/lang/String;
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    :goto_1
    return-void

    .line 303
    .restart local v1    # "contentTypeHeader":Ljava/lang/String;
    .restart local v5    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v2

    .line 304
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v6, Lcom/kingsoft/mail/providers/Attachment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "Error in writing attachment to cache"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v2, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 310
    .end local v1    # "contentTypeHeader":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    :catch_1
    move-exception v2

    .line 311
    .local v2, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    sget-object v6, Lcom/kingsoft/mail/providers/Attachment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "Error parsing eml attachment"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v2, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 305
    .end local v2    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    .restart local v1    # "contentTypeHeader":Ljava/lang/String;
    .restart local v5    # "resolver":Landroid/content/ContentResolver;
    :catch_2
    move-exception v2

    .line 306
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v6, Lcom/kingsoft/mail/providers/Attachment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "Error in writing attachment to cache"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v2, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    if-nez p1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 212
    :cond_0
    const-string/jumbo v1, "_display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 213
    const-string/jumbo v1, "_size"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    .line 214
    const-string/jumbo v1, "uri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 215
    const-string/jumbo v1, "contentType"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Attachment;->contentType:Ljava/lang/String;

    .line 216
    const-string/jumbo v1, "state"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    .line 217
    const-string/jumbo v1, "destination"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    .line 218
    const-string/jumbo v1, "downloadedSize"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    .line 219
    const-string/jumbo v1, "contentUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/providers/Attachment;->parseOptionalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    .line 221
    const-string/jumbo v1, "thumbnailUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/providers/Attachment;->parseOptionalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    .line 223
    const-string/jumbo v1, "previewIntentUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/providers/Attachment;->parseOptionalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    .line 225
    const-string/jumbo v1, "providerData"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Attachment;->providerData:Ljava/lang/String;

    .line 226
    const-string/jumbo v1, "supportsDownloadAgain"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Attachment;->supportsDownloadAgain:Z

    .line 228
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->type:I

    .line 229
    const-string/jumbo v0, "flags"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->flags:I

    .line 231
    const-string/jumbo v0, "contentId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    .line 233
    const-string/jumbo v0, "downloadFailureReason"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->iDownloadFailureReason:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 226
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    .line 189
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentType:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    .line 194
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    .line 195
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    .line 196
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->providerData:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Attachment;->supportsDownloadAgain:Z

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->type:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->flags:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->iDownloadFailureReason:Ljava/lang/Integer;

    .line 205
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "srcJson"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const-string/jumbo v0, "_display_name"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 238
    const-string/jumbo v0, "_size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    .line 239
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lcom/kingsoft/mail/providers/Attachment;->parseOptionalUri(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 240
    const-string/jumbo v0, "contentType"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentType:Ljava/lang/String;

    .line 241
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    .line 242
    const-string/jumbo v0, "destination"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    .line 243
    const-string/jumbo v0, "downloadedSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    .line 244
    const-string/jumbo v0, "contentUri"

    invoke-static {p1, v0}, Lcom/kingsoft/mail/providers/Attachment;->parseOptionalUri(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    .line 245
    const-string/jumbo v0, "thumbnailUri"

    invoke-static {p1, v0}, Lcom/kingsoft/mail/providers/Attachment;->parseOptionalUri(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    .line 246
    const-string/jumbo v0, "previewIntentUri"

    invoke-static {p1, v0}, Lcom/kingsoft/mail/providers/Attachment;->parseOptionalUri(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    .line 247
    const-string/jumbo v0, "providerData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->providerData:Ljava/lang/String;

    .line 248
    const-string/jumbo v0, "supportsDownloadAgain"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Attachment;->supportsDownloadAgain:Z

    .line 249
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->type:I

    .line 250
    const-string/jumbo v0, "flags"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->flags:I

    .line 252
    const-string/jumbo v0, "contentId"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    .line 254
    const-string/jumbo v0, "downloadFailureReason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->iDownloadFailureReason:Ljava/lang/Integer;

    .line 255
    return-void
.end method

.method public static fromJSONArray(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "jsonArrayStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 675
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 676
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    if-eqz p0, :cond_0

    .line 678
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 680
    .local v0, "arr":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 681
    new-instance v4, Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/kingsoft/mail/providers/Attachment;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 684
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 685
    .local v1, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 688
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v3
.end method

.method public static getPreviewState(III)Z
    .locals 5
    .param p0, "previewStates"    # I
    .param p1, "attachmentIndex"    # I
    .param p2, "rendition"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 743
    mul-int/lit8 v1, p1, 0x2

    .line 744
    .local v1, "shift":I
    shl-int v0, v2, v1

    .line 746
    .local v0, "mask":I
    if-nez p2, :cond_2

    .line 748
    and-int v4, p0, v0

    if-eqz v4, :cond_1

    .line 753
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 748
    goto :goto_0

    .line 749
    :cond_2
    if-ne p2, v2, :cond_3

    .line 751
    shl-int/lit8 v4, v0, 0x1

    and-int/2addr v4, p0

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v3

    .line 753
    goto :goto_0
.end method

.method protected static parseOptionalUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "uriString"    # Ljava/lang/String;

    .prologue
    .line 439
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected static parseOptionalUri(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "srcJson"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 443
    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "uriStr":Ljava/lang/String;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private static stringify(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 435
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toJSONArray(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/kingsoft/mail/providers/Attachment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 660
    .local p0, "attachments":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/kingsoft/mail/providers/Attachment;>;"
    if-nez p0, :cond_0

    .line 661
    const/4 v4, 0x0

    .line 671
    :goto_0
    return-object v4

    .line 663
    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 665
    .local v3, "result":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Attachment;

    .line 666
    .local v0, "attachment":Lcom/kingsoft/mail/providers/Attachment;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->toJSON()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 668
    .end local v0    # "attachment":Lcom/kingsoft/mail/providers/Attachment;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 669
    .local v1, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 671
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static updatePreviewStates(IIIZ)I
    .locals 3
    .param p0, "previewStates"    # I
    .param p1, "attachmentIndex"    # I
    .param p2, "rendition"    # I
    .param p3, "downloaded"    # Z

    .prologue
    .line 721
    mul-int/lit8 v2, p1, 0x2

    add-int v1, v2, p2

    .line 722
    .local v1, "shift":I
    const/4 v2, 0x1

    shl-int v0, v2, v1

    .line 724
    .local v0, "mask":I
    if-eqz p3, :cond_0

    .line 726
    or-int v2, p0, v0

    .line 729
    :goto_0
    return v2

    :cond_0
    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v2, p0

    goto :goto_0
.end method


# virtual methods
.method public canPreview()Z
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSave()Z
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Attachment;->isSavedToExternal()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/MimeType;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canShare()Z
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Attachment;->isPresentLocally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 573
    if-ne p0, p1, :cond_1

    .line 634
    :cond_0
    :goto_0
    return v1

    .line 576
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 577
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 580
    check-cast v0, Lcom/kingsoft/mail/providers/Attachment;

    .line 582
    .local v0, "that":Lcom/kingsoft/mail/providers/Attachment;
    iget v3, p0, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    iget v4, v0, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 583
    goto :goto_0

    .line 585
    :cond_4
    iget v3, p0, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    iget v4, v0, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 586
    goto :goto_0

    .line 588
    :cond_5
    iget v3, p0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    iget v4, v0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 589
    goto :goto_0

    .line 591
    :cond_6
    iget v3, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    iget v4, v0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 592
    goto :goto_0

    .line 594
    :cond_7
    iget-boolean v3, p0, Lcom/kingsoft/mail/providers/Attachment;->supportsDownloadAgain:Z

    iget-boolean v4, v0, Lcom/kingsoft/mail/providers/Attachment;->supportsDownloadAgain:Z

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 595
    goto :goto_0

    .line 597
    :cond_8
    iget v3, p0, Lcom/kingsoft/mail/providers/Attachment;->type:I

    iget v4, v0, Lcom/kingsoft/mail/providers/Attachment;->type:I

    if-eq v3, v4, :cond_9

    move v1, v2

    .line 598
    goto :goto_0

    .line 600
    :cond_9
    iget-object v3, p0, Lcom/kingsoft/mail/providers/Attachment;->contentType:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Attachment;->contentType:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    .line 602
    goto :goto_0

    .line 600
    :cond_b
    iget-object v3, v0, Lcom/kingsoft/mail/providers/Attachment;->contentType:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 604
    :cond_c
    iget-object v3, p0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move v1, v2

    .line 605
    goto :goto_0

    .line 604
    :cond_e
    iget-object v3, v0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    if-nez v3, :cond_d

    .line 607
    :cond_f
    iget-object v3, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_10
    move v1, v2

    .line 608
    goto :goto_0

    .line 607
    :cond_11
    iget-object v3, v0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 610
    :cond_12
    iget-object v3, p0, Lcom/kingsoft/mail/providers/Attachment;->partId:Ljava/lang/String;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Attachment;->partId:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Attachment;->partId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    :cond_13
    move v1, v2

    .line 611
    goto/16 :goto_0

    .line 610
    :cond_14
    iget-object v3, v0, Lcom/kingsoft/mail/providers/Attachment;->partId:Ljava/lang/String;

    if-nez v3, :cond_13

    .line 613
    :cond_15
    iget-object v3, p0, Lcom/kingsoft/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_16
    move v1, v2

    .line 615
    goto/16 :goto_0

    .line 613
    :cond_17
    iget-object v3, v0, Lcom/kingsoft/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    if-nez v3, :cond_16

    .line 617
    :cond_18
    iget-object v3, p0, Lcom/kingsoft/mail/providers/Attachment;->providerData:Ljava/lang/String;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Attachment;->providerData:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Attachment;->providerData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    :cond_19
    move v1, v2

    .line 619
    goto/16 :goto_0

    .line 617
    :cond_1a
    iget-object v3, v0, Lcom/kingsoft/mail/providers/Attachment;->providerData:Ljava/lang/String;

    if-nez v3, :cond_19

    .line 621
    :cond_1b
    iget-object v3, p0, Lcom/kingsoft/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    :cond_1c
    move v1, v2

    .line 623
    goto/16 :goto_0

    .line 621
    :cond_1d
    iget-object v3, v0, Lcom/kingsoft/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    if-nez v3, :cond_1c

    .line 625
    :cond_1e
    iget-object v3, p0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    :cond_1f
    move v1, v2

    .line 626
    goto/16 :goto_0

    .line 625
    :cond_20
    iget-object v3, v0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    if-nez v3, :cond_1f

    .line 630
    :cond_21
    iget-object v3, p0, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 631
    goto/16 :goto_0

    .line 630
    :cond_22
    iget-object v3, v0, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->inferredContentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Attachment;->contentType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kingsoft/mail/utils/MimeType;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->inferredContentType:Ljava/lang/String;

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->inferredContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifierUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->mIdentifierUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->isEmpty(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->isEmpty(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->isEmpty(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_0
    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->mIdentifierUri:Landroid/net/Uri;

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->mIdentifierUri:Landroid/net/Uri;

    return-object v0

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUriForRendition(I)Landroid/net/Uri;
    .locals 4
    .param p1, "rendition"    # I

    .prologue
    .line 528
    packed-switch p1, :pswitch_data_0

    .line 536
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid rendition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 530
    :pswitch_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    .line 538
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 533
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_1
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    .line 534
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 639
    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->partId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->partId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 640
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 641
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    add-int v0, v2, v3

    .line 642
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 643
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->contentType:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 644
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    add-int v0, v2, v3

    .line 645
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    add-int v0, v2, v3

    .line 646
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    add-int v0, v2, v3

    .line 647
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 648
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 649
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 650
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/kingsoft/mail/providers/Attachment;->type:I

    add-int v0, v2, v3

    .line 651
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->providerData:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->providerData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 652
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v2, p0, Lcom/kingsoft/mail/providers/Attachment;->supportsDownloadAgain:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    :goto_8
    add-int v0, v3, v2

    .line 654
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 656
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 639
    goto/16 :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 640
    goto/16 :goto_1

    :cond_3
    move v2, v1

    .line 642
    goto :goto_2

    :cond_4
    move v2, v1

    .line 643
    goto :goto_3

    :cond_5
    move v2, v1

    .line 647
    goto :goto_4

    :cond_6
    move v2, v1

    .line 648
    goto :goto_5

    :cond_7
    move v2, v1

    .line 649
    goto :goto_6

    :cond_8
    move v2, v1

    .line 651
    goto :goto_7

    :cond_9
    move v2, v1

    .line 652
    goto :goto_8
.end method

.method public isDownloadFailed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 491
    iget v1, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloadFinishedOrFailed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 495
    iget v1, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloading()Z
    .locals 2

    .prologue
    .line 466
    iget v0, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInstallable()Z
    .locals 1

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/MimeType;->isInstallable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPresentLocally()Z
    .locals 2

    .prologue
    .line 453
    iget v0, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaved()Z
    .locals 2

    .prologue
    .line 478
    iget v0, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSavedToExternal()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 470
    iget v1, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentType:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->inferredContentType:Ljava/lang/String;

    .line 544
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Attachment;->contentType:Ljava/lang/String;

    .line 546
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->inferredContentType:Ljava/lang/String;

    .line 555
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 556
    const/4 v0, 0x1

    .line 558
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 565
    iput p1, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    .line 566
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 567
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    .line 569
    :cond_1
    return-void
.end method

.method public shouldShowProgress()Z
    .locals 2

    .prologue
    .line 486
    iget v0, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    iget v1, p0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsDownloadAgain()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Attachment;->supportsDownloadAgain:Z

    return v0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 346
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 348
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "_display_name"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string/jumbo v1, "_size"

    iget v2, p0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    const-string/jumbo v1, "uri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string/jumbo v1, "contentType"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string/jumbo v1, "state"

    iget v2, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    const-string/jumbo v1, "destination"

    iget v2, p0, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    const-string/jumbo v1, "downloadedSize"

    iget v2, p0, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    const-string/jumbo v1, "contentUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string/jumbo v1, "thumbnailUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string/jumbo v2, "previewIntentUri"

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string/jumbo v1, "providerData"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->providerData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string/jumbo v1, "supportsDownloadAgain"

    iget-boolean v2, p0, Lcom/kingsoft/mail/providers/Attachment;->supportsDownloadAgain:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 361
    const-string/jumbo v1, "type"

    iget v2, p0, Lcom/kingsoft/mail/providers/Attachment;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    const-string/jumbo v1, "flags"

    iget v2, p0, Lcom/kingsoft/mail/providers/Attachment;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    const-string/jumbo v1, "contentId"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-object v0

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 391
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 393
    .local v0, "result":Lorg/json/JSONObject;
    const-string/jumbo v1, "_display_name"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    const-string/jumbo v1, "_size"

    iget v2, p0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 395
    const-string/jumbo v1, "uri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/kingsoft/mail/providers/Attachment;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    const-string/jumbo v1, "contentType"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    const-string/jumbo v1, "state"

    iget v2, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 398
    const-string/jumbo v1, "destination"

    iget v2, p0, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 399
    const-string/jumbo v1, "downloadedSize"

    iget v2, p0, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 400
    const-string/jumbo v1, "contentUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/kingsoft/mail/providers/Attachment;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    const-string/jumbo v1, "thumbnailUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/kingsoft/mail/providers/Attachment;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    const-string/jumbo v1, "previewIntentUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/kingsoft/mail/providers/Attachment;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    const-string/jumbo v1, "providerData"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->providerData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    const-string/jumbo v1, "supportsDownloadAgain"

    iget-boolean v2, p0, Lcom/kingsoft/mail/providers/Attachment;->supportsDownloadAgain:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 405
    const-string/jumbo v1, "type"

    iget v2, p0, Lcom/kingsoft/mail/providers/Attachment;->type:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 406
    const-string/jumbo v1, "flags"

    iget v2, p0, Lcom/kingsoft/mail/providers/Attachment;->flags:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 408
    const-string/jumbo v1, "contentId"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    return-object v0
.end method

.method public toJoinedString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 695
    const-string/jumbo v1, "|"

    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->partId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget v3, p0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "SERVER_ATTACHMENT"

    :goto_2
    aput-object v0, v2, v3

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, v2, v3

    const/4 v0, 0x7

    const-string/jumbo v3, ""

    aput-object v3, v2, v0

    const/16 v0, 0x8

    iget v3, p0, Lcom/kingsoft/mail/providers/Attachment;->type:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->partId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    const-string/jumbo v4, "[|\n]"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "LOCAL_FILE"

    goto :goto_2

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 416
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Attachment;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 418
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "partId"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Attachment;->partId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->providerData:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 422
    :try_start_1
    const-string/jumbo v2, "providerData"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/kingsoft/mail/providers/Attachment;->providerData:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 427
    :cond_0
    :goto_0
    const/4 v2, 0x4

    :try_start_2
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 430
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 423
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/kingsoft/mail/providers/Attachment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "JSONException when adding provider data"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 428
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 429
    .restart local v0    # "e":Lorg/json/JSONException;
    sget-object v2, Lcom/kingsoft/mail/providers/Attachment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "JSONException in toString"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 430
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    iget v0, p0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 374
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 375
    iget v0, p0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget v0, p0, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget v0, p0, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 379
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 380
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 381
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->providerData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 382
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Attachment;->supportsDownloadAgain:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget v0, p0, Lcom/kingsoft/mail/providers/Attachment;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    return-void

    .line 382
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
