.class Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "EasOutboxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/EasOutboxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendMailEntity"
.end annotation


# static fields
.field private static final MODE_TAGS:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFileLength:J

.field private final mFileStream:Ljava/io/FileInputStream;

.field private final mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private final mSendTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->MODE_TAGS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x545
        0x547
        0x546
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/FileInputStream;JILcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instream"    # Ljava/io/FileInputStream;
    .param p3, "length"    # J
    .param p5, "tag"    # I
    .param p6, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;

    .prologue
    .line 90
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 91
    iput-object p1, p0, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->mFileStream:Ljava/io/FileInputStream;

    .line 93
    iput-wide p3, p0, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->mFileLength:J

    .line 94
    iput p5, p0, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->mSendTag:I

    .line 95
    iput-object p6, p0, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 96
    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->MODE_TAGS:[I

    return-object v0
.end method


# virtual methods
.method public getContentLength()J
    .locals 5

    .prologue
    .line 104
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 107
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->writeTo(Ljava/io/OutputStream;Z)V

    .line 109
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->mFileLength:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v1, v3

    .line 114
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    :goto_0
    return-wide v1

    .line 110
    :catch_0
    move-exception v1

    .line 114
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 119
    :goto_1
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v1

    .line 114
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 117
    :goto_2
    throw v1

    .line 115
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
    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->writeTo(Ljava/io/OutputStream;Z)V

    .line 125
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Z)V
    .locals 6
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .param p2, "withData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 137
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Output stream may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_0
    new-instance v1, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct {v1, p1}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>(Ljava/io/OutputStream;)V

    .line 143
    .local v1, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    iget v2, p0, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->mSendTag:I

    invoke-virtual {v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 146
    const/16 v2, 0x551

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SendMail-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 148
    const/16 v2, 0x548

    invoke-virtual {v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 151
    iget v2, p0, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->mSendTag:I

    const/16 v3, 0x545

    if-eq v2, v3, :cond_1

    .line 152
    iget-object v2, p0, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    # invokes: Lcom/kingsoft/exchange/EasOutboxService;->getOriginalMessageInfo(Landroid/content/Context;J)Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;
    invoke-static {v2, v3, v4}, Lcom/kingsoft/exchange/EasOutboxService;->access$000(Landroid/content/Context;J)Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;

    move-result-object v0

    .line 153
    .local v0, "info":Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;
    if-eqz v0, :cond_1

    .line 154
    const/16 v2, 0x54b

    invoke-virtual {v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 157
    iget-object v2, p0, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 158
    const/16 v2, 0x54e

    iget-object v3, p0, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 163
    :goto_0
    invoke-virtual {v1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 168
    .end local v0    # "info":Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;
    :cond_1
    const/16 v2, 0x550

    invoke-virtual {v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 170
    if-eqz p2, :cond_3

    .line 171
    iget-object v2, p0, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->mFileStream:Ljava/io/FileInputStream;

    iget-wide v3, p0, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->mFileLength:J

    long-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->opaque(Ljava/io/InputStream;I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 176
    :goto_1
    invoke-virtual {v1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 177
    return-void

    .line 160
    .restart local v0    # "info":Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;
    :cond_2
    const/16 v2, 0x54d

    iget-object v3, v0, Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;->mItemId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 161
    const/16 v2, 0x54c

    iget-object v3, v0, Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;->mCollectionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0

    .line 173
    .end local v0    # "info":Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;
    :cond_3
    iget-wide v2, p0, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->mFileLength:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->opaqueWithoutData(I)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_1
.end method
