.class public Lcom/kingsoft/email/provider/AttachmentProvider;
.super Landroid/content/ContentProvider;
.source "AttachmentProvider.java"


# static fields
.field private static final MIME_TYPE_COLUMN_FILENAME:I = 0x1

.field private static final MIME_TYPE_COLUMN_MIME_TYPE:I

.field private static final MIME_TYPE_PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION_QUERY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "mimeType"

    aput-object v1, v0, v2

    const-string/jumbo v1, "fileName"

    aput-object v1, v0, v3

    sput-object v0, Lcom/kingsoft/email/provider/AttachmentProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "fileName"

    aput-object v1, v0, v2

    const-string/jumbo v1, "size"

    aput-object v1, v0, v3

    const-string/jumbo v1, "contentUri"

    aput-object v1, v0, v4

    sput-object v0, Lcom/kingsoft/email/provider/AttachmentProvider;->PROJECTION_QUERY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static createImageThumbnail(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "data"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 333
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    .line 335
    :catch_0
    move-exception v2

    .line 336
    .local v2, "oome":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createImageThumbnail failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 338
    .end local v2    # "oome":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createImageThumbnail failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private static createThumbnail(Ljava/lang/String;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/io/InputStream;

    .prologue
    .line 325
    const-string/jumbo v0, "image/*"

    invoke-static {p0, v0}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-static {p1}, Lcom/kingsoft/email/provider/AttachmentProvider;->createImageThumbnail(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x0

    .line 108
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 110
    .local v7, "callingId":J
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    .line 111
    .local v13, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 112
    .local v11, "id":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 113
    .local v10, "format":Ljava/lang/String;
    const-string/jumbo v0, "THUMBNAIL"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string/jumbo v12, "image/png"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v12

    .line 116
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 117
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/kingsoft/email/provider/AttachmentProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 119
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 121
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 123
    .local v12, "mimeType":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 124
    .local v9, "fileName":Ljava/lang/String;
    invoke-static {v9, v12}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .line 128
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 128
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v12    # "mimeType":Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 134
    :cond_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 134
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v10    # "format":Ljava/lang/String;
    .end local v11    # "id":Ljava/lang/String;
    .end local v13    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 84
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_1

    .line 97
    :cond_0
    return v7

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 89
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 90
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 91
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "filename":Ljava/lang/String;
    const-string/jumbo v6, ".tmp"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "thmb_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 93
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 90
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 30
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 153
    const-string/jumbo v3, "w"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 155
    .local v13, "context":Landroid/content/Context;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->PROVIDER_PERMISSION:Ljava/lang/String;

    invoke-virtual {v13, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "you don\'t have permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent;->PROVIDER_PERMISSION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 161
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v26

    .line 162
    .local v26, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 163
    .local v9, "accountId":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 164
    .local v19, "id":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v13, v5, v6}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v25

    .line 166
    .local v25, "saveIn":Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 167
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->mkdirs()Z

    .line 169
    :cond_1
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .local v22, "newFile":Ljava/io/File;
    const/high16 v3, 0x3c000000

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 236
    .end local v13    # "context":Landroid/content/Context;
    .end local v22    # "newFile":Ljava/io/File;
    .end local v25    # "saveIn":Ljava/io/File;
    :goto_0
    return-object v3

    .line 174
    .end local v9    # "accountId":Ljava/lang/String;
    .end local v19    # "id":Ljava/lang/String;
    .end local v26    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 176
    .local v11, "callingId":J
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v26

    .line 177
    .restart local v26    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 178
    .restart local v9    # "accountId":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 179
    .restart local v19    # "id":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 180
    .local v17, "format":Ljava/lang/String;
    const-string/jumbo v3, "THUMBNAIL"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 181
    const/4 v3, 0x3

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 182
    .local v29, "width":I
    const/4 v3, 0x4

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 183
    .local v18, "height":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "thmb_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 184
    .local v16, "filename":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v14

    .line 185
    .local v14, "dir":Ljava/io/File;
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v15, v14, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    .line 187
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v4

    .line 189
    .local v4, "attachmentUri":Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "_data"

    aput-object v6, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/kingsoft/email/provider/AttachmentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .line 191
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 193
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 194
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 199
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 202
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v28

    .line 204
    .local v28, "type":Ljava/lang/String;
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v20

    .line 206
    .local v20, "in":Ljava/io/InputStream;
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/kingsoft/email/provider/AttachmentProvider;->createThumbnail(Ljava/lang/String;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v27

    .line 207
    .local v27, "thumbnail":Landroid/graphics/Bitmap;
    if-nez v27, :cond_5

    .line 208
    const/4 v3, 0x0

    .line 236
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 196
    .end local v20    # "in":Ljava/io/InputStream;
    .end local v27    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v28    # "type":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    .line 199
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 236
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 199
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 236
    .end local v4    # "attachmentUri":Landroid/net/Uri;
    .end local v9    # "accountId":Ljava/lang/String;
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v14    # "dir":Ljava/io/File;
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v17    # "format":Ljava/lang/String;
    .end local v18    # "height":I
    .end local v19    # "id":Ljava/lang/String;
    .end local v26    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "width":I
    :catchall_1
    move-exception v3

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 210
    .restart local v4    # "attachmentUri":Landroid/net/Uri;
    .restart local v9    # "accountId":Ljava/lang/String;
    .restart local v10    # "c":Landroid/database/Cursor;
    .restart local v14    # "dir":Ljava/io/File;
    .restart local v15    # "file":Ljava/io/File;
    .restart local v16    # "filename":Ljava/lang/String;
    .restart local v17    # "format":Ljava/lang/String;
    .restart local v18    # "height":I
    .restart local v19    # "id":Ljava/lang/String;
    .restart local v20    # "in":Ljava/io/InputStream;
    .restart local v26    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27    # "thumbnail":Landroid/graphics/Bitmap;
    .restart local v28    # "type":Ljava/lang/String;
    .restart local v29    # "width":I
    :cond_5
    const/4 v3, 0x1

    :try_start_6
    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 211
    new-instance v24, Ljava/io/FileOutputStream;

    move-object/from16 v0, v24

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 212
    .local v24, "out":Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 213
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V

    .line 214
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 225
    .end local v4    # "attachmentUri":Landroid/net/Uri;
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v20    # "in":Ljava/io/InputStream;
    .end local v24    # "out":Ljava/io/FileOutputStream;
    .end local v27    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v28    # "type":Ljava/lang/String;
    :cond_6
    const/high16 v3, 0x10000000

    :try_start_7
    invoke-static {v15, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v3

    .line 236
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 215
    .restart local v4    # "attachmentUri":Landroid/net/Uri;
    .restart local v10    # "c":Landroid/database/Cursor;
    .restart local v28    # "type":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 216
    .local v21, "ioe":Ljava/io/IOException;
    :try_start_8
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "openFile/thumbnail failed with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 218
    const/4 v3, 0x0

    .line 236
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 219
    .end local v21    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v23

    .line 220
    .local v23, "oome":Ljava/lang/OutOfMemoryError;
    :try_start_9
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "openFile/thumbnail failed with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 222
    const/4 v3, 0x0

    .line 236
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 229
    .end local v4    # "attachmentUri":Landroid/net/Uri;
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v14    # "dir":Ljava/io/File;
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v18    # "height":I
    .end local v23    # "oome":Ljava/lang/OutOfMemoryError;
    .end local v28    # "type":Ljava/lang/String;
    .end local v29    # "width":I
    :cond_7
    :try_start_a
    new-instance v15, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".db_att"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->getMappedAppStorageDirectoryPerAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v15, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    .restart local v15    # "file":Ljava/io/File;
    const/high16 v3, 0x10000000

    invoke-static {v15, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v3

    .line 236
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 24
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 262
    .local v10, "callingId":J
    if-nez p2, :cond_0

    .line 263
    const/4 v2, 0x2

    :try_start_0
    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v19, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "_data"

    aput-object v3, v19, v2

    .end local p2    # "projection":[Ljava/lang/String;
    .local v19, "projection":[Ljava/lang/String;
    move-object/from16 p2, v19

    .line 270
    .end local v19    # "projection":[Ljava/lang/String;
    .restart local p2    # "projection":[Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v21

    .line 271
    .local v21, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 272
    .local v8, "accountId":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 273
    .local v17, "id":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 274
    .local v15, "format":Ljava/lang/String;
    const/16 v18, 0x0

    .line 275
    .local v18, "name":Ljava/lang/String;
    const/16 v22, -0x1

    .line 276
    .local v22, "size":I
    const/4 v13, 0x0

    .line 278
    .local v13, "contentUri":Ljava/lang/String;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/kingsoft/email/provider/AttachmentProvider;->PROJECTION_QUERY:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 281
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 283
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 284
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 285
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 286
    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 291
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_1
    new-instance v20, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;-><init>([Ljava/lang/String;)V

    .line 296
    .local v20, "ret":Landroid/database/MatrixCursor;
    move-object/from16 v0, p2

    array-length v2, v0

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 297
    .local v23, "values":[Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, "i":I
    move-object/from16 v0, p2

    array-length v14, v0

    .local v14, "count":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v14, :cond_7

    .line 298
    aget-object v12, p2, v16

    .line 299
    .local v12, "column":Ljava/lang/String;
    const-string/jumbo v2, "_id"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 300
    aput-object v17, v23, v16

    .line 297
    :cond_2
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 288
    .end local v12    # "column":Ljava/lang/String;
    .end local v14    # "count":I
    .end local v16    # "i":I
    .end local v20    # "ret":Landroid/database/MatrixCursor;
    .end local v23    # "values":[Ljava/lang/Object;
    :cond_3
    const/16 v20, 0x0

    .line 291
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 315
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    return-object v20

    .line 291
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 315
    .end local v8    # "accountId":Ljava/lang/String;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v13    # "contentUri":Ljava/lang/String;
    .end local v15    # "format":Ljava/lang/String;
    .end local v17    # "id":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    .end local v21    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "size":I
    :catchall_1
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 302
    .restart local v8    # "accountId":Ljava/lang/String;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v12    # "column":Ljava/lang/String;
    .restart local v13    # "contentUri":Ljava/lang/String;
    .restart local v14    # "count":I
    .restart local v15    # "format":Ljava/lang/String;
    .restart local v16    # "i":I
    .restart local v17    # "id":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v20    # "ret":Landroid/database/MatrixCursor;
    .restart local v21    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "size":I
    .restart local v23    # "values":[Ljava/lang/Object;
    :cond_4
    :try_start_4
    const-string/jumbo v2, "_data"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 303
    aput-object v13, v23, v16

    goto :goto_1

    .line 305
    :cond_5
    const-string/jumbo v2, "_display_name"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 306
    aput-object v18, v23, v16

    goto :goto_1

    .line 308
    :cond_6
    const-string/jumbo v2, "_size"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 309
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v23, v16

    goto :goto_1

    .line 312
    .end local v12    # "column":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 315
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method
