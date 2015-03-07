.class public Lcom/kingsoft/mail/providers/EmlAttachmentProvider;
.super Landroid/content/ContentProvider;
.source "EmlAttachmentProvider.java"


# static fields
.field private static final ATTACHMENT:I = 0x1

.field private static final ATTACHMENT_LIST:I = 0x0

.field private static BASE_URI:Landroid/net/Uri; = null

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final READ_TIMEOUT:J = 0x36ee80L

.field private static final sUriMatcher:Landroid/content/UriMatcher;

.field private static sUrisAddedToMatcher:Z


# instance fields
.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mUriAttachmentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/kingsoft/mail/providers/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mUriListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->LOG_TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->sUrisAddedToMatcher:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addRow(Landroid/database/MatrixCursor;Landroid/net/Uri;Ljava/util/List;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/MatrixCursor;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/MatrixCursor;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p3, "contentTypeQueryParameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->mUriAttachmentMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Attachment;

    .line 217
    .local v0, "attachment":Lcom/kingsoft/mail/providers/Attachment;
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 218
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 219
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    invoke-static {p1, v0}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->addRow(Landroid/database/MatrixCursor;Lcom/kingsoft/mail/providers/Attachment;)V

    .line 227
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "type":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 225
    :cond_2
    invoke-static {p1, v0}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->addRow(Landroid/database/MatrixCursor;Lcom/kingsoft/mail/providers/Attachment;)V

    goto :goto_0
.end method

.method private static addRow(Landroid/database/MatrixCursor;Lcom/kingsoft/mail/providers/Attachment;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/MatrixCursor;
    .param p1, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    iget v1, p1, Lcom/kingsoft/mail/providers/Attachment;->size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    iget v1, p1, Lcom/kingsoft/mail/providers/Attachment;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    iget v1, p1, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    iget v1, p1, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/kingsoft/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/kingsoft/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/kingsoft/mail/providers/Attachment;->providerData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Attachment;->supportsDownloadAgain()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 249
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyAttachment(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 28
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 257
    const-string/jumbo v2, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    .line 258
    .local v20, "newState":Ljava/lang/Integer;
    const-string/jumbo v2, "destination"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 260
    .local v19, "newDestination":Ljava/lang/Integer;
    if-nez v20, :cond_1

    if-nez v19, :cond_1

    .line 261
    const/4 v2, 0x0

    .line 370
    :cond_0
    :goto_0
    return v2

    .line 264
    :cond_1
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 266
    .local v13, "destination":I
    :goto_1
    const/4 v2, 0x1

    if-ne v13, v2, :cond_4

    const/16 v26, 0x1

    .line 269
    .local v26, "saveToSd":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->mUriAttachmentMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kingsoft/mail/providers/Attachment;

    .line 275
    .local v11, "attachment":Lcom/kingsoft/mail/providers/Attachment;
    if-eqz v26, :cond_2

    invoke-virtual {v11}, Lcom/kingsoft/mail/providers/Attachment;->isSavedToExternal()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 276
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 264
    .end local v11    # "attachment":Lcom/kingsoft/mail/providers/Attachment;
    .end local v13    # "destination":I
    .end local v26    # "saveToSd":Z
    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 266
    .restart local v13    # "destination":I
    :cond_4
    const/16 v26, 0x0

    goto :goto_2

    .line 281
    .restart local v11    # "attachment":Lcom/kingsoft/mail/providers/Attachment;
    .restart local v26    # "saveToSd":Z
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v23

    .line 285
    .local v23, "oldFilePath":Ljava/lang/String;
    const/4 v2, 0x1

    iput v2, v11, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    .line 286
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 288
    .local v7, "newFilePath":Ljava/lang/String;
    const/4 v15, 0x0

    .line 289
    .local v15, "inputStream":Ljava/io/InputStream;
    const/16 v24, 0x0

    .line 293
    .local v24, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 299
    .end local v15    # "inputStream":Ljava/io/InputStream;
    .local v16, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v25, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 305
    .end local v24    # "outputStream":Ljava/io/OutputStream;
    .local v25, "outputStream":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    .line 306
    .local v21, "now":J
    const/16 v2, 0x1000

    new-array v12, v2, [B

    .line 307
    .local v12, "data":[B
    const/16 v27, 0x0

    .line 309
    .local v27, "size":I
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/io/InputStream;->read([B)I

    move-result v18

    .line 310
    .local v18, "len":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_b

    .line 311
    const/4 v2, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v12, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 313
    add-int v27, v27, v18

    .line 317
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v2, v21

    const-wide/32 v5, 0x36ee80

    cmp-long v2, v2, v5

    if-lez v2, :cond_6

    .line 318
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Timed out copying attachment."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    .end local v12    # "data":[B
    .end local v18    # "len":I
    .end local v21    # "now":J
    .end local v27    # "size":I
    :catch_0
    move-exception v14

    .line 349
    .local v14, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v2, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Cannot write to file %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v7, v5, v6

    invoke-static {v2, v14, v3, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 350
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 354
    .end local v14    # "e":Ljava/io/IOException;
    :goto_3
    if-eqz v16, :cond_7

    .line 355
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 360
    :cond_7
    :goto_4
    if-eqz v25, :cond_8

    .line 361
    :try_start_5
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 368
    :cond_8
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->getListUriFromAttachmentUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 370
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 294
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v25    # "outputStream":Ljava/io/OutputStream;
    .restart local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v24    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v14

    .line 295
    .local v14, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    sget-object v2, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "File not found for file %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v23, v5, v6

    invoke-static {v2, v3, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 296
    const/4 v2, 0x0

    .line 354
    if-eqz v15, :cond_9

    .line 355
    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 360
    :cond_9
    :goto_6
    if-eqz v24, :cond_0

    .line 361
    :try_start_8
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 363
    :catch_2
    move-exception v3

    goto/16 :goto_0

    .line 300
    .end local v14    # "e":Ljava/io/FileNotFoundException;
    .end local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v14

    .line 301
    .restart local v14    # "e":Ljava/io/FileNotFoundException;
    :try_start_9
    sget-object v2, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "File not found for file %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 302
    const/4 v2, 0x0

    .line 354
    if-eqz v16, :cond_a

    .line 355
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 360
    :cond_a
    :goto_7
    if-eqz v24, :cond_0

    .line 361
    :try_start_b
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_0

    .line 363
    :catch_4
    move-exception v3

    goto/16 :goto_0

    .line 323
    .end local v14    # "e":Ljava/io/FileNotFoundException;
    .end local v24    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "data":[B
    .restart local v18    # "len":I
    .restart local v21    # "now":J
    .restart local v25    # "outputStream":Ljava/io/OutputStream;
    .restart local v27    # "size":I
    :cond_b
    :try_start_c
    invoke-virtual {v11}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/MimeType;->isInstallable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v11, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 331
    :cond_c
    :try_start_d
    invoke-virtual {v11}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, "description":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v11}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v11}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v6

    move/from16 v0, v27

    int-to-long v8, v0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 341
    .end local v4    # "description":Ljava/lang/String;
    :goto_8
    :try_start_e
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v17, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 346
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_3

    .line 353
    .end local v12    # "data":[B
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "len":I
    .end local v21    # "now":J
    .end local v27    # "size":I
    :catchall_0
    move-exception v2

    move-object/from16 v24, v25

    .end local v25    # "outputStream":Ljava/io/OutputStream;
    .restart local v24    # "outputStream":Ljava/io/OutputStream;
    move-object/from16 v15, v16

    .line 354
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v15    # "inputStream":Ljava/io/InputStream;
    :goto_9
    if-eqz v15, :cond_d

    .line 355
    :try_start_f
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 360
    :cond_d
    :goto_a
    if-eqz v24, :cond_e

    .line 361
    :try_start_10
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 364
    :cond_e
    :goto_b
    throw v2

    .line 336
    .end local v15    # "inputStream":Ljava/io/InputStream;
    .end local v24    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "data":[B
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v18    # "len":I
    .restart local v21    # "now":J
    .restart local v25    # "outputStream":Ljava/io/OutputStream;
    .restart local v27    # "size":I
    :catch_5
    move-exception v14

    .line 339
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    :try_start_11
    sget-object v2, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to save download to Downloads app."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v14, v3, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_8

    .line 357
    .end local v12    # "data":[B
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v18    # "len":I
    .end local v21    # "now":J
    .end local v25    # "outputStream":Ljava/io/OutputStream;
    .end local v27    # "size":I
    .local v14, "e":Ljava/io/FileNotFoundException;
    .restart local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v24    # "outputStream":Ljava/io/OutputStream;
    :catch_6
    move-exception v3

    goto/16 :goto_6

    .end local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    :catch_7
    move-exception v3

    goto/16 :goto_7

    .end local v14    # "e":Ljava/io/FileNotFoundException;
    .end local v24    # "outputStream":Ljava/io/OutputStream;
    .restart local v25    # "outputStream":Ljava/io/OutputStream;
    :catch_8
    move-exception v2

    goto/16 :goto_4

    .line 363
    :catch_9
    move-exception v2

    goto/16 :goto_5

    .line 357
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v25    # "outputStream":Ljava/io/OutputStream;
    .restart local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v24    # "outputStream":Ljava/io/OutputStream;
    :catch_a
    move-exception v3

    goto :goto_a

    .line 363
    :catch_b
    move-exception v3

    goto :goto_b

    .line 353
    :catchall_1
    move-exception v2

    goto :goto_9

    .end local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    :catchall_2
    move-exception v2

    move-object/from16 v15, v16

    .end local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v15    # "inputStream":Ljava/io/InputStream;
    goto :goto_9
.end method

.method private deleteDirectory(Ljava/lang/String;)V
    .locals 1
    .param p1, "cacheFileDirectory"    # Ljava/lang/String;

    .prologue
    .line 459
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->recursiveDelete(Ljava/io/File;)V

    .line 460
    return-void
.end method

.method public static getAttachmentUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "emlFileUri"    # Landroid/net/Uri;
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "partId"    # Ljava/lang/String;

    .prologue
    .line 415
    sget-object v0, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAttachmentsListUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "emlFileUri"    # Landroid/net/Uri;
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 397
    sget-object v0, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getCacheDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/eml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCacheFileDirectory(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->getCacheDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    .line 423
    iget-object v5, p0, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->mUriAttachmentMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Attachment;

    .line 424
    .local v0, "attachment":Lcom/kingsoft/mail/providers/Attachment;
    iget v5, v0, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    if-ne v5, v4, :cond_1

    .line 426
    .local v4, "saveToSd":Z
    :goto_0
    if-eqz v4, :cond_2

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, "pathStart":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_3

    move-object v2, v3

    .line 434
    .local v2, "directoryPath":Ljava/lang/String;
    :goto_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 436
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 438
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 424
    .end local v1    # "directory":Ljava/io/File;
    .end local v2    # "directoryPath":Ljava/lang/String;
    .end local v3    # "pathStart":Ljava/lang/String;
    .end local v4    # "saveToSd":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 426
    .restart local v4    # "saveToSd":Z
    :cond_2
    invoke-direct {p0}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->getCacheDir()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 432
    .restart local v3    # "pathStart":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public static getListUriFromAttachmentUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 405
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 406
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private recursiveDelete(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 466
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 467
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 468
    .local v2, "children":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 469
    .local v1, "child":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->recursiveDelete(Ljava/io/File;)V

    .line 468
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 473
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "children":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 474
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 176
    sget-object v4, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 177
    .local v3, "match":I
    packed-switch v3, :pswitch_data_0

    .line 191
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 180
    :pswitch_0
    iget-object v4, p0, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->mUriListMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 183
    .local v1, "attachmentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 184
    .local v0, "attachmentUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->mUriAttachmentMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 187
    .end local v0    # "attachmentUri":Landroid/net/Uri;
    :cond_0
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->getCacheFileDirectory(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->deleteDirectory(Ljava/lang/String;)V

    .line 189
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 145
    sget-object v1, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 146
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 150
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 148
    :pswitch_0
    iget-object v1, p0, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->mUriAttachmentMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Attachment;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 156
    invoke-static {p1}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->getListUriFromAttachmentUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 159
    .local v1, "listUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->mUriAttachmentMap:Ljava/util/Map;

    new-instance v3, Lcom/kingsoft/mail/providers/Attachment;

    invoke-direct {v3, p2}, Lcom/kingsoft/mail/providers/Attachment;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->mUriListMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 163
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-nez v0, :cond_0

    .line 164
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 165
    iget-object v2, p0, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->mUriListMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_1
    return-object p1
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 95
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10019b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "authority":Ljava/lang/String;
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->BASE_URI:Landroid/net/Uri;

    .line 99
    sget-boolean v1, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->sUrisAddedToMatcher:Z

    if-nez v1, :cond_0

    .line 100
    sput-boolean v4, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->sUrisAddedToMatcher:Z

    .line 101
    sget-object v1, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "*/*"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    sget-object v1, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "*/*/#"

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "download"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->mDownloadManager:Landroid/app/DownloadManager;

    .line 108
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->mUriListMap:Ljava/util/Map;

    .line 109
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->mUriAttachmentMap:Ljava/util/Map;

    .line 110
    return v4
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "filePath":Ljava/lang/String;
    const-string/jumbo v2, "rwt"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    const/high16 v0, 0x3c000000

    .line 389
    .local v0, "fileMode":I
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2

    .line 383
    .end local v0    # "fileMode":I
    :cond_0
    const-string/jumbo v2, "rw"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    const/high16 v0, 0x38000000

    .restart local v0    # "fileMode":I
    goto :goto_0

    .line 386
    .end local v0    # "fileMode":I
    :cond_1
    const/high16 v0, 0x10000000

    .restart local v0    # "fileMode":I
    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 116
    sget-object v6, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 118
    .local v5, "match":I
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/kingsoft/mail/providers/UIProvider;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    invoke-direct {v3, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 120
    .local v3, "cursor":Landroid/database/MatrixCursor;
    packed-switch v5, :pswitch_data_0

    .line 140
    :goto_0
    return-object v3

    .line 122
    :pswitch_0
    const-string/jumbo v6, "contentType"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 124
    .local v2, "contentTypeQueryParameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 125
    iget-object v6, p0, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->mUriListMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 126
    .local v1, "attachmentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 127
    .local v0, "attachmentUri":Landroid/net/Uri;
    invoke-direct {p0, v3, v0, v2}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->addRow(Landroid/database/MatrixCursor;Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_1

    .line 129
    .end local v0    # "attachmentUri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v3, v6, p1}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 132
    .end local v1    # "attachmentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v2    # "contentTypeQueryParameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :pswitch_1
    iget-object v6, p0, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->mUriAttachmentMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/mail/providers/Attachment;

    invoke-static {v3, v6}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->addRow(Landroid/database/MatrixCursor;Lcom/kingsoft/mail/providers/Attachment;)V

    .line 133
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {p1}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->getListUriFromAttachmentUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 197
    sget-object v1, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 198
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 202
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 200
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->copyAttachment(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v1

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
