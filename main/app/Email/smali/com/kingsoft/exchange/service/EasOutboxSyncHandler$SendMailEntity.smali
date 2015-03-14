.class Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "EasOutboxSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendMailEntity"
.end annotation


# instance fields
.field private final mFileLength:J

.field private final mFileStream:Ljava/io/FileInputStream;

.field private final mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private final mSendTag:I

.field private final mSmartSendInfo:Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;


# direct methods
.method public constructor <init>(Ljava/io/FileInputStream;JILcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;)V
    .locals 0
    .param p1, "instream"    # Ljava/io/FileInputStream;
    .param p2, "length"    # J
    .param p4, "tag"    # I
    .param p5, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p6, "smartSendInfo"    # Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;

    .prologue
    .line 297
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 298
    iput-object p1, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mFileStream:Ljava/io/FileInputStream;

    .line 299
    iput-wide p2, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mFileLength:J

    .line 300
    iput p4, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mSendTag:I

    .line 301
    iput-object p5, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 302
    iput-object p6, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mSmartSendInfo:Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;

    .line 303
    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 5

    .prologue
    .line 311
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 314
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;->writeTo(Ljava/io/OutputStream;Z)V

    .line 316
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mFileLength:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v1, v3

    .line 321
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 326
    :goto_0
    return-wide v1

    .line 317
    :catch_0
    move-exception v1

    .line 321
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 326
    :goto_1
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v1

    .line 321
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 324
    :goto_2
    throw v1

    .line 322
    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_2
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;->writeTo(Ljava/io/OutputStream;Z)V

    .line 332
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Z)V
    .locals 5
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .param p2, "withData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Output stream may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 349
    :cond_0
    new-instance v0, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct {v0, p1}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>(Ljava/io/OutputStream;)V

    .line 351
    .local v0, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    iget v1, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mSendTag:I

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 354
    const/16 v1, 0x551

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SendMail-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 356
    const/16 v1, 0x548

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 359
    iget v1, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mSendTag:I

    const/16 v2, 0x545

    if-eq v1, v2, :cond_1

    .line 360
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mSmartSendInfo:Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;

    if-eqz v1, :cond_1

    .line 361
    const/16 v1, 0x54b

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 364
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 365
    const/16 v1, 0x54e

    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 370
    :goto_0
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 375
    :cond_1
    const/16 v1, 0x550

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 377
    if-eqz p2, :cond_3

    .line 378
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mFileStream:Ljava/io/FileInputStream;

    iget-wide v2, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mFileLength:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->opaque(Ljava/io/InputStream;I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 383
    :goto_1
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 384
    return-void

    .line 367
    :cond_2
    const/16 v1, 0x54d

    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mSmartSendInfo:Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;

    iget-object v2, v2, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->mItemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 368
    const/16 v1, 0x54c

    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mSmartSendInfo:Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;

    iget-object v2, v2, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->mCollectionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0

    .line 380
    :cond_3
    iget-wide v1, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mFileLength:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->opaqueWithoutData(I)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_1
.end method
