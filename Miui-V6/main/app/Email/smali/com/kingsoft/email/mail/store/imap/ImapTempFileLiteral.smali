.class public Lcom/kingsoft/email/mail/store/imap/ImapTempFileLiteral;
.super Lcom/kingsoft/email/mail/store/imap/ImapString;
.source "ImapTempFileLiteral.java"


# instance fields
.field final mFile:Ljava/io/File;

.field private final mSize:I


# direct methods
.method constructor <init>(Lcom/kingsoft/email/FixedLengthInputStream;JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 16
    .param p1, "in"    # Lcom/kingsoft/email/FixedLengthInputStream;
    .param p2, "attId"    # J
    .param p4, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/mail/store/imap/ImapString;-><init>()V

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/email/FixedLengthInputStream;->getLength()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/kingsoft/email/mail/store/imap/ImapTempFileLiteral;->mSize:I

    .line 57
    const-string/jumbo v7, "imap"

    const-string/jumbo v8, ".tmp"

    invoke-static {}, Lcom/kingsoft/emailcommon/TempDirectory;->getTempDirectory()Ljava/io/File;

    move-result-object v9

    invoke-static {v7, v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/kingsoft/email/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    .line 65
    new-instance v5, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingsoft/email/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 69
    .local v5, "out":Ljava/io/OutputStream;
    const/16 v7, 0x4000

    :try_start_0
    new-array v2, v7, [B

    .line 70
    .local v2, "buffer":[B
    const/4 v4, 0x0

    .line 71
    .local v4, "n":I
    const/4 v3, 0x0

    .line 72
    .local v3, "count":I
    :cond_0
    :goto_0
    const/4 v7, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/kingsoft/email/FixedLengthInputStream;->read([B)I

    move-result v4

    if-eq v7, v4, :cond_3

    .line 73
    invoke-static/range {p2 .. p3}, Lcom/kingsoft/email/service/AttachmentDownloadService;->isCancelingDownload(J)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 75
    new-instance v7, Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;

    const-string/jumbo v8, "cancel"

    invoke-direct {v7, v8}, Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Landroid/util/Base64DataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    .end local v4    # "n":I
    :catch_0
    move-exception v1

    .line 91
    .local v1, "bde":Landroid/util/Base64DataException;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/kingsoft/email2/ui/MailActivityEmail;->getMessageDecodeErrorString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "warning":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/email/FixedLengthInputStream;->close()V

    .line 95
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 97
    .end local v1    # "bde":Landroid/util/Base64DataException;
    .end local v6    # "warning":Ljava/lang/String;
    :goto_1
    return-void

    .line 77
    .restart local v2    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v4    # "n":I
    :cond_1
    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v5, v2, v7, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 78
    add-int/2addr v3, v4

    .line 79
    if-eqz p4, :cond_0

    .line 80
    move-object/from16 v0, p0

    iget v7, v0, Lcom/kingsoft/email/mail/store/imap/ImapTempFileLiteral;->mSize:I

    if-nez v7, :cond_2

    .line 83
    const/4 v7, 0x1

    const-wide/high16 v8, 0x4059000000000000L

    const-wide/high16 v10, 0x3ff0000000000000L

    const-wide/high16 v12, 0x3ff0000000000000L

    int-to-double v14, v3

    div-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    move-object/from16 v0, p4

    invoke-interface {v0, v7, v8}, Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;->loadAttachmentStatus(II)V
    :try_end_2
    .catch Landroid/util/Base64DataException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 94
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    .end local v4    # "n":I
    :catchall_0
    move-exception v7

    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/email/FixedLengthInputStream;->close()V

    .line 95
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    throw v7

    .line 86
    .restart local v2    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v4    # "n":I
    :cond_2
    const/4 v7, 0x1

    :try_start_3
    move-object/from16 v0, p4

    invoke-interface {v0, v7, v3}, Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;->loadAttachmentStatus(II)V
    :try_end_3
    .catch Landroid/util/Base64DataException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/email/FixedLengthInputStream;->close()V

    .line 95
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/imap/ImapTempFileLiteral;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/email/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/kingsoft/email/mail/store/imap/ImapString;->destroy()V

    .line 155
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, "re":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to remove temp file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/imap/ImapTempFileLiteral;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 110
    return-void

    .line 108
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAsStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/imap/ImapTempFileLiteral;->checkNotDestroyed()V

    .line 116
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/kingsoft/email/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-object v1

    .line 117
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "ImapTempFileLiteral: Temp file not found"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 123
    new-instance v1, Ljava/io/ByteArrayInputStream;

    new-array v2, v4, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method public getString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/imap/ImapTempFileLiteral;->checkNotDestroyed()V

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/imap/ImapTempFileLiteral;->getAsStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 134
    .local v0, "bytes":[B
    array-length v2, v0

    const/high16 v3, 0x200000

    if-le v2, v3, :cond_0

    .line 135
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "ImapTempFileLiteral: Error while reading temp file"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 140
    const-string/jumbo v2, ""

    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v2

    .line 137
    .restart local v0    # "bytes":[B
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/Utility;->fromAscii([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0
.end method

.method public tempFileExistsForTest()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 159
    const-string/jumbo v0, "{%d byte literal(file)}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/kingsoft/email/mail/store/imap/ImapTempFileLiteral;->mSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
