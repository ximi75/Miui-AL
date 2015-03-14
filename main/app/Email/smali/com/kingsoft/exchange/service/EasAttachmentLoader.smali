.class public Lcom/kingsoft/exchange/service/EasAttachmentLoader;
.super Lcom/kingsoft/exchange/service/EasServerConnection;
.source "EasAttachmentLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/exchange/service/EasAttachmentLoader$1;,
        Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;,
        Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleanTask;,
        Lcom/kingsoft/exchange/service/EasAttachmentLoader$AttachmentNameEncoder;,
        Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Exchange"


# instance fields
.field private mAttachmentRequest:Lorg/apache/http/client/methods/HttpPost;

.field private final mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p3, "callback"    # Lcom/android/emailcommon/service/IEmailServiceCallback;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/service/EasServerConnection;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 57
    iput-object p3, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/emailcommon/service/IEmailServiceCallback;JJII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/emailcommon/service/IEmailServiceCallback;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 47
    invoke-static/range {p0 .. p6}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->doStatusCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;JJII)V

    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 6
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 275
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "IOException while cleaning up attachment: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private static doStatusCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;JJII)V
    .locals 6
    .param p0, "callback"    # Lcom/android/emailcommon/service/IEmailServiceCallback;
    .param p1, "messageKey"    # J
    .param p3, "attachmentId"    # J
    .param p5, "status"    # I
    .param p6, "progress"    # I

    .prologue
    .line 64
    if-eqz p0, :cond_0

    .line 66
    :try_start_0
    invoke-interface/range {p0 .. p6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "RemoteException in loadAttachment: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private static encodeForExchange2003(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$AttachmentNameEncoder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/kingsoft/exchange/service/EasAttachmentLoader$AttachmentNameEncoder;-><init>(Lcom/kingsoft/exchange/service/EasAttachmentLoader$1;)V

    .line 155
    .local v0, "enc":Lcom/kingsoft/exchange/service/EasAttachmentLoader$AttachmentNameEncoder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 156
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1, p0}, Lcom/kingsoft/exchange/service/EasAttachmentLoader$AttachmentNameEncoder;->appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private finishLoadAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Ljava/io/File;Lcom/android/emailcommon/service/IEmailServiceCallback;)I
    .locals 8
    .param p1, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "cb"    # Lcom/android/emailcommon/service/IEmailServiceCallback;

    .prologue
    .line 287
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .local v1, "in":Ljava/io/InputStream;
    iget-object v3, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, p1, p3}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->saveAttachment(Landroid/content/Context;Ljava/io/InputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/emailcommon/service/IEmailServiceCallback;)I

    move-result v2

    .line 294
    .local v2, "statusCode":I
    invoke-static {v1}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 295
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "statusCode":I
    :goto_0
    return v2

    .line 288
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v3, "Exchange"

    const-string/jumbo v4, "Could not open attachment file: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 291
    const/4 v2, 0x3

    goto :goto_0
.end method

.method private handleResponse(ILjava/io/InputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .locals 12
    .param p1, "length"    # I
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    .line 307
    :try_start_0
    const-string/jumbo v1, "eas_"

    const-string/jumbo v3, "tmp"

    iget-object v4, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v1, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 317
    .local v11, "tmpFile":Ljava/io/File;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 323
    .local v2, "os":Ljava/io/OutputStream;
    const/4 v9, -0x1

    .line 325
    .local v9, "status":I
    :try_start_2
    new-instance v5, Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;

    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    invoke-direct {v5, v1, p3}, Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;-><init>(Lcom/android/emailcommon/service/IEmailServiceCallback;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 326
    .local v5, "callback":Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;
    const/4 v10, 0x1

    .line 327
    .local v10, "success":Z
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->getProtocolVersion()D

    move-result-wide v3

    const-wide/high16 v6, 0x402c000000000000L

    cmpl-double v1, v3, v6

    if-ltz v1, :cond_1

    .line 328
    new-instance v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;

    iget-wide v3, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    iget-wide v6, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;J)V

    .line 330
    .local v0, "parser":Lcom/kingsoft/exchange/adapter/ItemOperationsParser;
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->parse()Z

    .line 331
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->getStatusCode()I

    move-result v9

    .line 332
    const/4 v1, 0x1

    if-ne v9, v1, :cond_0

    const/4 v10, 0x1

    .line 344
    .end local v0    # "parser":Lcom/kingsoft/exchange/adapter/ItemOperationsParser;
    :goto_0
    const/4 v1, 0x2

    const v3, 0x7fffffff

    invoke-virtual {v5, v1, v3}, Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;->doCallback(II)V

    .line 345
    if-eqz v10, :cond_3

    .line 346
    # getter for: Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;
    invoke-static {v5}, Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;->access$200(Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    invoke-direct {p0, p3, v11, v1}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->finishLoadAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Ljava/io/File;Lcom/android/emailcommon/service/IEmailServiceCallback;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/kingsoft/email/mail/attachment/AttachmentCancelException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    .line 364
    :goto_1
    :try_start_3
    invoke-static {v2}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->close(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 367
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .end local v2    # "os":Ljava/io/OutputStream;
    .end local v5    # "callback":Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;
    .end local v9    # "status":I
    .end local v10    # "success":Z
    .end local v11    # "tmpFile":Ljava/io/File;
    :goto_2
    return v9

    .line 308
    :catch_0
    move-exception v8

    .line 309
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v3, "Could not open temp file: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v1, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 311
    const/16 v9, 0x20

    goto :goto_2

    .line 318
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v11    # "tmpFile":Ljava/io/File;
    :catch_1
    move-exception v8

    .line 319
    .local v8, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v3, "Temp file not found: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v1, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 320
    const/16 v9, 0x11

    .line 367
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 332
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "parser":Lcom/kingsoft/exchange/adapter/ItemOperationsParser;
    .restart local v2    # "os":Ljava/io/OutputStream;
    .restart local v5    # "callback":Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;
    .restart local v9    # "status":I
    .restart local v10    # "success":Z
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 334
    .end local v0    # "parser":Lcom/kingsoft/exchange/adapter/ItemOperationsParser;
    :cond_1
    if-eqz p1, :cond_2

    .line 337
    :try_start_5
    iget-wide v3, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    iget-wide v6, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    move-object v1, p2

    invoke-static/range {v1 .. v7}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->readChunked(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/kingsoft/email/mail/attachment/AttachmentCancelException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 341
    :cond_2
    const/4 v10, 0x1

    goto :goto_0

    .line 349
    :cond_3
    const/16 v1, 0xb

    if-ne v9, v1, :cond_4

    .line 350
    const/16 v9, 0x23

    goto :goto_1

    .line 352
    :cond_4
    const/16 v9, 0x20

    goto :goto_1

    .line 356
    .end local v5    # "callback":Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;
    .end local v10    # "success":Z
    :catch_2
    move-exception v8

    .line 357
    .local v8, "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v3, "Error reading attachment: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v1, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 359
    const/16 v9, 0x20

    .line 364
    .end local v9    # "status":I
    :try_start_7
    invoke-static {v2}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->close(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 367
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 360
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v9    # "status":I
    :catch_3
    move-exception v8

    .line 361
    .local v8, "e":Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
    const/16 v9, 0x22

    .line 364
    .end local v9    # "status":I
    :try_start_8
    invoke-static {v2}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->close(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 367
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 364
    .end local v8    # "e":Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
    .restart local v9    # "status":I
    :catchall_0
    move-exception v1

    :try_start_9
    invoke-static {v2}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->close(Ljava/io/Closeable;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 367
    .end local v2    # "os":Ljava/io/OutputStream;
    .end local v9    # "status":I
    :catchall_1
    move-exception v1

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    throw v1
.end method

.method private load(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .locals 9
    .param p1, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->doStatusCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;JJII)V

    .line 438
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->performServerRequest(Lcom/android/emailcommon/provider/EmailContent$Attachment;)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v8

    .line 439
    .local v8, "resp":Lcom/kingsoft/exchange/EasResponse;
    if-nez v8, :cond_0

    .line 440
    const/16 v0, 0x20

    .line 454
    :goto_0
    return v0

    .line 443
    :cond_0
    invoke-virtual {v8}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 446
    .local v7, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v8}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v1, 0x19d

    if-ne v0, v1, :cond_1

    .line 447
    const/16 v0, 0x23

    .line 453
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->abort()V

    .line 454
    invoke-static {v7, v8}, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;->clean(Ljava/io/InputStream;Lcom/kingsoft/exchange/EasResponse;)V

    goto :goto_0

    .line 448
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    invoke-virtual {v8}, Lcom/kingsoft/exchange/EasResponse;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    :cond_2
    const/16 v0, 0x11

    .line 453
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->abort()V

    .line 454
    invoke-static {v7, v8}, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;->clean(Ljava/io/InputStream;Lcom/kingsoft/exchange/EasResponse;)V

    goto :goto_0

    .line 451
    :cond_3
    :try_start_2
    invoke-virtual {v8}, Lcom/kingsoft/exchange/EasResponse;->getLength()I

    move-result v0

    invoke-direct {p0, v0, v7, p1}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->handleResponse(ILjava/io/InputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 453
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->abort()V

    .line 454
    invoke-static {v7, v8}, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;->clean(Ljava/io/InputStream;Lcom/kingsoft/exchange/EasResponse;)V

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->abort()V

    .line 454
    invoke-static {v7, v8}, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleaner;->clean(Ljava/io/InputStream;Lcom/kingsoft/exchange/EasResponse;)V

    throw v0
.end method

.method public static loadAttachment(Landroid/content/Context;JLcom/android/emailcommon/service/IEmailServiceCallback;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachmentId"    # J
    .param p3, "callback"    # Lcom/android/emailcommon/service/IEmailServiceCallback;

    .prologue
    const-wide/16 v1, -0x1

    const/16 v5, 0x11

    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 100
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v8

    .line 101
    .local v8, "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v8, :cond_0

    .line 102
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v3, "Could not load attachment %d"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v6

    invoke-static {v0, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, p3

    move-wide v3, p1

    .line 103
    invoke-static/range {v0 .. v6}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->doStatusCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;JJII)V

    .line 133
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 108
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v3, "Attachment %d lacks a location"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v6

    invoke-static {v0, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, p3

    move-wide v3, p1

    .line 109
    invoke-static/range {v0 .. v6}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->doStatusCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;JJII)V

    goto :goto_0

    .line 113
    :cond_1
    iget-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v7

    .line 114
    .local v7, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v7, :cond_2

    .line 115
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "Attachment %d has bad account key %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    iget-wide v3, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    iget-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-object v0, p3

    move-wide v3, p1

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->doStatusCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;JJII)V

    goto :goto_0

    .line 121
    :cond_2
    iget-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v10

    .line 122
    .local v10, "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v10, :cond_3

    .line 123
    iget-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    const/16 v5, 0x10

    move-object v0, p3

    move-wide v3, p1

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->doStatusCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;JJII)V

    goto :goto_0

    .line 129
    :cond_3
    new-instance v9, Lcom/kingsoft/exchange/service/EasAttachmentLoader;

    invoke-direct {v9, p0, v7, p3}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    .line 131
    .local v9, "loader":Lcom/kingsoft/exchange/service/EasAttachmentLoader;
    invoke-direct {v9, v8}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->load(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v5

    .line 132
    .local v5, "status":I
    iget-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-object v0, p3

    move-wide v3, p1

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->doStatusCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;JJII)V

    goto :goto_0
.end method

.method private performServerRequest(Lcom/android/emailcommon/provider/EmailContent$Attachment;)Lcom/kingsoft/exchange/EasResponse;
    .locals 12
    .param p1, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 236
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->getProtocolVersion()D

    move-result-wide v6

    const-wide/high16 v8, 0x402c000000000000L

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_0

    .line 237
    new-instance v4, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct {v4}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 238
    .local v4, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    const/16 v6, 0x505

    invoke-virtual {v4, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0x506

    invoke-virtual {v6, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 239
    const/16 v6, 0x507

    const-string/jumbo v7, "Mailbox"

    invoke-virtual {v4, v6, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 240
    const/16 v6, 0x451

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 241
    invoke-virtual {v4}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 242
    const-string/jumbo v1, "ItemOperations"

    .line 243
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/kingsoft/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    .line 258
    .end local v4    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    .local v0, "bytes":[B
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->sendHttpClientPostForAttachment(Ljava/lang/String;[B)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v5

    .line 265
    .end local v0    # "bytes":[B
    .end local v1    # "cmd":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->getProtocolVersion()D

    move-result-wide v6

    const-wide/high16 v8, 0x4028000000000000L

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 249
    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-static {v6}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->encodeForExchange2003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "location":Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "GetAttachment&AttachmentName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    .restart local v1    # "cmd":Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "bytes":[B
    goto :goto_0

    .line 251
    .end local v0    # "bytes":[B
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v3    # "location":Ljava/lang/String;
    :cond_1
    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v3    # "location":Ljava/lang/String;
    goto :goto_2

    .line 259
    .end local v3    # "location":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 260
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v6, "Exchange"

    const-string/jumbo v7, "IOException while loading attachment from server: %s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 262
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 263
    .local v2, "e":Ljava/security/cert/CertificateException;
    const-string/jumbo v6, "Exchange"

    const-string/jumbo v7, "CertificateException while loading attachment from server: %s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->mAttachmentRequest:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->mAttachmentRequest:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 224
    :cond_0
    return-void
.end method

.method protected sendHttpClientPostForAttachment(Ljava/lang/String;[B)Lcom/kingsoft/exchange/EasResponse;
    .locals 13
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 162
    if-nez p1, :cond_0

    .line 163
    const-string/jumbo v8, "Exchange"

    const-string/jumbo v9, "Invalid http post command!"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 164
    const/4 v6, 0x0

    .line 210
    :goto_0
    return-object v6

    .line 168
    :cond_0
    if-nez p2, :cond_3

    .line 169
    const/4 v2, 0x0

    .line 175
    .local v2, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    :goto_1
    const/4 v3, 0x0

    .line 176
    .local v3, "extra":Ljava/lang/String;
    const/4 v5, 0x0

    .line 177
    .local v5, "msg":Z
    const-string/jumbo v8, "SmartForward&"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "SmartReply&"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 178
    :cond_1
    const/16 v8, 0x26

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 179
    .local v0, "cmdLength":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-virtual {p1, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 181
    const/4 v5, 0x1

    .line 191
    .end local v0    # "cmdLength":I
    :cond_2
    :goto_2
    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->getProtocolVersion()D

    move-result-wide v8

    const-wide/high16 v10, 0x402c000000000000L

    cmpg-double v8, v8, v10

    if-gez v8, :cond_5

    .line 192
    const-string/jumbo v1, "message/rfc822"

    .line 199
    .local v1, "contentType":Ljava/lang/String;
    :goto_3
    if-nez v3, :cond_7

    .line 200
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->makeUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, "uriString":Ljava/lang/String;
    :goto_4
    invoke-virtual {p0, v7, v2, v1, v12}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->makePost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v4

    .line 206
    .local v4, "method":Lorg/apache/http/client/methods/HttpPost;
    iput-object v4, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->mAttachmentRequest:Lorg/apache/http/client/methods/HttpPost;

    .line 207
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->getClientConnectionManager()Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v8

    const-wide/16 v9, 0x7530

    invoke-virtual {p0, v9, v10}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->getHttpClient(J)Lorg/apache/http/client/HttpClient;

    move-result-object v9

    invoke-static {v8, v9, v4}, Lcom/kingsoft/exchange/EasResponse;->fromHttpRequest(Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v6

    .line 210
    .local v6, "response":Lcom/kingsoft/exchange/EasResponse;
    goto :goto_0

    .line 171
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v2    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v3    # "extra":Ljava/lang/String;
    .end local v4    # "method":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "msg":Z
    .end local v6    # "response":Lcom/kingsoft/exchange/EasResponse;
    .end local v7    # "uriString":Ljava/lang/String;
    :cond_3
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .restart local v2    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    goto :goto_1

    .line 182
    .restart local v3    # "extra":Ljava/lang/String;
    .restart local v5    # "msg":Z
    :cond_4
    const-string/jumbo v8, "SendMail&"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 183
    const/4 v5, 0x1

    goto :goto_2

    .line 193
    :cond_5
    if-eqz v2, :cond_6

    .line 194
    const-string/jumbo v1, "application/vnd.ms-sync.wbxml"

    .restart local v1    # "contentType":Ljava/lang/String;
    goto :goto_3

    .line 196
    .end local v1    # "contentType":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "contentType":Ljava/lang/String;
    goto :goto_3

    .line 202
    :cond_7
    invoke-virtual {p0, p1, v3}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "uriString":Ljava/lang/String;
    goto :goto_4
.end method
