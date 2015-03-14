.class public Lcom/kingsoft/mail/utils/AttachmentUtils;
.super Ljava/lang/Object;
.source "AttachmentUtils.java"


# static fields
.field private static final KILO:I = 0x400

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MEGA:I = 0x100000

.field private static final MIN_CACHE_AVAILABLE_SPACE_BYTES:I = 0x6400000

.field private static final MIN_CACHE_THRESHOLD:F = 0.25f

.field private static final READ_TIMEOUT:J = 0x36ee80L

.field private static sDisplayNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheAttachmentUri(Landroid/content/Context;Lcom/kingsoft/mail/providers/Attachment;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;
    .param p2, "attachmentFds"    # Landroid/os/Bundle;

    .prologue
    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    .line 198
    .local v4, "cacheDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v17

    .line 199
    .local v17, "totalSpace":J
    move-object/from16 v0, p1

    iget v0, v0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    move/from16 v21, v0

    if-lez v21, :cond_1

    .line 200
    invoke-virtual {v4}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v21

    move-object/from16 v0, p1

    iget v0, v0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v19, v21, v23

    .line 201
    .local v19, "usableSpace":J
    invoke-static/range {v17 .. v20}, Lcom/kingsoft/mail/utils/AttachmentUtils;->isLowSpace(JJ)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 202
    sget-object v21, Lcom/kingsoft/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v22, "Low memory (%d/%d). Can\'t cache attachment %s"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    aput-object p1, v23, v24

    invoke-static/range {v21 .. v23}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 204
    const/4 v5, 0x0

    .line 310
    .end local v19    # "usableSpace":J
    :cond_0
    :goto_0
    return-object v5

    .line 207
    :cond_1
    const/4 v10, 0x0

    .line 208
    .local v10, "inputStream":Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 209
    .local v15, "outputStream":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 210
    .local v9, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    const/4 v8, 0x0

    .line 212
    .local v8, "file":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v21, "yyyy-MM-dd-kk:mm:ss"

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 213
    .local v6, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v21, Ljava/util/Date;

    invoke-direct/range {v21 .. v21}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, ".attachment"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 217
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    const-string/jumbo v23, "r"

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 247
    :goto_1
    if-eqz v9, :cond_7

    .line 249
    :try_start_2
    new-instance v11, Ljava/io/FileInputStream;

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .end local v10    # "inputStream":Ljava/io/InputStream;
    .local v11, "inputStream":Ljava/io/InputStream;
    move-object v10, v11

    .line 261
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    :goto_2
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .local v16, "outputStream":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 263
    .local v13, "now":J
    const/16 v21, 0x400

    move/from16 v0, v21

    new-array v3, v0, [B

    .line 264
    .local v3, "bytes":[B
    :cond_2
    if-eqz v10, :cond_3

    .line 265
    invoke-virtual {v10, v3}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .line 266
    .local v12, "len":I
    if-gtz v12, :cond_c

    .line 274
    .end local v12    # "len":I
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->flush()V

    .line 275
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, "cachedFileUri":Ljava/lang/String;
    sget-object v21, Lcom/kingsoft/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v22, "Cached %s to %s"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v5, v23, v24

    invoke-static/range {v21 .. v23}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 278
    invoke-virtual {v4}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v19

    .line 279
    .restart local v19    # "usableSpace":J
    invoke-static/range {v17 .. v20}, Lcom/kingsoft/mail/utils/AttachmentUtils;->isLowSpace(JJ)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 280
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 281
    sget-object v21, Lcom/kingsoft/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v22, "Low memory (%d/%d). Can\'t cache attachment %s"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    aput-object p1, v23, v24

    invoke-static/range {v21 .. v23}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 283
    const/4 v5, 0x0

    .line 298
    :cond_4
    if-eqz v9, :cond_5

    .line 299
    :try_start_4
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 300
    const/4 v9, 0x0

    .line 302
    :cond_5
    if-eqz v10, :cond_6

    .line 303
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 305
    :cond_6
    if-eqz v16, :cond_0

    .line 306
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 308
    :catch_0
    move-exception v7

    .line 309
    .local v7, "e":Ljava/io/IOException;
    sget-object v21, Lcom/kingsoft/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v22, "Failed to close stream"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v7, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 219
    .end local v3    # "bytes":[B
    .end local v5    # "cachedFileUri":Ljava/lang/String;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v13    # "now":J
    .end local v16    # "outputStream":Ljava/io/FileOutputStream;
    .end local v19    # "usableSpace":J
    .restart local v15    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    .line 220
    .local v7, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    sget-object v21, Lcom/kingsoft/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v22, "Exception attempting to open attachment"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v7, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 222
    const/4 v9, 0x0

    .line 245
    goto/16 :goto_1

    .line 223
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    .line 239
    .local v7, "e":Ljava/lang/SecurityException;
    sget-object v21, Lcom/kingsoft/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v22, "Security Exception attempting to open attachment"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v7, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 244
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 251
    .end local v7    # "e":Ljava/lang/SecurityException;
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    if-nez v21, :cond_b

    .line 255
    sget-object v21, Lcom/kingsoft/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v22, "contentUri is null in attachment: %s"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object p1, v23, v24

    invoke-static/range {v21 .. v23}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 256
    new-instance v21, Ljava/io/FileNotFoundException;

    const-string/jumbo v22, "Missing contentUri in attachment"

    invoke-direct/range {v21 .. v22}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 287
    .end local v6    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_3
    move-exception v7

    .line 291
    .local v7, "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    sget-object v21, Lcom/kingsoft/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v22, "Failed to cache attachment %s"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object p1, v23, v24

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v7, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 292
    if-eqz v8, :cond_8

    .line 293
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 295
    :cond_8
    const/4 v5, 0x0

    .line 298
    if-eqz v9, :cond_9

    .line 299
    :try_start_7
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 300
    const/4 v9, 0x0

    .line 302
    :cond_9
    if-eqz v10, :cond_a

    .line 303
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 305
    :cond_a
    if-eqz v15, :cond_0

    .line 306
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 308
    :catch_4
    move-exception v7

    .line 309
    sget-object v21, Lcom/kingsoft/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v22, "Failed to close stream"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v7, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 259
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v6    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_b
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v10

    goto/16 :goto_2

    .line 269
    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "bytes":[B
    .restart local v12    # "len":I
    .restart local v13    # "now":J
    .restart local v16    # "outputStream":Ljava/io/FileOutputStream;
    :cond_c
    const/16 v21, 0x0

    :try_start_9
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 270
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    sub-long v21, v21, v13

    const-wide/32 v23, 0x36ee80

    cmp-long v21, v21, v23

    if-lez v21, :cond_2

    .line 271
    new-instance v21, Ljava/io/IOException;

    const-string/jumbo v22, "Timed out reading attachment data"

    invoke-direct/range {v21 .. v22}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 287
    .end local v3    # "bytes":[B
    .end local v12    # "len":I
    .end local v13    # "now":J
    :catch_5
    move-exception v7

    move-object/from16 v15, v16

    .end local v16    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 297
    .end local v6    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v21

    .line 298
    :goto_4
    if-eqz v9, :cond_d

    .line 299
    :try_start_a
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 300
    const/4 v9, 0x0

    .line 302
    :cond_d
    if-eqz v10, :cond_e

    .line 303
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 305
    :cond_e
    if-eqz v15, :cond_f

    .line 306
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 310
    :cond_f
    :goto_5
    throw v21

    .line 308
    :catch_6
    move-exception v7

    .line 309
    .restart local v7    # "e":Ljava/io/IOException;
    sget-object v22, Lcom/kingsoft/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v23, "Failed to close stream"

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v7, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_5

    .line 297
    .end local v7    # "e":Ljava/io/IOException;
    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v16    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v21

    move-object/from16 v15, v16

    .end local v16    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public static canDownloadAttachment(Landroid/content/Context;Lcom/kingsoft/mail/providers/Attachment;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 330
    const-string/jumbo v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 332
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 333
    .local v1, "info":Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v3

    .line 335
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 336
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 338
    goto :goto_0

    .line 341
    :cond_2
    invoke-static {p0}, Landroid/app/DownloadManager;->getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v2

    .line 342
    .local v2, "maxBytes":Ljava/lang/Long;
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    iget v5, p1, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-long v5, v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method public static cancelDownloadNow(Landroid/content/Context;Lcom/kingsoft/mail/providers/Attachment;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    const/4 v1, 0x0

    .line 379
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 380
    :cond_0
    const v1, 0x7f1000ed

    invoke-static {p0, v1}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 387
    :goto_0
    return-void

    .line 384
    :cond_1
    new-instance v0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/browse/AttachmentViewInterface;)V

    .line 385
    .local v0, "handler":Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->setAttachment(Lcom/kingsoft/mail/providers/Attachment;)V

    .line 386
    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->cancelAttachment(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static convertAttachmentToUiAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)Lcom/kingsoft/mail/providers/Attachment;
    .locals 6
    .param p0, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    const/4 v1, 0x0

    .line 357
    if-eqz p0, :cond_0

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 358
    :cond_0
    sget-object v2, Lcom/kingsoft/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "An invalid attachment!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 375
    :goto_0
    return-object v0

    .line 362
    :cond_1
    new-instance v0, Lcom/kingsoft/mail/providers/Attachment;

    invoke-direct {v0}, Lcom/kingsoft/mail/providers/Attachment;-><init>()V

    .line 364
    .local v0, "uiAttachment":Lcom/kingsoft/mail/providers/Attachment;
    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    iput-object v2, v0, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    .line 365
    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_2
    iput-object v1, v0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    .line 366
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    iput v1, v0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    .line 367
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    iput v1, v0, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    .line 368
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDownloadedSize:I

    iput v1, v0, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    .line 369
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    iput v1, v0, Lcom/kingsoft/mail/providers/Attachment;->flags:I

    .line 370
    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v1, v1

    iput v1, v0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    .line 371
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/providers/Attachment;->setName(Ljava/lang/String;)Z

    .line 372
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/providers/Attachment;->setContentType(Ljava/lang/String;)V

    .line 373
    const-string/jumbo v1, "uiattachment"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v1, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 87
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "df":Ljava/text/DecimalFormat;
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 90
    const-wide/16 v1, 0x400

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 91
    const v1, 0x7f100106

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 99
    :goto_0
    return-object v1

    .line 93
    :cond_0
    const-wide/32 v1, 0x100000

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 94
    new-instance v0, Ljava/text/DecimalFormat;

    .end local v0    # "df":Ljava/text/DecimalFormat;
    const-string/jumbo v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 95
    .restart local v0    # "df":Ljava/text/DecimalFormat;
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 96
    const v1, 0x7f10020a

    new-array v2, v3, [Ljava/lang/Object;

    long-to-double v3, p1

    const-wide/high16 v5, 0x4090000000000000L

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 99
    :cond_1
    const v1, 0x7f10024f

    new-array v2, v3, [Ljava/lang/Object;

    long-to-double v3, p1

    const-wide/high16 v5, 0x4130000000000000L

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static downloadAttachmentImmediately(Landroid/content/Context;J)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 408
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 409
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    aput-object v5, v2, v6

    const-string/jumbo v5, "uiState"

    aput-object v5, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 413
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 415
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 417
    .local v3, "id":J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v10, v0

    .line 419
    .local v10, "state":J
    const-wide/16 v5, 0x0

    cmp-long v0, v10, v5

    if-nez v0, :cond_0

    .line 420
    new-instance v2, Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/browse/AttachmentViewInterface;)V

    .line 422
    .local v2, "attachmentActionHandler":Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(JIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 429
    .end local v2    # "attachmentActionHandler":Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    .end local v3    # "id":J
    .end local v10    # "state":J
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 432
    :cond_2
    return-void
.end method

.method public static downloadNow(Landroid/content/Context;Lcom/kingsoft/mail/providers/Attachment;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    .line 390
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 391
    :cond_0
    const v1, 0x7f1000ed

    invoke-static {p0, v1}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 398
    :goto_0
    return-void

    .line 395
    :cond_1
    new-instance v0, Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/browse/AttachmentViewInterface;)V

    .line 396
    .local v0, "handler":Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->setAttachment(Lcom/kingsoft/mail/providers/Attachment;)V

    .line 397
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(I)V

    goto :goto_0
.end method

.method public static getDisplayType(Landroid/content/Context;Lcom/kingsoft/mail/providers/Attachment;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 111
    iget v4, p1, Lcom/kingsoft/mail/providers/Attachment;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_1

    .line 113
    const/4 v1, 0x0

    .line 137
    :cond_0
    :goto_0
    return-object v1

    .line 119
    :cond_1
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/kingsoft/mail/utils/AttachmentUtils;->getMimeTypeDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "displayType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 122
    .local v3, "index":I
    :goto_1
    if-nez v1, :cond_2

    if-lez v3, :cond_2

    .line 123
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/kingsoft/mail/utils/AttachmentUtils;->getMimeTypeDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    :cond_2
    if-nez v1, :cond_3

    .line 126
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/mail/utils/Utils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "extension":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_3

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-nez v4, :cond_3

    .line 129
    const v4, 0x7f1000f2

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .end local v2    # "extension":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_0

    .line 135
    const-string/jumbo v1, ""

    goto :goto_0

    .line 121
    .end local v3    # "index":I
    :cond_4
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public static declared-synchronized getMimeTypeDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 149
    const-class v4, Lcom/kingsoft/mail/utils/AttachmentUtils;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/kingsoft/mail/utils/AttachmentUtils;->sDisplayNameMap:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 150
    const v3, 0x7f1000e2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "docName":Ljava/lang/String;
    const v3, 0x7f1000e5

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "presoName":Ljava/lang/String;
    const v3, 0x7f1000e4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "sheetName":Ljava/lang/String;
    new-instance v3, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    const-string/jumbo v5, "image"

    const v6, 0x7f1000eb

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string/jumbo v5, "audio"

    const v6, 0x7f1000e6

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string/jumbo v5, "video"

    const v6, 0x7f1000f3

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string/jumbo v5, "text"

    const v6, 0x7f1000f0

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string/jumbo v5, "application/pdf"

    const v6, 0x7f1000e3

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string/jumbo v5, "application/msword"

    invoke-virtual {v3, v5, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string/jumbo v5, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {v3, v5, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string/jumbo v5, "application/vnd.ms-powerpoint"

    invoke-virtual {v3, v5, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string/jumbo v5, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {v3, v5, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string/jumbo v5, "application/vnd.ms-excel"

    invoke-virtual {v3, v5, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string/jumbo v5, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {v3, v5, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    sput-object v3, Lcom/kingsoft/mail/utils/AttachmentUtils;->sDisplayNameMap:Ljava/util/Map;

    .line 179
    .end local v0    # "docName":Ljava/lang/String;
    .end local v1    # "presoName":Ljava/lang/String;
    .end local v2    # "sheetName":Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/kingsoft/mail/utils/AttachmentUtils;->sDisplayNameMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v3

    .line 149
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static isLowSpace(JJ)Z
    .locals 3
    .param p0, "totalSpace"    # J
    .param p2, "usableSpace"    # J

    .prologue
    .line 318
    long-to-float v0, p2

    long-to-float v1, p0

    const/high16 v2, 0x3e800000

    mul-float/2addr v1, v2

    const/high16 v2, 0x4cc80000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
