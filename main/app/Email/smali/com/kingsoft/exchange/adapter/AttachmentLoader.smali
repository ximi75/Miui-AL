.class public Lcom/kingsoft/exchange/adapter/AttachmentLoader;
.super Ljava/lang/Object;
.source "AttachmentLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/exchange/adapter/AttachmentLoader$1;,
        Lcom/kingsoft/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;
    }
.end annotation


# instance fields
.field private final mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

.field private final mAttachmentId:J

.field private final mAttachmentSize:I

.field private final mContext:Landroid/content/Context;

.field private final mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private final mMessageId:J

.field private final mService:Lcom/kingsoft/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Lcom/kingsoft/exchange/EasSyncService;Lcom/kingsoft/emailsync/PartRequest;)V
    .locals 3
    .param p1, "service"    # Lcom/kingsoft/exchange/EasSyncService;
    .param p2, "req"    # Lcom/kingsoft/emailsync/PartRequest;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mService:Lcom/kingsoft/exchange/EasSyncService;

    .line 48
    iget-object v0, p1, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p2, Lcom/kingsoft/emailsync/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 50
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    iput-wide v0, p0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mAttachmentId:J

    .line 51
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v0, v0

    iput v0, p0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mAttachmentSize:I

    .line 52
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iput-wide v0, p0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mMessageId:J

    .line 53
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 54
    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 90
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doProgressCallback(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 62
    return-void
.end method

.method private doStatusCallback(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 58
    return-void
.end method

.method static encodeForExchange2003(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/kingsoft/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/kingsoft/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;-><init>(Lcom/kingsoft/exchange/adapter/AttachmentLoader$1;)V

    .line 67
    .local v0, "enc":Lcom/kingsoft/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 68
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1, p0}, Lcom/kingsoft/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;->appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private finishLoadAttachment(Ljava/io/File;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v1    # "in":Ljava/io/InputStream;
    .local v2, "in":Ljava/io/InputStream;
    :try_start_1
    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    const/4 v6, 0x0

    invoke-static {v4, v2, v5, v6}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->saveAttachment(Landroid/content/Context;Ljava/io/InputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/emailcommon/service/IEmailServiceCallback;)I

    move-result v3

    .line 104
    .local v3, "statusCode":I
    invoke-direct {p0, v3}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->doStatusCallback(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    invoke-static {v2}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 111
    return-void

    .line 105
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "statusCode":I
    .restart local v1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_0
    :try_start_2
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Attachment file not found?"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    :goto_1
    invoke-static {v1}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    throw v4

    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_1

    .line 105
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_0
.end method


# virtual methods
.method public loadAttachment()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-nez v5, :cond_1

    .line 119
    const/16 v5, 0x10

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->doStatusCallback(I)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->doProgressCallback(I)V

    .line 125
    const/16 v16, 0x0

    .line 127
    .local v16, "resp":Lcom/kingsoft/exchange/EasResponse;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mService:Lcom/kingsoft/exchange/EasSyncService;

    iget-object v5, v5, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x402c000000000000L

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_3

    const/4 v12, 0x1

    .line 129
    .local v12, "eas14":Z
    :goto_1
    if-eqz v12, :cond_4

    .line 130
    :try_start_0
    new-instance v17, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct/range {v17 .. v17}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 131
    .local v17, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    const/16 v5, 0x505

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x506

    invoke-virtual {v5, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 132
    const/16 v5, 0x507

    const-string/jumbo v6, "Mailbox"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 133
    const/16 v5, 0x451

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 134
    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 135
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mService:Lcom/kingsoft/exchange/EasSyncService;

    const-string/jumbo v6, "ItemOperations"

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/kingsoft/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v16

    .line 147
    .end local v17    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v18

    .line 148
    .local v18, "status":I
    const/16 v5, 0xc8

    move/from16 v0, v18

    if-ne v0, v5, :cond_a

    .line 149
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/exchange/EasResponse;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 150
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 151
    .local v3, "is":Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 152
    .local v15, "os":Ljava/io/OutputStream;
    const/16 v19, 0x0

    .line 154
    .local v19, "tmpFile":Ljava/io/File;
    :try_start_1
    const-string/jumbo v5, "eas_"

    const-string/jumbo v6, "tmp"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v19

    .line 155
    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/kingsoft/email/mail/attachment/AttachmentCancelException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    .end local v15    # "os":Ljava/io/OutputStream;
    .local v4, "os":Ljava/io/OutputStream;
    if-eqz v12, :cond_6

    .line 157
    :try_start_2
    new-instance v2, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mAttachmentSize:I

    int-to-long v5, v5

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mAttachmentId:J

    invoke-direct/range {v2 .. v9}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;J)V

    .line 159
    .local v2, "p":Lcom/kingsoft/exchange/adapter/ItemOperationsParser;
    invoke-virtual {v2}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->parse()Z

    .line 160
    invoke-virtual {v2}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->getStatusCode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    .line 161
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->finishLoadAttachment(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/kingsoft/email/mail/attachment/AttachmentCancelException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 182
    :try_start_3
    invoke-static {v3}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 183
    invoke-static {v4}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 184
    if-eqz v19, :cond_2

    .line 185
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    :cond_2
    if-eqz v16, :cond_0

    .line 196
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_0

    .line 127
    .end local v2    # "p":Lcom/kingsoft/exchange/adapter/ItemOperationsParser;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v12    # "eas14":Z
    .end local v18    # "status":I
    .end local v19    # "tmpFile":Ljava/io/File;
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 137
    .restart local v12    # "eas14":Z
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v14, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 140
    .local v14, "location":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mService:Lcom/kingsoft/exchange/EasSyncService;

    iget-object v5, v5, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028000000000000L

    cmpg-double v5, v5, v7

    if-gez v5, :cond_5

    .line 141
    invoke-static {v14}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->encodeForExchange2003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 143
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GetAttachment&AttachmentName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 144
    .local v10, "cmd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mService:Lcom/kingsoft/exchange/EasSyncService;

    const/4 v6, 0x0

    const/16 v7, 0x7530

    invoke-virtual {v5, v10, v6, v7}, Lcom/kingsoft/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/kingsoft/exchange/EasResponse;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v16

    goto/16 :goto_2

    .line 165
    .end local v10    # "cmd":Ljava/lang/String;
    .end local v14    # "location":Ljava/lang/String;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    .restart local v18    # "status":I
    .restart local v19    # "tmpFile":Ljava/io/File;
    :cond_6
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/exchange/EasResponse;->getLength()I

    move-result v13

    .line 166
    .local v13, "len":I
    if-eqz v13, :cond_9

    .line 169
    if-gez v13, :cond_8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mAttachmentSize:I

    int-to-long v5, v5

    :goto_3
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mAttachmentId:J

    invoke-static/range {v3 .. v9}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->readChunked(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;J)V

    .line 171
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->finishLoadAttachment(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/kingsoft/email/mail/attachment/AttachmentCancelException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 182
    :try_start_6
    invoke-static {v3}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 183
    invoke-static {v4}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 184
    if-eqz v19, :cond_7

    .line 185
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 195
    :cond_7
    if-eqz v16, :cond_0

    .line 196
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_0

    .line 169
    :cond_8
    int-to-long v5, v13

    goto :goto_3

    .line 182
    .end local v13    # "len":I
    :cond_9
    :try_start_7
    invoke-static {v3}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 183
    invoke-static {v4}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 184
    if-eqz v19, :cond_a

    .line 185
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 195
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v19    # "tmpFile":Ljava/io/File;
    :cond_a
    :goto_4
    if-eqz v16, :cond_0

    .line 196
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_0

    .line 175
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v15    # "os":Ljava/io/OutputStream;
    .restart local v19    # "tmpFile":Ljava/io/File;
    :catch_0
    move-exception v11

    move-object v4, v15

    .line 176
    .end local v15    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    .local v11, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->mService:Lcom/kingsoft/exchange/EasSyncService;

    const-string/jumbo v6, "Can\'t get attachment; write file not found?"

    invoke-virtual {v5, v6}, Lcom/kingsoft/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 177
    const/16 v5, 0x11

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->doStatusCallback(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 182
    :try_start_9
    invoke-static {v3}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 183
    invoke-static {v4}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 184
    if-eqz v19, :cond_a

    .line 185
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 190
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    .end local v18    # "status":I
    .end local v19    # "tmpFile":Ljava/io/File;
    :catch_1
    move-exception v11

    .line 192
    .local v11, "e":Ljava/io/IOException;
    const/16 v5, 0x20

    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->doStatusCallback(I)V

    .line 193
    throw v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 195
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v16, :cond_b

    .line 196
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/exchange/EasResponse;->close()V

    :cond_b
    throw v5

    .line 178
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v15    # "os":Ljava/io/OutputStream;
    .restart local v18    # "status":I
    .restart local v19    # "tmpFile":Ljava/io/File;
    :catch_2
    move-exception v11

    move-object v4, v15

    .line 179
    .end local v15    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    .local v11, "e":Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
    :goto_6
    :try_start_b
    invoke-virtual {v11}, Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 182
    :try_start_c
    invoke-static {v3}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 183
    invoke-static {v4}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 184
    if-eqz v19, :cond_a

    .line 185
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 182
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v11    # "e":Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
    .restart local v15    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v4, v15

    .end local v15    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :goto_7
    invoke-static {v3}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 183
    invoke-static {v4}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 184
    if-eqz v19, :cond_c

    .line 185
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    :cond_c
    throw v5
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 182
    :catchall_2
    move-exception v5

    goto :goto_7

    .line 178
    :catch_3
    move-exception v11

    goto :goto_6

    .line 175
    :catch_4
    move-exception v11

    goto :goto_5
.end method
